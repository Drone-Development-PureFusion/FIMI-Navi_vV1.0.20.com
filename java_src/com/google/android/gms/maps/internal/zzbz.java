package com.google.android.gms.maps.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.maps.model.RuntimeRemoteException;
@Hide
/* loaded from: classes2.dex */
public class zzbz {
    private static final String TAG = zzbz.class.getSimpleName();
    @SuppressLint({"StaticFieldLeak"})
    @Nullable
    private static Context zzjcs = null;
    private static zze zzjct;

    private static <T> T zza(ClassLoader classLoader, String str) {
        try {
            return (T) zzd(((ClassLoader) com.google.android.gms.common.internal.zzbq.checkNotNull(classLoader)).loadClass(str));
        } catch (ClassNotFoundException e) {
            String valueOf = String.valueOf(str);
            throw new IllegalStateException(valueOf.length() != 0 ? "Unable to find dynamic class ".concat(valueOf) : new String("Unable to find dynamic class "));
        }
    }

    private static <T> T zzd(Class<?> cls) {
        try {
            return (T) cls.newInstance();
        } catch (IllegalAccessException e) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalStateException(valueOf.length() != 0 ? "Unable to call the default constructor of ".concat(valueOf) : new String("Unable to call the default constructor of "));
        } catch (InstantiationException e2) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new IllegalStateException(valueOf2.length() != 0 ? "Unable to instantiate the dynamic class ".concat(valueOf2) : new String("Unable to instantiate the dynamic class "));
        }
    }

    public static zze zzdz(Context context) throws GooglePlayServicesNotAvailableException {
        zze zzfVar;
        com.google.android.gms.common.internal.zzbq.checkNotNull(context);
        if (zzjct != null) {
            return zzjct;
        }
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        switch (isGooglePlayServicesAvailable) {
            case 0:
                Log.i(TAG, "Making Creator dynamically");
                IBinder iBinder = (IBinder) zza(zzea(context).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl");
                if (iBinder == null) {
                    zzfVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
                    zzfVar = queryLocalInterface instanceof zze ? (zze) queryLocalInterface : new zzf(iBinder);
                }
                zzjct = zzfVar;
                try {
                    zzjct.zzi(com.google.android.gms.dynamic.zzn.zzz(zzea(context).getResources()), GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                    return zzjct;
                } catch (RemoteException e) {
                    throw new RuntimeRemoteException(e);
                }
            default:
                throw new GooglePlayServicesNotAvailableException(isGooglePlayServicesAvailable);
        }
    }

    @Nullable
    private static Context zzea(Context context) {
        if (zzjcs != null) {
            return zzjcs;
        }
        Context zzeb = zzeb(context);
        zzjcs = zzeb;
        return zzeb;
    }

    @Nullable
    private static Context zzeb(Context context) {
        try {
            return DynamiteModule.zza(context, DynamiteModule.zzhdi, "com.google.android.gms.maps_dynamite").zzarl();
        } catch (Throwable th) {
            Log.e(TAG, "Failed to load maps module, use legacy", th);
            return GooglePlayServicesUtil.getRemoteContext(context);
        }
    }
}
