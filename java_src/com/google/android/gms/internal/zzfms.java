package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzfms extends zzflm<zzfms> implements Cloneable {
    private static volatile zzfms[] zzpzo;
    private String key = "";
    private String value = "";

    public zzfms() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public static zzfms[] zzddf() {
        if (zzpzo == null) {
            synchronized (zzflq.zzpvt) {
                if (zzpzo == null) {
                    zzpzo = new zzfms[0];
                }
            }
        }
        return zzpzo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    /* renamed from: zzddg */
    public zzfms clone() {
        try {
            return (zzfms) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfms)) {
            return false;
        }
        zzfms zzfmsVar = (zzfms) obj;
        if (this.key == null) {
            if (zzfmsVar.key != null) {
                return false;
            }
        } else if (!this.key.equals(zzfmsVar.key)) {
            return false;
        }
        if (this.value == null) {
            if (zzfmsVar.value != null) {
                return false;
            }
        } else if (!this.value.equals(zzfmsVar.value)) {
            return false;
        }
        return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzfmsVar.zzpvl == null || zzfmsVar.zzpvl.isEmpty() : this.zzpvl.equals(zzfmsVar.zzpvl);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = ((this.value == null ? 0 : this.value.hashCode()) + (((this.key == null ? 0 : this.key.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31;
        if (this.zzpvl != null && !this.zzpvl.isEmpty()) {
            i = this.zzpvl.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    break;
                case 10:
                    this.key = zzfljVar.readString();
                    break;
                case 18:
                    this.value = zzfljVar.readString();
                    break;
                default:
                    if (super.zza(zzfljVar, zzcxx)) {
                        break;
                    } else {
                        break;
                    }
            }
        }
        return this;
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.key != null && !this.key.equals("")) {
            zzflkVar.zzp(1, this.key);
        }
        if (this.value != null && !this.value.equals("")) {
            zzflkVar.zzp(2, this.value);
        }
        super.zza(zzflkVar);
    }

    @Override // com.google.android.gms.internal.zzflm
    public final /* synthetic */ zzfms zzdck() throws CloneNotSupportedException {
        return (zzfms) clone();
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zzdcl() throws CloneNotSupportedException {
        return (zzfms) clone();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.key != null && !this.key.equals("")) {
            zzq += zzflk.zzq(1, this.key);
        }
        return (this.value == null || this.value.equals("")) ? zzq : zzq + zzflk.zzq(2, this.value);
    }
}
