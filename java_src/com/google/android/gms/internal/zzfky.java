package com.google.android.gms.internal;
/* JADX WARN: Init of enum zzpug can be incorrect */
/* JADX WARN: Init of enum zzpuh can be incorrect */
/* JADX WARN: Init of enum zzpui can be incorrect */
/* JADX WARN: Init of enum zzpuj can be incorrect */
/* loaded from: classes2.dex */
public enum zzfky {
    DOUBLE(zzfld.DOUBLE, 1),
    FLOAT(zzfld.FLOAT, 5),
    INT64(zzfld.LONG, 0),
    UINT64(zzfld.LONG, 0),
    INT32(zzfld.INT, 0),
    FIXED64(zzfld.LONG, 1),
    FIXED32(zzfld.INT, 5),
    BOOL(zzfld.BOOLEAN, 0),
    STRING(r3, 2) { // from class: com.google.android.gms.internal.zzfkz
    },
    GROUP(r3, 3) { // from class: com.google.android.gms.internal.zzfla
    },
    MESSAGE(r3, 2) { // from class: com.google.android.gms.internal.zzflb
    },
    BYTES(r3, 2) { // from class: com.google.android.gms.internal.zzflc
    },
    UINT32(zzfld.INT, 0),
    ENUM(zzfld.ENUM, 0),
    SFIXED32(zzfld.INT, 5),
    SFIXED64(zzfld.LONG, 1),
    SINT32(zzfld.INT, 0),
    SINT64(zzfld.LONG, 0);
    
    private final zzfld zzpuq;
    private final int zzpur;

    static {
        final zzfld zzfldVar = zzfld.STRING;
        final zzfld zzfldVar2 = zzfld.MESSAGE;
        final zzfld zzfldVar3 = zzfld.MESSAGE;
        final zzfld zzfldVar4 = zzfld.BYTE_STRING;
    }

    zzfky(zzfld zzfldVar, int i) {
        this.zzpuq = zzfldVar;
        this.zzpur = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* synthetic */ zzfky(zzfld zzfldVar, int i, zzfkx zzfkxVar) {
        this(zzfldVar, i);
    }

    public final zzfld zzdci() {
        return this.zzpuq;
    }

    public final int zzdcj() {
        return this.zzpur;
    }
}
