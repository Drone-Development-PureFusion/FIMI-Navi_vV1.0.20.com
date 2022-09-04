package p021rx.android;

import android.os.Looper;
import java.util.concurrent.atomic.AtomicBoolean;
import p021rx.Subscription;
import p021rx.android.schedulers.AndroidSchedulers;
import p021rx.functions.Action0;
/* renamed from: rx.android.MainThreadSubscription */
/* loaded from: classes2.dex */
public abstract class MainThreadSubscription implements Subscription {
    private final AtomicBoolean unsubscribed = new AtomicBoolean();

    protected abstract void onUnsubscribe();

    public static void verifyMainThread() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("Expected to be called on the main thread but was " + Thread.currentThread().getName());
        }
    }

    @Override // p021rx.Subscription
    public final boolean isUnsubscribed() {
        return this.unsubscribed.get();
    }

    @Override // p021rx.Subscription
    public final void unsubscribe() {
        if (this.unsubscribed.compareAndSet(false, true)) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                onUnsubscribe();
            } else {
                AndroidSchedulers.mainThread().createWorker().schedule(new Action0() { // from class: rx.android.MainThreadSubscription.1
                    @Override // p021rx.functions.Action0
                    public void call() {
                        MainThreadSubscription.this.onUnsubscribe();
                    }
                });
            }
        }
    }
}
