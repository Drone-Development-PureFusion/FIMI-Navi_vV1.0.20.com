package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class LocationAvailability extends zzbgl implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationAvailability> CREATOR = new zzaa();
    @Deprecated
    private int zzisb;
    @Deprecated
    private int zzisc;
    private long zzisd;
    private int zzise;
    private zzaj[] zzisf;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public LocationAvailability(int i, int i2, int i3, long j, zzaj[] zzajVarArr) {
        this.zzise = i;
        this.zzisb = i2;
        this.zzisc = i3;
        this.zzisd = j;
        this.zzisf = zzajVarArr;
    }

    public static LocationAvailability extractLocationAvailability(Intent intent) {
        if (!hasLocationAvailability(intent)) {
            return null;
        }
        return (LocationAvailability) intent.getExtras().getParcelable("com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY");
    }

    public static boolean hasLocationAvailability(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LocationAvailability locationAvailability = (LocationAvailability) obj;
        return this.zzisb == locationAvailability.zzisb && this.zzisc == locationAvailability.zzisc && this.zzisd == locationAvailability.zzisd && this.zzise == locationAvailability.zzise && Arrays.equals(this.zzisf, locationAvailability.zzisf);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzise), Integer.valueOf(this.zzisb), Integer.valueOf(this.zzisc), Long.valueOf(this.zzisd), this.zzisf});
    }

    public final boolean isLocationAvailable() {
        return this.zzise < 1000;
    }

    public final String toString() {
        return new StringBuilder(48).append("LocationAvailability[isLocationAvailable: ").append(isLocationAvailable()).append("]").toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.zzisb);
        zzbgo.zzc(parcel, 2, this.zzisc);
        zzbgo.zza(parcel, 3, this.zzisd);
        zzbgo.zzc(parcel, 4, this.zzise);
        zzbgo.zza(parcel, 5, (Parcelable[]) this.zzisf, i, false);
        zzbgo.zzai(parcel, zze);
    }
}
