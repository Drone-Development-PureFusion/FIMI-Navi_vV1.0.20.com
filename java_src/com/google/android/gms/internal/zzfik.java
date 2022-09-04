package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzfik {
    private static final zzfhm zzpns = zzfhm.zzczf();
    private zzfgs zzpqq;
    private volatile zzfjc zzpqr;
    private volatile zzfgs zzpqs;

    private zzfjc zzj(zzfjc zzfjcVar) {
        if (this.zzpqr == null) {
            synchronized (this) {
                if (this.zzpqr == null) {
                    try {
                        this.zzpqr = zzfjcVar;
                        this.zzpqs = zzfgs.zzpnw;
                    } catch (zzfie e) {
                        this.zzpqr = zzfjcVar;
                        this.zzpqs = zzfgs.zzpnw;
                    }
                }
            }
        }
        return this.zzpqr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzfik)) {
            return false;
        }
        zzfik zzfikVar = (zzfik) obj;
        zzfjc zzfjcVar = this.zzpqr;
        zzfjc zzfjcVar2 = zzfikVar.zzpqr;
        return (zzfjcVar == null && zzfjcVar2 == null) ? toByteString().equals(zzfikVar.toByteString()) : (zzfjcVar == null || zzfjcVar2 == null) ? zzfjcVar != null ? zzfjcVar.equals(zzfikVar.zzj(zzfjcVar.zzczu())) : zzj(zzfjcVar2.zzczu()).equals(zzfjcVar2) : zzfjcVar.equals(zzfjcVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final zzfgs toByteString() {
        if (this.zzpqs != null) {
            return this.zzpqs;
        }
        synchronized (this) {
            if (this.zzpqs != null) {
                return this.zzpqs;
            }
            if (this.zzpqr == null) {
                this.zzpqs = zzfgs.zzpnw;
            } else {
                this.zzpqs = this.zzpqr.toByteString();
            }
            return this.zzpqs;
        }
    }

    public final int zzhs() {
        if (this.zzpqs != null) {
            return this.zzpqs.size();
        }
        if (this.zzpqr == null) {
            return 0;
        }
        return this.zzpqr.zzhs();
    }

    public final zzfjc zzk(zzfjc zzfjcVar) {
        zzfjc zzfjcVar2 = this.zzpqr;
        this.zzpqq = null;
        this.zzpqs = null;
        this.zzpqr = zzfjcVar;
        return zzfjcVar2;
    }
}
