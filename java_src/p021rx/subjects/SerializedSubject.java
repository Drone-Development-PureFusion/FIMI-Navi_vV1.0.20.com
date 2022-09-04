package p021rx.subjects;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.observers.SerializedObserver;
/* renamed from: rx.subjects.SerializedSubject */
/* loaded from: classes2.dex */
public class SerializedSubject<T, R> extends Subject<T, R> {
    private final Subject<T, R> actual;
    private final SerializedObserver<T> observer;

    public SerializedSubject(final Subject<T, R> actual) {
        super(new Observable.OnSubscribe<R>() { // from class: rx.subjects.SerializedSubject.1
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((Subscriber) ((Subscriber) x0));
            }

            public void call(Subscriber<? super R> child) {
                Subject.this.unsafeSubscribe(child);
            }
        });
        this.actual = actual;
        this.observer = new SerializedObserver<>(actual);
    }

    @Override // p021rx.Observer
    public void onCompleted() {
        this.observer.onCompleted();
    }

    @Override // p021rx.Observer
    public void onError(Throwable e) {
        this.observer.onError(e);
    }

    @Override // p021rx.Observer
    public void onNext(T t) {
        this.observer.onNext(t);
    }

    @Override // p021rx.subjects.Subject
    public boolean hasObservers() {
        return this.actual.hasObservers();
    }
}
