package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
@Hide
/* loaded from: classes2.dex */
public final class zzcfy implements FusedLocationProviderApi {
    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public final PendingResult<Status> flushLocations(GoogleApiClient googleApiClient) {
        return googleApiClient.zze(new zzcgd(this, googleApiClient));
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public final Location getLastLocation(GoogleApiClient googleApiClient) {
        try {
            return LocationServices.zzi(googleApiClient).getLastLocation();
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public final LocationAvailability getLocationAvailability(GoogleApiClient googleApiClient) {
        try {
            return LocationServices.zzi(googleApiClient).zzaxb();
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public final PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        return googleApiClient.zze(new zzcgi(this, googleApiClient, pendingIntent));
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public final PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, LocationCallback locationCallback) {
        return googleApiClient.zze(new zzcga(this, googleApiClient, locationCallback));
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public final PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, LocationListener locationListener) {
        return googleApiClient.zze(new zzcgh(this, googleApiClient, locationListener));
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public final PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, PendingIntent pendingIntent) {
        return googleApiClient.zze(new zzcgg(this, googleApiClient, locationRequest, pendingIntent));
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public final PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationCallback locationCallback, Looper looper) {
        return googleApiClient.zze(new zzcgf(this, googleApiClient, locationRequest, locationCallback, looper));
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public final PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationListener locationListener) {
        zzbq.checkNotNull(Looper.myLooper(), "Calling thread must be a prepared Looper thread.");
        return googleApiClient.zze(new zzcfz(this, googleApiClient, locationRequest, locationListener));
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public final PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationListener locationListener, Looper looper) {
        return googleApiClient.zze(new zzcge(this, googleApiClient, locationRequest, locationListener, looper));
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public final PendingResult<Status> setMockLocation(GoogleApiClient googleApiClient, Location location) {
        return googleApiClient.zze(new zzcgc(this, googleApiClient, location));
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public final PendingResult<Status> setMockMode(GoogleApiClient googleApiClient, boolean z) {
        return googleApiClient.zze(new zzcgb(this, googleApiClient, z));
    }
}
