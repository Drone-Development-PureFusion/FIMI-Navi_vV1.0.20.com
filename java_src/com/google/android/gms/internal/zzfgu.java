package com.google.android.gms.internal;

import java.util.Arrays;
/* loaded from: classes2.dex */
final class zzfgu implements zzfgw {
    private zzfgu() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfgu(zzfgt zzfgtVar) {
        this();
    }

    @Override // com.google.android.gms.internal.zzfgw
    public final byte[] zzg(byte[] bArr, int i, int i2) {
        return Arrays.copyOfRange(bArr, i, i + i2);
    }
}
