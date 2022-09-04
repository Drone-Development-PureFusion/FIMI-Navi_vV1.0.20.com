package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p021rx.Observable;
import p021rx.Observer;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.Subscription;
/* renamed from: rx.internal.operators.OperatorOnBackpressureLatest */
/* loaded from: classes2.dex */
public final class OperatorOnBackpressureLatest<T> implements Observable.Operator<T, T> {
    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorOnBackpressureLatest$Holder */
    /* loaded from: classes2.dex */
    public static final class Holder {
        static final OperatorOnBackpressureLatest<Object> INSTANCE = new OperatorOnBackpressureLatest<>();

        Holder() {
        }
    }

    public static <T> OperatorOnBackpressureLatest<T> instance() {
        return (OperatorOnBackpressureLatest<T>) Holder.INSTANCE;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        LatestEmitter<T> producer = new LatestEmitter<>(child);
        LatestSubscriber<? super T> latestSubscriber = new LatestSubscriber<>(producer);
        producer.parent = latestSubscriber;
        child.add(latestSubscriber);
        child.add(producer);
        child.setProducer(producer);
        return latestSubscriber;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorOnBackpressureLatest$LatestEmitter */
    /* loaded from: classes2.dex */
    public static final class LatestEmitter<T> extends AtomicLong implements Producer, Subscription, Observer<T> {
        static final Object EMPTY = new Object();
        static final long NOT_REQUESTED = -4611686018427387904L;
        private static final long serialVersionUID = -1364393685005146274L;
        final Subscriber<? super T> child;
        volatile boolean done;
        boolean emitting;
        boolean missed;
        LatestSubscriber<? super T> parent;
        Throwable terminal;
        final AtomicReference<Object> value = new AtomicReference<>(EMPTY);

        public LatestEmitter(Subscriber<? super T> child) {
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
                    if (r != Long.MIN_VALUE) {
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
                } while (!compareAndSet(r, u));
                if (r == NOT_REQUESTED) {
                    this.parent.requestMore(Clock.MAX_TIME);
                }
                emit();
            }
        }

        long produced(long n) {
            long r;
            long u;
            do {
                r = get();
                if (r >= 0) {
                    u = r - n;
                } else {
                    return r;
                }
            } while (!compareAndSet(r, u));
            return u;
        }

        @Override // p021rx.Subscription
        public boolean isUnsubscribed() {
            return get() == Long.MIN_VALUE;
        }

        @Override // p021rx.Subscription
        public void unsubscribe() {
            if (get() >= 0) {
                getAndSet(Long.MIN_VALUE);
            }
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            this.value.lazySet(t);
            emit();
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.terminal = e;
            this.done = true;
            emit();
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            this.done = true;
            emit();
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x0065, code lost:
            r8.emitting = false;
            r1 = true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        void emit() {
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
                        long r = get();
                        if (r == Long.MIN_VALUE) {
                            skipFinal = true;
                            break;
                        }
                        Object v = this.value.get();
                        if (r > 0 && v != EMPTY) {
                            this.child.onNext(v);
                            this.value.compareAndSet(v, EMPTY);
                            produced(1L);
                            v = EMPTY;
                        }
                        if (v == EMPTY && this.done) {
                            Throwable e = this.terminal;
                            if (e != null) {
                                this.child.onError(e);
                            } else {
                                this.child.onCompleted();
                            }
                        }
                        synchronized (this) {
                            if (!this.missed) {
                                break;
                            }
                            this.missed = false;
                        }
                        break;
                    } catch (Throwable th) {
                        if (!skipFinal) {
                            synchronized (this) {
                                this.emitting = false;
                            }
                        }
                        throw th;
                    }
                }
                if (!skipFinal) {
                    synchronized (this) {
                        this.emitting = false;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorOnBackpressureLatest$LatestSubscriber */
    /* loaded from: classes2.dex */
    public static final class LatestSubscriber<T> extends Subscriber<T> {
        private final LatestEmitter<T> producer;

        LatestSubscriber(LatestEmitter<T> producer) {
            this.producer = producer;
        }

        @Override // p021rx.Subscriber
        public void onStart() {
            request(0L);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            this.producer.onNext(t);
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.producer.onError(e);
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            this.producer.onCompleted();
        }

        void requestMore(long n) {
            request(n);
        }
    }
}
