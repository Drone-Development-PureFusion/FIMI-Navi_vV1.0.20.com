package com.google.android.gms.common.api.internal;
/* loaded from: classes2.dex */
public final class zzck<L> {
    private final L zzgat;
    private final String zzgaw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzck(L l, String str) {
        this.zzgat = l;
        this.zzgaw = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzck)) {
            return false;
        }
        zzck zzckVar = (zzck) obj;
        return this.zzgat == zzckVar.zzgat && this.zzgaw.equals(zzckVar.zzgaw);
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zzgat) * 31) + this.zzgaw.hashCode();
    }
}
