package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.Subscription;
import p021rx.exceptions.Exceptions;
import p021rx.exceptions.MissingBackpressureException;
import p021rx.functions.Func0;
import p021rx.functions.Func1;
import p021rx.internal.producers.ProducerArbiter;
import p021rx.internal.util.unsafe.SpscArrayQueue;
import p021rx.internal.util.unsafe.UnsafeAccess;
/* renamed from: rx.internal.operators.OperatorMapNotification */
/* loaded from: classes2.dex */
public final class OperatorMapNotification<T, R> implements Observable.Operator<R, T> {
    final Func0<? extends R> onCompleted;
    final Func1<? super Throwable, ? extends R> onError;
    final Func1<? super T, ? extends R> onNext;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorMapNotification(Func1<? super T, ? extends R> onNext, Func1<? super Throwable, ? extends R> onError, Func0<? extends R> onCompleted) {
        this.onNext = onNext;
        this.onError = onError;
        this.onCompleted = onCompleted;
    }

    public Subscriber<? super T> call(Subscriber<? super R> o) {
        ProducerArbiter pa = new ProducerArbiter();
        OperatorMapNotification<T, R>.MapNotificationSubscriber subscriber = new MapNotificationSubscriber(pa, o);
        o.add(subscriber);
        subscriber.init();
        return subscriber;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorMapNotification$MapNotificationSubscriber */
    /* loaded from: classes2.dex */
    public final class MapNotificationSubscriber extends Subscriber<T> {
        final SingleEmitter<R> emitter;

        /* renamed from: o */
        private final Subscriber<? super R> f1519o;

        /* renamed from: pa */
        private final ProducerArbiter f1520pa;

        MapNotificationSubscriber(ProducerArbiter pa, Subscriber<? super R> o) {
            this.f1520pa = pa;
            this.f1519o = o;
            this.emitter = new SingleEmitter<>(o, pa, this);
        }

        void init() {
            this.f1519o.setProducer(this.emitter);
        }

        @Override // p021rx.Subscriber
        public void setProducer(Producer producer) {
            this.f1520pa.setProducer(producer);
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            try {
                this.emitter.offerAndComplete(OperatorMapNotification.this.onCompleted.mo1996call());
            } catch (Throwable e) {
                Exceptions.throwOrReport(e, this.f1519o);
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            try {
                this.emitter.offerAndComplete(OperatorMapNotification.this.onError.mo1999call(e));
            } catch (Throwable e2) {
                Exceptions.throwOrReport(e2, this.f1519o);
            }
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            try {
                this.emitter.offer(OperatorMapNotification.this.onNext.mo1999call(t));
            } catch (Throwable e) {
                Exceptions.throwOrReport(e, this.f1519o, t);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorMapNotification$SingleEmitter */
    /* loaded from: classes2.dex */
    public static final class SingleEmitter<T> extends AtomicLong implements Producer, Subscription {
        private static final long serialVersionUID = -249869671366010660L;
        final Subscription cancel;
        final Subscriber<? super T> child;
        volatile boolean complete;
        boolean emitting;
        boolean missed;

        /* renamed from: nl */
        final NotificationLite<T> f1521nl;
        final Producer producer;
        final Queue<Object> queue;

        public SingleEmitter(Subscriber<? super T> child, Producer producer, Subscription cancel) {
            this.child = child;
            this.producer = producer;
            this.cancel = cancel;
            this.queue = UnsafeAccess.isUnsafeAvailable() ? new SpscArrayQueue<>(2) : new ConcurrentLinkedQueue<>();
            this.f1521nl = NotificationLite.instance();
        }

        @Override // p021rx.Producer
        public void request(long n) {
            long r;
            long u;
            do {
                r = get();
                if (r >= 0) {
                    u = r + n;
                    if (u < 0) {
                        u = Clock.MAX_TIME;
                    }
                } else {
                    return;
                }
            } while (!compareAndSet(r, u));
            this.producer.request(n);
            drain();
        }

        void produced(long n) {
            long r;
            long u;
            do {
                r = get();
                if (r >= 0) {
                    u = r - n;
                    if (u < 0) {
                        throw new IllegalStateException("More produced (" + n + ") than requested (" + r + ")");
                    }
                } else {
                    return;
                }
            } while (!compareAndSet(r, u));
        }

        public void offer(T value) {
            if (!this.queue.offer(value)) {
                this.child.onError(new MissingBackpressureException());
                unsubscribe();
                return;
            }
            drain();
        }

        public void offerAndComplete(T value) {
            if (!this.queue.offer(value)) {
                this.child.onError(new MissingBackpressureException());
                unsubscribe();
                return;
            }
            this.complete = true;
            drain();
        }

        void drain() {
            synchronized (this) {
                if (this.emitting) {
                    this.missed = true;
                    return;
                }
                this.emitting = true;
                this.missed = false;
                while (true) {
                    try {
                        long r = get();
                        boolean c = this.complete;
                        boolean empty = this.queue.isEmpty();
                        if (c && empty) {
                            this.child.onCompleted();
                            if (1 != 0) {
                                return;
                            }
                            synchronized (this) {
                                this.emitting = false;
                            }
                            return;
                        }
                        if (r > 0) {
                            Object v = this.queue.poll();
                            if (v != null) {
                                this.child.onNext((T) this.f1521nl.getValue(v));
                                produced(1L);
                            } else if (c) {
                                this.child.onCompleted();
                                if (1 != 0) {
                                    return;
                                }
                                synchronized (this) {
                                    this.emitting = false;
                                }
                                return;
                            }
                        }
                        synchronized (this) {
                            if (!this.missed) {
                                this.emitting = false;
                            } else {
                                this.missed = false;
                            }
                        }
                        if (1 != 0) {
                            return;
                        }
                        synchronized (this) {
                            this.emitting = false;
                        }
                        return;
                    } catch (Throwable th) {
                        if (0 == 0) {
                            synchronized (this) {
                                this.emitting = false;
                            }
                        }
                        throw th;
                    }
                }
            }
        }

        @Override // p021rx.Subscription
        public boolean isUnsubscribed() {
            return get() < 0;
        }

        @Override // p021rx.Subscription
        public void unsubscribe() {
            long r = get();
            if (r != Long.MIN_VALUE) {
                long r2 = getAndSet(Long.MIN_VALUE);
                if (r2 != Long.MIN_VALUE) {
                    this.cancel.unsubscribe();
                }
            }
        }
    }
}
