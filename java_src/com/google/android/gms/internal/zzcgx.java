package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.zzca;
import com.google.android.gms.location.ActivityTransitionRequest;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationSettingsRequest;
/* loaded from: classes2.dex */
public final class zzcgx extends zzev implements zzcgw {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcgx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    @Override // com.google.android.gms.internal.zzcgw
    public final void zza(long j, boolean z, PendingIntent pendingIntent) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeLong(j);
        zzex.zza(zzbc, true);
        zzex.zza(zzbc, pendingIntent);
        zzb(5, zzbc);
    }

    @Override // com.google.android.gms.internal.zzcgw
    public final void zza(PendingIntent pendingIntent, zzca zzcaVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, pendingIntent);
        zzex.zza(zzbc, zzcaVar);
        zzb(73, zzbc);
    }

    @Override // com.google.android.gms.internal.zzcgw
    public final void zza(zzcfw zzcfwVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzcfwVar);
        zzb(75, zzbc);
    }

    @Override // com.google.android.gms.internal.zzcgw
    public final void zza(zzcgr zzcgrVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzcgrVar);
        zzb(67, zzbc);
    }

    @Override // com.google.android.gms.internal.zzcgw
    public final void zza(zzchn zzchnVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzchnVar);
        zzb(59, zzbc);
    }

    @Override // com.google.android.gms.internal.zzcgw
    public final void zza(ActivityTransitionRequest activityTransitionRequest, PendingIntent pendingIntent, zzca zzcaVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, activityTransitionRequest);
        zzex.zza(zzbc, pendingIntent);
        zzex.zza(zzbc, zzcaVar);
        zzb(72, zzbc);
    }

    @Override // com.google.android.gms.internal.zzcgw
    public final void zza(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, zzcgu zzcguVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, geofencingRequest);
        zzex.zza(zzbc, pendingIntent);
        zzex.zza(zzbc, zzcguVar);
        zzb(57, zzbc);
    }

    @Override // com.google.android.gms.internal.zzcgw
    public final void zza(LocationSettingsRequest locationSettingsRequest, zzcgy zzcgyVar, String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, locationSettingsRequest);
        zzex.zza(zzbc, zzcgyVar);
        zzbc.writeString(str);
        zzb(63, zzbc);
    }

    @Override // com.google.android.gms.internal.zzcgw
    public final void zza(com.google.android.gms.location.zzal zzalVar, zzcgu zzcguVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzalVar);
        zzex.zza(zzbc, zzcguVar);
        zzb(74, zzbc);
    }

    @Override // com.google.android.gms.internal.zzcgw
    public final void zzbo(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(12, zzbc);
    }

    @Override // com.google.android.gms.internal.zzcgw
    public final void zzc(PendingIntent pendingIntent) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, pendingIntent);
        zzb(6, zzbc);
    }

    @Override // com.google.android.gms.internal.zzcgw
    public final void zzc(Location location) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, location);
        zzb(13, zzbc);
    }

    @Override // com.google.android.gms.internal.zzcgw
    public final Location zzim(String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        Parcel zza = zza(21, zzbc);
        Location location = (Location) zzex.zza(zza, Location.CREATOR);
        zza.recycle();
        return location;
    }

    @Override // com.google.android.gms.internal.zzcgw
    public final LocationAvailability zzin(String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        Parcel zza = zza(34, zzbc);
        LocationAvailability locationAvailability = (LocationAvailability) zzex.zza(zza, LocationAvailability.CREATOR);
        zza.recycle();
        return locationAvailability;
    }
}
