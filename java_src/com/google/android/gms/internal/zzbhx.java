package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzbhx extends zzbgl {
    public static final Parcelable.Creator<zzbhx> CREATOR = new zzbhu();
    final String key;
    private int versionCode;
    final zzbhq<?, ?> zzgjc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbhx(int i, String str, zzbhq<?, ?> zzbhqVar) {
        this.versionCode = i;
        this.key = str;
        this.zzgjc = zzbhqVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbhx(String str, zzbhq<?, ?> zzbhqVar) {
        this.versionCode = 1;
        this.key = str;
        this.zzgjc = zzbhqVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.versionCode);
        zzbgo.zza(parcel, 2, this.key, false);
        zzbgo.zza(parcel, 3, (Parcelable) this.zzgjc, i, false);
        zzbgo.zzai(parcel, zze);
    }
}
