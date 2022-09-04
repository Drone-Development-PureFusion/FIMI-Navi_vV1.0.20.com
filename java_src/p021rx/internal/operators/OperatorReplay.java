package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.Subscription;
import p021rx.exceptions.Exceptions;
import p021rx.exceptions.OnErrorThrowable;
import p021rx.functions.Action0;
import p021rx.functions.Action1;
import p021rx.functions.Func0;
import p021rx.functions.Func1;
import p021rx.observables.ConnectableObservable;
import p021rx.schedulers.Timestamped;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.operators.OperatorReplay */
/* loaded from: classes2.dex */
public final class OperatorReplay<T> extends ConnectableObservable<T> {
    static final Func0 DEFAULT_UNBOUNDED_FACTORY = new Func0() { // from class: rx.internal.operators.OperatorReplay.1
        @Override // p021rx.functions.Func0, java.util.concurrent.Callable
        /* renamed from: call */
        public Object mo1996call() {
            return new UnboundedReplayBuffer(16);
        }
    };
    final Func0<? extends ReplayBuffer<T>> bufferFactory;
    final AtomicReference<ReplaySubscriber<T>> current;
    final Observable<? extends T> source;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorReplay$ReplayBuffer */
    /* loaded from: classes2.dex */
    public interface ReplayBuffer<T> {
        void complete();

        void error(Throwable th);

        void next(T t);

        void replay(InnerProducer<T> innerProducer);
    }

    public static <T, U, R> Observable<R> multicastSelector(final Func0<? extends ConnectableObservable<U>> connectableFactory, final Func1<? super Observable<U>, ? extends Observable<R>> selector) {
        return Observable.create(new Observable.OnSubscribe<R>() { // from class: rx.internal.operators.OperatorReplay.2
            @Override // p021rx.functions.Action1
            public void call(final Subscriber<? super R> child) {
                try {
                    ConnectableObservable connectableObservable = (ConnectableObservable) Func0.this.mo1996call();
                    ((Observable) selector.mo1999call(connectableObservable)).subscribe((Subscriber) child);
                    connectableObservable.connect(new Action1<Subscription>() { // from class: rx.internal.operators.OperatorReplay.2.1
                        @Override // p021rx.functions.Action1
                        public void call(Subscription t) {
                            child.add(t);
                        }
                    });
                } catch (Throwable e) {
                    Exceptions.throwOrReport(e, child);
                }
            }
        });
    }

    public static <T> ConnectableObservable<T> observeOn(final ConnectableObservable<T> co, Scheduler scheduler) {
        final Observable<T> observable = co.observeOn(scheduler);
        Observable.OnSubscribe<T> onSubscribe = new Observable.OnSubscribe<T>() { // from class: rx.internal.operators.OperatorReplay.3
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((Subscriber) ((Subscriber) x0));
            }

            public void call(final Subscriber<? super T> child) {
                Observable.this.unsafeSubscribe(new Subscriber<T>(child) { // from class: rx.internal.operators.OperatorReplay.3.1
                    @Override // p021rx.Observer
                    public void onNext(T t) {
                        child.onNext(t);
                    }

                    @Override // p021rx.Observer
                    public void onError(Throwable e) {
                        child.onError(e);
                    }

                    @Override // p021rx.Observer
                    public void onCompleted() {
                        child.onCompleted();
                    }
                });
            }
        };
        return new ConnectableObservable<T>(onSubscribe) { // from class: rx.internal.operators.OperatorReplay.4
            @Override // p021rx.observables.ConnectableObservable
            public void connect(Action1<? super Subscription> connection) {
                co.connect(connection);
            }
        };
    }

    public static <T> ConnectableObservable<T> create(Observable<? extends T> source) {
        return create(source, DEFAULT_UNBOUNDED_FACTORY);
    }

    public static <T> ConnectableObservable<T> create(Observable<? extends T> source, final int bufferSize) {
        return bufferSize == Integer.MAX_VALUE ? create(source) : create(source, new Func0<ReplayBuffer<T>>() { // from class: rx.internal.operators.OperatorReplay.5
            @Override // p021rx.functions.Func0, java.util.concurrent.Callable
            /* renamed from: call  reason: collision with other method in class */
            public ReplayBuffer<T> mo1996call() {
                return new SizeBoundReplayBuffer(bufferSize);
            }
        });
    }

    public static <T> ConnectableObservable<T> create(Observable<? extends T> source, long maxAge, TimeUnit unit, Scheduler scheduler) {
        return create(source, maxAge, unit, scheduler, Integer.MAX_VALUE);
    }

    public static <T> ConnectableObservable<T> create(Observable<? extends T> source, long maxAge, TimeUnit unit, final Scheduler scheduler, final int bufferSize) {
        final long maxAgeInMillis = unit.toMillis(maxAge);
        return create(source, new Func0<ReplayBuffer<T>>() { // from class: rx.internal.operators.OperatorReplay.6
            @Override // p021rx.functions.Func0, java.util.concurrent.Callable
            /* renamed from: call  reason: collision with other method in class */
            public ReplayBuffer<T> mo1996call() {
                return new SizeAndTimeBoundReplayBuffer(bufferSize, maxAgeInMillis, scheduler);
            }
        });
    }

    static <T> ConnectableObservable<T> create(Observable<? extends T> source, final Func0<? extends ReplayBuffer<T>> bufferFactory) {
        final AtomicReference<ReplaySubscriber<T>> curr = new AtomicReference<>();
        Observable.OnSubscribe<T> onSubscribe = new Observable.OnSubscribe<T>() { // from class: rx.internal.operators.OperatorReplay.7
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((Subscriber) ((Subscriber) x0));
            }

            public void call(Subscriber<? super T> child) {
                ReplaySubscriber<T> r;
                while (true) {
                    r = (ReplaySubscriber) curr.get();
                    if (r != null) {
                        break;
                    }
                    ReplaySubscriber<T> u = new ReplaySubscriber<>(curr, (ReplayBuffer) bufferFactory.mo1996call());
                    u.init();
                    if (curr.compareAndSet(r, u)) {
                        r = u;
                        break;
                    }
                }
                InnerProducer<T> inner = new InnerProducer<>(r, child);
                r.add((InnerProducer) inner);
                child.add(inner);
                r.buffer.replay(inner);
                child.setProducer(inner);
            }
        };
        return new OperatorReplay(onSubscribe, source, curr, bufferFactory);
    }

    private OperatorReplay(Observable.OnSubscribe<T> onSubscribe, Observable<? extends T> source, AtomicReference<ReplaySubscriber<T>> current, Func0<? extends ReplayBuffer<T>> bufferFactory) {
        super(onSubscribe);
        this.source = source;
        this.current = current;
        this.bufferFactory = bufferFactory;
    }

    @Override // p021rx.observables.ConnectableObservable
    public void connect(Action1<? super Subscription> connection) {
        ReplaySubscriber<T> ps;
        while (true) {
            ps = this.current.get();
            if (ps != null && !ps.isUnsubscribed()) {
                break;
            }
            ReplaySubscriber<T> u = new ReplaySubscriber<>(this.current, this.bufferFactory.mo1996call());
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
    /* renamed from: rx.internal.operators.OperatorReplay$ReplaySubscriber */
    /* loaded from: classes2.dex */
    public static final class ReplaySubscriber<T> extends Subscriber<T> implements Subscription {
        static final InnerProducer[] EMPTY = new InnerProducer[0];
        static final InnerProducer[] TERMINATED = new InnerProducer[0];
        final ReplayBuffer<T> buffer;
        boolean done;
        boolean emitting;
        long maxChildRequested;
        long maxUpstreamRequested;
        boolean missed;
        volatile Producer producer;

        /* renamed from: nl */
        final NotificationLite<T> f1528nl = NotificationLite.instance();
        final AtomicReference<InnerProducer[]> producers = new AtomicReference<>(EMPTY);
        final AtomicBoolean shouldConnect = new AtomicBoolean();

        public ReplaySubscriber(AtomicReference<ReplaySubscriber<T>> current, ReplayBuffer<T> buffer) {
            this.buffer = buffer;
            request(0L);
        }

        void init() {
            add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.OperatorReplay.ReplaySubscriber.1
                @Override // p021rx.functions.Action0
                public void call() {
                    ReplaySubscriber.this.producers.getAndSet(ReplaySubscriber.TERMINATED);
                }
            }));
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

        @Override // p021rx.Subscriber
        public void setProducer(Producer p) {
            Producer p0 = this.producer;
            if (p0 != null) {
                throw new IllegalStateException("Only a single producer can be set on a Subscriber.");
            }
            this.producer = p;
            manageRequests();
            replay();
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            if (!this.done) {
                this.buffer.next(t);
                replay();
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            if (!this.done) {
                this.done = true;
                try {
                    this.buffer.error(e);
                    replay();
                } finally {
                    unsubscribe();
                }
            }
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            if (!this.done) {
                this.done = true;
                try {
                    this.buffer.complete();
                    replay();
                } finally {
                    unsubscribe();
                }
            }
        }

        void manageRequests() {
            if (!isUnsubscribed()) {
                synchronized (this) {
                    if (this.emitting) {
                        this.missed = true;
                    } else {
                        this.emitting = true;
                        while (!isUnsubscribed()) {
                            InnerProducer<T>[] a = this.producers.get();
                            long ri = this.maxChildRequested;
                            long maxTotalRequests = ri;
                            for (InnerProducer<T> rp : a) {
                                maxTotalRequests = Math.max(maxTotalRequests, rp.totalRequested.get());
                            }
                            long ur = this.maxUpstreamRequested;
                            Producer p = this.producer;
                            long diff = maxTotalRequests - ri;
                            if (diff != 0) {
                                this.maxChildRequested = maxTotalRequests;
                                if (p != null) {
                                    if (ur != 0) {
                                        this.maxUpstreamRequested = 0L;
                                        p.request(ur + diff);
                                    } else {
                                        p.request(diff);
                                    }
                                } else {
                                    long u = ur + diff;
                                    if (u < 0) {
                                        u = Clock.MAX_TIME;
                                    }
                                    this.maxUpstreamRequested = u;
                                }
                            } else if (ur != 0 && p != null) {
                                this.maxUpstreamRequested = 0L;
                                p.request(ur);
                            }
                            synchronized (this) {
                                if (!this.missed) {
                                    this.emitting = false;
                                } else {
                                    this.missed = false;
                                }
                            }
                        }
                    }
                }
            }
        }

        void replay() {
            InnerProducer<T>[] a = this.producers.get();
            for (InnerProducer<T> rp : a) {
                this.buffer.replay(rp);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorReplay$InnerProducer */
    /* loaded from: classes2.dex */
    public static final class InnerProducer<T> extends AtomicLong implements Producer, Subscription {
        static final long UNSUBSCRIBED = Long.MIN_VALUE;
        private static final long serialVersionUID = -4453897557930727610L;
        final Subscriber<? super T> child;
        boolean emitting;
        Object index;
        boolean missed;
        final ReplaySubscriber<T> parent;
        final AtomicLong totalRequested = new AtomicLong();

        public InnerProducer(ReplaySubscriber<T> parent, Subscriber<? super T> child) {
            this.parent = parent;
            this.child = child;
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
                            u = r + n;
                            if (u < 0) {
                                u = Clock.MAX_TIME;
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                } while (!compareAndSet(r, u));
                addTotalRequested(n);
                this.parent.manageRequests();
                this.parent.buffer.replay(this);
            }
        }

        void addTotalRequested(long n) {
            long r;
            long u;
            do {
                r = this.totalRequested.get();
                u = r + n;
                if (u < 0) {
                    u = Clock.MAX_TIME;
                }
            } while (!this.totalRequested.compareAndSet(r, u));
        }

        public long produced(long n) {
            long r;
            long u;
            if (n <= 0) {
                throw new IllegalArgumentException("Cant produce zero or less");
            }
            do {
                r = get();
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
                    this.parent.manageRequests();
                }
            }
        }

        <U> U index() {
            return (U) this.index;
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay$UnboundedReplayBuffer */
    /* loaded from: classes2.dex */
    static final class UnboundedReplayBuffer<T> extends ArrayList<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 7063189396499112664L;

        /* renamed from: nl */
        final NotificationLite<T> f1529nl = NotificationLite.instance();
        volatile int size;

        public UnboundedReplayBuffer(int capacityHint) {
            super(capacityHint);
        }

        @Override // p021rx.internal.operators.OperatorReplay.ReplayBuffer
        public void next(T value) {
            add(this.f1529nl.next(value));
            this.size++;
        }

        @Override // p021rx.internal.operators.OperatorReplay.ReplayBuffer
        public void error(Throwable e) {
            add(this.f1529nl.error(e));
            this.size++;
        }

        @Override // p021rx.internal.operators.OperatorReplay.ReplayBuffer
        public void complete() {
            add(this.f1529nl.completed());
            this.size++;
        }

        @Override // p021rx.internal.operators.OperatorReplay.ReplayBuffer
        public void replay(InnerProducer<T> output) {
            synchronized (output) {
                if (output.emitting) {
                    output.missed = true;
                    return;
                }
                output.emitting = true;
                while (!output.isUnsubscribed()) {
                    int sourceIndex = this.size;
                    Integer destIndexObject = (Integer) output.index();
                    int destIndex = destIndexObject != null ? destIndexObject.intValue() : 0;
                    long r = output.get();
                    long e = 0;
                    while (r != 0 && destIndex < sourceIndex) {
                        Object o = get(destIndex);
                        try {
                            if (!this.f1529nl.accept(output.child, o) && !output.isUnsubscribed()) {
                                destIndex++;
                                r--;
                                e++;
                            } else {
                                return;
                            }
                        } catch (Throwable err) {
                            Exceptions.throwIfFatal(err);
                            output.unsubscribe();
                            if (!this.f1529nl.isError(o) && !this.f1529nl.isCompleted(o)) {
                                output.child.onError(OnErrorThrowable.addValueAsLastCause(err, this.f1529nl.getValue(o)));
                                return;
                            }
                            return;
                        }
                    }
                    if (e != 0) {
                        output.index = Integer.valueOf(destIndex);
                        if (r != Clock.MAX_TIME) {
                            output.produced(e);
                        }
                    }
                    synchronized (output) {
                        if (!output.missed) {
                            output.emitting = false;
                            return;
                        }
                        output.missed = false;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorReplay$Node */
    /* loaded from: classes2.dex */
    public static final class Node extends AtomicReference<Node> {
        private static final long serialVersionUID = 245354315435971818L;
        final long index;
        final Object value;

        public Node(Object value, long index) {
            this.value = value;
            this.index = index;
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay$BoundedReplayBuffer */
    /* loaded from: classes2.dex */
    static class BoundedReplayBuffer<T> extends AtomicReference<Node> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 2346567790059478686L;
        long index;

        /* renamed from: nl */
        final NotificationLite<T> f1527nl = NotificationLite.instance();
        int size;
        Node tail;

        public BoundedReplayBuffer() {
            Node n = new Node(null, 0L);
            this.tail = n;
            set(n);
        }

        final void addLast(Node n) {
            this.tail.set(n);
            this.tail = n;
            this.size++;
        }

        final void removeFirst() {
            Node head = get();
            Node next = head.get();
            if (next == null) {
                throw new IllegalStateException("Empty list!");
            }
            this.size--;
            setFirst(next);
        }

        final void removeSome(int n) {
            Node head = get();
            while (n > 0) {
                head = head.get();
                n--;
                this.size--;
            }
            setFirst(head);
        }

        final void setFirst(Node n) {
            set(n);
        }

        @Override // p021rx.internal.operators.OperatorReplay.ReplayBuffer
        public final void next(T value) {
            Object o = enterTransform(this.f1527nl.next(value));
            long j = this.index + 1;
            this.index = j;
            Node n = new Node(o, j);
            addLast(n);
            truncate();
        }

        @Override // p021rx.internal.operators.OperatorReplay.ReplayBuffer
        public final void error(Throwable e) {
            Object o = enterTransform(this.f1527nl.error(e));
            long j = this.index + 1;
            this.index = j;
            Node n = new Node(o, j);
            addLast(n);
            truncateFinal();
        }

        @Override // p021rx.internal.operators.OperatorReplay.ReplayBuffer
        public final void complete() {
            Object o = enterTransform(this.f1527nl.completed());
            long j = this.index + 1;
            this.index = j;
            Node n = new Node(o, j);
            addLast(n);
            truncateFinal();
        }

        @Override // p021rx.internal.operators.OperatorReplay.ReplayBuffer
        public final void replay(InnerProducer<T> output) {
            Node v;
            synchronized (output) {
                if (output.emitting) {
                    output.missed = true;
                    return;
                }
                output.emitting = true;
                while (!output.isUnsubscribed()) {
                    long r = output.get();
                    boolean unbounded = r == Clock.MAX_TIME;
                    long e = 0;
                    Node node = (Node) output.index();
                    if (node == null) {
                        node = get();
                        output.index = node;
                        output.addTotalRequested(node.index);
                    }
                    if (!output.isUnsubscribed()) {
                        while (r != 0 && (v = node.get()) != null) {
                            Object o = leaveTransform(v.value);
                            try {
                                if (this.f1527nl.accept(output.child, o)) {
                                    output.index = null;
                                    return;
                                }
                                e++;
                                r--;
                                node = v;
                                if (output.isUnsubscribed()) {
                                    return;
                                }
                            } catch (Throwable err) {
                                output.index = null;
                                Exceptions.throwIfFatal(err);
                                output.unsubscribe();
                                if (!this.f1527nl.isError(o) && !this.f1527nl.isCompleted(o)) {
                                    output.child.onError(OnErrorThrowable.addValueAsLastCause(err, this.f1527nl.getValue(o)));
                                    return;
                                }
                                return;
                            }
                        }
                        if (e != 0) {
                            output.index = node;
                            if (!unbounded) {
                                output.produced(e);
                            }
                        }
                        synchronized (output) {
                            if (!output.missed) {
                                output.emitting = false;
                                return;
                            }
                            output.missed = false;
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        Object enterTransform(Object value) {
            return value;
        }

        Object leaveTransform(Object value) {
            return value;
        }

        void truncate() {
        }

        void truncateFinal() {
        }

        final void collect(Collection<? super T> output) {
            Node n = get();
            while (true) {
                Node next = n.get();
                if (next != null) {
                    Object o = next.value;
                    Object v = leaveTransform(o);
                    if (!this.f1527nl.isCompleted(v) && !this.f1527nl.isError(v)) {
                        output.add((T) this.f1527nl.getValue(v));
                        n = next;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
        }

        boolean hasError() {
            return this.tail.value != null && this.f1527nl.isError(leaveTransform(this.tail.value));
        }

        boolean hasCompleted() {
            return this.tail.value != null && this.f1527nl.isCompleted(leaveTransform(this.tail.value));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorReplay$SizeBoundReplayBuffer */
    /* loaded from: classes2.dex */
    public static final class SizeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = -5898283885385201806L;
        final int limit;

        public SizeBoundReplayBuffer(int limit) {
            this.limit = limit;
        }

        @Override // p021rx.internal.operators.OperatorReplay.BoundedReplayBuffer
        void truncate() {
            if (this.size > this.limit) {
                removeFirst();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorReplay$SizeAndTimeBoundReplayBuffer */
    /* loaded from: classes2.dex */
    public static final class SizeAndTimeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = 3457957419649567404L;
        final int limit;
        final long maxAgeInMillis;
        final Scheduler scheduler;

        public SizeAndTimeBoundReplayBuffer(int limit, long maxAgeInMillis, Scheduler scheduler) {
            this.scheduler = scheduler;
            this.limit = limit;
            this.maxAgeInMillis = maxAgeInMillis;
        }

        @Override // p021rx.internal.operators.OperatorReplay.BoundedReplayBuffer
        Object enterTransform(Object value) {
            return new Timestamped(this.scheduler.now(), value);
        }

        @Override // p021rx.internal.operators.OperatorReplay.BoundedReplayBuffer
        Object leaveTransform(Object value) {
            return ((Timestamped) value).getValue();
        }

        @Override // p021rx.internal.operators.OperatorReplay.BoundedReplayBuffer
        void truncate() {
            long timeLimit = this.scheduler.now() - this.maxAgeInMillis;
            Node prev = (Node) get();
            Node next = prev.get();
            int e = 0;
            while (next != null) {
                if (this.size > this.limit) {
                    e++;
                    this.size--;
                    prev = next;
                    next = next.get();
                } else {
                    Timestamped<?> v = (Timestamped) next.value;
                    if (v.getTimestampMillis() > timeLimit) {
                        break;
                    }
                    e++;
                    this.size--;
                    prev = next;
                    next = next.get();
                }
            }
            if (e != 0) {
                setFirst(prev);
            }
        }

        @Override // p021rx.internal.operators.OperatorReplay.BoundedReplayBuffer
        void truncateFinal() {
            long timeLimit = this.scheduler.now() - this.maxAgeInMillis;
            Node prev = (Node) get();
            int e = 0;
            for (Node next = prev.get(); next != null && this.size > 1; next = next.get()) {
                Timestamped<?> v = (Timestamped) next.value;
                if (v.getTimestampMillis() > timeLimit) {
                    break;
                }
                e++;
                this.size--;
                prev = next;
            }
            if (e != 0) {
                setFirst(prev);
            }
        }
    }
}
