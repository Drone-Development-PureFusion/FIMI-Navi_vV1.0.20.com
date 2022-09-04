package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
/* loaded from: classes2.dex */
public final class Tile extends zzbgl {
    @Hide
    public static final Parcelable.Creator<Tile> CREATOR = new zzr();
    public final byte[] data;
    public final int height;
    public final int width;

    public Tile(int i, int i2, byte[] bArr) {
        this.width = i;
        this.height = i2;
        this.data = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 2, this.width);
        zzbgo.zzc(parcel, 3, this.height);
        zzbgo.zza(parcel, 4, this.data, false);
        zzbgo.zzai(parcel, zze);
    }
}
