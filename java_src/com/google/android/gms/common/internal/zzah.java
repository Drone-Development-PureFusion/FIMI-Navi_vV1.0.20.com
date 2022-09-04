package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class zzah {
    private final ComponentName mComponentName;
    private final String zzdxe;
    private final String zzggu;
    private final int zzggv;

    public zzah(ComponentName componentName, int i) {
        this.zzdxe = null;
        this.zzggu = null;
        this.mComponentName = (ComponentName) zzbq.checkNotNull(componentName);
        this.zzggv = 129;
    }

    public zzah(String str, String str2, int i) {
        this.zzdxe = zzbq.zzgv(str);
        this.zzggu = zzbq.zzgv(str2);
        this.mComponentName = null;
        this.zzggv = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzah)) {
            return false;
        }
        zzah zzahVar = (zzah) obj;
        return zzbg.equal(this.zzdxe, zzahVar.zzdxe) && zzbg.equal(this.zzggu, zzahVar.zzggu) && zzbg.equal(this.mComponentName, zzahVar.mComponentName) && this.zzggv == zzahVar.zzggv;
    }

    public final ComponentName getComponentName() {
        return this.mComponentName;
    }

    public final String getPackage() {
        return this.zzggu;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzdxe, this.zzggu, this.mComponentName, Integer.valueOf(this.zzggv)});
    }

    public final String toString() {
        return this.zzdxe == null ? this.mComponentName.flattenToString() : this.zzdxe;
    }

    public final int zzamu() {
        return this.zzggv;
    }

    public final Intent zzcq(Context context) {
        return this.zzdxe != null ? new Intent(this.zzdxe).setPackage(this.zzggu) : new Intent().setComponent(this.mComponentName);
    }
}
