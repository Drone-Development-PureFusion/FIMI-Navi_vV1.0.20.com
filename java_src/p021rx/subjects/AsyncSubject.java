package p021rx.subjects;

import java.util.ArrayList;
import java.util.List;
import p021rx.Observable;
import p021rx.annotations.Beta;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Action1;
import p021rx.internal.operators.NotificationLite;
import p021rx.subjects.SubjectSubscriptionManager;
/* renamed from: rx.subjects.AsyncSubject */
/* loaded from: classes2.dex */
public final class AsyncSubject<T> extends Subject<T, T> {
    volatile Object lastValue;

    /* renamed from: nl */
    private final NotificationLite<T> f1568nl = NotificationLite.instance();
    final SubjectSubscriptionManager<T> state;

    public static <T> AsyncSubject<T> create() {
        final SubjectSubscriptionManager<T> state = new SubjectSubscriptionManager<>();
        state.onTerminated = new Action1<SubjectSubscriptionManager.SubjectObserver<T>>() { // from class: rx.subjects.AsyncSubject.1
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((SubjectSubscriptionManager.SubjectObserver) ((SubjectSubscriptionManager.SubjectObserver) x0));
            }

            public void call(SubjectSubscriptionManager.SubjectObserver<T> o) {
                Object v = SubjectSubscriptionManager.this.getLatest();
                NotificationLite<T> nl = SubjectSubscriptionManager.this.f1573nl;
                o.accept(v, nl);
                if (v == null || (!nl.isCompleted(v) && !nl.isError(v))) {
                    o.onCompleted();
                }
            }
        };
        return new AsyncSubject<>(state, state);
    }

    protected AsyncSubject(Observable.OnSubscribe<T> onSubscribe, SubjectSubscriptionManager<T> state) {
        super(onSubscribe);
        this.state = state;
    }

    @Override // p021rx.Observer
    public void onCompleted() {
        if (this.state.active) {
            Object last = this.lastValue;
            if (last == null) {
                last = this.f1568nl.completed();
            }
            SubjectSubscriptionManager.SubjectObserver<T>[] arr$ = this.state.terminate(last);
            for (SubjectSubscriptionManager.SubjectObserver<T> bo : arr$) {
                if (last == this.f1568nl.completed()) {
                    bo.onCompleted();
                } else {
                    bo.onNext(this.f1568nl.getValue(last));
                    bo.onCompleted();
                }
            }
        }
    }

    @Override // p021rx.Observer
    public void onError(Throwable e) {
        if (this.state.active) {
            Object n = this.f1568nl.error(e);
            List<Throwable> errors = null;
            SubjectSubscriptionManager.SubjectObserver<T>[] arr$ = this.state.terminate(n);
            for (SubjectSubscriptionManager.SubjectObserver<T> bo : arr$) {
                try {
                    bo.onError(e);
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
        this.lastValue = this.f1568nl.next(v);
    }

    @Override // p021rx.subjects.Subject
    public boolean hasObservers() {
        return this.state.observers().length > 0;
    }

    @Beta
    public boolean hasValue() {
        Object v = this.lastValue;
        Object o = this.state.getLatest();
        return !this.f1568nl.isError(o) && this.f1568nl.isNext(v);
    }

    @Beta
    public boolean hasThrowable() {
        Object o = this.state.getLatest();
        return this.f1568nl.isError(o);
    }

    @Beta
    public boolean hasCompleted() {
        Object o = this.state.getLatest();
        return o != null && !this.f1568nl.isError(o);
    }

    @Beta
    public T getValue() {
        Object v = this.lastValue;
        Object o = this.state.getLatest();
        if (this.f1568nl.isError(o) || !this.f1568nl.isNext(v)) {
            return null;
        }
        return this.f1568nl.getValue(v);
    }

    @Beta
    public Throwable getThrowable() {
        Object o = this.state.getLatest();
        if (this.f1568nl.isError(o)) {
            return this.f1568nl.getError(o);
        }
        return null;
    }
}
