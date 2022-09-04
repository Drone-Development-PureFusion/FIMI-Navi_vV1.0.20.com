package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class zzfko {
    private static final zzfko zzpta = new zzfko(0, new int[0], new Object[0], false);
    private int count;
    private boolean zzpnq;
    private int zzppi;
    private int[] zzptb;
    private Object[] zzptc;

    private zzfko() {
        this(0, new int[8], new Object[8], true);
    }

    private zzfko(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzppi = -1;
        this.count = i;
        this.zzptb = iArr;
        this.zzptc = objArr;
        this.zzpnq = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfko zzb(zzfko zzfkoVar, zzfko zzfkoVar2) {
        int i = zzfkoVar.count + zzfkoVar2.count;
        int[] copyOf = Arrays.copyOf(zzfkoVar.zzptb, i);
        System.arraycopy(zzfkoVar2.zzptb, 0, copyOf, zzfkoVar.count, zzfkoVar2.count);
        Object[] copyOf2 = Arrays.copyOf(zzfkoVar.zzptc, i);
        System.arraycopy(zzfkoVar2.zzptc, 0, copyOf2, zzfkoVar.count, zzfkoVar2.count);
        return new zzfko(i, copyOf, copyOf2, true);
    }

    private void zzc(int i, Object obj) {
        zzdbr();
        if (this.count == this.zzptb.length) {
            int i2 = (this.count < 4 ? 8 : this.count >> 1) + this.count;
            this.zzptb = Arrays.copyOf(this.zzptb, i2);
            this.zzptc = Arrays.copyOf(this.zzptc, i2);
        }
        this.zzptb[this.count] = i;
        this.zzptc[this.count] = obj;
        this.count++;
    }

    private final void zzdbr() {
        if (!this.zzpnq) {
            throw new UnsupportedOperationException();
        }
    }

    public static zzfko zzdca() {
        return zzpta;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfko zzdcb() {
        return new zzfko();
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof zzfko)) {
            zzfko zzfkoVar = (zzfko) obj;
            if (this.count == zzfkoVar.count) {
                int[] iArr = this.zzptb;
                int[] iArr2 = zzfkoVar.zzptb;
                int i = this.count;
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
                    Object[] objArr = this.zzptc;
                    Object[] objArr2 = zzfkoVar.zzptc;
                    int i3 = this.count;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= i3) {
                            z2 = true;
                            break;
                        } else if (!objArr[i4].equals(objArr2[i4])) {
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
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.count + 527) * 31) + Arrays.hashCode(this.zzptb)) * 31) + Arrays.deepHashCode(this.zzptc);
    }

    public final void zza(zzfhg zzfhgVar) throws IOException {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.count) {
                int i3 = this.zzptb[i2];
                int i4 = i3 >>> 3;
                switch (i3 & 7) {
                    case 0:
                        zzfhgVar.zza(i4, ((Long) this.zzptc[i2]).longValue());
                        break;
                    case 1:
                        zzfhgVar.zzb(i4, ((Long) this.zzptc[i2]).longValue());
                        break;
                    case 2:
                        zzfhgVar.zza(i4, (zzfgs) this.zzptc[i2]);
                        break;
                    case 3:
                        zzfhgVar.zzac(i4, 3);
                        ((zzfko) this.zzptc[i2]).zza(zzfhgVar);
                        zzfhgVar.zzac(i4, 4);
                        break;
                    case 4:
                    default:
                        throw zzfie.zzdaj();
                    case 5:
                        zzfhgVar.zzaf(i4, ((Integer) this.zzptc[i2]).intValue());
                        break;
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzfli zzfliVar) {
        if (zzfliVar.zzcyz() == zzfhu.zzg.zzpqg) {
            for (int i = this.count - 1; i >= 0; i--) {
                zzfliVar.zzb(this.zzptb[i] >>> 3, this.zzptc[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.count; i2++) {
            zzfliVar.zzb(this.zzptb[i2] >>> 3, this.zzptc[i2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzb(int i, zzfhb zzfhbVar) throws IOException {
        int zzcxx;
        zzdbr();
        int i2 = i >>> 3;
        switch (i & 7) {
            case 0:
                zzc(i, Long.valueOf(zzfhbVar.zzcxz()));
                return true;
            case 1:
                zzc(i, Long.valueOf(zzfhbVar.zzcyb()));
                return true;
            case 2:
                zzc(i, zzfhbVar.zzcyf());
                return true;
            case 3:
                zzfko zzfkoVar = new zzfko();
                do {
                    zzcxx = zzfhbVar.zzcxx();
                    if (zzcxx != 0) {
                    }
                    zzfhbVar.zzlf((i2 << 3) | 4);
                    zzc(i, zzfkoVar);
                    return true;
                } while (zzfkoVar.zzb(zzcxx, zzfhbVar));
                zzfhbVar.zzlf((i2 << 3) | 4);
                zzc(i, zzfkoVar);
                return true;
            case 4:
                return false;
            case 5:
                zzc(i, Integer.valueOf(zzfhbVar.zzcyc()));
                return true;
            default:
                throw zzfie.zzdaj();
        }
    }

    public final void zzbkr() {
        this.zzpnq = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.count; i2++) {
            zzfjf.zzb(sb, i, String.valueOf(this.zzptb[i2] >>> 3), this.zzptc[i2]);
        }
    }

    public final int zzdcc() {
        int i = this.zzppi;
        if (i == -1) {
            i = 0;
            for (int i2 = 0; i2 < this.count; i2++) {
                i += zzfhg.zzd(this.zzptb[i2] >>> 3, (zzfgs) this.zzptc[i2]);
            }
            this.zzppi = i;
        }
        return i;
    }

    public final int zzhs() {
        int zzhs;
        int i = this.zzppi;
        if (i == -1) {
            i = 0;
            for (int i2 = 0; i2 < this.count; i2++) {
                int i3 = this.zzptb[i2];
                int i4 = i3 >>> 3;
                switch (i3 & 7) {
                    case 0:
                        zzhs = zzfhg.zzd(i4, ((Long) this.zzptc[i2]).longValue());
                        break;
                    case 1:
                        zzhs = zzfhg.zze(i4, ((Long) this.zzptc[i2]).longValue());
                        break;
                    case 2:
                        zzhs = zzfhg.zzc(i4, (zzfgs) this.zzptc[i2]);
                        break;
                    case 3:
                        zzhs = ((zzfko) this.zzptc[i2]).zzhs() + (zzfhg.zzlw(i4) << 1);
                        break;
                    case 4:
                    default:
                        throw new IllegalStateException(zzfie.zzdaj());
                    case 5:
                        zzhs = zzfhg.zzai(i4, ((Integer) this.zzptc[i2]).intValue());
                        break;
                }
                i += zzhs;
            }
            this.zzppi = i;
        }
        return i;
    }
}
