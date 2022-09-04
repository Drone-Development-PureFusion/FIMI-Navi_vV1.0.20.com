package com.google.android.gms.internal;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
/* loaded from: classes2.dex */
public final class zzflk {
    private final ByteBuffer buffer;

    private zzflk(ByteBuffer byteBuffer) {
        this.buffer = byteBuffer;
        this.buffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    private zzflk(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    private static int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        int length = charSequence.length();
        int i4 = 0;
        int i5 = i + i2;
        while (i4 < length && i4 + i < i5) {
            char charAt = charSequence.charAt(i4);
            if (charAt >= 128) {
                break;
            }
            bArr[i + i4] = (byte) charAt;
            i4++;
        }
        if (i4 == length) {
            return i + length;
        }
        int i6 = i + i4;
        while (i4 < length) {
            char charAt2 = charSequence.charAt(i4);
            if (charAt2 < 128 && i6 < i5) {
                i3 = i6 + 1;
                bArr[i6] = (byte) charAt2;
            } else if (charAt2 < 2048 && i6 <= i5 - 2) {
                int i7 = i6 + 1;
                bArr[i6] = (byte) ((charAt2 >>> 6) | 960);
                i3 = i7 + 1;
                bArr[i7] = (byte) ((charAt2 & '?') | 128);
            } else if ((charAt2 >= 55296 && 57343 >= charAt2) || i6 > i5 - 3) {
                if (i6 > i5 - 4) {
                    throw new ArrayIndexOutOfBoundsException(new StringBuilder(37).append("Failed writing ").append(charAt2).append(" at index ").append(i6).toString());
                }
                if (i4 + 1 != charSequence.length()) {
                    i4++;
                    char charAt3 = charSequence.charAt(i4);
                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                        int i8 = i6 + 1;
                        bArr[i6] = (byte) ((codePoint >>> 18) | 240);
                        int i9 = i8 + 1;
                        bArr[i8] = (byte) (((codePoint >>> 12) & 63) | 128);
                        int i10 = i9 + 1;
                        bArr[i9] = (byte) (((codePoint >>> 6) & 63) | 128);
                        i3 = i10 + 1;
                        bArr[i10] = (byte) ((codePoint & 63) | 128);
                    }
                }
                throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i4 - 1).toString());
            } else {
                int i11 = i6 + 1;
                bArr[i6] = (byte) ((charAt2 >>> '\f') | 480);
                int i12 = i11 + 1;
                bArr[i11] = (byte) (((charAt2 >>> 6) & 63) | 128);
                i3 = i12 + 1;
                bArr[i12] = (byte) ((charAt2 & '?') | 128);
            }
            i4++;
            i6 = i3;
        }
        return i6;
    }

    private static void zza(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        if (!byteBuffer.hasArray()) {
            zzb(charSequence, byteBuffer);
            return;
        }
        try {
            byteBuffer.position(zza(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e);
            throw bufferOverflowException;
        }
    }

    public static int zzag(int i, int i2) {
        return zzlw(i) + zzlx(i2);
    }

    public static int zzb(int i, zzfls zzflsVar) {
        int zzlw = zzlw(i);
        int zzhs = zzflsVar.zzhs();
        return zzlw + zzhs + zzmf(zzhs);
    }

    private static void zzb(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < 128) {
                byteBuffer.put((byte) charAt);
            } else if (charAt < 2048) {
                byteBuffer.put((byte) ((charAt >>> 6) | 960));
                byteBuffer.put((byte) ((charAt & '?') | 128));
            } else if (charAt >= 55296 && 57343 >= charAt) {
                if (i + 1 != charSequence.length()) {
                    i++;
                    char charAt2 = charSequence.charAt(i);
                    if (Character.isSurrogatePair(charAt, charAt2)) {
                        int codePoint = Character.toCodePoint(charAt, charAt2);
                        byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                        byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                        byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                        byteBuffer.put((byte) ((codePoint & 63) | 128));
                    }
                }
                throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i - 1).toString());
            } else {
                byteBuffer.put((byte) ((charAt >>> '\f') | 480));
                byteBuffer.put((byte) (((charAt >>> 6) & 63) | 128));
                byteBuffer.put((byte) ((charAt & '?') | 128));
            }
            i++;
        }
    }

    public static zzflk zzbf(byte[] bArr) {
        return zzp(bArr, 0, bArr.length);
    }

    public static int zzbg(byte[] bArr) {
        return zzmf(bArr.length) + bArr.length;
    }

    public static int zzc(int i, long j) {
        return zzlw(i) + zzdj(j);
    }

    public static int zzd(int i, byte[] bArr) {
        return zzlw(i) + zzbg(bArr);
    }

    private static int zzd(CharSequence charSequence) {
        int i;
        int i2 = 0;
        int length = charSequence.length();
        int i3 = 0;
        while (i3 < length && charSequence.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (true) {
            if (i3 >= length) {
                i = i4;
                break;
            }
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i4 += (127 - charAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                while (i3 < length2) {
                    char charAt2 = charSequence.charAt(i3);
                    if (charAt2 < 2048) {
                        i2 += (127 - charAt2) >>> 31;
                    } else {
                        i2 += 2;
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i3) < 65536) {
                                throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i3).toString());
                            }
                            i3++;
                        }
                    }
                    i3++;
                }
                i = i4 + i2;
            }
        }
        if (i < length) {
            throw new IllegalArgumentException(new StringBuilder(54).append("UTF-8 length does not fit in int: ").append(i + 4294967296L).toString());
        }
        return i;
    }

    private static long zzdc(long j) {
        return (j << 1) ^ (j >> 63);
    }

    private final void zzdi(long j) throws IOException {
        while (((-128) & j) != 0) {
            zzmx((((int) j) & 127) | 128);
            j >>>= 7;
        }
        zzmx((int) j);
    }

    public static int zzdj(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (Long.MIN_VALUE & j) == 0 ? 9 : 10;
    }

    private final void zzdk(long j) throws IOException {
        if (this.buffer.remaining() < 8) {
            throw new zzfll(this.buffer.position(), this.buffer.limit());
        }
        this.buffer.putLong(j);
    }

    public static int zzh(int i, long j) {
        return zzlw(i) + zzdj(zzdc(j));
    }

    public static int zzlw(int i) {
        return zzmf(i << 3);
    }

    public static int zzlx(int i) {
        if (i >= 0) {
            return zzmf(i);
        }
        return 10;
    }

    public static int zzme(int i) {
        return (i << 1) ^ (i >> 31);
    }

    public static int zzmf(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return ((-268435456) & i) == 0 ? 4 : 5;
    }

    private final void zzmx(int i) throws IOException {
        byte b = (byte) i;
        if (!this.buffer.hasRemaining()) {
            throw new zzfll(this.buffer.position(), this.buffer.limit());
        }
        this.buffer.put(b);
    }

    public static zzflk zzp(byte[] bArr, int i, int i2) {
        return new zzflk(bArr, 0, i2);
    }

    public static int zzq(int i, String str) {
        return zzlw(i) + zztx(str);
    }

    public static int zztx(String str) {
        int zzd = zzd(str);
        return zzd + zzmf(zzd);
    }

    public final void zza(int i, double d) throws IOException {
        zzac(i, 1);
        zzdk(Double.doubleToLongBits(d));
    }

    public final void zza(int i, long j) throws IOException {
        zzac(i, 0);
        zzdi(j);
    }

    public final void zza(int i, zzfls zzflsVar) throws IOException {
        zzac(i, 2);
        zzb(zzflsVar);
    }

    public final void zzac(int i, int i2) throws IOException {
        zzmy((i << 3) | i2);
    }

    public final void zzad(int i, int i2) throws IOException {
        zzac(i, 0);
        if (i2 >= 0) {
            zzmy(i2);
        } else {
            zzdi(i2);
        }
    }

    public final void zzb(int i, long j) throws IOException {
        zzac(i, 1);
        zzdk(j);
    }

    public final void zzb(zzfls zzflsVar) throws IOException {
        zzmy(zzflsVar.zzdcr());
        zzflsVar.zza(this);
    }

    public final void zzbh(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.buffer.remaining() >= length) {
            this.buffer.put(bArr, 0, length);
            return;
        }
        throw new zzfll(this.buffer.position(), this.buffer.limit());
    }

    public final void zzc(int i, byte[] bArr) throws IOException {
        zzac(i, 2);
        zzmy(bArr.length);
        zzbh(bArr);
    }

    public final void zzcyx() {
        if (this.buffer.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.buffer.remaining())));
        }
    }

    public final void zzd(int i, float f) throws IOException {
        zzac(i, 5);
        int floatToIntBits = Float.floatToIntBits(f);
        if (this.buffer.remaining() < 4) {
            throw new zzfll(this.buffer.position(), this.buffer.limit());
        }
        this.buffer.putInt(floatToIntBits);
    }

    public final void zzf(int i, long j) throws IOException {
        zzac(i, 0);
        zzdi(j);
    }

    public final void zzg(int i, long j) throws IOException {
        zzac(i, 0);
        zzdi(zzdc(j));
    }

    public final void zzl(int i, boolean z) throws IOException {
        int i2 = 0;
        zzac(i, 0);
        if (z) {
            i2 = 1;
        }
        byte b = (byte) i2;
        if (!this.buffer.hasRemaining()) {
            throw new zzfll(this.buffer.position(), this.buffer.limit());
        }
        this.buffer.put(b);
    }

    public final void zzmy(int i) throws IOException {
        while ((i & (-128)) != 0) {
            zzmx((i & 127) | 128);
            i >>>= 7;
        }
        zzmx(i);
    }

    public final void zzp(int i, String str) throws IOException {
        zzac(i, 2);
        try {
            int zzmf = zzmf(str.length());
            if (zzmf != zzmf(str.length() * 3)) {
                zzmy(zzd(str));
                zza(str, this.buffer);
                return;
            }
            int position = this.buffer.position();
            if (this.buffer.remaining() < zzmf) {
                throw new zzfll(zzmf + position, this.buffer.limit());
            }
            this.buffer.position(position + zzmf);
            zza(str, this.buffer);
            int position2 = this.buffer.position();
            this.buffer.position(position);
            zzmy((position2 - position) - zzmf);
            this.buffer.position(position2);
        } catch (BufferOverflowException e) {
            zzfll zzfllVar = new zzfll(this.buffer.position(), this.buffer.limit());
            zzfllVar.initCause(e);
            throw zzfllVar;
        }
    }
}
