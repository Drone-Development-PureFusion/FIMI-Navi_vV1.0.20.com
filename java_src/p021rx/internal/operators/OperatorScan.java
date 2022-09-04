package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import p021rx.Observable;
import p021rx.Observer;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func0;
import p021rx.functions.Func2;
import p021rx.internal.util.atomic.SpscLinkedAtomicQueue;
import p021rx.internal.util.unsafe.SpscLinkedQueue;
import p021rx.internal.util.unsafe.UnsafeAccess;
/* renamed from: rx.internal.operators.OperatorScan */
/* loaded from: classes2.dex */
public final class OperatorScan<R, T> implements Observable.Operator<R, T> {
    private static final Object NO_INITIAL_VALUE = new Object();
    final Func2<R, ? super T, R> accumulator;
    private final Func0<R> initialValueFactory;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorScan(final R initialValue, Func2<R, ? super T, R> accumulator) {
        this((Func0) new Func0<R>() { // from class: rx.internal.operators.OperatorScan.1
            @Override // p021rx.functions.Func0, java.util.concurrent.Callable
            /* renamed from: call */
            public R mo1996call() {
                return (R) initialValue;
            }
        }, (Func2) accumulator);
    }

    public OperatorScan(Func0<R> initialValueFactory, Func2<R, ? super T, R> accumulator) {
        this.initialValueFactory = initialValueFactory;
        this.accumulator = accumulator;
    }

    public OperatorScan(Func2<R, ? super T, R> accumulator) {
        this(NO_INITIAL_VALUE, accumulator);
    }

    public Subscriber<? super T> call(final Subscriber<? super R> child) {
        final R initialValue = this.initialValueFactory.mo1996call();
        if (initialValue == NO_INITIAL_VALUE) {
            return (Subscriber<T>) new Subscriber<T>(child) { // from class: rx.internal.operators.OperatorScan.2
                boolean once;
                R value;

                @Override // p021rx.Observer
                public void onNext(T t) {
                    R v;
                    if (!this.once) {
                        this.once = true;
                        v = (R) t;
                    } else {
                        R v2 = this.value;
                        try {
                            v = OperatorScan.this.accumulator.mo1993call(v2, t);
                        } catch (Throwable e) {
                            Exceptions.throwOrReport(e, child, t);
                            return;
                        }
                    }
                    this.value = v;
                    child.onNext(v);
                }

                @Override // p021rx.Observer
                public void onError(Throwable e) {
                    child.onError(e);
                }

                @Override // p021rx.Observer
                public void onCompleted() {
                    child.onCompleted();
                }
            };
        }
        final InitialProducer<R> ip = new InitialProducer<>(initialValue, child);
        Subscriber subscriber = (Subscriber<T>) new Subscriber<T>() { // from class: rx.internal.operators.OperatorScan.3
            private R value;

            {
                this.value = (R) initialValue;
            }

            @Override // p021rx.Observer
            public void onNext(T currentValue) {
                try {
                    R v = OperatorScan.this.accumulator.mo1993call(this.value, currentValue);
                    this.value = v;
                    ip.onNext(v);
                } catch (Throwable e) {
                    Exceptions.throwOrReport(e, this, currentValue);
                }
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                ip.onError(e);
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                ip.onCompleted();
            }

            @Override // p021rx.Subscriber
            public void setProducer(Producer producer) {
                ip.setProducer(producer);
            }
        };
        child.add(subscriber);
        child.setProducer(ip);
        return subscriber;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorScan$InitialProducer */
    /* loaded from: classes2.dex */
    public static final class InitialProducer<R> implements Producer, Observer<R> {
        final Subscriber<? super R> child;
        volatile boolean done;
        boolean emitting;
        Throwable error;
        boolean missed;
        long missedRequested;
        volatile Producer producer;
        final Queue<Object> queue;
        final AtomicLong requested;

        public InitialProducer(R initialValue, Subscriber<? super R> child) {
            Queue<Object> q;
            this.child = child;
            if (UnsafeAccess.isUnsafeAvailable()) {
                q = new SpscLinkedQueue<>();
            } else {
                q = new SpscLinkedAtomicQueue<>();
            }
            this.queue = q;
            q.offer(NotificationLite.instance().next(initialValue));
            this.requested = new AtomicLong();
        }

        @Override // p021rx.Observer
        public void onNext(R t) {
            this.queue.offer(NotificationLite.instance().next(t));
            emit();
        }

        boolean checkTerminated(boolean d, boolean empty, Subscriber<? super R> child) {
            if (child.isUnsubscribed()) {
                return true;
            }
            if (d) {
                Throwable err = this.error;
                if (err != null) {
                    child.onError(err);
                    return true;
                } else if (empty) {
                    child.onCompleted();
                    return true;
                }
            }
            return false;
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.error = e;
            this.done = true;
            emit();
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            this.done = true;
            emit();
        }

        @Override // p021rx.Producer
        public void request(long n) {
            if (n < 0) {
                throw new IllegalArgumentException("n >= required but it was " + n);
            }
            if (n != 0) {
                BackpressureUtils.getAndAddRequest(this.requested, n);
                Producer p = this.producer;
                if (p == null) {
                    synchronized (this.requested) {
                        p = this.producer;
                        if (p == null) {
                            long mr = this.missedRequested;
                            this.missedRequested = BackpressureUtils.addCap(mr, n);
                        }
                    }
                }
                if (p != null) {
                    p.request(n);
                }
                emit();
            }
        }

        public void setProducer(Producer p) {
            long mr;
            if (p == null) {
                throw new NullPointerException();
            }
            synchronized (this.requested) {
                if (this.producer != null) {
                    throw new IllegalStateException("Can't set more than one Producer!");
                }
                mr = this.missedRequested - 1;
                this.missedRequested = 0L;
                this.producer = p;
            }
            if (mr > 0) {
                p.request(mr);
            }
            emit();
        }

        void emit() {
            synchronized (this) {
                if (this.emitting) {
                    this.missed = true;
                    return;
                }
                this.emitting = true;
                emitLoop();
            }
        }

        void emitLoop() {
            Subscriber<? super R> child = this.child;
            Queue<Object> queue = this.queue;
            NotificationLite<R> nl = NotificationLite.instance();
            AtomicLong requested = this.requested;
            long r = requested.get();
            while (true) {
                boolean max = r == Clock.MAX_TIME;
                boolean d = this.done;
                if (!checkTerminated(d, queue.isEmpty(), child)) {
                    long e = 0;
                    while (r != 0) {
                        boolean d2 = this.done;
                        Object o = queue.poll();
                        boolean empty = o == null;
                        if (!checkTerminated(d2, empty, child)) {
                            if (empty) {
                                break;
                            }
                            Object obj = (Object) nl.getValue(o);
                            try {
                                child.onNext(obj);
                                r--;
                                e--;
                            } catch (Throwable ex) {
                                Exceptions.throwOrReport(ex, child, obj);
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                    if (e != 0 && !max) {
                        r = requested.addAndGet(e);
                    }
                    synchronized (this) {
                        if (!this.missed) {
                            this.emitting = false;
                            return;
                        }
                        this.missed = false;
                    }
                } else {
                    return;
                }
            }
        }
    }
}
