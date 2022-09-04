package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.Subscription;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Action0;
import p021rx.functions.Func1;
import p021rx.internal.util.atomic.SpscAtomicArrayQueue;
import p021rx.internal.util.unsafe.SpscArrayQueue;
import p021rx.internal.util.unsafe.UnsafeAccess;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.operators.OperatorEagerConcatMap */
/* loaded from: classes2.dex */
public final class OperatorEagerConcatMap<T, R> implements Observable.Operator<R, T> {
    final int bufferSize;
    final Func1<? super T, ? extends Observable<? extends R>> mapper;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorEagerConcatMap(Func1<? super T, ? extends Observable<? extends R>> mapper, int bufferSize) {
        this.mapper = mapper;
        this.bufferSize = bufferSize;
    }

    public Subscriber<? super T> call(Subscriber<? super R> t) {
        EagerOuterSubscriber<T, R> outer = new EagerOuterSubscriber<>(this.mapper, this.bufferSize, t);
        outer.init();
        return outer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorEagerConcatMap$EagerOuterProducer */
    /* loaded from: classes2.dex */
    public static final class EagerOuterProducer extends AtomicLong implements Producer {
        private static final long serialVersionUID = -657299606803478389L;
        final EagerOuterSubscriber<?, ?> parent;

        public EagerOuterProducer(EagerOuterSubscriber<?, ?> parent) {
            this.parent = parent;
        }

        @Override // p021rx.Producer
        public void request(long n) {
            if (n < 0) {
                throw new IllegalStateException("n >= 0 required but it was " + n);
            }
            if (n > 0) {
                BackpressureUtils.getAndAddRequest(this, n);
                this.parent.drain();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorEagerConcatMap$EagerOuterSubscriber */
    /* loaded from: classes2.dex */
    public static final class EagerOuterSubscriber<T, R> extends Subscriber<T> {
        final Subscriber<? super R> actual;
        final int bufferSize;
        volatile boolean cancelled;
        volatile boolean done;
        Throwable error;
        final Func1<? super T, ? extends Observable<? extends R>> mapper;
        private EagerOuterProducer sharedProducer;
        final LinkedList<EagerInnerSubscriber<R>> subscribers = new LinkedList<>();
        final AtomicInteger wip = new AtomicInteger();

        public EagerOuterSubscriber(Func1<? super T, ? extends Observable<? extends R>> mapper, int bufferSize, Subscriber<? super R> actual) {
            this.mapper = mapper;
            this.bufferSize = bufferSize;
            this.actual = actual;
        }

        void init() {
            this.sharedProducer = new EagerOuterProducer(this);
            add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.OperatorEagerConcatMap.EagerOuterSubscriber.1
                @Override // p021rx.functions.Action0
                public void call() {
                    EagerOuterSubscriber.this.cancelled = true;
                    if (EagerOuterSubscriber.this.wip.getAndIncrement() == 0) {
                        EagerOuterSubscriber.this.cleanup();
                    }
                }
            }));
            this.actual.add(this);
            this.actual.setProducer(this.sharedProducer);
        }

        void cleanup() {
            List<Subscription> list;
            synchronized (this.subscribers) {
                list = new ArrayList<>(this.subscribers);
                this.subscribers.clear();
            }
            for (Subscription s : list) {
                s.unsubscribe();
            }
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            try {
                Observable<? extends R> observable = this.mapper.mo1999call(t);
                EagerInnerSubscriber<R> inner = new EagerInnerSubscriber<>(this, this.bufferSize);
                if (!this.cancelled) {
                    synchronized (this.subscribers) {
                        if (!this.cancelled) {
                            this.subscribers.add(inner);
                            if (!this.cancelled) {
                                observable.unsafeSubscribe(inner);
                                drain();
                            }
                        }
                    }
                }
            } catch (Throwable e) {
                Exceptions.throwOrReport(e, this.actual, t);
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.error = e;
            this.done = true;
            drain();
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            this.done = true;
            drain();
        }

        /* JADX WARN: Code restructure failed: missing block: B:45:0x00a7, code lost:
            if (r4 == 0) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00a9, code lost:
            if (r18 != false) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00ab, code lost:
            r15.addAndGet(r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00ae, code lost:
            if (r8 != false) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00b0, code lost:
            r11.requestMore(-r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00b8, code lost:
            if (r8 != false) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x001a, code lost:
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        void drain() {
            EagerInnerSubscriber<R> innerSubscriber;
            if (this.wip.getAndIncrement() == 0) {
                int missed = 1;
                AtomicLong requested = this.sharedProducer;
                Subscriber<? super R> actualSubscriber = this.actual;
                NotificationLite<R> nl = NotificationLite.instance();
                while (!this.cancelled) {
                    boolean outerDone = this.done;
                    synchronized (this.subscribers) {
                        innerSubscriber = this.subscribers.peek();
                    }
                    boolean empty = innerSubscriber == null;
                    if (outerDone) {
                        Throwable error = this.error;
                        if (error != null) {
                            cleanup();
                            actualSubscriber.onError(error);
                            return;
                        } else if (empty) {
                            actualSubscriber.onCompleted();
                            return;
                        }
                    }
                    if (!empty) {
                        long requestedAmount = requested.get();
                        long emittedAmount = 0;
                        boolean unbounded = requestedAmount == Clock.MAX_TIME;
                        Queue<Object> innerQueue = innerSubscriber.queue;
                        boolean innerDone = false;
                        while (true) {
                            boolean outerDone2 = innerSubscriber.done;
                            Object v = innerQueue.peek();
                            boolean empty2 = v == null;
                            if (outerDone2) {
                                Throwable innerError = innerSubscriber.error;
                                if (innerError != null) {
                                    cleanup();
                                    actualSubscriber.onError(innerError);
                                    return;
                                } else if (empty2) {
                                    synchronized (this.subscribers) {
                                        this.subscribers.poll();
                                    }
                                    innerSubscriber.unsubscribe();
                                    innerDone = true;
                                    break;
                                }
                            }
                            if (empty2 || requestedAmount == 0) {
                                break;
                            }
                            innerQueue.poll();
                            try {
                                actualSubscriber.onNext((Object) nl.getValue(v));
                                requestedAmount--;
                                emittedAmount--;
                            } catch (Throwable ex) {
                                Exceptions.throwOrReport(ex, actualSubscriber, v);
                                return;
                            }
                        }
                    }
                    missed = this.wip.addAndGet(-missed);
                    if (missed == 0) {
                        return;
                    }
                }
                cleanup();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorEagerConcatMap$EagerInnerSubscriber */
    /* loaded from: classes2.dex */
    public static final class EagerInnerSubscriber<T> extends Subscriber<T> {
        volatile boolean done;
        Throwable error;

        /* renamed from: nl */
        final NotificationLite<T> f1517nl;
        final EagerOuterSubscriber<?, T> parent;
        final Queue<Object> queue;

        public EagerInnerSubscriber(EagerOuterSubscriber<?, T> parent, int bufferSize) {
            Queue<Object> q;
            this.parent = parent;
            if (UnsafeAccess.isUnsafeAvailable()) {
                q = new SpscArrayQueue<>(bufferSize);
            } else {
                q = new SpscAtomicArrayQueue<>(bufferSize);
            }
            this.queue = q;
            this.f1517nl = NotificationLite.instance();
            request(bufferSize);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            this.queue.offer(this.f1517nl.next(t));
            this.parent.drain();
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.error = e;
            this.done = true;
            this.parent.drain();
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            this.done = true;
            this.parent.drain();
        }

        void requestMore(long n) {
            request(n);
        }
    }
}
