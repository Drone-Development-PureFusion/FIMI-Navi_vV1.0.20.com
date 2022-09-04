package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzfmg extends zzfhu<zzfmg, zza> implements zzfje {
    private static volatile zzfjl<zzfmg> zzbbm;
    private static final zzfmg zzpxv;
    private int zzmjb;
    private int zzpxs;
    private String zzpxt = "";
    private zzfid<zzfgp> zzpxu = zzczs();

    /* loaded from: classes2.dex */
    public static final class zza extends zzfhu.zza<zzfmg, zza> implements zzfje {
        private zza() {
            super(zzfmg.zzpxv);
        }

        /* synthetic */ zza(zzfmh zzfmhVar) {
            this();
        }
    }

    static {
        zzfmg zzfmgVar = new zzfmg();
        zzpxv = zzfmgVar;
        zzfmgVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzfmgVar.zzpph.zzbkr();
    }

    private zzfmg() {
    }

    public static zzfmg zzdcu() {
        return zzpxv;
    }

    public final int getCode() {
        return this.zzpxs;
    }

    public final String getMessage() {
        return this.zzpxt;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        boolean z = false;
        boolean z2 = true;
        switch (zzfmh.zzbbk[i - 1]) {
            case 1:
                return new zzfmg();
            case 2:
                return zzpxv;
            case 3:
                this.zzpxu.zzbkr();
                return null;
            case 4:
                return new zza(null);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzfmg zzfmgVar = (zzfmg) obj2;
                this.zzpxs = zzhVar.zza(this.zzpxs != 0, this.zzpxs, zzfmgVar.zzpxs != 0, zzfmgVar.zzpxs);
                boolean z3 = !this.zzpxt.isEmpty();
                String str = this.zzpxt;
                if (zzfmgVar.zzpxt.isEmpty()) {
                    z2 = false;
                }
                this.zzpxt = zzhVar.zza(z3, str, z2, zzfmgVar.zzpxt);
                this.zzpxu = zzhVar.zza(this.zzpxu, zzfmgVar.zzpxu);
                if (zzhVar != zzfhu.zzf.zzppq) {
                    return this;
                }
                this.zzmjb |= zzfmgVar.zzmjb;
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                zzfhm zzfhmVar = (zzfhm) obj2;
                if (zzfhmVar != null) {
                    while (!z) {
                        try {
                            int zzcxx = zzfhbVar.zzcxx();
                            switch (zzcxx) {
                                case 0:
                                    z = true;
                                    break;
                                case 8:
                                    this.zzpxs = zzfhbVar.zzcya();
                                    break;
                                case 18:
                                    this.zzpxt = zzfhbVar.zzcye();
                                    break;
                                case 26:
                                    if (!this.zzpxu.zzcxk()) {
                                        zzfid<zzfgp> zzfidVar = this.zzpxu;
                                        int size = zzfidVar.size();
                                        this.zzpxu = zzfidVar.zzmo(size == 0 ? 10 : size << 1);
                                    }
                                    this.zzpxu.add((zzfgp) zzfhbVar.zza((zzfhb) zzfgp.zzcxo(), zzfhmVar));
                                    break;
                                default:
                                    z = !zza(zzcxx, zzfhbVar) ? true : z;
                                    break;
                            }
                        } catch (zzfie e) {
                            throw new RuntimeException(e.zzi(this));
                        } catch (IOException e2) {
                            throw new RuntimeException(new zzfie(e2.getMessage()).zzi(this));
                        }
                    }
                    break;
                } else {
                    throw new NullPointerException();
                }
            case 7:
                break;
            case 8:
                if (zzbbm == null) {
                    synchronized (zzfmg.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzpxv);
                        }
                    }
                }
                return zzbbm;
            case 9:
                return (byte) 1;
            case 10:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
        return zzpxv;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzpxs != 0) {
            zzfhgVar.zzad(1, this.zzpxs);
        }
        if (!this.zzpxt.isEmpty()) {
            zzfhgVar.zzp(2, this.zzpxt);
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.zzpxu.size()) {
                this.zzpph.zza(zzfhgVar);
                return;
            } else {
                zzfhgVar.zza(3, this.zzpxu.get(i2));
                i = i2 + 1;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = 0;
        int i2 = this.zzppi;
        if (i2 != -1) {
            return i2;
        }
        int zzag = this.zzpxs != 0 ? zzfhg.zzag(1, this.zzpxs) + 0 : 0;
        if (!this.zzpxt.isEmpty()) {
            zzag += zzfhg.zzq(2, this.zzpxt);
        }
        while (true) {
            int i3 = zzag;
            if (i >= this.zzpxu.size()) {
                int zzhs = this.zzpph.zzhs() + i3;
                this.zzppi = zzhs;
                return zzhs;
            }
            zzag = zzfhg.zzc(3, this.zzpxu.get(i)) + i3;
            i++;
        }
    }
}
