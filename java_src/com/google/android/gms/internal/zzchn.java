package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
@Hide
/* loaded from: classes2.dex */
public final class zzchn extends zzbgl {
    public static final Parcelable.Creator<zzchn> CREATOR = new zzcho();
    private PendingIntent zzekd;
    private int zzitp;
    private zzcgr zzits;
    private zzchl zziur;
    private com.google.android.gms.location.zzx zzius;
    private com.google.android.gms.location.zzu zziut;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.gms.internal.zzcgr] */
    public zzchn(int i, zzchl zzchlVar, IBinder iBinder, PendingIntent pendingIntent, IBinder iBinder2, IBinder iBinder3) {
        zzcgt zzcgtVar = null;
        this.zzitp = i;
        this.zziur = zzchlVar;
        this.zzius = iBinder == null ? null : com.google.android.gms.location.zzy.zzbf(iBinder);
        this.zzekd = pendingIntent;
        this.zziut = iBinder2 == null ? null : com.google.android.gms.location.zzv.zzbe(iBinder2);
        if (iBinder3 != null && iBinder3 != null) {
            IInterface queryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzcgtVar = queryLocalInterface instanceof zzcgr ? (zzcgr) queryLocalInterface : new zzcgt(iBinder3);
        }
        this.zzits = zzcgtVar;
    }

    public static zzchn zza(com.google.android.gms.location.zzu zzuVar, @Nullable zzcgr zzcgrVar) {
        return new zzchn(2, null, null, null, zzuVar.asBinder(), zzcgrVar != null ? zzcgrVar.asBinder() : null);
    }

    public static zzchn zza(com.google.android.gms.location.zzx zzxVar, @Nullable zzcgr zzcgrVar) {
        return new zzchn(2, null, zzxVar.asBinder(), null, null, zzcgrVar != null ? zzcgrVar.asBinder() : null);
    }

    @Override // android.os.Parcelable
    @Hide
    public final void writeToParcel(Parcel parcel, int i) {
        IBinder iBinder = null;
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.zzitp);
        zzbgo.zza(parcel, 2, (Parcelable) this.zziur, i, false);
        zzbgo.zza(parcel, 3, this.zzius == null ? null : this.zzius.asBinder(), false);
        zzbgo.zza(parcel, 4, (Parcelable) this.zzekd, i, false);
        zzbgo.zza(parcel, 5, this.zziut == null ? null : this.zziut.asBinder(), false);
        if (this.zzits != null) {
            iBinder = this.zzits.asBinder();
        }
        zzbgo.zza(parcel, 6, iBinder, false);
        zzbgo.zzai(parcel, zze);
    }
}
