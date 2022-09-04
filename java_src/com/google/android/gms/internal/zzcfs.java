package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbg;
@Hide
/* loaded from: classes2.dex */
public final class zzcfs extends zzbgl {
    public static final Parcelable.Creator<zzcfs> CREATOR = new zzcft();
    private String packageName;
    private int uid;

    public zzcfs(int i, String str) {
        this.uid = i;
        this.packageName = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof zzcfs)) {
            return false;
        }
        zzcfs zzcfsVar = (zzcfs) obj;
        return zzcfsVar.uid == this.uid && zzbg.equal(zzcfsVar.packageName, this.packageName);
    }

    public final int hashCode() {
        return this.uid;
    }

    public final String toString() {
        return String.format("%d:%s", Integer.valueOf(this.uid), this.packageName);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.uid);
        zzbgo.zza(parcel, 2, this.packageName, false);
        zzbgo.zzai(parcel, zze);
    }
}
