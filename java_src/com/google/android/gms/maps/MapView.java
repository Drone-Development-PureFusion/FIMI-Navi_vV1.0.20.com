package com.google.android.gms.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.maps.internal.IMapViewDelegate;
import com.google.android.gms.maps.internal.MapLifecycleDelegate;
import com.google.android.gms.maps.internal.zzby;
import com.google.android.gms.maps.internal.zzbz;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class MapView extends FrameLayout {
    private final zzb zzjbp;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    /* loaded from: classes2.dex */
    public static class zza implements MapLifecycleDelegate {
        private final ViewGroup parent;
        private final IMapViewDelegate zzjbq;
        private View zzjbr;

        public zza(ViewGroup viewGroup, IMapViewDelegate iMapViewDelegate) {
            this.zzjbq = (IMapViewDelegate) zzbq.checkNotNull(iMapViewDelegate);
            this.parent = (ViewGroup) zzbq.checkNotNull(viewGroup);
        }

        @Override // com.google.android.gms.maps.internal.MapLifecycleDelegate
        public final void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
            try {
                this.zzjbq.getMapAsync(new zzac(this, onMapReadyCallback));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public final void onCreate(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzby.zzd(bundle, bundle2);
                this.zzjbq.onCreate(bundle2);
                zzby.zzd(bundle2, bundle);
                this.zzjbr = (View) com.google.android.gms.dynamic.zzn.zzy(this.zzjbq.getView());
                this.parent.removeAllViews();
                this.parent.addView(this.zzjbr);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            throw new UnsupportedOperationException("onCreateView not allowed on MapViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public final void onDestroy() {
            try {
                this.zzjbq.onDestroy();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public final void onDestroyView() {
            throw new UnsupportedOperationException("onDestroyView not allowed on MapViewDelegate");
        }

        public final void onEnterAmbient(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzby.zzd(bundle, bundle2);
                this.zzjbq.onEnterAmbient(bundle2);
                zzby.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public final void onExitAmbient() {
            try {
                this.zzjbq.onExitAmbient();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public final void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            throw new UnsupportedOperationException("onInflate not allowed on MapViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public final void onLowMemory() {
            try {
                this.zzjbq.onLowMemory();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public final void onPause() {
            try {
                this.zzjbq.onPause();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public final void onResume() {
            try {
                this.zzjbq.onResume();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public final void onSaveInstanceState(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzby.zzd(bundle, bundle2);
                this.zzjbq.onSaveInstanceState(bundle2);
                zzby.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public final void onStart() {
            try {
                this.zzjbq.onStart();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public final void onStop() {
            try {
                this.zzjbq.onStop();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzb extends com.google.android.gms.dynamic.zza<zza> {
        private com.google.android.gms.dynamic.zzo<zza> zzjbn;
        private final List<OnMapReadyCallback> zzjbo = new ArrayList();
        private final ViewGroup zzjbs;
        private final Context zzjbt;
        private final GoogleMapOptions zzjbu;

        zzb(ViewGroup viewGroup, Context context, GoogleMapOptions googleMapOptions) {
            this.zzjbs = viewGroup;
            this.zzjbt = context;
            this.zzjbu = googleMapOptions;
        }

        public final void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
            if (zzarg() != null) {
                zzarg().getMapAsync(onMapReadyCallback);
            } else {
                this.zzjbo.add(onMapReadyCallback);
            }
        }

        @Override // com.google.android.gms.dynamic.zza
        protected final void zza(com.google.android.gms.dynamic.zzo<zza> zzoVar) {
            this.zzjbn = zzoVar;
            if (this.zzjbn == null || zzarg() != null) {
                return;
            }
            try {
                MapsInitializer.initialize(this.zzjbt);
                IMapViewDelegate zza = zzbz.zzdz(this.zzjbt).zza(com.google.android.gms.dynamic.zzn.zzz(this.zzjbt), this.zzjbu);
                if (zza == null) {
                    return;
                }
                this.zzjbn.zza(new zza(this.zzjbs, zza));
                for (OnMapReadyCallback onMapReadyCallback : this.zzjbo) {
                    zzarg().getMapAsync(onMapReadyCallback);
                }
                this.zzjbo.clear();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            } catch (GooglePlayServicesNotAvailableException e2) {
            }
        }
    }

    public MapView(Context context) {
        super(context);
        this.zzjbp = new zzb(this, context, null);
        setClickable(true);
    }

    public MapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzjbp = new zzb(this, context, GoogleMapOptions.createFromAttributes(context, attributeSet));
        setClickable(true);
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzjbp = new zzb(this, context, GoogleMapOptions.createFromAttributes(context, attributeSet));
        setClickable(true);
    }

    public MapView(Context context, GoogleMapOptions googleMapOptions) {
        super(context);
        this.zzjbp = new zzb(this, context, googleMapOptions);
        setClickable(true);
    }

    public void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
        zzbq.zzgn("getMapAsync() must be called on the main thread");
        this.zzjbp.getMapAsync(onMapReadyCallback);
    }

    public final void onCreate(Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            this.zzjbp.onCreate(bundle);
            if (this.zzjbp.zzarg() == null) {
                com.google.android.gms.dynamic.zza.zzb(this);
            }
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public final void onDestroy() {
        this.zzjbp.onDestroy();
    }

    public final void onEnterAmbient(Bundle bundle) {
        zzbq.zzgn("onEnterAmbient() must be called on the main thread");
        zzb zzbVar = this.zzjbp;
        if (zzbVar.zzarg() != null) {
            zzbVar.zzarg().onEnterAmbient(bundle);
        }
    }

    public final void onExitAmbient() {
        zzbq.zzgn("onExitAmbient() must be called on the main thread");
        zzb zzbVar = this.zzjbp;
        if (zzbVar.zzarg() != null) {
            zzbVar.zzarg().onExitAmbient();
        }
    }

    public final void onLowMemory() {
        this.zzjbp.onLowMemory();
    }

    public final void onPause() {
        this.zzjbp.onPause();
    }

    public final void onResume() {
        this.zzjbp.onResume();
    }

    public final void onSaveInstanceState(Bundle bundle) {
        this.zzjbp.onSaveInstanceState(bundle);
    }

    public final void onStart() {
        this.zzjbp.onStart();
    }

    public final void onStop() {
        this.zzjbp.onStop();
    }
}
