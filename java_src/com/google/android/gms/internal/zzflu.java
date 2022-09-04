package com.google.android.gms.internal;

import java.util.Arrays;
/* loaded from: classes2.dex */
final class zzflu {
    final int tag;
    final byte[] zzjwl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzflu(int i, byte[] bArr) {
        this.tag = i;
        this.zzjwl = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzflu)) {
            return false;
        }
        zzflu zzfluVar = (zzflu) obj;
        return this.tag == zzfluVar.tag && Arrays.equals(this.zzjwl, zzfluVar.zzjwl);
    }

    public final int hashCode() {
        return ((this.tag + 527) * 31) + Arrays.hashCode(this.zzjwl);
    }
}
