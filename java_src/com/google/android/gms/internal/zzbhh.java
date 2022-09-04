package com.google.android.gms.internal;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2.dex */
final class zzbhh implements zzbhi {
    @Override // com.google.android.gms.internal.zzbhi
    public final ScheduledExecutorService newSingleThreadScheduledExecutor() {
        return Executors.newSingleThreadScheduledExecutor();
    }
}
