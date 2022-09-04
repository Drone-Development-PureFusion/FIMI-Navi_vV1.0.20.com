package com.umeng.commonsdk.proguard;

import com.fimi.kernel.connect.tcp.SocketOption;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
/* compiled from: TCompactProtocol.java */
/* renamed from: com.umeng.commonsdk.proguard.ae */
/* loaded from: classes2.dex */
public class C2320ae extends AbstractC2328ak {

    /* renamed from: d */
    private static final C2333ap f862d = new C2333ap("");

    /* renamed from: e */
    private static final C2323af f863e = new C2323af("", (byte) 0, 0);

    /* renamed from: f */
    private static final byte[] f864f = new byte[16];

    /* renamed from: h */
    private static final byte f865h = -126;

    /* renamed from: i */
    private static final byte f866i = 1;

    /* renamed from: j */
    private static final byte f867j = 31;

    /* renamed from: k */
    private static final byte f868k = -32;

    /* renamed from: l */
    private static final int f869l = 5;

    /* renamed from: a */
    byte[] f870a;

    /* renamed from: b */
    byte[] f871b;

    /* renamed from: c */
    byte[] f872c;

    /* renamed from: m */
    private C2363j f873m;

    /* renamed from: n */
    private short f874n;

    /* renamed from: o */
    private C2323af f875o;

    /* renamed from: p */
    private Boolean f876p;

    /* renamed from: q */
    private final long f877q;

    /* renamed from: r */
    private byte[] f878r;

    static {
        f864f[0] = 0;
        f864f[2] = 1;
        f864f[3] = 3;
        f864f[6] = 4;
        f864f[8] = 5;
        f864f[10] = 6;
        f864f[4] = 7;
        f864f[11] = 8;
        f864f[15] = 9;
        f864f[14] = 10;
        f864f[13] = 11;
        f864f[12] = 12;
    }

    /* compiled from: TCompactProtocol.java */
    /* renamed from: com.umeng.commonsdk.proguard.ae$a */
    /* loaded from: classes2.dex */
    public static class C2321a implements AbstractC2330am {

        /* renamed from: a */
        private final long f879a;

        public C2321a() {
            this.f879a = -1L;
        }

        public C2321a(int i) {
            this.f879a = i;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2330am
        /* renamed from: a */
        public AbstractC2328ak mo727a(AbstractC2343ay abstractC2343ay) {
            return new C2320ae(abstractC2343ay, this.f879a);
        }
    }

    /* compiled from: TCompactProtocol.java */
    /* renamed from: com.umeng.commonsdk.proguard.ae$b */
    /* loaded from: classes2.dex */
    private static class C2322b {

        /* renamed from: a */
        public static final byte f880a = 1;

        /* renamed from: b */
        public static final byte f881b = 2;

        /* renamed from: c */
        public static final byte f882c = 3;

        /* renamed from: d */
        public static final byte f883d = 4;

        /* renamed from: e */
        public static final byte f884e = 5;

        /* renamed from: f */
        public static final byte f885f = 6;

        /* renamed from: g */
        public static final byte f886g = 7;

        /* renamed from: h */
        public static final byte f887h = 8;

        /* renamed from: i */
        public static final byte f888i = 9;

        /* renamed from: j */
        public static final byte f889j = 10;

        /* renamed from: k */
        public static final byte f890k = 11;

        /* renamed from: l */
        public static final byte f891l = 12;

        private C2322b() {
        }
    }

    public C2320ae(AbstractC2343ay abstractC2343ay, long j) {
        super(abstractC2343ay);
        this.f873m = new C2363j(15);
        this.f874n = (short) 0;
        this.f875o = null;
        this.f876p = null;
        this.f870a = new byte[5];
        this.f871b = new byte[10];
        this.f878r = new byte[1];
        this.f872c = new byte[1];
        this.f877q = j;
    }

    public C2320ae(AbstractC2343ay abstractC2343ay) {
        this(abstractC2343ay, -1L);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: B */
    public void mo779B() {
        this.f873m.m601c();
        this.f874n = (short) 0;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo769a(C2326ai c2326ai) throws C2373r {
        m795b(f865h);
        m788d(((c2326ai.f901b << 5) & (-32)) | 1);
        m794b(c2326ai.f902c);
        mo766a(c2326ai.f900a);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo767a(C2333ap c2333ap) throws C2373r {
        this.f873m.m603a(this.f874n);
        this.f874n = (short) 0;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: b */
    public void mo762b() throws C2373r {
        this.f874n = this.f873m.m604a();
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo772a(C2323af c2323af) throws C2373r {
        if (c2323af.f893b == 2) {
            this.f875o = c2323af;
        } else {
            m798a(c2323af, (byte) -1);
        }
    }

    /* renamed from: a */
    private void m798a(C2323af c2323af, byte b) throws C2373r {
        if (b == -1) {
            b = m786e(c2323af.f893b);
        }
        if (c2323af.f894c > this.f874n && c2323af.f894c - this.f874n <= 15) {
            m788d(((c2323af.f894c - this.f874n) << 4) | b);
        } else {
            m795b(b);
            mo764a(c2323af.f894c);
        }
        this.f874n = c2323af.f894c;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: d */
    public void mo760d() throws C2373r {
        m795b((byte) 0);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo770a(C2325ah c2325ah) throws C2373r {
        if (c2325ah.f899c == 0) {
            m788d(0);
            return;
        }
        m794b(c2325ah.f899c);
        m788d((m786e(c2325ah.f897a) << 4) | m786e(c2325ah.f898b));
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo771a(C2324ag c2324ag) throws C2373r {
        m800a(c2324ag.f895a, c2324ag.f896b);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo768a(C2332ao c2332ao) throws C2373r {
        m800a(c2332ao.f917a, c2332ao.f918b);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo763a(boolean z) throws C2373r {
        byte b = 1;
        if (this.f875o != null) {
            C2323af c2323af = this.f875o;
            if (!z) {
                b = 2;
            }
            m798a(c2323af, b);
            this.f875o = null;
            return;
        }
        if (!z) {
            b = 2;
        }
        m795b(b);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo776a(byte b) throws C2373r {
        m795b(b);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo764a(short s) throws C2373r {
        m794b(m791c((int) s));
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo774a(int i) throws C2373r {
        m794b(m791c(i));
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo773a(long j) throws C2373r {
        m793b(m790c(j));
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo775a(double d) throws C2373r {
        byte[] bArr = {0, 0, 0, 0, 0, 0, 0, 0};
        m799a(Double.doubleToLongBits(d), bArr, 0);
        this.f907g.m719b(bArr);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo766a(String str) throws C2373r {
        try {
            byte[] bytes = str.getBytes(SocketOption.DEFAULT_CHARSET);
            m796a(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException e) {
            throw new C2373r("UTF-8 not supported!");
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo765a(ByteBuffer byteBuffer) throws C2373r {
        m796a(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.limit() - byteBuffer.position());
    }

    /* renamed from: a */
    private void m796a(byte[] bArr, int i, int i2) throws C2373r {
        m794b(i2);
        this.f907g.mo718b(bArr, i, i2);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: a */
    public void mo777a() throws C2373r {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: e */
    public void mo759e() throws C2373r {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: f */
    public void mo758f() throws C2373r {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: g */
    public void mo757g() throws C2373r {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: c */
    public void mo761c() throws C2373r {
    }

    /* renamed from: a */
    protected void m800a(byte b, int i) throws C2373r {
        if (i <= 14) {
            m788d((i << 4) | m786e(b));
            return;
        }
        m788d(m786e(b) | 240);
        m794b(i);
    }

    /* renamed from: b */
    private void m794b(int i) throws C2373r {
        int i2 = 0;
        while ((i & (-128)) != 0) {
            this.f870a[i2] = (byte) ((i & 127) | 128);
            i >>>= 7;
            i2++;
        }
        this.f870a[i2] = (byte) i;
        this.f907g.mo718b(this.f870a, 0, i2 + 1);
    }

    /* renamed from: b */
    private void m793b(long j) throws C2373r {
        int i = 0;
        while (((-128) & j) != 0) {
            this.f871b[i] = (byte) ((127 & j) | 128);
            j >>>= 7;
            i++;
        }
        this.f871b[i] = (byte) j;
        this.f907g.mo718b(this.f871b, 0, i + 1);
    }

    /* renamed from: c */
    private long m790c(long j) {
        return (j << 1) ^ (j >> 63);
    }

    /* renamed from: c */
    private int m791c(int i) {
        return (i << 1) ^ (i >> 31);
    }

    /* renamed from: a */
    private void m799a(long j, byte[] bArr, int i) {
        bArr[i + 0] = (byte) (j & 255);
        bArr[i + 1] = (byte) ((j >> 8) & 255);
        bArr[i + 2] = (byte) ((j >> 16) & 255);
        bArr[i + 3] = (byte) ((j >> 24) & 255);
        bArr[i + 4] = (byte) ((j >> 32) & 255);
        bArr[i + 5] = (byte) ((j >> 40) & 255);
        bArr[i + 6] = (byte) ((j >> 48) & 255);
        bArr[i + 7] = (byte) ((j >> 56) & 255);
    }

    /* renamed from: b */
    private void m795b(byte b) throws C2373r {
        this.f878r[0] = b;
        this.f907g.m719b(this.f878r);
    }

    /* renamed from: d */
    private void m788d(int i) throws C2373r {
        m795b((byte) i);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: h */
    public C2326ai mo756h() throws C2373r {
        byte mo743u = mo743u();
        if (mo743u != -126) {
            throw new C2329al("Expected protocol id " + Integer.toHexString(-126) + " but got " + Integer.toHexString(mo743u));
        }
        byte mo743u2 = mo743u();
        byte b = (byte) (mo743u2 & 31);
        if (b != 1) {
            throw new C2329al("Expected version 1 but got " + ((int) b));
        }
        int m802E = m802E();
        return new C2326ai(mo738z(), (byte) ((mo743u2 >> 5) & 3), m802E);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: j */
    public C2333ap mo754j() throws C2373r {
        this.f873m.m603a(this.f874n);
        this.f874n = (short) 0;
        return f862d;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: k */
    public void mo753k() throws C2373r {
        this.f874n = this.f873m.m604a();
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: l */
    public C2323af mo752l() throws C2373r {
        short s;
        byte mo743u = mo743u();
        if (mo743u == 0) {
            return f863e;
        }
        short s2 = (short) ((mo743u & 240) >> 4);
        if (s2 == 0) {
            s = mo742v();
        } else {
            s = (short) (s2 + this.f874n);
        }
        C2323af c2323af = new C2323af("", m789d((byte) (mo743u & 15)), s);
        if (m792c(mo743u)) {
            this.f876p = ((byte) (mo743u & 15)) == 1 ? Boolean.TRUE : Boolean.FALSE;
        }
        this.f874n = c2323af.f894c;
        return c2323af;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: n */
    public C2325ah mo750n() throws C2373r {
        int m802E = m802E();
        byte mo743u = m802E == 0 ? (byte) 0 : mo743u();
        return new C2325ah(m789d((byte) (mo743u >> 4)), m789d((byte) (mo743u & 15)), m802E);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: p */
    public C2324ag mo748p() throws C2373r {
        byte mo743u = mo743u();
        int i = (mo743u >> 4) & 15;
        if (i == 15) {
            i = m802E();
        }
        return new C2324ag(m789d(mo743u), i);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: r */
    public C2332ao mo746r() throws C2373r {
        return new C2332ao(mo748p());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: t */
    public boolean mo744t() throws C2373r {
        if (this.f876p == null) {
            return mo743u() == 1;
        }
        boolean booleanValue = this.f876p.booleanValue();
        this.f876p = null;
        return booleanValue;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: u */
    public byte mo743u() throws C2373r {
        if (this.f907g.mo712h() > 0) {
            byte b = this.f907g.mo714f()[this.f907g.mo713g()];
            this.f907g.mo722a(1);
            return b;
        }
        this.f907g.m715d(this.f872c, 0, 1);
        return this.f872c[0];
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: v */
    public short mo742v() throws C2373r {
        return (short) m783g(m802E());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: w */
    public int mo741w() throws C2373r {
        return m783g(m802E());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: x */
    public long mo740x() throws C2373r {
        return m787d(m801F());
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: y */
    public double mo739y() throws C2373r {
        byte[] bArr = new byte[8];
        this.f907g.m715d(bArr, 0, 8);
        return Double.longBitsToDouble(m797a(bArr));
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: z */
    public String mo738z() throws C2373r {
        String str;
        int m802E = m802E();
        m784f(m802E);
        if (m802E == 0) {
            return "";
        }
        try {
            if (this.f907g.mo712h() >= m802E) {
                str = new String(this.f907g.mo714f(), this.f907g.mo713g(), m802E, SocketOption.DEFAULT_CHARSET);
                this.f907g.mo722a(m802E);
            } else {
                str = new String(m785e(m802E), SocketOption.DEFAULT_CHARSET);
            }
            return str;
        } catch (UnsupportedEncodingException e) {
            throw new C2373r("UTF-8 not supported!");
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: A */
    public ByteBuffer mo780A() throws C2373r {
        int m802E = m802E();
        m784f(m802E);
        if (m802E == 0) {
            return ByteBuffer.wrap(new byte[0]);
        }
        byte[] bArr = new byte[m802E];
        this.f907g.m715d(bArr, 0, m802E);
        return ByteBuffer.wrap(bArr);
    }

    /* renamed from: e */
    private byte[] m785e(int i) throws C2373r {
        if (i == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i];
        this.f907g.m715d(bArr, 0, i);
        return bArr;
    }

    /* renamed from: f */
    private void m784f(int i) throws C2329al {
        if (i < 0) {
            throw new C2329al("Negative length: " + i);
        }
        if (this.f877q != -1 && i > this.f877q) {
            throw new C2329al("Length exceeded max allowed: " + i);
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: i */
    public void mo755i() throws C2373r {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: m */
    public void mo751m() throws C2373r {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: o */
    public void mo749o() throws C2373r {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: q */
    public void mo747q() throws C2373r {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2328ak
    /* renamed from: s */
    public void mo745s() throws C2373r {
    }

    /* renamed from: E */
    private int m802E() throws C2373r {
        if (this.f907g.mo712h() >= 5) {
            byte[] mo714f = this.f907g.mo714f();
            int mo713g = this.f907g.mo713g();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                byte b = mo714f[mo713g + i];
                i3 |= (b & Byte.MAX_VALUE) << i2;
                if ((b & 128) == 128) {
                    i++;
                    i2 += 7;
                } else {
                    this.f907g.mo722a(i + 1);
                    return i3;
                }
            }
        } else {
            int i4 = 0;
            int i5 = 0;
            while (true) {
                byte mo743u = mo743u();
                i5 |= (mo743u & Byte.MAX_VALUE) << i4;
                if ((mo743u & 128) != 128) {
                    return i5;
                }
                i4 += 7;
            }
        }
    }

    /* renamed from: F */
    private long m801F() throws C2373r {
        byte mo743u;
        byte b;
        int i = 0;
        long j = 0;
        if (this.f907g.mo712h() >= 10) {
            byte[] mo714f = this.f907g.mo714f();
            int mo713g = this.f907g.mo713g();
            int i2 = 0;
            while (true) {
                int i3 = i;
                j |= (b & Byte.MAX_VALUE) << i3;
                if ((mo714f[mo713g + i2] & 128) != 128) {
                    break;
                }
                i = i3 + 7;
                i2++;
            }
            this.f907g.mo722a(i2 + 1);
        } else {
            while (true) {
                j |= (mo743u & Byte.MAX_VALUE) << i;
                if ((mo743u() & 128) != 128) {
                    break;
                }
                i += 7;
            }
        }
        return j;
    }

    /* renamed from: g */
    private int m783g(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    /* renamed from: d */
    private long m787d(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    /* renamed from: a */
    private long m797a(byte[] bArr) {
        return ((bArr[7] & 255) << 56) | ((bArr[6] & 255) << 48) | ((bArr[5] & 255) << 40) | ((bArr[4] & 255) << 32) | ((bArr[3] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[1] & 255) << 8) | (bArr[0] & 255);
    }

    /* renamed from: c */
    private boolean m792c(byte b) {
        int i = b & 15;
        return i == 1 || i == 2;
    }

    /* renamed from: d */
    private byte m789d(byte b) throws C2329al {
        switch ((byte) (b & 15)) {
            case 0:
                return (byte) 0;
            case 1:
            case 2:
                return (byte) 2;
            case 3:
                return (byte) 3;
            case 4:
                return (byte) 6;
            case 5:
                return (byte) 8;
            case 6:
                return (byte) 10;
            case 7:
                return (byte) 4;
            case 8:
                return (byte) 11;
            case 9:
                return (byte) 15;
            case 10:
                return (byte) 14;
            case 11:
                return (byte) 13;
            case 12:
                return (byte) 12;
            default:
                throw new C2329al("don't know what type: " + ((int) ((byte) (b & 15))));
        }
    }

    /* renamed from: e */
    private byte m786e(byte b) {
        return f864f[b];
    }
}
