package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class ActivityTransitionEvent extends zzbgl {
    public static final Parcelable.Creator<ActivityTransitionEvent> CREATOR = new zzd();
    private final int zziqw;
    private final int zziqx;
    private final long zziqy;

    public ActivityTransitionEvent(int i, int i2, long j) {
        DetectedActivity.zzei(i);
        ActivityTransition.zzeh(i2);
        this.zziqw = i;
        this.zziqx = i2;
        this.zziqy = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransitionEvent)) {
            return false;
        }
        ActivityTransitionEvent activityTransitionEvent = (ActivityTransitionEvent) obj;
        return this.zziqw == activityTransitionEvent.zziqw && this.zziqx == activityTransitionEvent.zziqx && this.zziqy == activityTransitionEvent.zziqy;
    }

    public int getActivityType() {
        return this.zziqw;
    }

    public long getElapsedRealTimeNanos() {
        return this.zziqy;
    }

    public int getTransitionType() {
        return this.zziqx;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zziqw), Integer.valueOf(this.zziqx), Long.valueOf(this.zziqy)});
    }

    public String toString() {
        return new StringBuilder(24).append("ActivityType ").append(this.zziqw).toString() + " " + new StringBuilder(26).append("TransitionType ").append(this.zziqx).toString() + " " + new StringBuilder(41).append("ElapsedRealTimeNanos ").append(this.zziqy).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, getActivityType());
        zzbgo.zzc(parcel, 2, getTransitionType());
        zzbgo.zza(parcel, 3, getElapsedRealTimeNanos());
        zzbgo.zzai(parcel, zze);
    }
}
