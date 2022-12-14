package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Keep;
import android.support.annotation.MainThread;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes2.dex */
public class LifecycleCallback {
    protected final zzcf zzgam;

    /* JADX INFO: Access modifiers changed from: protected */
    public LifecycleCallback(zzcf zzcfVar) {
        this.zzgam = zzcfVar;
    }

    @Keep
    private static zzcf getChimeraLifecycleFragmentImpl(zzce zzceVar) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzcf zzb(zzce zzceVar) {
        if (zzceVar.zzaks()) {
            return zzdc.zza(zzceVar.zzakv());
        }
        if (!zzceVar.zzakt()) {
            throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
        }
        return zzcg.zzp(zzceVar.zzaku());
    }

    public static zzcf zzo(Activity activity) {
        return zzb(new zzce(activity));
    }

    @MainThread
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public final Activity getActivity() {
        return this.zzgam.zzakw();
    }

    @MainThread
    public void onActivityResult(int i, int i2, Intent intent) {
    }

    @MainThread
    public void onCreate(Bundle bundle) {
    }

    @MainThread
    public void onDestroy() {
    }

    @MainThread
    public void onResume() {
    }

    @MainThread
    public void onSaveInstanceState(Bundle bundle) {
    }

    @MainThread
    public void onStart() {
    }

    @MainThread
    public void onStop() {
    }
}
