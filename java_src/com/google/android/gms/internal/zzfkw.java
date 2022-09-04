package com.google.android.gms.internal;

import com.fimi.x8sdk.command.FcCollection;
/* loaded from: classes2.dex */
final class zzfkw extends zzfkt {
    private static int zza(byte[] bArr, int i, long j, int i2) {
        int zzi;
        int zzam;
        int zzmu;
        switch (i2) {
            case 0:
                zzmu = zzfks.zzmu(i);
                return zzmu;
            case 1:
                zzam = zzfks.zzam(i, zzfkq.zzb(bArr, j));
                return zzam;
            case 2:
                zzi = zzfks.zzi(i, zzfkq.zzb(bArr, j), zzfkq.zzb(bArr, 1 + j));
                return zzi;
            default:
                throw new AssertionError();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00bb, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x004e, code lost:
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int zzb(byte[] bArr, long j, int i) {
        int i2;
        if (i >= 16) {
            i2 = 0;
            long j2 = j;
            while (true) {
                if (i2 >= i) {
                    i2 = i;
                    break;
                }
                long j3 = 1 + j2;
                if (zzfkq.zzb(bArr, j2) < 0) {
                    break;
                }
                i2++;
                j2 = j3;
            }
        } else {
            i2 = 0;
        }
        long j4 = i2 + j;
        int i3 = i - i2;
        while (true) {
            byte b = 0;
            long j5 = j4;
            while (true) {
                if (i3 <= 0) {
                    break;
                }
                long j6 = 1 + j5;
                b = zzfkq.zzb(bArr, j5);
                if (b < 0) {
                    j5 = j6;
                    break;
                }
                i3--;
                j5 = j6;
            }
            if (i3 != 0) {
                int i4 = i3 - 1;
                if (b >= -32) {
                    if (b >= -16) {
                        if (i4 >= 3) {
                            i3 = i4 - 3;
                            long j7 = 1 + j5;
                            byte zzb = zzfkq.zzb(bArr, j5);
                            if (zzb > -65 || (((b << FcCollection.MSG_SET_FC_RETURE_HOME_RESUME) + (zzb + FcCollection.MSG_SET_GRAVITATION_START)) >> 30) != 0) {
                                break;
                            }
                            long j8 = 1 + j7;
                            if (zzfkq.zzb(bArr, j7) > -65) {
                                break;
                            }
                            j4 = 1 + j8;
                            if (zzfkq.zzb(bArr, j8) > -65) {
                                break;
                            }
                        } else {
                            return zza(bArr, b, j5, i4);
                        }
                    } else if (i4 >= 2) {
                        i3 = i4 - 2;
                        long j9 = j5 + 1;
                        byte zzb2 = zzfkq.zzb(bArr, j5);
                        if (zzb2 > -65 || ((b == -32 && zzb2 < -96) || (b == -19 && zzb2 >= -96))) {
                            break;
                        }
                        j4 = 1 + j9;
                        if (zzfkq.zzb(bArr, j9) > -65) {
                            break;
                        }
                    } else {
                        return zza(bArr, b, j5, i4);
                    }
                } else if (i4 != 0) {
                    i3 = i4 - 1;
                    if (b < -62) {
                        break;
                    }
                    j4 = 1 + j5;
                    if (zzfkq.zzb(bArr, j5) > -65) {
                        break;
                    }
                } else {
                    return b;
                }
            } else {
                return 0;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.zzfkt
    public final int zzb(int i, byte[] bArr, int i2, int i3) {
        if ((i2 | i3 | (bArr.length - i3)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        long j = i2;
        return zzb(bArr, j, (int) (i3 - j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.zzfkt
    public final int zzb(CharSequence charSequence, byte[] bArr, int i, int i2) {
        long j;
        long j2 = i;
        long j3 = j2 + i2;
        int length = charSequence.length();
        if (length > i2 || bArr.length - i2 < i) {
            throw new ArrayIndexOutOfBoundsException(new StringBuilder(37).append("Failed writing ").append(charSequence.charAt(length - 1)).append(" at index ").append(i + i2).toString());
        }
        int i3 = 0;
        while (i3 < length) {
            char charAt = charSequence.charAt(i3);
            if (charAt >= 128) {
                break;
            }
            zzfkq.zza(bArr, j2, (byte) charAt);
            i3++;
            j2 = 1 + j2;
        }
        if (i3 == length) {
            return (int) j2;
        }
        long j4 = j2;
        while (i3 < length) {
            char charAt2 = charSequence.charAt(i3);
            if (charAt2 < 128 && j4 < j3) {
                j = 1 + j4;
                zzfkq.zza(bArr, j4, (byte) charAt2);
            } else if (charAt2 < 2048 && j4 <= j3 - 2) {
                long j5 = j4 + 1;
                zzfkq.zza(bArr, j4, (byte) ((charAt2 >>> 6) | 960));
                j = 1 + j5;
                zzfkq.zza(bArr, j5, (byte) ((charAt2 & '?') | 128));
            } else if ((charAt2 >= 55296 && 57343 >= charAt2) || j4 > j3 - 3) {
                if (j4 > j3 - 4) {
                    if (55296 <= charAt2 && charAt2 <= 57343 && (i3 + 1 == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i3 + 1)))) {
                        throw new zzfkv(i3, length);
                    }
                    throw new ArrayIndexOutOfBoundsException(new StringBuilder(46).append("Failed writing ").append(charAt2).append(" at index ").append(j4).toString());
                }
                if (i3 + 1 != length) {
                    i3++;
                    char charAt3 = charSequence.charAt(i3);
                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                        long j6 = 1 + j4;
                        zzfkq.zza(bArr, j4, (byte) ((codePoint >>> 18) | 240));
                        long j7 = 1 + j6;
                        zzfkq.zza(bArr, j6, (byte) (((codePoint >>> 12) & 63) | 128));
                        long j8 = j7 + 1;
                        zzfkq.zza(bArr, j7, (byte) (((codePoint >>> 6) & 63) | 128));
                        j = 1 + j8;
                        zzfkq.zza(bArr, j8, (byte) ((codePoint & 63) | 128));
                    }
                }
                throw new zzfkv(i3 - 1, length);
            } else {
                long j9 = 1 + j4;
                zzfkq.zza(bArr, j4, (byte) ((charAt2 >>> '\f') | 480));
                long j10 = 1 + j9;
                zzfkq.zza(bArr, j9, (byte) (((charAt2 >>> 6) & 63) | 128));
                j = 1 + j10;
                zzfkq.zza(bArr, j10, (byte) ((charAt2 & '?') | 128));
            }
            i3++;
            j4 = j;
        }
        return (int) j4;
    }
}
