package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
final class zzg implements Callable<Long> {
    private /* synthetic */ SharedPreferences zzhqi;
    private /* synthetic */ String zzhqj;
    private /* synthetic */ Long zzhqm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(SharedPreferences sharedPreferences, String str, Long l) {
        this.zzhqi = sharedPreferences;
        this.zzhqj = str;
        this.zzhqm = l;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Long call() throws Exception {
        return Long.valueOf(this.zzhqi.getLong(this.zzhqj, this.zzhqm.longValue()));
    }
}
