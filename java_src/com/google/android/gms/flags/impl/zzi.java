package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
final class zzi implements Callable<String> {
    private /* synthetic */ SharedPreferences zzhqi;
    private /* synthetic */ String zzhqj;
    private /* synthetic */ String zzhqn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzi(SharedPreferences sharedPreferences, String str, String str2) {
        this.zzhqi = sharedPreferences;
        this.zzhqj = str;
        this.zzhqn = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        return this.zzhqi.getString(this.zzhqj, this.zzhqn);
    }
}
