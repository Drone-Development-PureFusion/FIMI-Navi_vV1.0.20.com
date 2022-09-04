package com.google.android.gms.maps.internal;

import com.google.android.gms.common.internal.Hide;
@Hide
/* loaded from: classes2.dex */
public final class zza {
    public static Boolean zza(byte b) {
        switch (b) {
            case 0:
                return Boolean.FALSE;
            case 1:
                return Boolean.TRUE;
            default:
                return null;
        }
    }

    public static byte zzc(Boolean bool) {
        if (bool != null) {
            return bool.booleanValue() ? (byte) 1 : (byte) 0;
        }
        return (byte) -1;
    }
}
