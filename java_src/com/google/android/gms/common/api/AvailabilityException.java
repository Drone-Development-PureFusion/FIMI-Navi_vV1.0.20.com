package com.google.android.gms.common.api;

import android.support.p001v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zzh;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class AvailabilityException extends Exception {
    private final ArrayMap<zzh<?>, ConnectionResult> zzfse;

    @Hide
    public AvailabilityException(ArrayMap<zzh<?>, ConnectionResult> arrayMap) {
        this.zzfse = arrayMap;
    }

    public ConnectionResult getConnectionResult(GoogleApi<? extends Api.ApiOptions> googleApi) {
        zzh<? extends Api.ApiOptions> zzahv = googleApi.zzahv();
        zzbq.checkArgument(this.zzfse.get(zzahv) != null, "The given API was not part of the availability request.");
        return this.zzfse.get(zzahv);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (zzh<?> zzhVar : this.zzfse.keySet()) {
            ConnectionResult connectionResult = this.zzfse.get(zzhVar);
            if (connectionResult.isSuccess()) {
                z = false;
            }
            String zzaig = zzhVar.zzaig();
            String valueOf = String.valueOf(connectionResult);
            arrayList.add(new StringBuilder(String.valueOf(zzaig).length() + 2 + String.valueOf(valueOf).length()).append(zzaig).append(": ").append(valueOf).toString());
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("None of the queried APIs are available. ");
        } else {
            sb.append("Some of the queried APIs are unavailable. ");
        }
        sb.append(TextUtils.join("; ", arrayList));
        return sb.toString();
    }

    @Hide
    public final ArrayMap<zzh<?>, ConnectionResult> zzahr() {
        return this.zzfse;
    }
}
