package org.greenrobot.greendao.p020rx;

import java.util.concurrent.Callable;
import org.greenrobot.greendao.annotation.apihint.Experimental;
import org.greenrobot.greendao.annotation.apihint.Internal;
import p021rx.Observable;
import p021rx.Scheduler;
/* JADX INFO: Access modifiers changed from: package-private */
@Internal
/* renamed from: org.greenrobot.greendao.rx.RxBase */
/* loaded from: classes2.dex */
public class RxBase {
    protected final Scheduler scheduler;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RxBase() {
        this.scheduler = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Experimental
    public RxBase(Scheduler scheduler) {
        this.scheduler = scheduler;
    }

    @Experimental
    public Scheduler getScheduler() {
        return this.scheduler;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <R> Observable<R> wrap(Callable<R> callable) {
        return wrap(RxUtils.fromCallable(callable));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <R> Observable<R> wrap(Observable<R> observable) {
        if (this.scheduler != null) {
            return observable.subscribeOn(this.scheduler);
        }
        return observable;
    }
}
