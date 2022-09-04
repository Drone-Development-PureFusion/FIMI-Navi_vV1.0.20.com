package p021rx.internal.operators;

import java.util.concurrent.Callable;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.internal.producers.SingleDelayedProducer;
/* renamed from: rx.internal.operators.OnSubscribeFromCallable */
/* loaded from: classes2.dex */
public final class OnSubscribeFromCallable<T> implements Observable.OnSubscribe<T> {
    private final Callable<? extends T> resultFactory;

    @Override // p021rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object x0) {
        call((Subscriber) ((Subscriber) x0));
    }

    public OnSubscribeFromCallable(Callable<? extends T> resultFactory) {
        this.resultFactory = resultFactory;
    }

    public void call(Subscriber<? super T> subscriber) {
        SingleDelayedProducer<T> singleDelayedProducer = new SingleDelayedProducer<>(subscriber);
        subscriber.setProducer(singleDelayedProducer);
        try {
            singleDelayedProducer.setValue(this.resultFactory.call());
        } catch (Throwable t) {
            Exceptions.throwOrReport(t, subscriber);
        }
    }
}
