package com.google.android.gms.phenotype;

import android.net.Uri;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.zzcvy;
import com.google.android.gms.internal.zzcvz;
@KeepForSdk
/* loaded from: classes.dex */
public final class Phenotype {
    private static final Api.zzf<zzcvz> zzegu = new Api.zzf<>();
    private static final Api.zza<zzcvz, Api.ApiOptions.NoOptions> zzegv = new zzl();
    @Deprecated
    private static Api<Api.ApiOptions.NoOptions> API = new Api<>("Phenotype.API", zzegv, zzegu);
    @Deprecated
    private static zzm zzkgr = new zzcvy();

    private Phenotype() {
    }

    @KeepForSdk
    public static Uri getContentProviderUri(String str) {
        String valueOf = String.valueOf(Uri.encode(str));
        return Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
    }
}
