package p021rx.subjects;

import java.util.ArrayList;
import java.util.List;
import p021rx.Observable;
import p021rx.annotations.Beta;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Action1;
import p021rx.internal.operators.NotificationLite;
import p021rx.subjects.SubjectSubscriptionManager;
/* renamed from: rx.subjects.PublishSubject */
/* loaded from: classes2.dex */
public final class PublishSubject<T> extends Subject<T, T> {

    /* renamed from: nl */
    private final NotificationLite<T> f1570nl = NotificationLite.instance();
    final SubjectSubscriptionManager<T> state;

    public static <T> PublishSubject<T> create() {
        final SubjectSubscriptionManager<T> state = new SubjectSubscriptionManager<>();
        state.onTerminated = new Action1<SubjectSubscriptionManager.SubjectObserver<T>>() { // from class: rx.subjects.PublishSubject.1
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((SubjectSubscriptionManager.SubjectObserver) ((SubjectSubscriptionManager.SubjectObserver) x0));
            }

            public void call(SubjectSubscriptionManager.SubjectObserver<T> o) {
                o.emitFirst(SubjectSubscriptionManager.this.getLatest(), SubjectSubscriptionManager.this.f1573nl);
            }
        };
        return new PublishSubject<>(state, state);
    }

    protected PublishSubject(Observable.OnSubscribe<T> onSubscribe, SubjectSubscriptionManager<T> state) {
        super(onSubscribe);
        this.state = state;
    }

    @Override // p021rx.Observer
    public void onCompleted() {
        if (this.state.active) {
            Object n = this.f1570nl.completed();
            SubjectSubscriptionManager.SubjectObserver<T>[] arr$ = this.state.terminate(n);
            for (SubjectSubscriptionManager.SubjectObserver<T> bo : arr$) {
                bo.emitNext(n, this.state.f1573nl);
            }
        }
    }

    @Override // p021rx.Observer
    public void onError(Throwable e) {
        if (this.state.active) {
            Object n = this.f1570nl.error(e);
            List<Throwable> errors = null;
            SubjectSubscriptionManager.SubjectObserver<T>[] arr$ = this.state.terminate(n);
            for (SubjectSubscriptionManager.SubjectObserver<T> bo : arr$) {
                try {
                    bo.emitNext(n, this.state.f1573nl);
                } catch (Throwable e2) {
                    if (errors == null) {
                        errors = new ArrayList<>();
                    }
                    errors.add(e2);
                }
            }
            Exceptions.throwIfAny(errors);
        }
    }

    @Override // p021rx.Observer
    public void onNext(T v) {
        SubjectSubscriptionManager.SubjectObserver<T>[] arr$ = this.state.observers();
        for (SubjectSubscriptionManager.SubjectObserver<T> bo : arr$) {
            bo.onNext(v);
        }
    }

    @Override // p021rx.subjects.Subject
    public boolean hasObservers() {
        return this.state.observers().length > 0;
    }

    @Beta
    public boolean hasThrowable() {
        Object o = this.state.getLatest();
        return this.f1570nl.isError(o);
    }

    @Beta
    public boolean hasCompleted() {
        Object o = this.state.getLatest();
        return o != null && !this.f1570nl.isError(o);
    }

    @Beta
    public Throwable getThrowable() {
        Object o = this.state.getLatest();
        if (this.f1570nl.isError(o)) {
            return this.f1570nl.getError(o);
        }
        return null;
    }
}
