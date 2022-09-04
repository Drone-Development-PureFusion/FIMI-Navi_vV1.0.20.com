package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzflp implements Cloneable {
    private Object value;
    private zzfln<?, ?> zzpvr;
    private List<zzflu> zzpvs = new ArrayList();

    private final byte[] toByteArray() throws IOException {
        byte[] bArr = new byte[zzq()];
        zza(zzflk.zzbf(bArr));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzdcm */
    public zzflp clone() {
        int i = 0;
        zzflp zzflpVar = new zzflp();
        try {
            zzflpVar.zzpvr = this.zzpvr;
            if (this.zzpvs == null) {
                zzflpVar.zzpvs = null;
            } else {
                zzflpVar.zzpvs.addAll(this.zzpvs);
            }
            if (this.value != null) {
                if (this.value instanceof zzfls) {
                    zzflpVar.value = (zzfls) ((zzfls) this.value).clone();
                } else if (this.value instanceof byte[]) {
                    zzflpVar.value = ((byte[]) this.value).clone();
                } else if (this.value instanceof byte[][]) {
                    byte[][] bArr = (byte[][]) this.value;
                    byte[][] bArr2 = new byte[bArr.length];
                    zzflpVar.value = bArr2;
                    for (int i2 = 0; i2 < bArr.length; i2++) {
                        bArr2[i2] = (byte[]) bArr[i2].clone();
                    }
                } else if (this.value instanceof boolean[]) {
                    zzflpVar.value = ((boolean[]) this.value).clone();
                } else if (this.value instanceof int[]) {
                    zzflpVar.value = ((int[]) this.value).clone();
                } else if (this.value instanceof long[]) {
                    zzflpVar.value = ((long[]) this.value).clone();
                } else if (this.value instanceof float[]) {
                    zzflpVar.value = ((float[]) this.value).clone();
                } else if (this.value instanceof double[]) {
                    zzflpVar.value = ((double[]) this.value).clone();
                } else if (this.value instanceof zzfls[]) {
                    zzfls[] zzflsVarArr = (zzfls[]) this.value;
                    zzfls[] zzflsVarArr2 = new zzfls[zzflsVarArr.length];
                    zzflpVar.value = zzflsVarArr2;
                    while (true) {
                        int i3 = i;
                        if (i3 >= zzflsVarArr.length) {
                            break;
                        }
                        zzflsVarArr2[i3] = (zzfls) zzflsVarArr[i3].clone();
                        i = i3 + 1;
                    }
                }
            }
            return zzflpVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzflp)) {
            return false;
        }
        zzflp zzflpVar = (zzflp) obj;
        if (this.value != null && zzflpVar.value != null) {
            if (this.zzpvr != zzflpVar.zzpvr) {
                return false;
            }
            return !this.zzpvr.zznro.isArray() ? this.value.equals(zzflpVar.value) : this.value instanceof byte[] ? Arrays.equals((byte[]) this.value, (byte[]) zzflpVar.value) : this.value instanceof int[] ? Arrays.equals((int[]) this.value, (int[]) zzflpVar.value) : this.value instanceof long[] ? Arrays.equals((long[]) this.value, (long[]) zzflpVar.value) : this.value instanceof float[] ? Arrays.equals((float[]) this.value, (float[]) zzflpVar.value) : this.value instanceof double[] ? Arrays.equals((double[]) this.value, (double[]) zzflpVar.value) : this.value instanceof boolean[] ? Arrays.equals((boolean[]) this.value, (boolean[]) zzflpVar.value) : Arrays.deepEquals((Object[]) this.value, (Object[]) zzflpVar.value);
        } else if (this.zzpvs != null && zzflpVar.zzpvs != null) {
            return this.zzpvs.equals(zzflpVar.zzpvs);
        } else {
            try {
                return Arrays.equals(toByteArray(), zzflpVar.toByteArray());
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(toByteArray()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.value == null) {
            for (zzflu zzfluVar : this.zzpvs) {
                zzflkVar.zzmy(zzfluVar.tag);
                zzflkVar.zzbh(zzfluVar.zzjwl);
            }
            return;
        }
        zzfln<?, ?> zzflnVar = this.zzpvr;
        Object obj = this.value;
        if (!zzflnVar.zzpvm) {
            zzflnVar.zza(obj, zzflkVar);
            return;
        }
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            Object obj2 = Array.get(obj, i);
            if (obj2 != null) {
                zzflnVar.zza(obj2, zzflkVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzflu zzfluVar) {
        this.zzpvs.add(zzfluVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T zzb(zzfln<?, T> zzflnVar) {
        if (this.value == null) {
            this.zzpvr = zzflnVar;
            this.value = zzflnVar.zzbq(this.zzpvs);
            this.zzpvs = null;
        } else if (!this.zzpvr.equals(zzflnVar)) {
            throw new IllegalStateException("Tried to getExtension with a different Extension.");
        }
        return (T) this.value;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzq() {
        int i = 0;
        if (this.value == null) {
            for (zzflu zzfluVar : this.zzpvs) {
                i = zzfluVar.zzjwl.length + zzflk.zzmf(zzfluVar.tag) + 0 + i;
            }
            return i;
        }
        zzfln<?, ?> zzflnVar = this.zzpvr;
        Object obj = this.value;
        if (!zzflnVar.zzpvm) {
            return zzflnVar.zzcw(obj);
        }
        int length = Array.getLength(obj);
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            if (Array.get(obj, i3) != null) {
                i2 += zzflnVar.zzcw(Array.get(obj, i3));
            }
        }
        return i2;
    }
}
