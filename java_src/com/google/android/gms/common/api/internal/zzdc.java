package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentActivity;
import android.support.p001v4.util.ArrayMap;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public final class zzdc extends Fragment implements zzcf {
    private static WeakHashMap<FragmentActivity, WeakReference<zzdc>> zzgan = new WeakHashMap<>();
    private Bundle zzgap;
    private Map<String, LifecycleCallback> zzgao = new ArrayMap();
    private int zzcfl = 0;

    public static zzdc zza(FragmentActivity fragmentActivity) {
        zzdc zzdcVar;
        WeakReference<zzdc> weakReference = zzgan.get(fragmentActivity);
        if (weakReference == null || (zzdcVar = weakReference.get()) == null) {
            try {
                zzdcVar = (zzdc) fragmentActivity.getSupportFragmentManager().findFragmentByTag("SupportLifecycleFragmentImpl");
                if (zzdcVar == null || zzdcVar.isRemoving()) {
                    zzdcVar = new zzdc();
                    fragmentActivity.getSupportFragmentManager().beginTransaction().add(zzdcVar, "SupportLifecycleFragmentImpl").commitAllowingStateLoss();
                }
                zzgan.put(fragmentActivity, new WeakReference<>(zzdcVar));
            } catch (ClassCastException e) {
                throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e);
            }
        }
        return zzdcVar;
    }

    @Override // android.support.p001v4.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.zzgao.values()) {
            lifecycleCallback.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.zzgao.values()) {
            lifecycleCallback.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzcfl = 1;
        this.zzgap = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.zzgao.entrySet()) {
            entry.getValue().onCreate(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.zzcfl = 5;
        for (LifecycleCallback lifecycleCallback : this.zzgao.values()) {
            lifecycleCallback.onDestroy();
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public final void onResume() {
        super.onResume();
        this.zzcfl = 3;
        for (LifecycleCallback lifecycleCallback : this.zzgao.values()) {
            lifecycleCallback.onResume();
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.zzgao.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().onSaveInstanceState(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public final void onStart() {
        super.onStart();
        this.zzcfl = 2;
        for (LifecycleCallback lifecycleCallback : this.zzgao.values()) {
            lifecycleCallback.onStart();
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public final void onStop() {
        super.onStop();
        this.zzcfl = 4;
        for (LifecycleCallback lifecycleCallback : this.zzgao.values()) {
            lifecycleCallback.onStop();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcf
    public final <T extends LifecycleCallback> T zza(String str, Class<T> cls) {
        return cls.cast(this.zzgao.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.zzcf
    public final void zza(String str, @NonNull LifecycleCallback lifecycleCallback) {
        if (!this.zzgao.containsKey(str)) {
            this.zzgao.put(str, lifecycleCallback);
            if (this.zzcfl <= 0) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new zzdd(this, lifecycleCallback, str));
            return;
        }
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 59).append("LifecycleCallback with tag ").append(str).append(" already added to this fragment.").toString());
    }

    @Override // com.google.android.gms.common.api.internal.zzcf
    public final /* synthetic */ Activity zzakw() {
        return getActivity();
    }
}
