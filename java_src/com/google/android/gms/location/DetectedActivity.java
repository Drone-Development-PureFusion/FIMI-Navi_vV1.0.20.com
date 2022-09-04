package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes2.dex */
public class DetectedActivity extends zzbgl {
    public static final int IN_VEHICLE = 0;
    public static final int ON_BICYCLE = 1;
    public static final int ON_FOOT = 2;
    public static final int RUNNING = 8;
    public static final int STILL = 3;
    public static final int TILTING = 5;
    public static final int UNKNOWN = 4;
    public static final int WALKING = 7;
    private int zzhia;
    private int zzirg;
    @Hide
    private static Comparator<DetectedActivity> zzirc = new zzh();
    @Hide
    private static int[] zzird = {9, 10};
    @Hide
    private static int[] zzire = {0, 1, 2, 4, 5, 6, 7, 8, 10, 11, 12, 13, 14, 16, 17};
    @Hide
    private static int[] zzirf = {0, 1, 2, 3, 7, 8, 16, 17};
    public static final Parcelable.Creator<DetectedActivity> CREATOR = new zzi();

    public DetectedActivity(int i, int i2) {
        this.zzhia = i;
        this.zzirg = i2;
    }

    @Hide
    public static void zzei(int i) {
        boolean z = false;
        for (int i2 : zzirf) {
            if (i2 == i) {
                z = true;
            }
        }
        if (!z) {
            Log.w("DetectedActivity", new StringBuilder(81).append(i).append(" is not a valid DetectedActivity supported by Activity Transition API.").toString());
        }
    }

    @Hide
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DetectedActivity detectedActivity = (DetectedActivity) obj;
        return this.zzhia == detectedActivity.zzhia && this.zzirg == detectedActivity.zzirg;
    }

    public int getConfidence() {
        return this.zzirg;
    }

    public int getType() {
        int i = this.zzhia;
        if (i > 17) {
            return 4;
        }
        return i;
    }

    @Hide
    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzhia), Integer.valueOf(this.zzirg)});
    }

    public String toString() {
        String str;
        int type = getType();
        switch (type) {
            case 0:
                str = "IN_VEHICLE";
                break;
            case 1:
                str = "ON_BICYCLE";
                break;
            case 2:
                str = "ON_FOOT";
                break;
            case 3:
                str = "STILL";
                break;
            case 4:
                str = "UNKNOWN";
                break;
            case 5:
                str = "TILTING";
                break;
            case 6:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            default:
                str = Integer.toString(type);
                break;
            case 7:
                str = "WALKING";
                break;
            case 8:
                str = "RUNNING";
                break;
            case 16:
                str = "IN_ROAD_VEHICLE";
                break;
            case 17:
                str = "IN_RAIL_VEHICLE";
                break;
        }
        return new StringBuilder(String.valueOf(str).length() + 48).append("DetectedActivity [type=").append(str).append(", confidence=").append(this.zzirg).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.zzhia);
        zzbgo.zzc(parcel, 2, this.zzirg);
        zzbgo.zzai(parcel, zze);
    }
}
