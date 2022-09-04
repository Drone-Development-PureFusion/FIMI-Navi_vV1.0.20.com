package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.p001v4.app.Fragment;
import android.util.Log;
import com.google.android.gms.common.api.internal.zzcf;
/* loaded from: classes2.dex */
public abstract class zzv implements DialogInterface.OnClickListener {
    public static zzv zza(Activity activity, Intent intent, int i) {
        return new zzw(intent, activity, i);
    }

    public static zzv zza(@NonNull Fragment fragment, Intent intent, int i) {
        return new zzx(intent, fragment, i);
    }

    public static zzv zza(@NonNull zzcf zzcfVar, Intent intent, int i) {
        return new zzy(intent, zzcfVar, 2);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            try {
                zzamo();
                dialogInterface.dismiss();
            } catch (ActivityNotFoundException e) {
                Log.e("DialogRedirect", "Failed to start resolution intent", e);
                dialogInterface.dismiss();
            }
        } catch (Throwable th) {
            dialogInterface.dismiss();
            throw th;
        }
    }

    protected abstract void zzamo();
}
