package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.functions.Action0;
import p021rx.internal.producers.ProducerArbiter;
import p021rx.observers.SerializedSubscriber;
import p021rx.subscriptions.SerialSubscription;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.operators.OperatorConcat */
/* loaded from: classes2.dex */
public final class OperatorConcat<T> implements Observable.Operator<T, Observable<? extends T>> {
    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorConcat$Holder */
    /* loaded from: classes2.dex */
    public static final class Holder {
        static final OperatorConcat<Object> INSTANCE = new OperatorConcat<>();

        private Holder() {
        }
    }

    public static <T> OperatorConcat<T> instance() {
        return (OperatorConcat<T>) Holder.INSTANCE;
    }

    OperatorConcat() {
    }

    public Subscriber<? super Observable<? extends T>> call(Subscriber<? super T> child) {
        SerializedSubscriber<T> s = new SerializedSubscriber<>(child);
        SerialSubscription current = new SerialSubscription();
        child.add(current);
        ConcatSubscriber<T> cs = new ConcatSubscriber<>(s, current);
        ConcatProducer<T> cp = new ConcatProducer<>(cs);
        child.setProducer(cp);
        return cs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorConcat$ConcatProducer */
    /* loaded from: classes2.dex */
    public static final class ConcatProducer<T> implements Producer {

        /* renamed from: cs */
        final ConcatSubscriber<T> f1515cs;

        ConcatProducer(ConcatSubscriber<T> cs) {
            this.f1515cs = cs;
        }

        @Override // p021rx.Producer
        public void request(long n) {
            this.f1515cs.requestFromChild(n);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorConcat$ConcatSubscriber */
    /* loaded from: classes2.dex */
    public static final class ConcatSubscriber<T> extends Subscriber<Observable<? extends T>> {
        private final Subscriber<T> child;
        private final SerialSubscription current;
        volatile ConcatInnerSubscriber<T> currentSubscriber;

        /* renamed from: nl */
        final NotificationLite<Observable<? extends T>> f1516nl = NotificationLite.instance();
        final AtomicInteger wip = new AtomicInteger();
        private final AtomicLong requested = new AtomicLong();
        private final ProducerArbiter arbiter = new ProducerArbiter();
        final ConcurrentLinkedQueue<Object> queue = new ConcurrentLinkedQueue<>();

        @Override // p021rx.Observer
        public /* bridge */ /* synthetic */ void onNext(Object x0) {
            onNext((Observable) ((Observable) x0));
        }

        public ConcatSubscriber(Subscriber<T> s, SerialSubscription current) {
            super(s);
            this.child = s;
            this.current = current;
            add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.OperatorConcat.ConcatSubscriber.1
                @Override // p021rx.functions.Action0
                public void call() {
                    ConcatSubscriber.this.queue.clear();
                }
            }));
        }

        @Override // p021rx.Subscriber
        public void onStart() {
            request(2L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void requestFromChild(long n) {
            long previous;
            if (n > 0) {
                AtomicLong requestedField = this.requested;
                if (requestedField.get() != Clock.MAX_TIME) {
                    previous = BackpressureUtils.getAndAddRequest(requestedField, n);
                } else {
                    previous = Clock.MAX_TIME;
                }
                this.arbiter.request(n);
                if (previous == 0 && this.currentSubscriber == null && this.wip.get() > 0) {
                    subscribeNext();
                }
            }
        }

        public void onNext(Observable<? extends T> t) {
            this.queue.add(this.f1516nl.next(t));
            if (this.wip.getAndIncrement() == 0) {
                subscribeNext();
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.child.onError(e);
            unsubscribe();
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            this.queue.add(this.f1516nl.completed());
            if (this.wip.getAndIncrement() == 0) {
                subscribeNext();
            }
        }

        void completeInner() {
            this.currentSubscriber = null;
            if (this.wip.decrementAndGet() > 0) {
                subscribeNext();
            }
            request(1L);
        }

        void subscribeNext() {
            if (this.requested.get() > 0) {
                Object o = this.queue.poll();
                if (this.f1516nl.isCompleted(o)) {
                    this.child.onCompleted();
                    return;
                } else if (o != null) {
                    Observable<? extends T> obs = this.f1516nl.getValue(o);
                    this.currentSubscriber = new ConcatInnerSubscriber<>(this, this.child, this.arbiter);
                    this.current.set(this.currentSubscriber);
                    obs.unsafeSubscribe(this.currentSubscriber);
                    return;
                } else {
                    return;
                }
            }
            if (this.f1516nl.isCompleted(this.queue.peek())) {
                this.child.onCompleted();
            }
        }

        void produced(long c) {
            if (c != 0) {
                this.arbiter.produced(c);
                BackpressureUtils.produced(this.requested, c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorConcat$ConcatInnerSubscriber */
    /* loaded from: classes2.dex */
    public static class ConcatInnerSubscriber<T> extends Subscriber<T> {
        private final ProducerArbiter arbiter;
        private final Subscriber<T> child;
        private final AtomicBoolean once = new AtomicBoolean();
        private final ConcatSubscriber<T> parent;
        long produced;

        public ConcatInnerSubscriber(ConcatSubscriber<T> parent, Subscriber<T> child, ProducerArbiter arbiter) {
            this.parent = parent;
            this.child = child;
            this.arbiter = arbiter;
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            this.produced++;
            this.child.onNext(t);
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            if (this.once.compareAndSet(false, true)) {
                this.parent.onError(e);
            }
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            if (this.once.compareAndSet(false, true)) {
                ConcatSubscriber<T> p = this.parent;
                p.produced(this.produced);
                p.completeInner();
            }
        }

        @Override // p021rx.Subscriber
        public void setProducer(Producer producer) {
            this.arbiter.setProducer(producer);
        }
    }
}
