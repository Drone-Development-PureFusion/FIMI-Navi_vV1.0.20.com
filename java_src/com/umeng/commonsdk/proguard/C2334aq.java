package com.umeng.commonsdk.proguard;

import java.util.BitSet;
/* compiled from: TTupleProtocol.java */
/* renamed from: com.umeng.commonsdk.proguard.aq */
/* loaded from: classes2.dex */
public final class C2334aq extends C2320ae {

    /* compiled from: TTupleProtocol.java */
    /* renamed from: com.umeng.commonsdk.proguard.aq$a */
    /* loaded from: classes2.dex */
    public static class C2335a implements AbstractC2330am {
        @Override // com.umeng.commonsdk.proguard.AbstractC2330am
        /* renamed from: a */
        public AbstractC2328ak mo727a(AbstractC2343ay abstractC2343ay) {
            return new C2334aq(abstractC2343ay);
        }
    }

    public C2334aq(AbstractC2343ay abstractC2343ay) {
        super(abstractC2343ay);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: D */
    public Class<? extends AbstractC2337as> mo732D() {
        return AbstractC2340av.class;
    }

    /* renamed from: a */
    public void m731a(BitSet bitSet, int i) throws C2373r {
        for (byte b : m728b(bitSet, i)) {
            a(b);
        }
    }

    /* renamed from: b */
    public BitSet m729b(int i) throws C2373r {
        int ceil = (int) Math.ceil(i / 8.0d);
        byte[] bArr = new byte[ceil];
        for (int i2 = 0; i2 < ceil; i2++) {
            bArr[i2] = u();
        }
        return m730a(bArr);
    }

    /* renamed from: a */
    public static BitSet m730a(byte[] bArr) {
        BitSet bitSet = new BitSet();
        for (int i = 0; i < bArr.length * 8; i++) {
            if ((bArr[(bArr.length - (i / 8)) - 1] & (1 << (i % 8))) > 0) {
                bitSet.set(i);
            }
        }
        return bitSet;
    }

    /* renamed from: b */
    public static byte[] m728b(BitSet bitSet, int i) {
        byte[] bArr = new byte[(int) Math.ceil(i / 8.0d)];
        for (int i2 = 0; i2 < bitSet.length(); i2++) {
            if (bitSet.get(i2)) {
                int length = (bArr.length - (i2 / 8)) - 1;
                bArr[length] = (byte) (bArr[length] | (1 << (i2 % 8)));
            }
        }
        return bArr;
    }
}
