package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.zzs;
@Hide
/* loaded from: classes2.dex */
public final class zzb {
    private SharedPreferences zzang;

    @Hide
    public zzb(Context context) {
        try {
            Context remoteContext = zzs.getRemoteContext(context);
            this.zzang = remoteContext == null ? null : remoteContext.getSharedPreferences("google_ads_flags", 0);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while getting SharedPreferences ", th);
            this.zzang = null;
        }
    }

    public final boolean getBoolean(String str, boolean z) {
        try {
            if (this.zzang != null) {
                return this.zzang.getBoolean(str, false);
            }
            return false;
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float getFloat(String str, float f) {
        try {
            if (this.zzang != null) {
                return this.zzang.getFloat(str, 0.0f);
            }
            return 0.0f;
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getString(String str, String str2) {
        try {
            return this.zzang == null ? str2 : this.zzang.getString(str, str2);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return str2;
        }
    }
}
