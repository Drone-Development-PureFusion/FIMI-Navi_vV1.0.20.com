package com.umeng.commonsdk.proguard;

import com.fimi.kernel.connect.tcp.SocketOption;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
/* compiled from: TBinaryProtocol.java */
/* renamed from: com.umeng.commonsdk.proguard.ad */
/* loaded from: classes2.dex */
public class C2318ad extends AbstractC2328ak {

    /* renamed from: a */
    protected static final int f844a = -65536;

    /* renamed from: b */
    protected static final int f845b = -2147418112;

    /* renamed from: h */
    private static final C2333ap f846h = new C2333ap();

    /* renamed from: c */
    protected boolean f847c;

    /* renamed from: d */
    protected boolean f848d;

    /* renamed from: e */
    protected int f849e;

    /* renamed from: f */
    protected boolean f850f;

    /* renamed from: i */
    private byte[] f851i;

    /* renamed from: j */
    private byte[] f852j;

    /* renamed from: k */
    private byte[] f853k;

    /* renamed from: l */
    private byte[] f854l;

    /* renamed from: m */
    private byte[] f855m;

    /* renamed from: n */
    private byte[] f856n;

    /* renamed from: o */
    private byte[] f857o;

    /* renamed from: p */
    private byte[] f858p;

    /* compiled from: TBinaryProtocol.java */
    /* renamed from: com.umeng.commonsdk.proguard.ad$a */
    /* loaded from: classes2.dex */
    public static class C2319a implements AbstractC2330am {

        /* renamed from: a */
        protected boolean f859a;

        /* renamed from: b */
        protected boolean f860b;

        /* renamed from: c */
        protected int f861c;

        public C2319a() {
            this(false, true);
        }

        public C2319a(boolean z, boolean z2) {
            this(z, z2, 0);
        }

        public C2319a(boolean z, boolean z2, int i) {
            this.f859a = false;
            this.f860b = true;
            this.f859a = z;
            this.f860b = z2;
            this.f861c = i;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2330am
        /* renamed from: a */
        public AbstractC2328ak mo727a(AbstractC2343ay abstractC2343ay) {
            C2318ad c2318ad = new C2318ad(abstractC2343ay, this.f859a, this.f860b);
            if (this.f861c != 0) {
                c2318ad.m804c(this.f861c);
            }
            return c2318ad;
        }
    }

    public C2318ad(AbstractC2343ay abstractC2343ay) {
        this(abstractC2343ay, false, true);
    }

    public C2318ad(AbstractC2343ay abstractC2343ay, boolean z, boolean z2) {
        super(abstractC2343ay);
        this.f847c = false;
        this.f848d = true;
        this.f850f = false;
        this.f851i = new byte[1];
        this.f852j = new byte[2];
        this.f853k = new byte[4];
        this.f854l = new byte[8];
        this.f855m = new byte[1];
        this.f856n = new byte[2];
        this.f857o = new byte[4];
        this.f858p = new byte[8];
        this.f847c = z;
        this.f848d = z2;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo769a(C2326ai c2326ai) throws C2373r {
        if (this.f848d) {
            mo774a(f845b | c2326ai.f901b);
            mo766a(c2326ai.f900a);
            mo774a(c2326ai.f902c);
            return;
        }
        mo766a(c2326ai.f900a);
        mo776a(c2326ai.f901b);
        mo774a(c2326ai.f902c);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo777a() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo767a(C2333ap c2333ap) {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: b */
    public void mo762b() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo772a(C2323af c2323af) throws C2373r {
        mo776a(c2323af.f893b);
        mo764a(c2323af.f894c);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: c */
    public void mo761c() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: d */
    public void mo760d() throws C2373r {
        mo776a((byte) 0);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo770a(C2325ah c2325ah) throws C2373r {
        mo776a(c2325ah.f897a);
        mo776a(c2325ah.f898b);
        mo774a(c2325ah.f899c);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: e */
    public void mo759e() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo771a(C2324ag c2324ag) throws C2373r {
        mo776a(c2324ag.f895a);
        mo774a(c2324ag.f896b);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: f */
    public void mo758f() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo768a(C2332ao c2332ao) throws C2373r {
        mo776a(c2332ao.f917a);
        mo774a(c2332ao.f918b);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: g */
    public void mo757g() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo763a(boolean z) throws C2373r {
        mo776a(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo776a(byte b) throws C2373r {
        this.f851i[0] = b;
        this.f907g.mo718b(this.f851i, 0, 1);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo764a(short s) throws C2373r {
        this.f852j[0] = (byte) ((s >> 8) & 255);
        this.f852j[1] = (byte) (s & 255);
        this.f907g.mo718b(this.f852j, 0, 2);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo774a(int i) throws C2373r {
        this.f853k[0] = (byte) ((i >> 24) & 255);
        this.f853k[1] = (byte) ((i >> 16) & 255);
        this.f853k[2] = (byte) ((i >> 8) & 255);
        this.f853k[3] = (byte) (i & 255);
        this.f907g.mo718b(this.f853k, 0, 4);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo773a(long j) throws C2373r {
        this.f854l[0] = (byte) ((j >> 56) & 255);
        this.f854l[1] = (byte) ((j >> 48) & 255);
        this.f854l[2] = (byte) ((j >> 40) & 255);
        this.f854l[3] = (byte) ((j >> 32) & 255);
        this.f854l[4] = (byte) ((j >> 24) & 255);
        this.f854l[5] = (byte) ((j >> 16) & 255);
        this.f854l[6] = (byte) ((j >> 8) & 255);
        this.f854l[7] = (byte) (255 & j);
        this.f907g.mo718b(this.f854l, 0, 8);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo775a(double d) throws C2373r {
        mo773a(Double.doubleToLongBits(d));
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo766a(String str) throws C2373r {
        try {
            byte[] bytes = str.getBytes(SocketOption.DEFAULT_CHARSET);
            mo774a(bytes.length);
            this.f907g.mo718b(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException e) {
            throw new C2373r("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo765a(ByteBuffer byteBuffer) throws C2373r {
        int limit = byteBuffer.limit() - byteBuffer.position();
        mo774a(limit);
        this.f907g.mo718b(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), limit);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: h */
    public C2326ai mo756h() throws C2373r {
        int mo741w = mo741w();
        if (mo741w < 0) {
            if (((-65536) & mo741w) != f845b) {
                throw new C2329al(4, "Bad version in readMessageBegin");
            }
            return new C2326ai(mo738z(), (byte) (mo741w & 255), mo741w());
        } else if (this.f847c) {
            throw new C2329al(4, "Missing version in readMessageBegin, old client?");
        } else {
            return new C2326ai(m805b(mo741w), mo743u(), mo741w());
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: i */
    public void mo755i() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: j */
    public C2333ap mo754j() {
        return f846h;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: k */
    public void mo753k() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: l */
    public C2323af mo752l() throws C2373r {
        byte mo743u = mo743u();
        return new C2323af("", mo743u, mo743u == 0 ? (short) 0 : mo742v());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: m */
    public void mo751m() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: n */
    public C2325ah mo750n() throws C2373r {
        return new C2325ah(mo743u(), mo743u(), mo741w());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: o */
    public void mo749o() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: p */
    public C2324ag mo748p() throws C2373r {
        return new C2324ag(mo743u(), mo741w());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: q */
    public void mo747q() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: r */
    public C2332ao mo746r() throws C2373r {
        return new C2332ao(mo743u(), mo741w());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: s */
    public void mo745s() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: t */
    public boolean mo744t() throws C2373r {
        return mo743u() == 1;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: u */
    public byte mo743u() throws C2373r {
        if (this.f907g.mo712h() >= 1) {
            byte b = this.f907g.mo714f()[this.f907g.mo713g()];
            this.f907g.mo722a(1);
            return b;
        }
        m806a(this.f855m, 0, 1);
        return this.f855m[0];
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: v */
    public short mo742v() throws C2373r {
        int i = 0;
        byte[] bArr = this.f856n;
        if (this.f907g.mo712h() >= 2) {
            bArr = this.f907g.mo714f();
            i = this.f907g.mo713g();
            this.f907g.mo722a(2);
        } else {
            m806a(this.f856n, 0, 2);
        }
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: w */
    public int mo741w() throws C2373r {
        int i = 0;
        byte[] bArr = this.f857o;
        if (this.f907g.mo712h() >= 4) {
            bArr = this.f907g.mo714f();
            i = this.f907g.mo713g();
            this.f907g.mo722a(4);
        } else {
            m806a(this.f857o, 0, 4);
        }
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: x */
    public long mo740x() throws C2373r {
        int i = 0;
        byte[] bArr = this.f858p;
        if (this.f907g.mo712h() >= 8) {
            bArr = this.f907g.mo714f();
            i = this.f907g.mo713g();
            this.f907g.mo722a(8);
        } else {
            m806a(this.f858p, 0, 8);
        }
        return (bArr[i + 7] & 255) | ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: y */
    public double mo739y() throws C2373r {
        return Double.longBitsToDouble(mo740x());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: z */
    public String mo738z() throws C2373r {
        int mo741w = mo741w();
        if (this.f907g.mo712h() >= mo741w) {
            try {
                String str = new String(this.f907g.mo714f(), this.f907g.mo713g(), mo741w, SocketOption.DEFAULT_CHARSET);
                this.f907g.mo722a(mo741w);
                return str;
            } catch (UnsupportedEncodingException e) {
                throw new C2373r("JVM DOES NOT SUPPORT UTF-8");
            }
        }
        return m805b(mo741w);
    }

    /* renamed from: b */
    public String m805b(int i) throws C2373r {
        try {
            m803d(i);
            byte[] bArr = new byte[i];
            this.f907g.m715d(bArr, 0, i);
            return new String(bArr, SocketOption.DEFAULT_CHARSET);
        } catch (UnsupportedEncodingException e) {
            throw new C2373r("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: A */
    public ByteBuffer mo780A() throws C2373r {
        int mo741w = mo741w();
        m803d(mo741w);
        if (this.f907g.mo712h() >= mo741w) {
            ByteBuffer wrap = ByteBuffer.wrap(this.f907g.mo714f(), this.f907g.mo713g(), mo741w);
            this.f907g.mo722a(mo741w);
            return wrap;
        }
        byte[] bArr = new byte[mo741w];
        this.f907g.m715d(bArr, 0, mo741w);
        return ByteBuffer.wrap(bArr);
    }

    /* renamed from: a */
    private int m806a(byte[] bArr, int i, int i2) throws C2373r {
        m803d(i2);
        return this.f907g.m715d(bArr, i, i2);
    }

    /* renamed from: c */
    public void m804c(int i) {
        this.f849e = i;
        this.f850f = true;
    }

    /* renamed from: d */
    protected void m803d(int i) throws C2373r {
        if (i < 0) {
            throw new C2329al("Negative length: " + i);
        }
        if (this.f850f) {
            this.f849e -= i;
            if (this.f849e < 0) {
                throw new C2329al("Message length exceeded: " + i);
            }
        }
    }
}
