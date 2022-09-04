package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import com.google.android.gms.internal.zzbgq;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class ActivityTransitionResult extends zzbgl {
    public static final Parcelable.Creator<ActivityTransitionResult> CREATOR = new zzg();
    private final List<ActivityTransitionEvent> zzirb;

    public ActivityTransitionResult(List<ActivityTransitionEvent> list) {
        zzbq.checkNotNull(list, "transitionEvents list can't be null.");
        if (!list.isEmpty()) {
            for (int i = 1; i < list.size(); i++) {
                zzbq.checkArgument(list.get(i).getElapsedRealTimeNanos() >= list.get(i + (-1)).getElapsedRealTimeNanos());
            }
        }
        this.zzirb = Collections.unmodifiableList(list);
    }

    @Nullable
    public static ActivityTransitionResult extractResult(Intent intent) {
        if (!hasResult(intent)) {
            return null;
        }
        return (ActivityTransitionResult) zzbgq.zza(intent, "com.google.android.location.internal.EXTRA_ACTIVITY_TRANSITION_RESULT", CREATOR);
    }

    public static boolean hasResult(@Nullable Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_TRANSITION_RESULT");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.zzirb.equals(((ActivityTransitionResult) obj).zzirb);
        }
        return false;
    }

    public List<ActivityTransitionEvent> getTransitionEvents() {
        return this.zzirb;
    }

    public int hashCode() {
        return this.zzirb.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, getTransitionEvents(), false);
        zzbgo.zzai(parcel, zze);
    }
}
