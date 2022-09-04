package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.Subscription;
import p021rx.exceptions.MissingBackpressureException;
import p021rx.functions.Action0;
import p021rx.functions.Action1;
import p021rx.functions.Func1;
import p021rx.internal.util.RxRingBuffer;
import p021rx.internal.util.SynchronizedQueue;
import p021rx.internal.util.unsafe.SpscArrayQueue;
import p021rx.internal.util.unsafe.UnsafeAccess;
import p021rx.observables.ConnectableObservable;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.operators.OperatorPublish */
/* loaded from: classes2.dex */
public final class OperatorPublish<T> extends ConnectableObservable<T> {
    final AtomicReference<PublishSubscriber<T>> current;
    final Observable<? extends T> source;

    public static <T> ConnectableObservable<T> create(Observable<? extends T> source) {
        final AtomicReference<PublishSubscriber<T>> curr = new AtomicReference<>();
        Observable.OnSubscribe<T> onSubscribe = new Observable.OnSubscribe<T>() { // from class: rx.internal.operators.OperatorPublish.1
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((Subscriber) ((Subscriber) x0));
            }

            public void call(Subscriber<? super T> child) {
                while (true) {
                    PublishSubscriber<T> r = (PublishSubscriber) curr.get();
                    if (r == null || r.isUnsubscribed()) {
                        PublishSubscriber<T> u = new PublishSubscriber<>(curr);
                        u.init();
                        if (curr.compareAndSet(r, u)) {
                            r = u;
                        } else {
                            continue;
                        }
                    }
                    InnerProducer<T> inner = new InnerProducer<>(r, child);
                    if (r.add((InnerProducer) inner)) {
                        child.add(inner);
                        child.setProducer(inner);
                        return;
                    }
                }
            }
        };
        return new OperatorPublish(onSubscribe, source, curr);
    }

    public static <T, R> Observable<R> create(Observable<? extends T> source, Func1<? super Observable<T>, ? extends Observable<R>> selector) {
        return create(source, selector, false);
    }

    public static <T, R> Observable<R> create(final Observable<? extends T> source, final Func1<? super Observable<T>, ? extends Observable<R>> selector, final boolean delayError) {
        return create(new Observable.OnSubscribe<R>() { // from class: rx.internal.operators.OperatorPublish.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // p021rx.functions.Action1
            public void call(final Subscriber<? super R> child) {
                final OnSubscribePublishMulticast<T> op = new OnSubscribePublishMulticast<>(RxRingBuffer.SIZE, delayError);
                Subscription subscription = new Subscriber<R>() { // from class: rx.internal.operators.OperatorPublish.2.1
                    @Override // p021rx.Observer
                    public void onNext(R t) {
                        child.onNext(t);
                    }

                    @Override // p021rx.Observer
                    public void onError(Throwable e) {
                        op.unsubscribe();
                        child.onError(e);
                    }

                    @Override // p021rx.Observer
                    public void onCompleted() {
                        op.unsubscribe();
                        child.onCompleted();
                    }

                    @Override // p021rx.Subscriber
                    public void setProducer(Producer p) {
                        child.setProducer(p);
                    }
                };
                child.add(op);
                child.add(subscription);
                ((Observable) selector.mo1999call(Observable.create(op))).unsafeSubscribe(subscription);
                source.unsafeSubscribe(op.subscriber());
            }
        });
    }

    private OperatorPublish(Observable.OnSubscribe<T> onSubscribe, Observable<? extends T> source, AtomicReference<PublishSubscriber<T>> current) {
        super(onSubscribe);
        this.source = source;
        this.current = current;
    }

    @Override // p021rx.observables.ConnectableObservable
    public void connect(Action1<? super Subscription> connection) {
        PublishSubscriber<T> ps;
        while (true) {
            ps = this.current.get();
            if (ps != null && !ps.isUnsubscribed()) {
                break;
            }
            PublishSubscriber<T> u = new PublishSubscriber<>(this.current);
            u.init();
            if (this.current.compareAndSet(ps, u)) {
                ps = u;
                break;
            }
        }
        boolean doConnect = !ps.shouldConnect.get() && ps.shouldConnect.compareAndSet(false, true);
        connection.call(ps);
        if (doConnect) {
            this.source.unsafeSubscribe(ps);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorPublish$PublishSubscriber */
    /* loaded from: classes2.dex */
    public static final class PublishSubscriber<T> extends Subscriber<T> implements Subscription {
        static final InnerProducer[] EMPTY = new InnerProducer[0];
        static final InnerProducer[] TERMINATED = new InnerProducer[0];
        final AtomicReference<PublishSubscriber<T>> current;
        boolean emitting;
        boolean missed;

        /* renamed from: nl */
        final NotificationLite<T> f1526nl;
        final AtomicReference<InnerProducer[]> producers;
        final Queue<Object> queue;
        final AtomicBoolean shouldConnect;
        volatile Object terminalEvent;

        public PublishSubscriber(AtomicReference<PublishSubscriber<T>> current) {
            this.queue = UnsafeAccess.isUnsafeAvailable() ? new SpscArrayQueue<>(RxRingBuffer.SIZE) : new SynchronizedQueue<>(RxRingBuffer.SIZE);
            this.f1526nl = NotificationLite.instance();
            this.producers = new AtomicReference<>(EMPTY);
            this.current = current;
            this.shouldConnect = new AtomicBoolean();
        }

        void init() {
            add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.OperatorPublish.PublishSubscriber.1
                @Override // p021rx.functions.Action0
                public void call() {
                    PublishSubscriber.this.producers.getAndSet(PublishSubscriber.TERMINATED);
                    PublishSubscriber.this.current.compareAndSet(PublishSubscriber.this, null);
                }
            }));
        }

        @Override // p021rx.Subscriber
        public void onStart() {
            request(RxRingBuffer.SIZE);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            if (!this.queue.offer(this.f1526nl.next(t))) {
                onError(new MissingBackpressureException());
            } else {
                dispatch();
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            if (this.terminalEvent == null) {
                this.terminalEvent = this.f1526nl.error(e);
                dispatch();
            }
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            if (this.terminalEvent == null) {
                this.terminalEvent = this.f1526nl.completed();
                dispatch();
            }
        }

        boolean add(InnerProducer<T> producer) {
            InnerProducer[] c;
            InnerProducer[] u;
            if (producer == null) {
                throw new NullPointerException();
            }
            do {
                c = this.producers.get();
                if (c == TERMINATED) {
                    return false;
                }
                int len = c.length;
                u = new InnerProducer[len + 1];
                System.arraycopy(c, 0, u, 0, len);
                u[len] = producer;
            } while (!this.producers.compareAndSet(c, u));
            return true;
        }

        void remove(InnerProducer<T> producer) {
            InnerProducer[] c;
            InnerProducer[] u;
            do {
                c = this.producers.get();
                if (c != EMPTY && c != TERMINATED) {
                    int j = -1;
                    int len = c.length;
                    int i = 0;
                    while (true) {
                        if (i >= len) {
                            break;
                        } else if (!c[i].equals(producer)) {
                            i++;
                        } else {
                            j = i;
                            break;
                        }
                    }
                    if (j >= 0) {
                        if (len == 1) {
                            u = EMPTY;
                        } else {
                            u = new InnerProducer[len - 1];
                            System.arraycopy(c, 0, u, 0, j);
                            System.arraycopy(c, j + 1, u, j, (len - j) - 1);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.producers.compareAndSet(c, u));
        }

        boolean checkTerminated(Object term, boolean empty) {
            if (term != null) {
                if (this.f1526nl.isCompleted(term)) {
                    if (empty) {
                        this.current.compareAndSet(this, null);
                        try {
                            InnerProducer<?>[] arr$ = this.producers.getAndSet(TERMINATED);
                            for (InnerProducer<?> ip : arr$) {
                                ip.child.onCompleted();
                            }
                            return true;
                        } finally {
                        }
                    }
                } else {
                    Throwable t = this.f1526nl.getError(term);
                    this.current.compareAndSet(this, null);
                    try {
                        InnerProducer<?>[] arr$2 = this.producers.getAndSet(TERMINATED);
                        for (InnerProducer<?> ip2 : arr$2) {
                            ip2.child.onError(t);
                        }
                        return true;
                    } finally {
                    }
                }
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:72:0x0138, code lost:
            r26.emitting = false;
            r16 = true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        void dispatch() {
            synchronized (this) {
                if (this.emitting) {
                    this.missed = true;
                    return;
                }
                this.emitting = true;
                this.missed = false;
                boolean skipFinal = false;
                while (true) {
                    try {
                        Object term = this.terminalEvent;
                        boolean empty = this.queue.isEmpty();
                        if (checkTerminated(term, empty)) {
                            if (1 != 0) {
                                return;
                            }
                            synchronized (this) {
                                this.emitting = false;
                            }
                            return;
                        }
                        if (!empty) {
                            InnerProducer<T>[] ps = this.producers.get();
                            int len = ps.length;
                            long maxRequested = Clock.MAX_TIME;
                            int unsubscribed = 0;
                            for (InnerProducer<T> ip : ps) {
                                long r = ip.get();
                                if (r >= 0) {
                                    maxRequested = Math.min(maxRequested, r);
                                } else if (r == Long.MIN_VALUE) {
                                    unsubscribed++;
                                }
                            }
                            if (len == unsubscribed) {
                                Object term2 = this.terminalEvent;
                                if (checkTerminated(term2, this.queue.poll() == null)) {
                                    if (1 != 0) {
                                        return;
                                    }
                                    synchronized (this) {
                                        this.emitting = false;
                                    }
                                    return;
                                }
                                request(1L);
                            } else {
                                int d = 0;
                                while (d < maxRequested) {
                                    Object term3 = this.terminalEvent;
                                    Object v = this.queue.poll();
                                    empty = v == null;
                                    if (checkTerminated(term3, empty)) {
                                        if (1 != 0) {
                                            return;
                                        }
                                        synchronized (this) {
                                            this.emitting = false;
                                        }
                                        return;
                                    } else if (empty) {
                                        break;
                                    } else {
                                        T value = this.f1526nl.getValue(v);
                                        for (InnerProducer<T> ip2 : ps) {
                                            if (ip2.get() > 0) {
                                                ip2.child.onNext(value);
                                                ip2.produced(1L);
                                            }
                                        }
                                        d++;
                                    }
                                }
                                if (d > 0) {
                                    request(d);
                                }
                                if (maxRequested != 0 && !empty) {
                                }
                            }
                        }
                        synchronized (this) {
                            if (!this.missed) {
                                break;
                            }
                            this.missed = false;
                        }
                        if (1 != 0) {
                            return;
                        }
                        synchronized (this) {
                            this.emitting = false;
                        }
                        return;
                    } catch (Throwable th) {
                        if (!skipFinal) {
                            synchronized (this) {
                                this.emitting = false;
                            }
                        }
                        throw th;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorPublish$InnerProducer */
    /* loaded from: classes2.dex */
    public static final class InnerProducer<T> extends AtomicLong implements Producer, Subscription {
        static final long NOT_REQUESTED = -4611686018427387904L;
        static final long UNSUBSCRIBED = Long.MIN_VALUE;
        private static final long serialVersionUID = -4453897557930727610L;
        final Subscriber<? super T> child;
        final PublishSubscriber<T> parent;

        public InnerProducer(PublishSubscriber<T> parent, Subscriber<? super T> child) {
            this.parent = parent;
            this.child = child;
            lazySet(NOT_REQUESTED);
        }

        @Override // p021rx.Producer
        public void request(long n) {
            long r;
            long u;
            if (n >= 0) {
                do {
                    r = get();
                    if (r != UNSUBSCRIBED) {
                        if (r < 0 || n != 0) {
                            if (r == NOT_REQUESTED) {
                                u = n;
                            } else {
                                u = r + n;
                                if (u < 0) {
                                    u = Clock.MAX_TIME;
                                }
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                } while (!compareAndSet(r, u));
                this.parent.dispatch();
            }
        }

        public long produced(long n) {
            long r;
            long u;
            if (n <= 0) {
                throw new IllegalArgumentException("Cant produce zero or less");
            }
            do {
                r = get();
                if (r == NOT_REQUESTED) {
                    throw new IllegalStateException("Produced without request");
                }
                if (r == UNSUBSCRIBED) {
                    return UNSUBSCRIBED;
                }
                u = r - n;
                if (u < 0) {
                    throw new IllegalStateException("More produced (" + n + ") than requested (" + r + ")");
                }
            } while (!compareAndSet(r, u));
            return u;
        }

        @Override // p021rx.Subscription
        public boolean isUnsubscribed() {
            return get() == UNSUBSCRIBED;
        }

        @Override // p021rx.Subscription
        public void unsubscribe() {
            long r = get();
            if (r != UNSUBSCRIBED) {
                long r2 = getAndSet(UNSUBSCRIBED);
                if (r2 != UNSUBSCRIBED) {
                    this.parent.remove(this);
                    this.parent.dispatch();
                }
            }
        }
    }
}
