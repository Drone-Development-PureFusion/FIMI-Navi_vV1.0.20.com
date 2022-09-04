package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzbhj extends zzbgl {
    public static final Parcelable.Creator<zzbhj> CREATOR = new zzbhk();
    private int zzehz;
    private final zzbhl zzgii;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbhj(int i, zzbhl zzbhlVar) {
        this.zzehz = i;
        this.zzgii = zzbhlVar;
    }

    private zzbhj(zzbhl zzbhlVar) {
        this.zzehz = 1;
        this.zzgii = zzbhlVar;
    }

    public static zzbhj zza(zzbhr<?, ?> zzbhrVar) {
        if (zzbhrVar instanceof zzbhl) {
            return new zzbhj((zzbhl) zzbhrVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.zzehz);
        zzbgo.zza(parcel, 2, (Parcelable) this.zzgii, i, false);
        zzbgo.zzai(parcel, zze);
    }

    public final zzbhr<?, ?> zzand() {
        if (this.zzgii != null) {
            return this.zzgii;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }
}
