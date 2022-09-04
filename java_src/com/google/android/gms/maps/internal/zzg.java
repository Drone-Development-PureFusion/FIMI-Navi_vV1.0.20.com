package com.google.android.gms.maps.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzex;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.internal.IPolylineDelegate;
/* loaded from: classes2.dex */
public final class zzg extends zzev implements IGoogleMapDelegate {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IGoogleMapDelegate");
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final com.google.android.gms.maps.model.internal.zzd addCircle(CircleOptions circleOptions) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, circleOptions);
        Parcel zza = zza(35, zzbc);
        com.google.android.gms.maps.model.internal.zzd zzbi = com.google.android.gms.maps.model.internal.zze.zzbi(zza.readStrongBinder());
        zza.recycle();
        return zzbi;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final com.google.android.gms.maps.model.internal.zzg addGroundOverlay(GroundOverlayOptions groundOverlayOptions) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, groundOverlayOptions);
        Parcel zza = zza(12, zzbc);
        com.google.android.gms.maps.model.internal.zzg zzbj = com.google.android.gms.maps.model.internal.zzh.zzbj(zza.readStrongBinder());
        zza.recycle();
        return zzbj;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final com.google.android.gms.maps.model.internal.zzp addMarker(MarkerOptions markerOptions) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, markerOptions);
        Parcel zza = zza(11, zzbc);
        com.google.android.gms.maps.model.internal.zzp zzbm = com.google.android.gms.maps.model.internal.zzq.zzbm(zza.readStrongBinder());
        zza.recycle();
        return zzbm;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final com.google.android.gms.maps.model.internal.zzs addPolygon(PolygonOptions polygonOptions) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, polygonOptions);
        Parcel zza = zza(10, zzbc);
        com.google.android.gms.maps.model.internal.zzs zzbn = com.google.android.gms.maps.model.internal.zzt.zzbn(zza.readStrongBinder());
        zza.recycle();
        return zzbn;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final IPolylineDelegate addPolyline(PolylineOptions polylineOptions) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, polylineOptions);
        Parcel zza = zza(9, zzbc);
        IPolylineDelegate zzbo = IPolylineDelegate.zza.zzbo(zza.readStrongBinder());
        zza.recycle();
        return zzbo;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final com.google.android.gms.maps.model.internal.zzw addTileOverlay(TileOverlayOptions tileOverlayOptions) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, tileOverlayOptions);
        Parcel zza = zza(13, zzbc);
        com.google.android.gms.maps.model.internal.zzw zzbp = com.google.android.gms.maps.model.internal.zzx.zzbp(zza.readStrongBinder());
        zza.recycle();
        return zzbp;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void animateCamera(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(5, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void animateCameraWithCallback(IObjectWrapper iObjectWrapper, zzc zzcVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzcVar);
        zzb(6, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void animateCameraWithDurationAndCallback(IObjectWrapper iObjectWrapper, int i, zzc zzcVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzbc.writeInt(i);
        zzex.zza(zzbc, zzcVar);
        zzb(7, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void clear() throws RemoteException {
        zzb(14, zzbc());
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final CameraPosition getCameraPosition() throws RemoteException {
        Parcel zza = zza(1, zzbc());
        CameraPosition cameraPosition = (CameraPosition) zzex.zza(zza, CameraPosition.CREATOR);
        zza.recycle();
        return cameraPosition;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final com.google.android.gms.maps.model.internal.zzj getFocusedBuilding() throws RemoteException {
        Parcel zza = zza(44, zzbc());
        com.google.android.gms.maps.model.internal.zzj zzbk = com.google.android.gms.maps.model.internal.zzk.zzbk(zza.readStrongBinder());
        zza.recycle();
        return zzbk;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void getMapAsync(zzap zzapVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzapVar);
        zzb(53, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final int getMapType() throws RemoteException {
        Parcel zza = zza(15, zzbc());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final float getMaxZoomLevel() throws RemoteException {
        Parcel zza = zza(2, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final float getMinZoomLevel() throws RemoteException {
        Parcel zza = zza(3, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final Location getMyLocation() throws RemoteException {
        Parcel zza = zza(23, zzbc());
        Location location = (Location) zzex.zza(zza, Location.CREATOR);
        zza.recycle();
        return location;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final IProjectionDelegate getProjection() throws RemoteException {
        IProjectionDelegate zzbrVar;
        Parcel zza = zza(26, zzbc());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzbrVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
            zzbrVar = queryLocalInterface instanceof IProjectionDelegate ? (IProjectionDelegate) queryLocalInterface : new zzbr(readStrongBinder);
        }
        zza.recycle();
        return zzbrVar;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final IUiSettingsDelegate getUiSettings() throws RemoteException {
        IUiSettingsDelegate zzbxVar;
        Parcel zza = zza(25, zzbc());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzbxVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
            zzbxVar = queryLocalInterface instanceof IUiSettingsDelegate ? (IUiSettingsDelegate) queryLocalInterface : new zzbx(readStrongBinder);
        }
        zza.recycle();
        return zzbxVar;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final boolean isBuildingsEnabled() throws RemoteException {
        Parcel zza = zza(40, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final boolean isIndoorEnabled() throws RemoteException {
        Parcel zza = zza(19, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final boolean isMyLocationEnabled() throws RemoteException {
        Parcel zza = zza(21, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final boolean isTrafficEnabled() throws RemoteException {
        Parcel zza = zza(17, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void moveCamera(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(4, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void onCreate(Bundle bundle) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, bundle);
        zzb(54, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void onDestroy() throws RemoteException {
        zzb(57, zzbc());
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void onEnterAmbient(Bundle bundle) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, bundle);
        zzb(81, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void onExitAmbient() throws RemoteException {
        zzb(82, zzbc());
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void onLowMemory() throws RemoteException {
        zzb(58, zzbc());
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void onPause() throws RemoteException {
        zzb(56, zzbc());
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void onResume() throws RemoteException {
        zzb(55, zzbc());
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, bundle);
        Parcel zza = zza(60, zzbc);
        if (zza.readInt() != 0) {
            bundle.readFromParcel(zza);
        }
        zza.recycle();
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void onStart() throws RemoteException {
        zzb(101, zzbc());
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void onStop() throws RemoteException {
        zzb(102, zzbc());
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void resetMinMaxZoomPreference() throws RemoteException {
        zzb(94, zzbc());
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setBuildingsEnabled(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(41, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setContentDescription(String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        zzb(61, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final boolean setIndoorEnabled(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        Parcel zza = zza(20, zzbc);
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setInfoWindowAdapter(zzh zzhVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzhVar);
        zzb(33, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setLatLngBoundsForCameraTarget(LatLngBounds latLngBounds) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, latLngBounds);
        zzb(95, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setLocationSource(ILocationSourceDelegate iLocationSourceDelegate) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iLocationSourceDelegate);
        zzb(24, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final boolean setMapStyle(MapStyleOptions mapStyleOptions) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, mapStyleOptions);
        Parcel zza = zza(91, zzbc);
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setMapType(int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeInt(i);
        zzb(16, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setMaxZoomPreference(float f) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeFloat(f);
        zzb(93, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setMinZoomPreference(float f) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeFloat(f);
        zzb(92, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setMyLocationEnabled(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(22, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnCameraChangeListener(zzl zzlVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzlVar);
        zzb(27, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnCameraIdleListener(zzn zznVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zznVar);
        zzb(99, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnCameraMoveCanceledListener(zzp zzpVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzpVar);
        zzb(98, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnCameraMoveListener(zzr zzrVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzrVar);
        zzb(97, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnCameraMoveStartedListener(zzt zztVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zztVar);
        zzb(96, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnCircleClickListener(zzv zzvVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzvVar);
        zzb(89, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnGroundOverlayClickListener(zzx zzxVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzxVar);
        zzb(83, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnIndoorStateChangeListener(zzz zzzVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzzVar);
        zzb(45, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnInfoWindowClickListener(zzab zzabVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzabVar);
        zzb(32, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnInfoWindowCloseListener(zzad zzadVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzadVar);
        zzb(86, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnInfoWindowLongClickListener(zzaf zzafVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzafVar);
        zzb(84, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnMapClickListener(zzaj zzajVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzajVar);
        zzb(28, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnMapLoadedCallback(zzal zzalVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzalVar);
        zzb(42, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnMapLongClickListener(zzan zzanVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzanVar);
        zzb(29, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnMarkerClickListener(zzar zzarVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzarVar);
        zzb(30, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnMarkerDragListener(zzat zzatVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzatVar);
        zzb(31, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnMyLocationButtonClickListener(zzav zzavVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzavVar);
        zzb(37, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnMyLocationChangeListener(zzax zzaxVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzaxVar);
        zzb(36, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnMyLocationClickListener(zzaz zzazVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzazVar);
        zzb(107, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnPoiClickListener(zzbb zzbbVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzbbVar);
        zzb(80, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnPolygonClickListener(zzbd zzbdVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzbdVar);
        zzb(85, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setOnPolylineClickListener(zzbf zzbfVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzbfVar);
        zzb(87, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setPadding(int i, int i2, int i3, int i4) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeInt(i);
        zzbc.writeInt(i2);
        zzbc.writeInt(i3);
        zzbc.writeInt(i4);
        zzb(39, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setTrafficEnabled(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(18, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void setWatermarkEnabled(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(51, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void snapshot(zzbs zzbsVar, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzbsVar);
        zzex.zza(zzbc, iObjectWrapper);
        zzb(38, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void snapshotForTest(zzbs zzbsVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzbsVar);
        zzb(71, zzbc);
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final void stopAnimation() throws RemoteException {
        zzb(8, zzbc());
    }

    @Override // com.google.android.gms.maps.internal.IGoogleMapDelegate
    public final boolean useViewLifecycleWhenInFragment() throws RemoteException {
        Parcel zza = zza(59, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }
}
