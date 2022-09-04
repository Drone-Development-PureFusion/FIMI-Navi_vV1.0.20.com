package com.google.android.gms.internal;

import android.os.Process;
/* loaded from: classes2.dex */
final class zzbie implements Runnable {
    private final int mPriority;
    private final Runnable zzy;

    public zzbie(Runnable runnable, int i) {
        this.zzy = runnable;
        this.mPriority = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.mPriority);
        this.zzy.run();
    }
}
