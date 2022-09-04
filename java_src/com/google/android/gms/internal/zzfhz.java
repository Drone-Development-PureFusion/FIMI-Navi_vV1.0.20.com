package com.google.android.gms.internal;

import com.fimi.kernel.connect.tcp.SocketOption;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public final class zzfhz {
    public static final byte[] EMPTY_BYTE_ARRAY;
    private static ByteBuffer zzpqm;
    private static zzfhb zzpqn;
    static final Charset UTF_8 = Charset.forName(SocketOption.DEFAULT_CHARSET);
    private static Charset ISO_8859_1 = Charset.forName("ISO-8859-1");

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        zzpqm = ByteBuffer.wrap(bArr);
        zzpqn = zzfhb.zzbb(EMPTY_BYTE_ARRAY);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T checkNotNull(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }

    public static int hashCode(byte[] bArr) {
        int length = bArr.length;
        int zza = zza(length, bArr, 0, length);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T zzc(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    public static int zzdf(long j) {
        return (int) ((j >>> 32) ^ j);
    }

    public static int zzdo(boolean z) {
        return z ? 1231 : 1237;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzh(zzfjc zzfjcVar) {
        return false;
    }
}
