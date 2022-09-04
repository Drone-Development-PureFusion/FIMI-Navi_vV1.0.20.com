package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public final class zzflo implements Cloneable {
    private static final zzflp zzpvn = new zzflp();
    private int mSize;
    private boolean zzpvo;
    private int[] zzpvp;
    private zzflp[] zzpvq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzflo() {
        this(10);
    }

    private zzflo(int i) {
        this.zzpvo = false;
        int idealIntArraySize = idealIntArraySize(i);
        this.zzpvp = new int[idealIntArraySize];
        this.zzpvq = new zzflp[idealIntArraySize];
        this.mSize = 0;
    }

    private static int idealIntArraySize(int i) {
        int i2 = i << 2;
        int i3 = 4;
        while (true) {
            if (i3 >= 32) {
                break;
            } else if (i2 <= (1 << i3) - 12) {
                i2 = (1 << i3) - 12;
                break;
            } else {
                i3++;
            }
        }
        return i2 / 4;
    }

    private final int zznb(int i) {
        int i2 = 0;
        int i3 = this.mSize - 1;
        while (i2 <= i3) {
            int i4 = (i2 + i3) >>> 1;
            int i5 = this.zzpvp[i4];
            if (i5 < i) {
                i2 = i4 + 1;
            } else if (i5 <= i) {
                return i4;
            } else {
                i3 = i4 - 1;
            }
        }
        return i2 ^ (-1);
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.mSize;
        zzflo zzfloVar = new zzflo(i);
        System.arraycopy(this.zzpvp, 0, zzfloVar.zzpvp, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            if (this.zzpvq[i2] != null) {
                zzfloVar.zzpvq[i2] = (zzflp) this.zzpvq[i2].clone();
            }
        }
        zzfloVar.mSize = i;
        return zzfloVar;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzflo)) {
            return false;
        }
        zzflo zzfloVar = (zzflo) obj;
        if (this.mSize != zzfloVar.mSize) {
            return false;
        }
        int[] iArr = this.zzpvp;
        int[] iArr2 = zzfloVar.zzpvp;
        int i = this.mSize;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                z = true;
                break;
            } else if (iArr[i2] != iArr2[i2]) {
                z = false;
                break;
            } else {
                i2++;
            }
        }
        if (z) {
            zzflp[] zzflpVarArr = this.zzpvq;
            zzflp[] zzflpVarArr2 = zzfloVar.zzpvq;
            int i3 = this.mSize;
            int i4 = 0;
            while (true) {
                if (i4 >= i3) {
                    z2 = true;
                    break;
                } else if (!zzflpVarArr[i4].equals(zzflpVarArr2[i4])) {
                    z2 = false;
                    break;
                } else {
                    i4++;
                }
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = 17;
        for (int i2 = 0; i2 < this.mSize; i2++) {
            i = (((i * 31) + this.zzpvp[i2]) * 31) + this.zzpvq[i2].hashCode();
        }
        return i;
    }

    public final boolean isEmpty() {
        return this.mSize == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int size() {
        return this.mSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(int i, zzflp zzflpVar) {
        int zznb = zznb(i);
        if (zznb >= 0) {
            this.zzpvq[zznb] = zzflpVar;
            return;
        }
        int i2 = zznb ^ (-1);
        if (i2 < this.mSize && this.zzpvq[i2] == zzpvn) {
            this.zzpvp[i2] = i;
            this.zzpvq[i2] = zzflpVar;
            return;
        }
        if (this.mSize >= this.zzpvp.length) {
            int idealIntArraySize = idealIntArraySize(this.mSize + 1);
            int[] iArr = new int[idealIntArraySize];
            zzflp[] zzflpVarArr = new zzflp[idealIntArraySize];
            System.arraycopy(this.zzpvp, 0, iArr, 0, this.zzpvp.length);
            System.arraycopy(this.zzpvq, 0, zzflpVarArr, 0, this.zzpvq.length);
            this.zzpvp = iArr;
            this.zzpvq = zzflpVarArr;
        }
        if (this.mSize - i2 != 0) {
            System.arraycopy(this.zzpvp, i2, this.zzpvp, i2 + 1, this.mSize - i2);
            System.arraycopy(this.zzpvq, i2, this.zzpvq, i2 + 1, this.mSize - i2);
        }
        this.zzpvp[i2] = i;
        this.zzpvq[i2] = zzflpVar;
        this.mSize++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzflp zzmz(int i) {
        int zznb = zznb(i);
        if (zznb < 0 || this.zzpvq[zznb] == zzpvn) {
            return null;
        }
        return this.zzpvq[zznb];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzflp zzna(int i) {
        return this.zzpvq[i];
    }
}
