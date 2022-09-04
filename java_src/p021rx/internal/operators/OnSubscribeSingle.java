package p021rx.internal.operators;

import java.util.NoSuchElementException;
import p021rx.Observable;
import p021rx.Single;
import p021rx.SingleSubscriber;
import p021rx.Subscriber;
/* renamed from: rx.internal.operators.OnSubscribeSingle */
/* loaded from: classes2.dex */
public class OnSubscribeSingle<T> implements Single.OnSubscribe<T> {
    private final Observable<T> observable;

    @Override // p021rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object x0) {
        call((SingleSubscriber) ((SingleSubscriber) x0));
    }

    public OnSubscribeSingle(Observable<T> observable) {
        this.observable = observable;
    }

    public void call(final SingleSubscriber<? super T> child) {
        Subscriber<T> parent = new Subscriber<T>() { // from class: rx.internal.operators.OnSubscribeSingle.1
            private boolean emittedTooMany = false;
            private boolean itemEmitted = false;
            private T emission = null;

            @Override // p021rx.Subscriber
            public void onStart() {
                request(2L);
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                if (!this.emittedTooMany) {
                    if (this.itemEmitted) {
                        child.onSuccess(this.emission);
                    } else {
                        child.onError(new NoSuchElementException("Observable emitted no items"));
                    }
                }
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                child.onError(e);
                unsubscribe();
            }

            @Override // p021rx.Observer
            public void onNext(T t) {
                if (this.itemEmitted) {
                    this.emittedTooMany = true;
                    child.onError(new IllegalArgumentException("Observable emitted too many elements"));
                    unsubscribe();
                    return;
                }
                this.itemEmitted = true;
                this.emission = t;
            }
        };
        child.add(parent);
        this.observable.unsafeSubscribe(parent);
    }

    public static <T> OnSubscribeSingle<T> create(Observable<T> observable) {
        return new OnSubscribeSingle<>(observable);
    }
}
