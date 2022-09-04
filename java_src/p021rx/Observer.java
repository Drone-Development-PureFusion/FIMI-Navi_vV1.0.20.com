package p021rx;
/* renamed from: rx.Observer */
/* loaded from: classes2.dex */
public interface Observer<T> {
    void onCompleted();

    void onError(Throwable th);

    void onNext(T t);
}
