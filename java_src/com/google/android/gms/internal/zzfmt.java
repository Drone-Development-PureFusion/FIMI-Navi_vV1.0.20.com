package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzfmt extends zzflm<zzfmt> implements Cloneable {
    private int zzpzp = -1;
    private int zzpzq = 0;

    public zzfmt() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000d, code lost:
        return r6;
     */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzbo */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzfmt zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    break;
                case 8:
                    int position = zzfljVar.getPosition();
                    try {
                        int zzcya = zzfljVar.zzcya();
                        switch (zzcya) {
                            case -1:
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                                this.zzpzp = zzcya;
                                break;
                            default:
                                throw new IllegalArgumentException(new StringBuilder(43).append(zzcya).append(" is not a valid enum NetworkType").toString());
                                break;
                        }
                    } catch (IllegalArgumentException e) {
                        zzfljVar.zzmw(position);
                        zza(zzfljVar, zzcxx);
                        break;
                    }
                case 16:
                    int position2 = zzfljVar.getPosition();
                    try {
                        int zzcya2 = zzfljVar.zzcya();
                        switch (zzcya2) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 100:
                                this.zzpzq = zzcya2;
                                break;
                            default:
                                throw new IllegalArgumentException(new StringBuilder(45).append(zzcya2).append(" is not a valid enum MobileSubtype").toString());
                                break;
                        }
                    } catch (IllegalArgumentException e2) {
                        zzfljVar.zzmw(position2);
                        zza(zzfljVar, zzcxx);
                        break;
                    }
                default:
                    if (super.zza(zzfljVar, zzcxx)) {
                        break;
                    } else {
                        break;
                    }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    /* renamed from: zzddh */
    public zzfmt clone() {
        try {
            return (zzfmt) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfmt)) {
            return false;
        }
        zzfmt zzfmtVar = (zzfmt) obj;
        if (this.zzpzp == zzfmtVar.zzpzp && this.zzpzq == zzfmtVar.zzpzq) {
            return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzfmtVar.zzpvl == null || zzfmtVar.zzpvl.isEmpty() : this.zzpvl.equals(zzfmtVar.zzpvl);
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zzpvl == null || this.zzpvl.isEmpty()) ? 0 : this.zzpvl.hashCode()) + ((((((getClass().getName().hashCode() + 527) * 31) + this.zzpzp) * 31) + this.zzpzq) * 31);
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzpzp != -1) {
            zzflkVar.zzad(1, this.zzpzp);
        }
        if (this.zzpzq != 0) {
            zzflkVar.zzad(2, this.zzpzq);
        }
        super.zza(zzflkVar);
    }

    @Override // com.google.android.gms.internal.zzflm
    public final /* synthetic */ zzfmt zzdck() throws CloneNotSupportedException {
        return (zzfmt) clone();
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zzdcl() throws CloneNotSupportedException {
        return (zzfmt) clone();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzpzp != -1) {
            zzq += zzflk.zzag(1, this.zzpzp);
        }
        return this.zzpzq != 0 ? zzq + zzflk.zzag(2, this.zzpzq) : zzq;
    }
}
