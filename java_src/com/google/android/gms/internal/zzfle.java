package com.google.android.gms.internal;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public enum zzfle {
    LOOSE { // from class: com.google.android.gms.internal.zzflf
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.zzfle
        public final Object zza(zzfhb zzfhbVar) throws IOException {
            return zzfhbVar.readString();
        }
    },
    STRICT { // from class: com.google.android.gms.internal.zzflg
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.zzfle
        public final Object zza(zzfhb zzfhbVar) throws IOException {
            return zzfhbVar.zzcye();
        }
    },
    LAZY { // from class: com.google.android.gms.internal.zzflh
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.zzfle
        public final Object zza(zzfhb zzfhbVar) throws IOException {
            return zzfhbVar.zzcyf();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Object zza(zzfhb zzfhbVar) throws IOException;
}
