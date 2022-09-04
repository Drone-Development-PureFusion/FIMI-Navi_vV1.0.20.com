package p021rx.observers;

import java.util.Arrays;
import p021rx.Subscriber;
import p021rx.exceptions.CompositeException;
import p021rx.exceptions.Exceptions;
import p021rx.exceptions.OnCompletedFailedException;
import p021rx.exceptions.OnErrorFailedException;
import p021rx.exceptions.OnErrorNotImplementedException;
import p021rx.exceptions.UnsubscribeFailedException;
import p021rx.internal.util.RxJavaPluginUtils;
/* renamed from: rx.observers.SafeSubscriber */
/* loaded from: classes2.dex */
public class SafeSubscriber<T> extends Subscriber<T> {
    private final Subscriber<? super T> actual;
    boolean done = false;

    public SafeSubscriber(Subscriber<? super T> actual) {
        super(actual);
        this.actual = actual;
    }

    @Override // p021rx.Observer
    public void onCompleted() {
        UnsubscribeFailedException unsubscribeFailedException;
        if (!this.done) {
            this.done = true;
            try {
                this.actual.onCompleted();
                try {
                    unsubscribe();
                } finally {
                }
            } catch (Throwable e) {
                try {
                    Exceptions.throwIfFatal(e);
                    RxJavaPluginUtils.handleException(e);
                    throw new OnCompletedFailedException(e.getMessage(), e);
                } catch (Throwable th) {
                    try {
                        unsubscribe();
                        throw th;
                    } finally {
                    }
                }
            }
        }
    }

    @Override // p021rx.Observer
    public void onError(Throwable e) {
        Exceptions.throwIfFatal(e);
        if (!this.done) {
            this.done = true;
            _onError(e);
        }
    }

    @Override // p021rx.Observer
    public void onNext(T args) {
        try {
            if (!this.done) {
                this.actual.onNext(args);
            }
        } catch (Throwable e) {
            Exceptions.throwOrReport(e, this);
        }
    }

    protected void _onError(Throwable e) {
        RxJavaPluginUtils.handleException(e);
        try {
            this.actual.onError(e);
            try {
                unsubscribe();
            } catch (RuntimeException unsubscribeException) {
                RxJavaPluginUtils.handleException(unsubscribeException);
                throw new OnErrorFailedException(unsubscribeException);
            }
        } catch (Throwable e2) {
            if (e2 instanceof OnErrorNotImplementedException) {
                try {
                    unsubscribe();
                    throw ((OnErrorNotImplementedException) e2);
                } catch (Throwable unsubscribeException2) {
                    RxJavaPluginUtils.handleException(unsubscribeException2);
                    throw new RuntimeException("Observer.onError not implemented and error while unsubscribing.", new CompositeException(Arrays.asList(e, unsubscribeException2)));
                }
            }
            RxJavaPluginUtils.handleException(e2);
            try {
                unsubscribe();
                throw new OnErrorFailedException("Error occurred when trying to propagate error to Observer.onError", new CompositeException(Arrays.asList(e, e2)));
            } catch (Throwable unsubscribeException3) {
                RxJavaPluginUtils.handleException(unsubscribeException3);
                throw new OnErrorFailedException("Error occurred when trying to propagate error to Observer.onError and during unsubscription.", new CompositeException(Arrays.asList(e, e2, unsubscribeException3)));
            }
        }
    }

    public Subscriber<? super T> getActual() {
        return this.actual;
    }
}
