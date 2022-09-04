package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import org.slf4j.Marker;
/* loaded from: classes2.dex */
public abstract class zzfgs implements Serializable, Iterable<Byte> {
    public static final zzfgs zzpnw = new zzfgz(zzfhz.EMPTY_BYTE_ARRAY);
    private static final zzfgw zzpnx;
    private int zzmmk = 0;

    static {
        zzpnx = zzfgo.zzcxm() ? new zzfha(null) : new zzfgu(null);
    }

    private static zzfgs zza(Iterator<zzfgs> it, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
        }
        if (i == 1) {
            return it.next();
        }
        int i2 = i >>> 1;
        zzfgs zza = zza(it, i2);
        zzfgs zza2 = zza(it, i - i2);
        if (Integer.MAX_VALUE - zza.size() >= zza2.size()) {
            return zzfjq.zza(zza, zza2);
        }
        throw new IllegalArgumentException(new StringBuilder(53).append("ByteString would be too long: ").append(zza.size()).append(Marker.ANY_NON_NULL_MARKER).append(zza2.size()).toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzab(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i >= 0) {
                throw new ArrayIndexOutOfBoundsException(new StringBuilder(40).append("Index > length: ").append(i).append(", ").append(i2).toString());
            }
            throw new ArrayIndexOutOfBoundsException(new StringBuilder(22).append("Index < 0: ").append(i).toString());
        }
    }

    public static zzfgs zzaz(byte[] bArr) {
        return zzf(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfgs zzba(byte[] bArr) {
        return new zzfgz(bArr);
    }

    public static zzfgs zzf(byte[] bArr, int i, int i2) {
        return new zzfgz(zzpnx.zzg(bArr, i, i2));
    }

    public static zzfgs zzg(Iterable<zzfgs> iterable) {
        int size = ((Collection) iterable).size();
        return size == 0 ? zzpnw : zza(iterable.iterator(), size);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i < 0) {
                throw new IndexOutOfBoundsException(new StringBuilder(32).append("Beginning index: ").append(i).append(" < 0").toString());
            }
            if (i2 >= i) {
                throw new IndexOutOfBoundsException(new StringBuilder(37).append("End index: ").append(i2).append(" >= ").append(i3).toString());
            }
            throw new IndexOutOfBoundsException(new StringBuilder(66).append("Beginning index larger than ending index: ").append(i).append(", ").append(i2).toString());
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfgx zzle(int i) {
        return new zzfgx(i, null);
    }

    public static zzfgs zztv(String str) {
        return new zzfgz(str.getBytes(zzfhz.UTF_8));
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzmmk;
        if (i == 0) {
            int size = size();
            i = zzg(size, 0, size);
            if (i == 0) {
                i = 1;
            }
            this.zzmmk = i;
        }
        return i;
    }

    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzfgt(this);
    }

    public abstract int size();

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return zzfhz.EMPTY_BYTE_ARRAY;
        }
        byte[] bArr = new byte[size];
        zzb(bArr, 0, 0, size);
        return bArr;
    }

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(zzfgr zzfgrVar) throws IOException;

    public final void zza(byte[] bArr, int i, int i2, int i3) {
        zzh(i, i + i3, size());
        zzh(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            zzb(bArr, i, i2, i3);
        }
    }

    public abstract zzfgs zzaa(int i, int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void zzb(byte[] bArr, int i, int i2, int i3);

    public abstract zzfhb zzcxq();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int zzcxr();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean zzcxs();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzcxt() {
        return this.zzmmk;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int zzg(int i, int i2, int i3);

    public abstract byte zzld(int i);
}
