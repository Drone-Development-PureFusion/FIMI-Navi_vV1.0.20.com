package com.xiaomi.account.auth;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
abstract class XiaomiOAuthRunnable<V> implements Runnable {
    private static ExecutorService sTaskExecutor = Executors.newCachedThreadPool();
    protected XiaomiOAuthFutureImpl<V> mFuture = new XiaomiOAuthFutureImpl<>();

    protected abstract void doRun();

    XiaomiOAuthFutureImpl<V> start() {
        sTaskExecutor.execute(this);
        return this.mFuture;
    }

    @Override // java.lang.Runnable
    public final void run() {
        doRun();
    }
}
