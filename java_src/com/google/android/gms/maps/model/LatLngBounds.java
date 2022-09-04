package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.google.android.gms.C1932R;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzbg;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class LatLngBounds extends zzbgl implements ReflectedParcelable {
    @Hide
    public static final Parcelable.Creator<LatLngBounds> CREATOR = new zze();
    public final LatLng northeast;
    public final LatLng southwest;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private double zzjdp = Double.POSITIVE_INFINITY;
        private double zzjdq = Double.NEGATIVE_INFINITY;
        private double zzjdr = Double.NaN;
        private double zzjds = Double.NaN;

        public final LatLngBounds build() {
            zzbq.zza(!Double.isNaN(this.zzjdr), "no included points");
            return new LatLngBounds(new LatLng(this.zzjdp, this.zzjdr), new LatLng(this.zzjdq, this.zzjds));
        }

        public final Builder include(LatLng latLng) {
            boolean z = true;
            this.zzjdp = Math.min(this.zzjdp, latLng.latitude);
            this.zzjdq = Math.max(this.zzjdq, latLng.latitude);
            double d = latLng.longitude;
            if (!Double.isNaN(this.zzjdr)) {
                if (this.zzjdr <= this.zzjds) {
                    if (this.zzjdr > d || d > this.zzjds) {
                        z = false;
                    }
                } else if (this.zzjdr > d && d > this.zzjds) {
                    z = false;
                }
                if (!z) {
                    if (LatLngBounds.zza(this.zzjdr, d) < LatLngBounds.zzb(this.zzjds, d)) {
                        this.zzjdr = d;
                    }
                }
                return this;
            }
            this.zzjdr = d;
            this.zzjds = d;
            return this;
        }
    }

    public LatLngBounds(LatLng latLng, LatLng latLng2) {
        zzbq.checkNotNull(latLng, "null southwest");
        zzbq.checkNotNull(latLng2, "null northeast");
        zzbq.zzb(latLng2.latitude >= latLng.latitude, "southern latitude exceeds northern latitude (%s > %s)", Double.valueOf(latLng.latitude), Double.valueOf(latLng2.latitude));
        this.southwest = latLng;
        this.northeast = latLng2;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static LatLngBounds createFromAttributes(Context context, AttributeSet attributeSet) {
        if (context == null || attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, C1932R.styleable.MapAttrs);
        Float valueOf = obtainAttributes.hasValue(C1932R.styleable.MapAttrs_latLngBoundsSouthWestLatitude) ? Float.valueOf(obtainAttributes.getFloat(C1932R.styleable.MapAttrs_latLngBoundsSouthWestLatitude, 0.0f)) : null;
        Float valueOf2 = obtainAttributes.hasValue(C1932R.styleable.MapAttrs_latLngBoundsSouthWestLongitude) ? Float.valueOf(obtainAttributes.getFloat(C1932R.styleable.MapAttrs_latLngBoundsSouthWestLongitude, 0.0f)) : null;
        Float valueOf3 = obtainAttributes.hasValue(C1932R.styleable.MapAttrs_latLngBoundsNorthEastLatitude) ? Float.valueOf(obtainAttributes.getFloat(C1932R.styleable.MapAttrs_latLngBoundsNorthEastLatitude, 0.0f)) : null;
        Float valueOf4 = obtainAttributes.hasValue(C1932R.styleable.MapAttrs_latLngBoundsNorthEastLongitude) ? Float.valueOf(obtainAttributes.getFloat(C1932R.styleable.MapAttrs_latLngBoundsNorthEastLongitude, 0.0f)) : null;
        if (valueOf != null && valueOf2 != null && valueOf3 != null && valueOf4 != null) {
            return new LatLngBounds(new LatLng(valueOf.floatValue(), valueOf2.floatValue()), new LatLng(valueOf3.floatValue(), valueOf4.floatValue()));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double zza(double d, double d2) {
        return ((d - d2) + 360.0d) % 360.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double zzb(double d, double d2) {
        return ((d2 - d) + 360.0d) % 360.0d;
    }

    private final boolean zzg(double d) {
        return this.southwest.longitude <= this.northeast.longitude ? this.southwest.longitude <= d && d <= this.northeast.longitude : this.southwest.longitude <= d || d <= this.northeast.longitude;
    }

    public final boolean contains(LatLng latLng) {
        double d = latLng.latitude;
        return ((this.southwest.latitude > d ? 1 : (this.southwest.latitude == d ? 0 : -1)) <= 0 && (d > this.northeast.latitude ? 1 : (d == this.northeast.latitude ? 0 : -1)) <= 0) && zzg(latLng.longitude);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LatLngBounds)) {
            return false;
        }
        LatLngBounds latLngBounds = (LatLngBounds) obj;
        return this.southwest.equals(latLngBounds.southwest) && this.northeast.equals(latLngBounds.northeast);
    }

    public final LatLng getCenter() {
        double d = (this.southwest.latitude + this.northeast.latitude) / 2.0d;
        double d2 = this.northeast.longitude;
        double d3 = this.southwest.longitude;
        return new LatLng(d, d3 <= d2 ? (d2 + d3) / 2.0d : ((d2 + 360.0d) + d3) / 2.0d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.southwest, this.northeast});
    }

    public final LatLngBounds including(LatLng latLng) {
        double min = Math.min(this.southwest.latitude, latLng.latitude);
        double max = Math.max(this.northeast.latitude, latLng.latitude);
        double d = this.northeast.longitude;
        double d2 = this.southwest.longitude;
        double d3 = latLng.longitude;
        if (!zzg(d3)) {
            if (zza(d2, d3) < zzb(d, d3)) {
                d2 = d3;
            } else {
                d = d3;
            }
        }
        return new LatLngBounds(new LatLng(min, d2), new LatLng(max, d));
    }

    public final String toString() {
        return zzbg.zzx(this).zzg("southwest", this.southwest).zzg("northeast", this.northeast).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, (Parcelable) this.southwest, i, false);
        zzbgo.zza(parcel, 3, (Parcelable) this.northeast, i, false);
        zzbgo.zzai(parcel, zze);
    }
}
