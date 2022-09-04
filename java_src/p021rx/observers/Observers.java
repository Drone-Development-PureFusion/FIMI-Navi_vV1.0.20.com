package p021rx.observers;

import p021rx.Observer;
import p021rx.exceptions.OnErrorNotImplementedException;
import p021rx.functions.Action0;
import p021rx.functions.Action1;
/* renamed from: rx.observers.Observers */
/* loaded from: classes2.dex */
public final class Observers {
    private static final Observer<Object> EMPTY = new Observer<Object>() { // from class: rx.observers.Observers.1
        @Override // p021rx.Observer
        public final void onCompleted() {
        }

        @Override // p021rx.Observer
        public final void onError(Throwable e) {
            throw new OnErrorNotImplementedException(e);
        }

        @Override // p021rx.Observer
        public final void onNext(Object args) {
        }
    };

    private Observers() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Observer<T> empty() {
        return (Observer<T>) EMPTY;
    }

    public static <T> Observer<T> create(final Action1<? super T> onNext) {
        if (onNext == null) {
            throw new IllegalArgumentException("onNext can not be null");
        }
        return new Observer<T>() { // from class: rx.observers.Observers.2
            @Override // p021rx.Observer
            public final void onCompleted() {
            }

            @Override // p021rx.Observer
            public final void onError(Throwable e) {
                throw new OnErrorNotImplementedException(e);
            }

            @Override // p021rx.Observer
            public final void onNext(T args) {
                Action1.this.call(args);
            }
        };
    }

    public static <T> Observer<T> create(final Action1<? super T> onNext, final Action1<Throwable> onError) {
        if (onNext == null) {
            throw new IllegalArgumentException("onNext can not be null");
        }
        if (onError == null) {
            throw new IllegalArgumentException("onError can not be null");
        }
        return new Observer<T>() { // from class: rx.observers.Observers.3
            @Override // p021rx.Observer
            public final void onCompleted() {
            }

            @Override // p021rx.Observer
            public final void onError(Throwable e) {
                Action1.this.call(e);
            }

            @Override // p021rx.Observer
            public final void onNext(T args) {
                onNext.call(args);
            }
        };
    }

    public static <T> Observer<T> create(final Action1<? super T> onNext, final Action1<Throwable> onError, final Action0 onComplete) {
        if (onNext == null) {
            throw new IllegalArgumentException("onNext can not be null");
        }
        if (onError == null) {
            throw new IllegalArgumentException("onError can not be null");
        }
        if (onComplete == null) {
            throw new IllegalArgumentException("onComplete can not be null");
        }
        return new Observer<T>() { // from class: rx.observers.Observers.4
            @Override // p021rx.Observer
            public final void onCompleted() {
                Action0.this.call();
            }

            @Override // p021rx.Observer
            public final void onError(Throwable e) {
                onError.call(e);
            }

            @Override // p021rx.Observer
            public final void onNext(T args) {
                onNext.call(args);
            }
        };
    }
}
