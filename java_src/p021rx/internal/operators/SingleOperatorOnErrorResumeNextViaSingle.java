package p021rx.internal.operators;

import p021rx.Single;
import p021rx.SingleSubscriber;
import p021rx.plugins.RxJavaPlugins;
/* renamed from: rx.internal.operators.SingleOperatorOnErrorResumeNextViaSingle */
/* loaded from: classes2.dex */
public class SingleOperatorOnErrorResumeNextViaSingle<T> implements Single.OnSubscribe<T> {
    private final Single<? extends T> originalSingle;
    private final Single<? extends T> resumeSingleInCaseOfError;

    @Override // p021rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object x0) {
        call((SingleSubscriber) ((SingleSubscriber) x0));
    }

    public SingleOperatorOnErrorResumeNextViaSingle(Single<? extends T> originalSingle, Single<? extends T> resumeSingleInCaseOfError) {
        if (originalSingle == null) {
            throw new NullPointerException("originalSingle must not be null");
        }
        if (resumeSingleInCaseOfError == null) {
            throw new NullPointerException("resumeSingleInCaseOfError must not be null");
        }
        this.originalSingle = originalSingle;
        this.resumeSingleInCaseOfError = resumeSingleInCaseOfError;
    }

    public void call(final SingleSubscriber<? super T> child) {
        SingleSubscriber<T> singleSubscriber = new SingleSubscriber<T>() { // from class: rx.internal.operators.SingleOperatorOnErrorResumeNextViaSingle.1
            @Override // p021rx.SingleSubscriber
            public void onSuccess(T value) {
                child.onSuccess(value);
            }

            @Override // p021rx.SingleSubscriber
            public void onError(Throwable error) {
                RxJavaPlugins.getInstance().getErrorHandler().handleError(error);
                unsubscribe();
                SingleOperatorOnErrorResumeNextViaSingle.this.resumeSingleInCaseOfError.subscribe(child);
            }
        };
        child.add(singleSubscriber);
        this.originalSingle.subscribe((SingleSubscriber<? super Object>) singleSubscriber);
    }
}
