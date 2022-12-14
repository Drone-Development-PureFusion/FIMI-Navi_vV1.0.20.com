package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import ch.qos.logback.core.pattern.color.ANSIConstants;
import com.facebook.common.time.Clock;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class LocationRequest extends zzbgl implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationRequest> CREATOR = new zzab();
    public static final int PRIORITY_BALANCED_POWER_ACCURACY = 102;
    public static final int PRIORITY_HIGH_ACCURACY = 100;
    public static final int PRIORITY_LOW_POWER = 104;
    public static final int PRIORITY_NO_POWER = 105;
    private int mPriority;
    private int zzirl;
    private long zzirp;
    private long zzisg;
    private long zzish;
    private boolean zzisi;
    private float zzisj;
    private long zzisk;

    @Hide
    public LocationRequest() {
        this.mPriority = 102;
        this.zzisg = 3600000L;
        this.zzish = 600000L;
        this.zzisi = false;
        this.zzirp = Clock.MAX_TIME;
        this.zzirl = Integer.MAX_VALUE;
        this.zzisj = 0.0f;
        this.zzisk = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public LocationRequest(int i, long j, long j2, boolean z, long j3, int i2, float f, long j4) {
        this.mPriority = i;
        this.zzisg = j;
        this.zzish = j2;
        this.zzisi = z;
        this.zzirp = j3;
        this.zzirl = i2;
        this.zzisj = f;
        this.zzisk = j4;
    }

    public static LocationRequest create() {
        return new LocationRequest();
    }

    private static void zzai(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(new StringBuilder(38).append("invalid interval: ").append(j).toString());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocationRequest)) {
            return false;
        }
        LocationRequest locationRequest = (LocationRequest) obj;
        return this.mPriority == locationRequest.mPriority && this.zzisg == locationRequest.zzisg && this.zzish == locationRequest.zzish && this.zzisi == locationRequest.zzisi && this.zzirp == locationRequest.zzirp && this.zzirl == locationRequest.zzirl && this.zzisj == locationRequest.zzisj && getMaxWaitTime() == locationRequest.getMaxWaitTime();
    }

    public final long getExpirationTime() {
        return this.zzirp;
    }

    public final long getFastestInterval() {
        return this.zzish;
    }

    public final long getInterval() {
        return this.zzisg;
    }

    public final long getMaxWaitTime() {
        long j = this.zzisk;
        return j < this.zzisg ? this.zzisg : j;
    }

    public final int getNumUpdates() {
        return this.zzirl;
    }

    public final int getPriority() {
        return this.mPriority;
    }

    public final float getSmallestDisplacement() {
        return this.zzisj;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.mPriority), Long.valueOf(this.zzisg), Float.valueOf(this.zzisj), Long.valueOf(this.zzisk)});
    }

    public final boolean isFastestIntervalExplicitlySet() {
        return this.zzisi;
    }

    public final LocationRequest setExpirationDuration(long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (j > Clock.MAX_TIME - elapsedRealtime) {
            this.zzirp = Clock.MAX_TIME;
        } else {
            this.zzirp = elapsedRealtime + j;
        }
        if (this.zzirp < 0) {
            this.zzirp = 0L;
        }
        return this;
    }

    public final LocationRequest setExpirationTime(long j) {
        this.zzirp = j;
        if (this.zzirp < 0) {
            this.zzirp = 0L;
        }
        return this;
    }

    public final LocationRequest setFastestInterval(long j) {
        zzai(j);
        this.zzisi = true;
        this.zzish = j;
        return this;
    }

    public final LocationRequest setInterval(long j) {
        zzai(j);
        this.zzisg = j;
        if (!this.zzisi) {
            this.zzish = (long) (this.zzisg / 6.0d);
        }
        return this;
    }

    public final LocationRequest setMaxWaitTime(long j) {
        zzai(j);
        this.zzisk = j;
        return this;
    }

    public final LocationRequest setNumUpdates(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(new StringBuilder(31).append("invalid numUpdates: ").append(i).toString());
        }
        this.zzirl = i;
        return this;
    }

    public final LocationRequest setPriority(int i) {
        switch (i) {
            case 100:
            case 102:
            case 104:
            case 105:
                this.mPriority = i;
                return this;
            case 101:
            case 103:
            default:
                throw new IllegalArgumentException(new StringBuilder(28).append("invalid quality: ").append(i).toString());
        }
    }

    public final LocationRequest setSmallestDisplacement(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException(new StringBuilder(37).append("invalid displacement: ").append(f).toString());
        }
        this.zzisj = f;
        return this;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        StringBuilder append = sb.append("Request[");
        switch (this.mPriority) {
            case 100:
                str = "PRIORITY_HIGH_ACCURACY";
                break;
            case 101:
            case 103:
            default:
                str = "???";
                break;
            case 102:
                str = "PRIORITY_BALANCED_POWER_ACCURACY";
                break;
            case 104:
                str = "PRIORITY_LOW_POWER";
                break;
            case 105:
                str = "PRIORITY_NO_POWER";
                break;
        }
        append.append(str);
        if (this.mPriority != 105) {
            sb.append(" requested=");
            sb.append(this.zzisg).append("ms");
        }
        sb.append(" fastest=");
        sb.append(this.zzish).append("ms");
        if (this.zzisk > this.zzisg) {
            sb.append(" maxWait=");
            sb.append(this.zzisk).append("ms");
        }
        if (this.zzisj > 0.0f) {
            sb.append(" smallestDisplacement=");
            sb.append(this.zzisj).append(ANSIConstants.ESC_END);
        }
        if (this.zzirp != Clock.MAX_TIME) {
            sb.append(" expireIn=");
            sb.append(this.zzirp - SystemClock.elapsedRealtime()).append("ms");
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
        zzbgo.zzc(parcel, 1, this.mPriority);
        zzbgo.zza(parcel, 2, this.zzisg);
        zzbgo.zza(parcel, 3, this.zzish);
        zzbgo.zza(parcel, 4, this.zzisi);
        zzbgo.zza(parcel, 5, this.zzirp);
        zzbgo.zzc(parcel, 6, this.zzirl);
        zzbgo.zza(parcel, 7, this.zzisj);
        zzbgo.zza(parcel, 8, this.zzisk);
        zzbgo.zzai(parcel, zze);
    }
}
