package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
/* loaded from: classes.dex */
public class ActivityTransition extends zzbgl {
    public static final int ACTIVITY_TRANSITION_ENTER = 0;
    public static final int ACTIVITY_TRANSITION_EXIT = 1;
    public static final Parcelable.Creator<ActivityTransition> CREATOR = new zzc();
    private final int zziqw;
    private final int zziqx;

    /* loaded from: classes.dex */
    public static class Builder {
        private int zziqw = -1;
        private int zziqx = -1;

        public ActivityTransition build() {
            boolean z = true;
            zzbq.zza(this.zziqw != -1, "Activity type not set.");
            if (this.zziqx == -1) {
                z = false;
            }
            zzbq.zza(z, "Activity transition type not set.");
            return new ActivityTransition(this.zziqw, this.zziqx);
        }

        public Builder setActivityTransition(int i) {
            ActivityTransition.zzeh(i);
            this.zziqx = i;
            return this;
        }

        public Builder setActivityType(int i) {
            DetectedActivity.zzei(i);
            this.zziqw = i;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface SupportedActivityTransition {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public ActivityTransition(int i, int i2) {
        this.zziqw = i;
        this.zziqx = i2;
    }

    @Hide
    public static void zzeh(int i) {
        boolean z = true;
        if (i < 0 || i > 1) {
            z = false;
        }
        zzbq.checkArgument(z, new StringBuilder(41).append("Transition type ").append(i).append(" is not valid.").toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransition)) {
            return false;
        }
        ActivityTransition activityTransition = (ActivityTransition) obj;
        return this.zziqw == activityTransition.zziqw && this.zziqx == activityTransition.zziqx;
    }

    public int getActivityType() {
        return this.zziqw;
    }

    public int getTransitionType() {
        return this.zziqx;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zziqw), Integer.valueOf(this.zziqx)});
    }

    public String toString() {
        int i = this.zziqw;
        return new StringBuilder(75).append("ActivityTransition [mActivityType=").append(i).append(", mTransitionType=").append(this.zziqx).append(']').toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, getActivityType());
        zzbgo.zzc(parcel, 2, getTransitionType());
        zzbgo.zzai(parcel, zze);
    }
}
