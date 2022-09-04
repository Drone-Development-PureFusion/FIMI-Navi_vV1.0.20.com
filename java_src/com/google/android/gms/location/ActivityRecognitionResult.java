package com.google.android.gms.location;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzbg;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import com.google.android.gms.internal.zzbgq;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class ActivityRecognitionResult extends zzbgl implements ReflectedParcelable {
    public static final Parcelable.Creator<ActivityRecognitionResult> CREATOR = new zzb();
    private Bundle extras;
    private List<DetectedActivity> zziqs;
    private long zziqt;
    private long zziqu;
    private int zziqv;

    public ActivityRecognitionResult(DetectedActivity detectedActivity, long j, long j2) {
        this(detectedActivity, j, j2, 0, (Bundle) null);
    }

    @Hide
    private ActivityRecognitionResult(DetectedActivity detectedActivity, long j, long j2, int i, Bundle bundle) {
        this(Collections.singletonList(detectedActivity), j, j2, 0, (Bundle) null);
    }

    public ActivityRecognitionResult(List<DetectedActivity> list, long j, long j2) {
        this(list, j, j2, 0, (Bundle) null);
    }

    @Hide
    public ActivityRecognitionResult(List<DetectedActivity> list, long j, long j2, int i, Bundle bundle) {
        boolean z = true;
        zzbq.checkArgument(list != null && list.size() > 0, "Must have at least 1 detected activity");
        zzbq.checkArgument((j <= 0 || j2 <= 0) ? false : z, "Must set times");
        this.zziqs = list;
        this.zziqt = j;
        this.zziqu = j2;
        this.zziqv = i;
        this.extras = bundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0021 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ActivityRecognitionResult extractResult(Intent intent) {
        ActivityRecognitionResult activityRecognitionResult;
        if (hasResult(intent)) {
            Object obj = intent.getExtras().get("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT");
            if (obj instanceof byte[]) {
                activityRecognitionResult = (ActivityRecognitionResult) zzbgq.zza((byte[]) obj, CREATOR);
            } else if (obj instanceof ActivityRecognitionResult) {
                activityRecognitionResult = (ActivityRecognitionResult) obj;
            }
            if (activityRecognitionResult == null) {
                return activityRecognitionResult;
            }
            List<ActivityRecognitionResult> zzk = zzk(intent);
            if (zzk != null && !zzk.isEmpty()) {
                return zzk.get(zzk.size() - 1);
            }
            return null;
        }
        activityRecognitionResult = null;
        if (activityRecognitionResult == null) {
        }
    }

    public static boolean hasResult(Intent intent) {
        if (intent == null) {
            return false;
        }
        if (intent == null ? false : intent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT")) {
            return true;
        }
        List<ActivityRecognitionResult> zzk = zzk(intent);
        return zzk != null && !zzk.isEmpty();
    }

    @Hide
    private static boolean zzc(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return true;
        }
        if ((bundle == null && bundle2 != null) || (bundle != null && bundle2 == null)) {
            return false;
        }
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            if (!bundle2.containsKey(str)) {
                return false;
            }
            if (bundle.get(str) == null) {
                if (bundle2.get(str) != null) {
                    return false;
                }
            } else if (bundle.get(str) instanceof Bundle) {
                if (!zzc(bundle.getBundle(str), bundle2.getBundle(str))) {
                    return false;
                }
            } else if (!bundle.get(str).equals(bundle2.get(str))) {
                return false;
            }
        }
        return true;
    }

    @Hide
    @Nullable
    private static List<ActivityRecognitionResult> zzk(Intent intent) {
        if (!(intent == null ? false : intent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT_LIST"))) {
            return null;
        }
        return zzbgq.zzb(intent, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT_LIST", CREATOR);
    }

    @Hide
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ActivityRecognitionResult activityRecognitionResult = (ActivityRecognitionResult) obj;
        return this.zziqt == activityRecognitionResult.zziqt && this.zziqu == activityRecognitionResult.zziqu && this.zziqv == activityRecognitionResult.zziqv && zzbg.equal(this.zziqs, activityRecognitionResult.zziqs) && zzc(this.extras, activityRecognitionResult.extras);
    }

    public int getActivityConfidence(int i) {
        for (DetectedActivity detectedActivity : this.zziqs) {
            if (detectedActivity.getType() == i) {
                return detectedActivity.getConfidence();
            }
        }
        return 0;
    }

    public long getElapsedRealtimeMillis() {
        return this.zziqu;
    }

    public DetectedActivity getMostProbableActivity() {
        return this.zziqs.get(0);
    }

    public List<DetectedActivity> getProbableActivities() {
        return this.zziqs;
    }

    public long getTime() {
        return this.zziqt;
    }

    @Hide
    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zziqt), Long.valueOf(this.zziqu), Integer.valueOf(this.zziqv), this.zziqs, this.extras});
    }

    public String toString() {
        String valueOf = String.valueOf(this.zziqs);
        long j = this.zziqt;
        return new StringBuilder(String.valueOf(valueOf).length() + 124).append("ActivityRecognitionResult [probableActivities=").append(valueOf).append(", timeMillis=").append(j).append(", elapsedRealtimeMillis=").append(this.zziqu).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.zziqs, false);
        zzbgo.zza(parcel, 2, this.zziqt);
        zzbgo.zza(parcel, 3, this.zziqu);
        zzbgo.zzc(parcel, 4, this.zziqv);
        zzbgo.zza(parcel, 5, this.extras, false);
        zzbgo.zzai(parcel, zze);
    }
}
