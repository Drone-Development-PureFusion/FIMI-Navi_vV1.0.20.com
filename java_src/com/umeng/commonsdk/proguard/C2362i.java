package com.umeng.commonsdk.proguard;
/* compiled from: EncodingUtils.java */
/* renamed from: com.umeng.commonsdk.proguard.i */
/* loaded from: classes2.dex */
public class C2362i {
    /* renamed from: a */
    public static final void m616a(int i, byte[] bArr) {
        m615a(i, bArr, 0);
    }

    /* renamed from: a */
    public static final void m615a(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) ((i >> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
    }

    /* renamed from: a */
    public static final int m610a(byte[] bArr) {
        return m609a(bArr, 0);
    }

    /* renamed from: a */
    public static final int m609a(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8) | (bArr[i + 3] & 255);
    }

    /* renamed from: a */
    public static final boolean m620a(byte b, int i) {
        return m618a((int) b, i);
    }

    /* renamed from: a */
    public static final boolean m612a(short s, int i) {
        return m618a((int) s, i);
    }

    /* renamed from: a */
    public static final boolean m618a(int i, int i2) {
        return ((1 << i2) & i) != 0;
    }

    /* renamed from: a */
    public static final boolean m614a(long j, int i) {
        return ((1 << i) & j) != 0;
    }

    /* renamed from: b */
    public static final byte m608b(byte b, int i) {
        return (byte) m607b((int) b, i);
    }

    /* renamed from: b */
    public static final short m605b(short s, int i) {
        return (short) m607b((int) s, i);
    }

    /* renamed from: b */
    public static final int m607b(int i, int i2) {
        return ((1 << i2) ^ (-1)) & i;
    }

    /* renamed from: b */
    public static final long m606b(long j, int i) {
        return ((1 << i) ^ (-1)) & j;
    }

    /* renamed from: a */
    public static final byte m619a(byte b, int i, boolean z) {
        return (byte) m617a((int) b, i, z);
    }

    /* renamed from: a */
    public static final short m611a(short s, int i, boolean z) {
        return (short) m617a((int) s, i, z);
    }

    /* renamed from: a */
    public static final int m617a(int i, int i2, boolean z) {
        return z ? (1 << i2) | i : m607b(i, i2);
    }

    /* renamed from: a */
    public static final long m613a(long j, int i, boolean z) {
        return z ? (1 << i) | j : m606b(j, i);
    }
}
