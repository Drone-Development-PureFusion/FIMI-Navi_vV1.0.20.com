package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import com.fimi.kernel.connect.tcp.SocketOption;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class MapStyleOptions extends zzbgl {
    private String zzjdt;
    private static final String TAG = MapStyleOptions.class.getSimpleName();
    @Hide
    public static final Parcelable.Creator<MapStyleOptions> CREATOR = new zzg();

    public MapStyleOptions(String str) {
        this.zzjdt = str;
    }

    public static MapStyleOptions loadRawResourceStyle(Context context, int i) throws Resources.NotFoundException {
        try {
            return new MapStyleOptions(new String(com.google.android.gms.common.util.zzp.zza(context.getResources().openRawResource(i), true), SocketOption.DEFAULT_CHARSET));
        } catch (IOException e) {
            String valueOf = String.valueOf(e);
            throw new Resources.NotFoundException(new StringBuilder(String.valueOf(valueOf).length() + 37).append("Failed to read resource ").append(i).append(": ").append(valueOf).toString());
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, this.zzjdt, false);
        zzbgo.zzai(parcel, zze);
    }
}
