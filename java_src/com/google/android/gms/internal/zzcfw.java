package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
@Hide
/* loaded from: classes2.dex */
public final class zzcfw extends zzbgl {
    public static final Parcelable.Creator<zzcfw> CREATOR = new zzcfx();
    private int zzitp;
    private zzcfu zzitq;
    private com.google.android.gms.location.zzr zzitr;
    private zzcgr zzits;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.internal.zzcgr] */
    public zzcfw(int i, zzcfu zzcfuVar, IBinder iBinder, IBinder iBinder2) {
        zzcgt zzcgtVar = null;
        this.zzitp = i;
        this.zzitq = zzcfuVar;
        this.zzitr = iBinder == null ? null : com.google.android.gms.location.zzs.zzbd(iBinder);
        if (iBinder2 != null && iBinder2 != null) {
            IInterface queryLocalInterface = iBinder2.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzcgtVar = queryLocalInterface instanceof zzcgr ? (zzcgr) queryLocalInterface : new zzcgt(iBinder2);
        }
        this.zzits = zzcgtVar;
    }

    @Override // android.os.Parcelable
    @Hide
    public final void writeToParcel(Parcel parcel, int i) {
        IBinder iBinder = null;
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.zzitp);
        zzbgo.zza(parcel, 2, (Parcelable) this.zzitq, i, false);
        zzbgo.zza(parcel, 3, this.zzitr == null ? null : this.zzitr.asBinder(), false);
        if (this.zzits != null) {
            iBinder = this.zzits.asBinder();
        }
        zzbgo.zza(parcel, 4, iBinder, false);
        zzbgo.zzai(parcel, zze);
    }
}
