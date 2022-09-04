package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfjq extends zzfgs {
    private static final int[] zzprr;
    private final int zzprs;
    private final zzfgs zzprt;
    private final zzfgs zzpru;
    private final int zzprv;
    private final int zzprw;

    static {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 1;
        while (i > 0) {
            arrayList.add(Integer.valueOf(i));
            int i3 = i2 + i;
            i2 = i;
            i = i3;
        }
        arrayList.add(Integer.MAX_VALUE);
        zzprr = new int[arrayList.size()];
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 < zzprr.length) {
                zzprr[i5] = ((Integer) arrayList.get(i5)).intValue();
                i4 = i5 + 1;
            } else {
                return;
            }
        }
    }

    private zzfjq(zzfgs zzfgsVar, zzfgs zzfgsVar2) {
        this.zzprt = zzfgsVar;
        this.zzpru = zzfgsVar2;
        this.zzprv = zzfgsVar.size();
        this.zzprs = this.zzprv + zzfgsVar2.size();
        this.zzprw = Math.max(zzfgsVar.zzcxr(), zzfgsVar2.zzcxr()) + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfgs zza(zzfgs zzfgsVar, zzfgs zzfgsVar2) {
        if (zzfgsVar2.size() == 0) {
            return zzfgsVar;
        }
        if (zzfgsVar.size() == 0) {
            return zzfgsVar2;
        }
        int size = zzfgsVar2.size() + zzfgsVar.size();
        if (size < 128) {
            return zzb(zzfgsVar, zzfgsVar2);
        }
        if (zzfgsVar instanceof zzfjq) {
            zzfjq zzfjqVar = (zzfjq) zzfgsVar;
            if (zzfjqVar.zzpru.size() + zzfgsVar2.size() < 128) {
                return new zzfjq(zzfjqVar.zzprt, zzb(zzfjqVar.zzpru, zzfgsVar2));
            } else if (zzfjqVar.zzprt.zzcxr() > zzfjqVar.zzpru.zzcxr() && zzfjqVar.zzcxr() > zzfgsVar2.zzcxr()) {
                return new zzfjq(zzfjqVar.zzprt, new zzfjq(zzfjqVar.zzpru, zzfgsVar2));
            }
        }
        return size >= zzprr[Math.max(zzfgsVar.zzcxr(), zzfgsVar2.zzcxr()) + 1] ? new zzfjq(zzfgsVar, zzfgsVar2) : zzfjs.zza(new zzfjs(), zzfgsVar, zzfgsVar2);
    }

    private static zzfgs zzb(zzfgs zzfgsVar, zzfgs zzfgsVar2) {
        int size = zzfgsVar.size();
        int size2 = zzfgsVar2.size();
        byte[] bArr = new byte[size + size2];
        zzfgsVar.zza(bArr, 0, 0, size);
        zzfgsVar2.zza(bArr, 0, size, size2);
        return zzfgs.zzba(bArr);
    }

    @Override // com.google.android.gms.internal.zzfgs
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfgs)) {
            return false;
        }
        zzfgs zzfgsVar = (zzfgs) obj;
        if (this.zzprs != zzfgsVar.size()) {
            return false;
        }
        if (this.zzprs == 0) {
            return true;
        }
        int zzcxt = zzcxt();
        int zzcxt2 = zzfgsVar.zzcxt();
        if (zzcxt != 0 && zzcxt2 != 0 && zzcxt != zzcxt2) {
            return false;
        }
        zzfjt zzfjtVar = new zzfjt(this);
        zzfjt zzfjtVar2 = new zzfjt(zzfgsVar);
        int i = 0;
        zzfgy next = zzfjtVar2.next();
        int i2 = 0;
        zzfgy next2 = zzfjtVar.next();
        int i3 = 0;
        while (true) {
            int size = next2.size() - i3;
            int size2 = next.size() - i2;
            int min = Math.min(size, size2);
            if (!(i3 == 0 ? next2.zza(next, i2, min) : next.zza(next2, i3, min))) {
                return false;
            }
            int i4 = i + min;
            if (i4 >= this.zzprs) {
                if (i4 != this.zzprs) {
                    throw new IllegalStateException();
                }
                return true;
            }
            if (min == size) {
                next2 = zzfjtVar.next();
                i3 = 0;
            } else {
                i3 += min;
            }
            if (min == size2) {
                i = i4;
                next = zzfjtVar2.next();
                i2 = 0;
            } else {
                i = i4;
                i2 += min;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzfgs
    public final int size() {
        return this.zzprs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.zzfgs
    public final void zza(zzfgr zzfgrVar) throws IOException {
        this.zzprt.zza(zzfgrVar);
        this.zzpru.zza(zzfgrVar);
    }

    @Override // com.google.android.gms.internal.zzfgs
    public final zzfgs zzaa(int i, int i2) {
        int zzh = zzh(i, i2, this.zzprs);
        if (zzh == 0) {
            return zzfgs.zzpnw;
        }
        if (zzh == this.zzprs) {
            return this;
        }
        if (i2 <= this.zzprv) {
            return this.zzprt.zzaa(i, i2);
        }
        if (i >= this.zzprv) {
            return this.zzpru.zzaa(i - this.zzprv, i2 - this.zzprv);
        }
        zzfgs zzfgsVar = this.zzprt;
        return new zzfjq(zzfgsVar.zzaa(i, zzfgsVar.size()), this.zzpru.zzaa(0, i2 - this.zzprv));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfgs
    public final void zzb(byte[] bArr, int i, int i2, int i3) {
        if (i + i3 <= this.zzprv) {
            this.zzprt.zzb(bArr, i, i2, i3);
        } else if (i >= this.zzprv) {
            this.zzpru.zzb(bArr, i - this.zzprv, i2, i3);
        } else {
            int i4 = this.zzprv - i;
            this.zzprt.zzb(bArr, i, i2, i4);
            this.zzpru.zzb(bArr, 0, i2 + i4, i3 - i4);
        }
    }

    @Override // com.google.android.gms.internal.zzfgs
    public final zzfhb zzcxq() {
        return zzfhb.zzh(new zzfju(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfgs
    public final int zzcxr() {
        return this.zzprw;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfgs
    public final boolean zzcxs() {
        return this.zzprs >= zzprr[this.zzprw];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfgs
    public final int zzg(int i, int i2, int i3) {
        if (i2 + i3 <= this.zzprv) {
            return this.zzprt.zzg(i, i2, i3);
        }
        if (i2 >= this.zzprv) {
            return this.zzpru.zzg(i, i2 - this.zzprv, i3);
        }
        int i4 = this.zzprv - i2;
        return this.zzpru.zzg(this.zzprt.zzg(i, i2, i4), 0, i3 - i4);
    }

    @Override // com.google.android.gms.internal.zzfgs
    public final byte zzld(int i) {
        zzab(i, this.zzprs);
        return i < this.zzprv ? this.zzprt.zzld(i) : this.zzpru.zzld(i - this.zzprv);
    }
}
