package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
final class zze implements Callable<Integer> {
    private /* synthetic */ SharedPreferences zzhqi;
    private /* synthetic */ String zzhqj;
    private /* synthetic */ Integer zzhql;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(SharedPreferences sharedPreferences, String str, Integer num) {
        this.zzhqi = sharedPreferences;
        this.zzhqj = str;
        this.zzhql = num;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Integer call() throws Exception {
        return Integer.valueOf(this.zzhqi.getInt(this.zzhqj, this.zzhql.intValue()));
    }
}
