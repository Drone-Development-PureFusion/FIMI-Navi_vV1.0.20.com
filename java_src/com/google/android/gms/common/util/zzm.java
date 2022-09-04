package com.google.android.gms.common.util;
/* loaded from: classes2.dex */
public final class zzm {
    private static final char[] zzgky = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final char[] zzgkz = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String zzm(byte[] bArr) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length << 1);
        for (int i = 0; i < length; i++) {
            sb.append(zzgky[(bArr[i] & 240) >>> 4]);
            sb.append(zzgky[bArr[i] & 15]);
        }
        return sb.toString();
    }

    public static String zzn(byte[] bArr) {
        int i = 0;
        char[] cArr = new char[bArr.length << 1];
        int i2 = 0;
        while (true) {
            int i3 = i;
            if (i2 < bArr.length) {
                int i4 = bArr[i2] & 255;
                int i5 = i3 + 1;
                cArr[i3] = zzgkz[i4 >>> 4];
                i = i5 + 1;
                cArr[i5] = zzgkz[i4 & 15];
                i2++;
            } else {
                return new String(cArr);
            }
        }
    }
}
