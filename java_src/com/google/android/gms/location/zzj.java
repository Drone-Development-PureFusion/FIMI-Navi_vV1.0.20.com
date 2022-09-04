package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.facebook.common.time.Clock;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.Arrays;
@Hide
/* loaded from: classes2.dex */
public final class zzj extends zzbgl {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();
    @Hide
    private boolean zzirh;
    @Hide
    private long zziri;
    @Hide
    private float zzirj;
    @Hide
    private long zzirk;
    @Hide
    private int zzirl;

    public zzj() {
        this(true, 50L, 0.0f, Clock.MAX_TIME, Integer.MAX_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public zzj(boolean z, long j, float f, long j2, int i) {
        this.zzirh = z;
        this.zziri = j;
        this.zzirj = f;
        this.zzirk = j2;
        this.zzirl = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzj)) {
            return false;
        }
        zzj zzjVar = (zzj) obj;
        return this.zzirh == zzjVar.zzirh && this.zziri == zzjVar.zziri && Float.compare(this.zzirj, zzjVar.zzirj) == 0 && this.zzirk == zzjVar.zzirk && this.zzirl == zzjVar.zzirl;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.zzirh), Long.valueOf(this.zziri), Float.valueOf(this.zzirj), Long.valueOf(this.zzirk), Integer.valueOf(this.zzirl)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DeviceOrientationRequest[mShouldUseMag=").append(this.zzirh);
        sb.append(" mMinimumSamplingPeriodMs=").append(this.zziri);
        sb.append(" mSmallestAngleChangeRadians=").append(this.zzirj);
        if (this.zzirk != Clock.MAX_TIME) {
            sb.append(" expireIn=");
            sb.append(this.zzirk - SystemClock.elapsedRealtime()).append("ms");
        }
        if (this.zzirl != Integer.MAX_VALUE) {
            sb.append(" num=").append(this.zzirl);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 1, this.zzirh);
        zzbgo.zza(parcel, 2, this.zziri);
        zzbgo.zza(parcel, 3, this.zzirj);
        zzbgo.zza(parcel, 4, this.zzirk);
        zzbgo.zzc(parcel, 5, this.zzirl);
        zzbgo.zzai(parcel, zze);
    }
}
