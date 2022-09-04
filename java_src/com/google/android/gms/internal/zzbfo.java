package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes2.dex */
public final class zzbfo {
    private static long zza(long j, long j2, long j3) {
        long j4 = (j ^ j2) * j3;
        long j5 = ((j4 ^ (j4 >>> 47)) ^ j2) * j3;
        return (j5 ^ (j5 >>> 47)) * j3;
    }

    private static long zza(byte[] bArr, int i, int i2) {
        long j = 2480279821605975764L;
        long j2 = 1390051526045402406L;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long zzc = zzc(bArr, 0) + 95310865018149119L;
        int i3 = (((i2 - 1) / 64) << 6) + 0;
        int i4 = (((i2 - 1) & 63) + i3) - 63;
        int i5 = i;
        while (true) {
            long rotateRight = (Long.rotateRight(((zzc + j) + jArr[0]) + zzc(bArr, i5 + 8), 37) * (-5435081209227447693L)) ^ jArr2[1];
            long rotateRight2 = (Long.rotateRight(j + jArr[1] + zzc(bArr, i5 + 48), 42) * (-5435081209227447693L)) + jArr[0] + zzc(bArr, i5 + 40);
            long rotateRight3 = Long.rotateRight(j2 + jArr2[0], 33) * (-5435081209227447693L);
            zza(bArr, i5, jArr[1] * (-5435081209227447693L), jArr2[0] + rotateRight, jArr);
            zza(bArr, i5 + 32, rotateRight3 + jArr2[1], rotateRight2 + zzc(bArr, i5 + 16), jArr2);
            i5 += 64;
            if (i5 == i3) {
                long j3 = (-5435081209227447693L) + ((255 & rotateRight) << 1);
                jArr2[0] = jArr2[0] + ((i2 - 1) & 63);
                jArr[0] = jArr[0] + jArr2[0];
                jArr2[0] = jArr2[0] + jArr[0];
                long rotateRight4 = (Long.rotateRight(((rotateRight3 + rotateRight2) + jArr[0]) + zzc(bArr, i4 + 8), 37) * j3) ^ (jArr2[1] * 9);
                long rotateRight5 = (Long.rotateRight(jArr[1] + rotateRight2 + zzc(bArr, i4 + 48), 42) * j3) + (jArr[0] * 9) + zzc(bArr, i4 + 40);
                long rotateRight6 = Long.rotateRight(jArr2[0] + rotateRight, 33) * j3;
                zza(bArr, i4, jArr[1] * j3, rotateRight4 + jArr2[0], jArr);
                zza(bArr, i4 + 32, rotateRight6 + jArr2[1], rotateRight5 + zzc(bArr, i4 + 16), jArr2);
                return zza(zza(jArr[0], jArr2[0], j3) + (((rotateRight5 >>> 47) ^ rotateRight5) * (-4348849565147123417L)) + rotateRight4, zza(jArr[1], jArr2[1], j3) + rotateRight6, j3);
            }
            j2 = rotateRight;
            j = rotateRight2;
            zzc = rotateRight3;
        }
    }

    private static void zza(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long zzc = zzc(bArr, i);
        long zzc2 = zzc(bArr, i + 8);
        long zzc3 = zzc(bArr, i + 16);
        long zzc4 = zzc(bArr, i + 24);
        long j3 = zzc + j;
        long rotateRight = Long.rotateRight(j2 + j3 + zzc4, 21);
        long j4 = zzc2 + j3 + zzc3;
        jArr[0] = j4 + zzc4;
        jArr[1] = j3 + Long.rotateRight(j4, 44) + rotateRight;
    }

    private static int zzb(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
    }

    private static long zzc(byte[] bArr, int i) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i, 8);
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        return wrap.getLong();
    }

    public static long zzi(byte[] bArr) {
        int length = bArr.length;
        if (length < 0 || length > bArr.length) {
            throw new IndexOutOfBoundsException(new StringBuilder(67).append("Out of bound index with offput: 0 and length: ").append(length).toString());
        }
        if (length > 32) {
            if (length > 64) {
                return zza(bArr, 0, length);
            }
            long j = (-7286425919675154353L) + (length << 1);
            long zzc = zzc(bArr, 0) * (-7286425919675154353L);
            long zzc2 = zzc(bArr, 8);
            long zzc3 = zzc(bArr, (length + 0) - 8) * j;
            long zzc4 = (zzc(bArr, (length + 0) - 16) * (-7286425919675154353L)) + Long.rotateRight(zzc + zzc2, 43) + Long.rotateRight(zzc3, 30);
            long zza = zza(zzc4, Long.rotateRight(zzc2 - 7286425919675154353L, 18) + zzc + zzc3, j);
            long zzc5 = zzc(bArr, 16) * j;
            long zzc6 = zzc(bArr, 24);
            long zzc7 = (zzc4 + zzc(bArr, (length + 0) - 32)) * j;
            return zza(((zzc(bArr, (length + 0) - 24) + zza) * j) + Long.rotateRight(zzc5 + zzc6, 43) + Long.rotateRight(zzc7, 30), Long.rotateRight(zzc6 + zzc, 18) + zzc5 + zzc7, j);
        } else if (length > 16) {
            long j2 = (-7286425919675154353L) + (length << 1);
            long zzc8 = (-5435081209227447693L) * zzc(bArr, 0);
            long zzc9 = zzc(bArr, 8);
            long zzc10 = zzc(bArr, (length + 0) - 8) * j2;
            return zza((zzc(bArr, (length + 0) - 16) * (-7286425919675154353L)) + Long.rotateRight(zzc8 + zzc9, 43) + Long.rotateRight(zzc10, 30), zzc8 + Long.rotateRight((-7286425919675154353L) + zzc9, 18) + zzc10, j2);
        } else if (length >= 8) {
            long j3 = (-7286425919675154353L) + (length << 1);
            long zzc11 = (-7286425919675154353L) + zzc(bArr, 0);
            long zzc12 = zzc(bArr, (length + 0) - 8);
            return zza((Long.rotateRight(zzc12, 37) * j3) + zzc11, (Long.rotateRight(zzc11, 25) + zzc12) * j3, j3);
        } else if (length >= 4) {
            return zza(((zzb(bArr, 0) & 4294967295L) << 3) + length, zzb(bArr, (length + 0) - 4) & 4294967295L, (-7286425919675154353L) + (length << 1));
        } else if (length <= 0) {
            return -7286425919675154353L;
        } else {
            int i = (bArr[0] & 255) + ((bArr[(length >> 1) + 0] & 255) << 8);
            long j4 = ((((bArr[(length - 1) + 0] & 255) << 2) + length) * (-4348849565147123417L)) ^ (i * (-7286425919675154353L));
            return (j4 ^ (j4 >>> 47)) * (-7286425919675154353L);
        }
    }
}
