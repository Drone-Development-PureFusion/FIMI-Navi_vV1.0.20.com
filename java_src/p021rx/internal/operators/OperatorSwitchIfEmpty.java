package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.internal.producers.ProducerArbiter;
import p021rx.subscriptions.SerialSubscription;
/* renamed from: rx.internal.operators.OperatorSwitchIfEmpty */
/* loaded from: classes2.dex */
public final class OperatorSwitchIfEmpty<T> implements Observable.Operator<T, T> {
    private final Observable<? extends T> alternate;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorSwitchIfEmpty(Observable<? extends T> alternate) {
        this.alternate = alternate;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        SerialSubscription ssub = new SerialSubscription();
        ProducerArbiter arbiter = new ProducerArbiter();
        ParentSubscriber<T> parent = new ParentSubscriber<>(child, ssub, arbiter, this.alternate);
        ssub.set(parent);
        child.add(ssub);
        child.setProducer(arbiter);
        return parent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorSwitchIfEmpty$ParentSubscriber */
    /* loaded from: classes2.dex */
    public static final class ParentSubscriber<T> extends Subscriber<T> {
        private final Observable<? extends T> alternate;
        private final ProducerArbiter arbiter;
        private final Subscriber<? super T> child;
        private boolean empty = true;
        private final SerialSubscription ssub;

        ParentSubscriber(Subscriber<? super T> child, SerialSubscription ssub, ProducerArbiter arbiter, Observable<? extends T> alternate) {
            this.child = child;
            this.ssub = ssub;
            this.arbiter = arbiter;
            this.alternate = alternate;
        }

        @Override // p021rx.Subscriber
        public void setProducer(Producer producer) {
            this.arbiter.setProducer(producer);
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            if (!this.empty) {
                this.child.onCompleted();
            } else if (!this.child.isUnsubscribed()) {
                subscribeToAlternate();
            }
        }

        private void subscribeToAlternate() {
            AlternateSubscriber<T> as = new AlternateSubscriber<>(this.child, this.arbiter);
            this.ssub.set(as);
            this.alternate.unsafeSubscribe(as);
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.child.onError(e);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            this.empty = false;
            this.child.onNext(t);
            this.arbiter.produced(1L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorSwitchIfEmpty$AlternateSubscriber */
    /* loaded from: classes2.dex */
    public static final class AlternateSubscriber<T> extends Subscriber<T> {
        private final ProducerArbiter arbiter;
        private final Subscriber<? super T> child;

        AlternateSubscriber(Subscriber<? super T> child, ProducerArbiter arbiter) {
            this.child = child;
            this.arbiter = arbiter;
        }

        @Override // p021rx.Subscriber
        public void setProducer(Producer producer) {
            this.arbiter.setProducer(producer);
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            this.child.onCompleted();
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.child.onError(e);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            this.child.onNext(t);
            this.arbiter.produced(1L);
        }
    }
}
