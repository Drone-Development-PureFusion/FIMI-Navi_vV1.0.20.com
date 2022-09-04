package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzfhw extends zzfhu<zzfhw, zza> implements zzfje {
    private static volatile zzfjl<zzfhw> zzbbm;
    private static final zzfhw zzpqj;
    private int zzpqi;

    /* loaded from: classes2.dex */
    public static final class zza extends zzfhu.zza<zzfhw, zza> implements zzfje {
        private zza() {
            super(zzfhw.zzpqj);
        }

        /* synthetic */ zza(zzfhx zzfhxVar) {
            this();
        }

        public final zza zzmj(int i) {
            zzczv();
            ((zzfhw) this.zzppl).setValue(i);
            return this;
        }
    }

    static {
        zzfhw zzfhwVar = new zzfhw();
        zzpqj = zzfhwVar;
        zzfhwVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzfhwVar.zzpph.zzbkr();
    }

    private zzfhw() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setValue(int i) {
        this.zzpqi = i;
    }

    public static zza zzdaa() {
        return (zza) ((zzfhu.zza) zzpqj.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    public static zzfhw zzdab() {
        return zzpqj;
    }

    public final int getValue() {
        return this.zzpqi;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        boolean zzb;
        boolean z = true;
        switch (zzfhx.zzbbk[i - 1]) {
            case 1:
                return new zzfhw();
            case 2:
                return zzpqj;
            case 3:
                return null;
            case 4:
                return new zza(null);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzfhw zzfhwVar = (zzfhw) obj2;
                boolean z2 = this.zzpqi != 0;
                int i2 = this.zzpqi;
                if (zzfhwVar.zzpqi == 0) {
                    z = false;
                }
                this.zzpqi = zzhVar.zza(z2, i2, z, zzfhwVar.zzpqi);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                if (((zzfhm) obj2) != null) {
                    boolean z3 = false;
                    while (!z3) {
                        try {
                            int zzcxx = zzfhbVar.zzcxx();
                            switch (zzcxx) {
                                case 0:
                                    z3 = true;
                                    break;
                                case 8:
                                    this.zzpqi = zzfhbVar.zzcya();
                                    break;
                                default:
                                    if ((zzcxx & 7) == 4) {
                                        zzb = false;
                                    } else {
                                        if (this.zzpph == zzfko.zzdca()) {
                                            this.zzpph = zzfko.zzdcb();
                                        }
                                        zzb = this.zzpph.zzb(zzcxx, zzfhbVar);
                                    }
                                    if (zzb) {
                                        break;
                                    } else {
                                        z3 = true;
                                        break;
                                    }
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
                    synchronized (zzfhw.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzpqj);
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
        return zzpqj;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzpqi != 0) {
            zzfhgVar.zzad(1, this.zzpqi);
        }
        this.zzpph.zza(zzfhgVar);
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        if (this.zzpqi != 0) {
            i2 = zzfhg.zzag(1, this.zzpqi) + 0;
        }
        int zzhs = i2 + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
