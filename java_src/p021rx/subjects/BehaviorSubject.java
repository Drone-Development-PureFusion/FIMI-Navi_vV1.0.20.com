package p021rx.subjects;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import p021rx.Observable;
import p021rx.annotations.Beta;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Action1;
import p021rx.internal.operators.NotificationLite;
import p021rx.subjects.SubjectSubscriptionManager;
/* renamed from: rx.subjects.BehaviorSubject */
/* loaded from: classes2.dex */
public final class BehaviorSubject<T> extends Subject<T, T> {
    private static final Object[] EMPTY_ARRAY = new Object[0];

    /* renamed from: nl */
    private final NotificationLite<T> f1569nl = NotificationLite.instance();
    private final SubjectSubscriptionManager<T> state;

    public static <T> BehaviorSubject<T> create() {
        return create(null, false);
    }

    public static <T> BehaviorSubject<T> create(T defaultValue) {
        return create(defaultValue, true);
    }

    private static <T> BehaviorSubject<T> create(T defaultValue, boolean hasDefault) {
        final SubjectSubscriptionManager<T> state = new SubjectSubscriptionManager<>();
        if (hasDefault) {
            state.setLatest(NotificationLite.instance().next(defaultValue));
        }
        state.onAdded = new Action1<SubjectSubscriptionManager.SubjectObserver<T>>() { // from class: rx.subjects.BehaviorSubject.1
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((SubjectSubscriptionManager.SubjectObserver) ((SubjectSubscriptionManager.SubjectObserver) x0));
            }

            public void call(SubjectSubscriptionManager.SubjectObserver<T> o) {
                o.emitFirst(SubjectSubscriptionManager.this.getLatest(), SubjectSubscriptionManager.this.f1573nl);
            }
        };
        state.onTerminated = state.onAdded;
        return new BehaviorSubject<>(state, state);
    }

    protected BehaviorSubject(Observable.OnSubscribe<T> onSubscribe, SubjectSubscriptionManager<T> state) {
        super(onSubscribe);
        this.state = state;
    }

    @Override // p021rx.Observer
    public void onCompleted() {
        Object last = this.state.getLatest();
        if (last == null || this.state.active) {
            Object n = this.f1569nl.completed();
            SubjectSubscriptionManager.SubjectObserver<T>[] arr$ = this.state.terminate(n);
            for (SubjectSubscriptionManager.SubjectObserver<T> bo : arr$) {
                bo.emitNext(n, this.state.f1573nl);
            }
        }
    }

    @Override // p021rx.Observer
    public void onError(Throwable e) {
        Object last = this.state.getLatest();
        if (last == null || this.state.active) {
            Object n = this.f1569nl.error(e);
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
        Object last = this.state.getLatest();
        if (last == null || this.state.active) {
            Object n = this.f1569nl.next(v);
            SubjectSubscriptionManager.SubjectObserver<T>[] arr$ = this.state.next(n);
            for (SubjectSubscriptionManager.SubjectObserver<T> bo : arr$) {
                bo.emitNext(n, this.state.f1573nl);
            }
        }
    }

    int subscriberCount() {
        return this.state.observers().length;
    }

    @Override // p021rx.subjects.Subject
    public boolean hasObservers() {
        return this.state.observers().length > 0;
    }

    @Beta
    public boolean hasValue() {
        Object o = this.state.getLatest();
        return this.f1569nl.isNext(o);
    }

    @Beta
    public boolean hasThrowable() {
        Object o = this.state.getLatest();
        return this.f1569nl.isError(o);
    }

    @Beta
    public boolean hasCompleted() {
        Object o = this.state.getLatest();
        return this.f1569nl.isCompleted(o);
    }

    @Beta
    public T getValue() {
        Object o = this.state.getLatest();
        if (this.f1569nl.isNext(o)) {
            return this.f1569nl.getValue(o);
        }
        return null;
    }

    @Beta
    public Throwable getThrowable() {
        Object o = this.state.getLatest();
        if (this.f1569nl.isError(o)) {
            return this.f1569nl.getError(o);
        }
        return null;
    }

    @Beta
    public T[] getValues(T[] a) {
        Object o = this.state.getLatest();
        if (this.f1569nl.isNext(o)) {
            if (a.length == 0) {
                a = (T[]) ((Object[]) Array.newInstance(a.getClass().getComponentType(), 1));
            }
            a[0] = this.f1569nl.getValue(o);
            if (a.length > 1) {
                a[1] = null;
            }
        } else if (a.length > 0) {
            a[0] = null;
        }
        return a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Beta
    public Object[] getValues() {
        T[] r = getValues(EMPTY_ARRAY);
        if (r == EMPTY_ARRAY) {
            return new Object[0];
        }
        return r;
    }
}
