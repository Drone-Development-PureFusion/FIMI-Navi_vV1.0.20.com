package org.greenrobot.greendao.p020rx;

import java.util.concurrent.Callable;
import org.greenrobot.greendao.AbstractDaoSession;
import org.greenrobot.greendao.annotation.apihint.Experimental;
import p021rx.Observable;
import p021rx.Scheduler;
@Experimental
/* renamed from: org.greenrobot.greendao.rx.RxTransaction */
/* loaded from: classes2.dex */
public class RxTransaction extends RxBase {
    private final AbstractDaoSession daoSession;

    @Override // org.greenrobot.greendao.p020rx.RxBase
    @Experimental
    public /* bridge */ /* synthetic */ Scheduler getScheduler() {
        return super.getScheduler();
    }

    public RxTransaction(AbstractDaoSession daoSession) {
        this.daoSession = daoSession;
    }

    public RxTransaction(AbstractDaoSession daoSession, Scheduler scheduler) {
        super(scheduler);
        this.daoSession = daoSession;
    }

    @Experimental
    public Observable<Void> run(final Runnable runnable) {
        return wrap(new Callable<Void>() { // from class: org.greenrobot.greendao.rx.RxTransaction.1
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                RxTransaction.this.daoSession.runInTx(runnable);
                return null;
            }
        });
    }

    @Experimental
    public <T> Observable<T> call(final Callable<T> callable) {
        return wrap(new Callable<T>() { // from class: org.greenrobot.greendao.rx.RxTransaction.2
            /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
            @Override // java.util.concurrent.Callable
            public T call() throws Exception {
                return RxTransaction.this.daoSession.callInTx(callable);
            }
        });
    }

    @Experimental
    public AbstractDaoSession getDaoSession() {
        return this.daoSession;
    }
}
