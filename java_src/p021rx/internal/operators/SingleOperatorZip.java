package p021rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p021rx.Single;
import p021rx.SingleSubscriber;
import p021rx.Subscription;
import p021rx.exceptions.Exceptions;
import p021rx.functions.FuncN;
import p021rx.plugins.RxJavaPlugins;
import p021rx.subscriptions.CompositeSubscription;
/* renamed from: rx.internal.operators.SingleOperatorZip */
/* loaded from: classes2.dex */
public class SingleOperatorZip {
    public static <T, R> Single<R> zip(final Single<? extends T>[] singles, final FuncN<? extends R> zipper) {
        return Single.create(new Single.OnSubscribe<R>() { // from class: rx.internal.operators.SingleOperatorZip.1
            @Override // p021rx.functions.Action1
            public void call(final SingleSubscriber<? super R> subscriber) {
                final AtomicInteger wip = new AtomicInteger(singles.length);
                final AtomicBoolean once = new AtomicBoolean();
                final Object[] values = new Object[singles.length];
                CompositeSubscription compositeSubscription = new CompositeSubscription();
                subscriber.add(compositeSubscription);
                for (int i = 0; i < singles.length && !compositeSubscription.isUnsubscribed() && !once.get(); i++) {
                    final int j = i;
                    Subscription subscription = new SingleSubscriber<T>() { // from class: rx.internal.operators.SingleOperatorZip.1.1
                        @Override // p021rx.SingleSubscriber
                        public void onSuccess(T value) {
                            values[j] = value;
                            if (wip.decrementAndGet() == 0) {
                                try {
                                    subscriber.onSuccess(zipper.call(values));
                                } catch (Throwable e) {
                                    Exceptions.throwIfFatal(e);
                                    onError(e);
                                }
                            }
                        }

                        @Override // p021rx.SingleSubscriber
                        public void onError(Throwable error) {
                            if (once.compareAndSet(false, true)) {
                                subscriber.onError(error);
                            } else {
                                RxJavaPlugins.getInstance().getErrorHandler().handleError(error);
                            }
                        }
                    };
                    compositeSubscription.add(subscription);
                    if (!compositeSubscription.isUnsubscribed() && !once.get()) {
                        singles[i].subscribe((SingleSubscriber) subscription);
                    } else {
                        return;
                    }
                }
            }
        });
    }
}
