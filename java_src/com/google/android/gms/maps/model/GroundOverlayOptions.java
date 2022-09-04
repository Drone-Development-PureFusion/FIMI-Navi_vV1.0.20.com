package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
/* loaded from: classes2.dex */
public final class GroundOverlayOptions extends zzbgl {
    @Hide
    public static final Parcelable.Creator<GroundOverlayOptions> CREATOR = new zzd();
    public static final float NO_DIMENSION = -1.0f;
    private float bearing;
    private float height;
    private float width;
    private float zzjda;
    private boolean zzjdb;
    private boolean zzjdc;
    @NonNull
    private BitmapDescriptor zzjdf;
    private LatLng zzjdg;
    private LatLngBounds zzjdh;
    private float zzjdi;
    private float zzjdj;
    private float zzjdk;

    public GroundOverlayOptions() {
        this.zzjdb = true;
        this.zzjdi = 0.0f;
        this.zzjdj = 0.5f;
        this.zzjdk = 0.5f;
        this.zzjdc = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public GroundOverlayOptions(IBinder iBinder, LatLng latLng, float f, float f2, LatLngBounds latLngBounds, float f3, float f4, boolean z, float f5, float f6, float f7, boolean z2) {
        this.zzjdb = true;
        this.zzjdi = 0.0f;
        this.zzjdj = 0.5f;
        this.zzjdk = 0.5f;
        this.zzjdc = false;
        this.zzjdf = new BitmapDescriptor(IObjectWrapper.zza.zzaq(iBinder));
        this.zzjdg = latLng;
        this.width = f;
        this.height = f2;
        this.zzjdh = latLngBounds;
        this.bearing = f3;
        this.zzjda = f4;
        this.zzjdb = z;
        this.zzjdi = f5;
        this.zzjdj = f6;
        this.zzjdk = f7;
        this.zzjdc = z2;
    }

    private final GroundOverlayOptions zza(LatLng latLng, float f, float f2) {
        this.zzjdg = latLng;
        this.width = f;
        this.height = f2;
        return this;
    }

    public final GroundOverlayOptions anchor(float f, float f2) {
        this.zzjdj = f;
        this.zzjdk = f2;
        return this;
    }

    public final GroundOverlayOptions bearing(float f) {
        this.bearing = ((f % 360.0f) + 360.0f) % 360.0f;
        return this;
    }

    public final GroundOverlayOptions clickable(boolean z) {
        this.zzjdc = z;
        return this;
    }

    public final float getAnchorU() {
        return this.zzjdj;
    }

    public final float getAnchorV() {
        return this.zzjdk;
    }

    public final float getBearing() {
        return this.bearing;
    }

    public final LatLngBounds getBounds() {
        return this.zzjdh;
    }

    public final float getHeight() {
        return this.height;
    }

    public final BitmapDescriptor getImage() {
        return this.zzjdf;
    }

    public final LatLng getLocation() {
        return this.zzjdg;
    }

    public final float getTransparency() {
        return this.zzjdi;
    }

    public final float getWidth() {
        return this.width;
    }

    public final float getZIndex() {
        return this.zzjda;
    }

    public final GroundOverlayOptions image(@NonNull BitmapDescriptor bitmapDescriptor) {
        zzbq.checkNotNull(bitmapDescriptor, "imageDescriptor must not be null");
        this.zzjdf = bitmapDescriptor;
        return this;
    }

    public final boolean isClickable() {
        return this.zzjdc;
    }

    public final boolean isVisible() {
        return this.zzjdb;
    }

    public final GroundOverlayOptions position(LatLng latLng, float f) {
        boolean z = true;
        zzbq.zza(this.zzjdh == null, "Position has already been set using positionFromBounds");
        zzbq.checkArgument(latLng != null, "Location must be specified");
        if (f < 0.0f) {
            z = false;
        }
        zzbq.checkArgument(z, "Width must be non-negative");
        return zza(latLng, f, -1.0f);
    }

    public final GroundOverlayOptions position(LatLng latLng, float f, float f2) {
        boolean z = true;
        zzbq.zza(this.zzjdh == null, "Position has already been set using positionFromBounds");
        zzbq.checkArgument(latLng != null, "Location must be specified");
        zzbq.checkArgument(f >= 0.0f, "Width must be non-negative");
        if (f2 < 0.0f) {
            z = false;
        }
        zzbq.checkArgument(z, "Height must be non-negative");
        return zza(latLng, f, f2);
    }

    public final GroundOverlayOptions positionFromBounds(LatLngBounds latLngBounds) {
        boolean z = this.zzjdg == null;
        String valueOf = String.valueOf(this.zzjdg);
        zzbq.zza(z, new StringBuilder(String.valueOf(valueOf).length() + 46).append("Position has already been set using position: ").append(valueOf).toString());
        this.zzjdh = latLngBounds;
        return this;
    }

    public final GroundOverlayOptions transparency(float f) {
        zzbq.checkArgument(f >= 0.0f && f <= 1.0f, "Transparency must be in the range [0..1]");
        this.zzjdi = f;
        return this;
    }

    public final GroundOverlayOptions visible(boolean z) {
        this.zzjdb = z;
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, this.zzjdf.zzaxq().asBinder(), false);
        zzbgo.zza(parcel, 3, (Parcelable) getLocation(), i, false);
        zzbgo.zza(parcel, 4, getWidth());
        zzbgo.zza(parcel, 5, getHeight());
        zzbgo.zza(parcel, 6, (Parcelable) getBounds(), i, false);
        zzbgo.zza(parcel, 7, getBearing());
        zzbgo.zza(parcel, 8, getZIndex());
        zzbgo.zza(parcel, 9, isVisible());
        zzbgo.zza(parcel, 10, getTransparency());
        zzbgo.zza(parcel, 11, getAnchorU());
        zzbgo.zza(parcel, 12, getAnchorV());
        zzbgo.zza(parcel, 13, isClickable());
        zzbgo.zzai(parcel, zze);
    }

    public final GroundOverlayOptions zIndex(float f) {
        this.zzjda = f;
        return this;
    }
}
