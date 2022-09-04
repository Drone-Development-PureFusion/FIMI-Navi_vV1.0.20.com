package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.Iterator;
/* loaded from: classes2.dex */
public abstract class zzbhs extends zzbhp implements zzbgp {
    @Override // android.os.Parcelable
    @Hide
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!getClass().isInstance(obj)) {
            return false;
        }
        zzbhp zzbhpVar = (zzbhp) obj;
        for (zzbhq<?, ?> zzbhqVar : zzabz().values()) {
            if (zza(zzbhqVar)) {
                if (zzbhpVar.zza(zzbhqVar) && zzb(zzbhqVar).equals(zzbhpVar.zzb(zzbhqVar))) {
                }
                return false;
            } else if (zzbhpVar.zza(zzbhqVar)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = 0;
        Iterator<zzbhq<?, ?>> it = zzabz().values().iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                zzbhq<?, ?> next = it.next();
                if (zza(next)) {
                    i = zzb(next).hashCode() + (i2 * 31);
                } else {
                    i = i2;
                }
            } else {
                return i2;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzbhp
    public Object zzgx(String str) {
        return null;
    }

    @Override // com.google.android.gms.internal.zzbhp
    public boolean zzgy(String str) {
        return false;
    }
}
