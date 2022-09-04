package p021rx.observers;

import p021rx.Observer;
import p021rx.Subscriber;
/* renamed from: rx.observers.SerializedSubscriber */
/* loaded from: classes2.dex */
public class SerializedSubscriber<T> extends Subscriber<T> {

    /* renamed from: s */
    private final Observer<T> f1566s;

    public SerializedSubscriber(Subscriber<? super T> s) {
        this(s, true);
    }

    public SerializedSubscriber(Subscriber<? super T> s, boolean shareSubscriptions) {
        super(s, shareSubscriptions);
        this.f1566s = new SerializedObserver(s);
    }

    @Override // p021rx.Observer
    public void onCompleted() {
        this.f1566s.onCompleted();
    }

    @Override // p021rx.Observer
    public void onError(Throwable e) {
        this.f1566s.onError(e);
    }

    @Override // p021rx.Observer
    public void onNext(T t) {
        this.f1566s.onNext(t);
    }
}
