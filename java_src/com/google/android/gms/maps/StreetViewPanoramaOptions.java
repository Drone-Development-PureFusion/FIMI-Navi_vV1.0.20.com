package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzbg;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewSource;
/* loaded from: classes2.dex */
public final class StreetViewPanoramaOptions extends zzbgl implements ReflectedParcelable {
    @Hide
    public static final Parcelable.Creator<StreetViewPanoramaOptions> CREATOR = new zzai();
    private String panoId;
    private LatLng position;
    private Boolean zzjav;
    private Boolean zzjba;
    private StreetViewPanoramaCamera zzjcf;
    private Integer zzjcg;
    private Boolean zzjch;
    private Boolean zzjci;
    private Boolean zzjcj;
    private StreetViewSource zzjck;

    public StreetViewPanoramaOptions() {
        this.zzjch = true;
        this.zzjba = true;
        this.zzjci = true;
        this.zzjcj = true;
        this.zzjck = StreetViewSource.DEFAULT;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public StreetViewPanoramaOptions(StreetViewPanoramaCamera streetViewPanoramaCamera, String str, LatLng latLng, Integer num, byte b, byte b2, byte b3, byte b4, byte b5, StreetViewSource streetViewSource) {
        this.zzjch = true;
        this.zzjba = true;
        this.zzjci = true;
        this.zzjcj = true;
        this.zzjck = StreetViewSource.DEFAULT;
        this.zzjcf = streetViewPanoramaCamera;
        this.position = latLng;
        this.zzjcg = num;
        this.panoId = str;
        this.zzjch = com.google.android.gms.maps.internal.zza.zza(b);
        this.zzjba = com.google.android.gms.maps.internal.zza.zza(b2);
        this.zzjci = com.google.android.gms.maps.internal.zza.zza(b3);
        this.zzjcj = com.google.android.gms.maps.internal.zza.zza(b4);
        this.zzjav = com.google.android.gms.maps.internal.zza.zza(b5);
        this.zzjck = streetViewSource;
    }

    public final Boolean getPanningGesturesEnabled() {
        return this.zzjci;
    }

    public final String getPanoramaId() {
        return this.panoId;
    }

    public final LatLng getPosition() {
        return this.position;
    }

    public final Integer getRadius() {
        return this.zzjcg;
    }

    public final StreetViewSource getSource() {
        return this.zzjck;
    }

    public final Boolean getStreetNamesEnabled() {
        return this.zzjcj;
    }

    public final StreetViewPanoramaCamera getStreetViewPanoramaCamera() {
        return this.zzjcf;
    }

    public final Boolean getUseViewLifecycleInFragment() {
        return this.zzjav;
    }

    public final Boolean getUserNavigationEnabled() {
        return this.zzjch;
    }

    public final Boolean getZoomGesturesEnabled() {
        return this.zzjba;
    }

    public final StreetViewPanoramaOptions panningGesturesEnabled(boolean z) {
        this.zzjci = Boolean.valueOf(z);
        return this;
    }

    public final StreetViewPanoramaOptions panoramaCamera(StreetViewPanoramaCamera streetViewPanoramaCamera) {
        this.zzjcf = streetViewPanoramaCamera;
        return this;
    }

    public final StreetViewPanoramaOptions panoramaId(String str) {
        this.panoId = str;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng) {
        this.position = latLng;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng, StreetViewSource streetViewSource) {
        this.position = latLng;
        this.zzjck = streetViewSource;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng, Integer num) {
        this.position = latLng;
        this.zzjcg = num;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng, Integer num, StreetViewSource streetViewSource) {
        this.position = latLng;
        this.zzjcg = num;
        this.zzjck = streetViewSource;
        return this;
    }

    public final StreetViewPanoramaOptions streetNamesEnabled(boolean z) {
        this.zzjcj = Boolean.valueOf(z);
        return this;
    }

    public final String toString() {
        return zzbg.zzx(this).zzg("PanoramaId", this.panoId).zzg("Position", this.position).zzg("Radius", this.zzjcg).zzg("Source", this.zzjck).zzg("StreetViewPanoramaCamera", this.zzjcf).zzg("UserNavigationEnabled", this.zzjch).zzg("ZoomGesturesEnabled", this.zzjba).zzg("PanningGesturesEnabled", this.zzjci).zzg("StreetNamesEnabled", this.zzjcj).zzg("UseViewLifecycleInFragment", this.zzjav).toString();
    }

    public final StreetViewPanoramaOptions useViewLifecycleInFragment(boolean z) {
        this.zzjav = Boolean.valueOf(z);
        return this;
    }

    public final StreetViewPanoramaOptions userNavigationEnabled(boolean z) {
        this.zzjch = Boolean.valueOf(z);
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, (Parcelable) getStreetViewPanoramaCamera(), i, false);
        zzbgo.zza(parcel, 3, getPanoramaId(), false);
        zzbgo.zza(parcel, 4, (Parcelable) getPosition(), i, false);
        zzbgo.zza(parcel, 5, getRadius(), false);
        zzbgo.zza(parcel, 6, com.google.android.gms.maps.internal.zza.zzc(this.zzjch));
        zzbgo.zza(parcel, 7, com.google.android.gms.maps.internal.zza.zzc(this.zzjba));
        zzbgo.zza(parcel, 8, com.google.android.gms.maps.internal.zza.zzc(this.zzjci));
        zzbgo.zza(parcel, 9, com.google.android.gms.maps.internal.zza.zzc(this.zzjcj));
        zzbgo.zza(parcel, 10, com.google.android.gms.maps.internal.zza.zzc(this.zzjav));
        zzbgo.zza(parcel, 11, (Parcelable) getSource(), i, false);
        zzbgo.zzai(parcel, zze);
    }

    public final StreetViewPanoramaOptions zoomGesturesEnabled(boolean z) {
        this.zzjba = Boolean.valueOf(z);
        return this;
    }
}
