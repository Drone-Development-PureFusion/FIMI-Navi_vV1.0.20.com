package com.umeng.commonsdk.proguard;

import com.facebook.internal.ServerProtocol;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* compiled from: UMEnvelope.java */
/* renamed from: com.umeng.commonsdk.proguard.h */
/* loaded from: classes2.dex */
public class C2355h implements AbstractC2365l<C2355h, EnumC2361e>, Serializable, Cloneable {

    /* renamed from: A */
    private static final int f1041A = 2;

    /* renamed from: B */
    private static final int f1042B = 3;

    /* renamed from: k */
    public static final Map<EnumC2361e, C2384x> f1043k;

    /* renamed from: l */
    private static final long f1044l = 420342210744516016L;

    /* renamed from: m */
    private static final C2333ap f1045m = new C2333ap("UMEnvelope");

    /* renamed from: n */
    private static final C2323af f1046n = new C2323af(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, (byte) 11, 1);

    /* renamed from: o */
    private static final C2323af f1047o = new C2323af("address", (byte) 11, 2);

    /* renamed from: p */
    private static final C2323af f1048p = new C2323af("signature", (byte) 11, 3);

    /* renamed from: q */
    private static final C2323af f1049q = new C2323af("serial_num", (byte) 8, 4);

    /* renamed from: r */
    private static final C2323af f1050r = new C2323af("ts_secs", (byte) 8, 5);

    /* renamed from: s */
    private static final C2323af f1051s = new C2323af("length", (byte) 8, 6);

    /* renamed from: t */
    private static final C2323af f1052t = new C2323af("entity", (byte) 11, 7);

    /* renamed from: u */
    private static final C2323af f1053u = new C2323af("guid", (byte) 11, 8);

    /* renamed from: v */
    private static final C2323af f1054v = new C2323af("checksum", (byte) 11, 9);

    /* renamed from: w */
    private static final C2323af f1055w = new C2323af("codex", (byte) 8, 10);

    /* renamed from: x */
    private static final Map<Class<? extends AbstractC2337as>, AbstractC2338at> f1056x = new HashMap();

    /* renamed from: y */
    private static final int f1057y = 0;

    /* renamed from: z */
    private static final int f1058z = 1;

    /* renamed from: C */
    private byte f1059C;

    /* renamed from: D */
    private EnumC2361e[] f1060D;

    /* renamed from: a */
    public String f1061a;

    /* renamed from: b */
    public String f1062b;

    /* renamed from: c */
    public String f1063c;

    /* renamed from: d */
    public int f1064d;

    /* renamed from: e */
    public int f1065e;

    /* renamed from: f */
    public int f1066f;

    /* renamed from: g */
    public ByteBuffer f1067g;

    /* renamed from: h */
    public String f1068h;

    /* renamed from: i */
    public String f1069i;

    /* renamed from: j */
    public int f1070j;

    static {
        f1056x.put(AbstractC2339au.class, new C2358b());
        f1056x.put(AbstractC2340av.class, new C2360d());
        EnumMap enumMap = new EnumMap(EnumC2361e.class);
        enumMap.put((EnumMap) EnumC2361e.VERSION, (EnumC2361e) new C2384x(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, (byte) 1, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2361e.ADDRESS, (EnumC2361e) new C2384x("address", (byte) 1, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2361e.SIGNATURE, (EnumC2361e) new C2384x("signature", (byte) 1, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2361e.SERIAL_NUM, (EnumC2361e) new C2384x("serial_num", (byte) 1, new C2385y((byte) 8)));
        enumMap.put((EnumMap) EnumC2361e.TS_SECS, (EnumC2361e) new C2384x("ts_secs", (byte) 1, new C2385y((byte) 8)));
        enumMap.put((EnumMap) EnumC2361e.LENGTH, (EnumC2361e) new C2384x("length", (byte) 1, new C2385y((byte) 8)));
        enumMap.put((EnumMap) EnumC2361e.ENTITY, (EnumC2361e) new C2384x("entity", (byte) 1, new C2385y((byte) 11, true)));
        enumMap.put((EnumMap) EnumC2361e.GUID, (EnumC2361e) new C2384x("guid", (byte) 1, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2361e.CHECKSUM, (EnumC2361e) new C2384x("checksum", (byte) 1, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2361e.CODEX, (EnumC2361e) new C2384x("codex", (byte) 2, new C2385y((byte) 8)));
        f1043k = Collections.unmodifiableMap(enumMap);
        C2384x.m526a(C2355h.class, f1043k);
    }

    /* compiled from: UMEnvelope.java */
    /* renamed from: com.umeng.commonsdk.proguard.h$e */
    /* loaded from: classes2.dex */
    public enum EnumC2361e implements AbstractC2374s {
        VERSION(1, ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION),
        ADDRESS(2, "address"),
        SIGNATURE(3, "signature"),
        SERIAL_NUM(4, "serial_num"),
        TS_SECS(5, "ts_secs"),
        LENGTH(6, "length"),
        ENTITY(7, "entity"),
        GUID(8, "guid"),
        CHECKSUM(9, "checksum"),
        CODEX(10, "codex");
        

        /* renamed from: k */
        private static final Map<String, EnumC2361e> f1081k = new HashMap();

        /* renamed from: l */
        private final short f1083l;

        /* renamed from: m */
        private final String f1084m;

        static {
            Iterator it = EnumSet.allOf(EnumC2361e.class).iterator();
            while (it.hasNext()) {
                EnumC2361e enumC2361e = (EnumC2361e) it.next();
                f1081k.put(enumC2361e.mo38b(), enumC2361e);
            }
        }

        /* renamed from: a */
        public static EnumC2361e m623a(int i) {
            switch (i) {
                case 1:
                    return VERSION;
                case 2:
                    return ADDRESS;
                case 3:
                    return SIGNATURE;
                case 4:
                    return SERIAL_NUM;
                case 5:
                    return TS_SECS;
                case 6:
                    return LENGTH;
                case 7:
                    return ENTITY;
                case 8:
                    return GUID;
                case 9:
                    return CHECKSUM;
                case 10:
                    return CODEX;
                default:
                    return null;
            }
        }

        /* renamed from: b */
        public static EnumC2361e m621b(int i) {
            EnumC2361e m623a = m623a(i);
            if (m623a == null) {
                throw new IllegalArgumentException("Field " + i + " doesn't exist!");
            }
            return m623a;
        }

        /* renamed from: a */
        public static EnumC2361e m622a(String str) {
            return f1081k.get(str);
        }

        EnumC2361e(short s, String str) {
            this.f1083l = s;
            this.f1084m = str;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: a */
        public short mo41a() {
            return this.f1083l;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: b */
        public String mo38b() {
            return this.f1084m;
        }
    }

    public C2355h() {
        this.f1059C = (byte) 0;
        this.f1060D = new EnumC2361e[]{EnumC2361e.CODEX};
    }

    public C2355h(String str, String str2, String str3, int i, int i2, int i3, ByteBuffer byteBuffer, String str4, String str5) {
        this();
        this.f1061a = str;
        this.f1062b = str2;
        this.f1063c = str3;
        this.f1064d = i;
        m660d(true);
        this.f1065e = i2;
        m656e(true);
        this.f1066f = i3;
        m654f(true);
        this.f1067g = byteBuffer;
        this.f1068h = str4;
        this.f1069i = str5;
    }

    public C2355h(C2355h c2355h) {
        this.f1059C = (byte) 0;
        this.f1060D = new EnumC2361e[]{EnumC2361e.CODEX};
        this.f1059C = c2355h.f1059C;
        if (c2355h.m663d()) {
            this.f1061a = c2355h.f1061a;
        }
        if (c2355h.m653g()) {
            this.f1062b = c2355h.f1062b;
        }
        if (c2355h.m647j()) {
            this.f1063c = c2355h.f1063c;
        }
        this.f1064d = c2355h.f1064d;
        this.f1065e = c2355h.f1065e;
        this.f1066f = c2355h.f1066f;
        if (c2355h.m633w()) {
            this.f1067g = C2366m.m576d(c2355h.f1067g);
        }
        if (c2355h.m630z()) {
            this.f1068h = c2355h.f1068h;
        }
        if (c2355h.m695C()) {
            this.f1069i = c2355h.f1069i;
        }
        this.f1070j = c2355h.f1070j;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    /* renamed from: a */
    public C2355h deepCopy() {
        return new C2355h(this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void clear() {
        this.f1061a = null;
        this.f1062b = null;
        this.f1063c = null;
        m660d(false);
        this.f1064d = 0;
        m656e(false);
        this.f1065e = 0;
        m654f(false);
        this.f1066f = 0;
        this.f1067g = null;
        this.f1068h = null;
        this.f1069i = null;
        m646j(false);
        this.f1070j = 0;
    }

    /* renamed from: b */
    public String m671b() {
        return this.f1061a;
    }

    /* renamed from: a */
    public C2355h m675a(String str) {
        this.f1061a = str;
        return this;
    }

    /* renamed from: c */
    public void m667c() {
        this.f1061a = null;
    }

    /* renamed from: d */
    public boolean m663d() {
        return this.f1061a != null;
    }

    /* renamed from: a */
    public void m673a(boolean z) {
        if (!z) {
            this.f1061a = null;
        }
    }

    /* renamed from: e */
    public String m659e() {
        return this.f1062b;
    }

    /* renamed from: b */
    public C2355h m669b(String str) {
        this.f1062b = str;
        return this;
    }

    /* renamed from: f */
    public void m655f() {
        this.f1062b = null;
    }

    /* renamed from: g */
    public boolean m653g() {
        return this.f1062b != null;
    }

    /* renamed from: b */
    public void m668b(boolean z) {
        if (!z) {
            this.f1062b = null;
        }
    }

    /* renamed from: h */
    public String m651h() {
        return this.f1063c;
    }

    /* renamed from: c */
    public C2355h m665c(String str) {
        this.f1063c = str;
        return this;
    }

    /* renamed from: i */
    public void m649i() {
        this.f1063c = null;
    }

    /* renamed from: j */
    public boolean m647j() {
        return this.f1063c != null;
    }

    /* renamed from: c */
    public void m664c(boolean z) {
        if (!z) {
            this.f1063c = null;
        }
    }

    /* renamed from: k */
    public int m645k() {
        return this.f1064d;
    }

    /* renamed from: a */
    public C2355h m678a(int i) {
        this.f1064d = i;
        m660d(true);
        return this;
    }

    /* renamed from: l */
    public void m644l() {
        this.f1059C = C2362i.m608b(this.f1059C, 0);
    }

    /* renamed from: m */
    public boolean m643m() {
        return C2362i.m620a(this.f1059C, 0);
    }

    /* renamed from: d */
    public void m660d(boolean z) {
        this.f1059C = C2362i.m619a(this.f1059C, 0, z);
    }

    /* renamed from: n */
    public int m642n() {
        return this.f1065e;
    }

    /* renamed from: b */
    public C2355h m670b(int i) {
        this.f1065e = i;
        m656e(true);
        return this;
    }

    /* renamed from: o */
    public void m641o() {
        this.f1059C = C2362i.m608b(this.f1059C, 1);
    }

    /* renamed from: p */
    public boolean m640p() {
        return C2362i.m620a(this.f1059C, 1);
    }

    /* renamed from: e */
    public void m656e(boolean z) {
        this.f1059C = C2362i.m619a(this.f1059C, 1, z);
    }

    /* renamed from: q */
    public int m639q() {
        return this.f1066f;
    }

    /* renamed from: c */
    public C2355h m666c(int i) {
        this.f1066f = i;
        m654f(true);
        return this;
    }

    /* renamed from: r */
    public void m638r() {
        this.f1059C = C2362i.m608b(this.f1059C, 2);
    }

    /* renamed from: s */
    public boolean m637s() {
        return C2362i.m620a(this.f1059C, 2);
    }

    /* renamed from: f */
    public void m654f(boolean z) {
        this.f1059C = C2362i.m619a(this.f1059C, 2, z);
    }

    /* renamed from: t */
    public byte[] m636t() {
        m674a(C2366m.m577c(this.f1067g));
        if (this.f1067g == null) {
            return null;
        }
        return this.f1067g.array();
    }

    /* renamed from: u */
    public ByteBuffer m635u() {
        return this.f1067g;
    }

    /* renamed from: a */
    public C2355h m672a(byte[] bArr) {
        m674a(bArr == null ? null : ByteBuffer.wrap(bArr));
        return this;
    }

    /* renamed from: a */
    public C2355h m674a(ByteBuffer byteBuffer) {
        this.f1067g = byteBuffer;
        return this;
    }

    /* renamed from: v */
    public void m634v() {
        this.f1067g = null;
    }

    /* renamed from: w */
    public boolean m633w() {
        return this.f1067g != null;
    }

    /* renamed from: g */
    public void m652g(boolean z) {
        if (!z) {
            this.f1067g = null;
        }
    }

    /* renamed from: x */
    public String m632x() {
        return this.f1068h;
    }

    /* renamed from: d */
    public C2355h m661d(String str) {
        this.f1068h = str;
        return this;
    }

    /* renamed from: y */
    public void m631y() {
        this.f1068h = null;
    }

    /* renamed from: z */
    public boolean m630z() {
        return this.f1068h != null;
    }

    /* renamed from: h */
    public void m650h(boolean z) {
        if (!z) {
            this.f1068h = null;
        }
    }

    /* renamed from: A */
    public String m697A() {
        return this.f1069i;
    }

    /* renamed from: e */
    public C2355h m657e(String str) {
        this.f1069i = str;
        return this;
    }

    /* renamed from: B */
    public void m696B() {
        this.f1069i = null;
    }

    /* renamed from: C */
    public boolean m695C() {
        return this.f1069i != null;
    }

    /* renamed from: i */
    public void m648i(boolean z) {
        if (!z) {
            this.f1069i = null;
        }
    }

    /* renamed from: D */
    public int m694D() {
        return this.f1070j;
    }

    /* renamed from: d */
    public C2355h m662d(int i) {
        this.f1070j = i;
        m646j(true);
        return this;
    }

    /* renamed from: E */
    public void m693E() {
        this.f1059C = C2362i.m608b(this.f1059C, 3);
    }

    /* renamed from: F */
    public boolean m692F() {
        return C2362i.m620a(this.f1059C, 3);
    }

    /* renamed from: j */
    public void m646j(boolean z) {
        this.f1059C = C2362i.m619a(this.f1059C, 3, z);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    /* renamed from: e */
    public EnumC2361e fieldForId(int i) {
        return EnumC2361e.m623a(i);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void read(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1056x.get(abstractC2328ak.mo732D()).mo42b().mo45b(abstractC2328ak, this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void write(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1056x.get(abstractC2328ak.mo732D()).mo42b().mo47a(abstractC2328ak, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UMEnvelope(");
        sb.append("version:");
        if (this.f1061a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1061a);
        }
        sb.append(", ");
        sb.append("address:");
        if (this.f1062b == null) {
            sb.append("null");
        } else {
            sb.append(this.f1062b);
        }
        sb.append(", ");
        sb.append("signature:");
        if (this.f1063c == null) {
            sb.append("null");
        } else {
            sb.append(this.f1063c);
        }
        sb.append(", ");
        sb.append("serial_num:");
        sb.append(this.f1064d);
        sb.append(", ");
        sb.append("ts_secs:");
        sb.append(this.f1065e);
        sb.append(", ");
        sb.append("length:");
        sb.append(this.f1066f);
        sb.append(", ");
        sb.append("entity:");
        if (this.f1067g == null) {
            sb.append("null");
        } else {
            C2366m.m587a(this.f1067g, sb);
        }
        sb.append(", ");
        sb.append("guid:");
        if (this.f1068h == null) {
            sb.append("null");
        } else {
            sb.append(this.f1068h);
        }
        sb.append(", ");
        sb.append("checksum:");
        if (this.f1069i == null) {
            sb.append("null");
        } else {
            sb.append(this.f1069i);
        }
        if (m692F()) {
            sb.append(", ");
            sb.append("codex:");
            sb.append(this.f1070j);
        }
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: G */
    public void m691G() throws C2373r {
        if (this.f1061a == null) {
            throw new C2329al("Required field 'version' was not present! Struct: " + toString());
        }
        if (this.f1062b == null) {
            throw new C2329al("Required field 'address' was not present! Struct: " + toString());
        }
        if (this.f1063c == null) {
            throw new C2329al("Required field 'signature' was not present! Struct: " + toString());
        }
        if (this.f1067g == null) {
            throw new C2329al("Required field 'entity' was not present! Struct: " + toString());
        }
        if (this.f1068h == null) {
            throw new C2329al("Required field 'guid' was not present! Struct: " + toString());
        }
        if (this.f1069i == null) {
            throw new C2329al("Required field 'checksum' was not present! Struct: " + toString());
        }
    }

    /* renamed from: a */
    private void m676a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2320ae(new C2341aw(objectOutputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    /* renamed from: a */
    private void m677a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f1059C = (byte) 0;
            read(new C2320ae(new C2341aw(objectInputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    /* compiled from: UMEnvelope.java */
    /* renamed from: com.umeng.commonsdk.proguard.h$b */
    /* loaded from: classes2.dex */
    private static class C2358b implements AbstractC2338at {
        private C2358b() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2357a mo42b() {
            return new C2357a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UMEnvelope.java */
    /* renamed from: com.umeng.commonsdk.proguard.h$a */
    /* loaded from: classes2.dex */
    public static class C2357a extends AbstractC2339au<C2355h> {
        private C2357a() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo45b(AbstractC2328ak abstractC2328ak, C2355h c2355h) throws C2373r {
            abstractC2328ak.mo754j();
            while (true) {
                C2323af mo752l = abstractC2328ak.mo752l();
                if (mo752l.f893b != 0) {
                    switch (mo752l.f894c) {
                        case 1:
                            if (mo752l.f893b == 11) {
                                c2355h.f1061a = abstractC2328ak.mo738z();
                                c2355h.m673a(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 2:
                            if (mo752l.f893b == 11) {
                                c2355h.f1062b = abstractC2328ak.mo738z();
                                c2355h.m668b(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 3:
                            if (mo752l.f893b == 11) {
                                c2355h.f1063c = abstractC2328ak.mo738z();
                                c2355h.m664c(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 4:
                            if (mo752l.f893b == 8) {
                                c2355h.f1064d = abstractC2328ak.mo741w();
                                c2355h.m660d(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 5:
                            if (mo752l.f893b == 8) {
                                c2355h.f1065e = abstractC2328ak.mo741w();
                                c2355h.m656e(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 6:
                            if (mo752l.f893b == 8) {
                                c2355h.f1066f = abstractC2328ak.mo741w();
                                c2355h.m654f(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 7:
                            if (mo752l.f893b == 11) {
                                c2355h.f1067g = abstractC2328ak.mo780A();
                                c2355h.m652g(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 8:
                            if (mo752l.f893b == 11) {
                                c2355h.f1068h = abstractC2328ak.mo738z();
                                c2355h.m650h(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 9:
                            if (mo752l.f893b == 11) {
                                c2355h.f1069i = abstractC2328ak.mo738z();
                                c2355h.m648i(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 10:
                            if (mo752l.f893b == 8) {
                                c2355h.f1070j = abstractC2328ak.mo741w();
                                c2355h.m646j(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        default:
                            C2331an.m735a(abstractC2328ak, mo752l.f893b);
                            break;
                    }
                    abstractC2328ak.mo751m();
                } else {
                    abstractC2328ak.mo753k();
                    if (!c2355h.m643m()) {
                        throw new C2329al("Required field 'serial_num' was not found in serialized data! Struct: " + toString());
                    }
                    if (!c2355h.m640p()) {
                        throw new C2329al("Required field 'ts_secs' was not found in serialized data! Struct: " + toString());
                    }
                    if (!c2355h.m637s()) {
                        throw new C2329al("Required field 'length' was not found in serialized data! Struct: " + toString());
                    }
                    c2355h.m691G();
                    return;
                }
            }
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo47a(AbstractC2328ak abstractC2328ak, C2355h c2355h) throws C2373r {
            c2355h.m691G();
            abstractC2328ak.mo767a(C2355h.f1045m);
            if (c2355h.f1061a != null) {
                abstractC2328ak.mo772a(C2355h.f1046n);
                abstractC2328ak.mo766a(c2355h.f1061a);
                abstractC2328ak.mo761c();
            }
            if (c2355h.f1062b != null) {
                abstractC2328ak.mo772a(C2355h.f1047o);
                abstractC2328ak.mo766a(c2355h.f1062b);
                abstractC2328ak.mo761c();
            }
            if (c2355h.f1063c != null) {
                abstractC2328ak.mo772a(C2355h.f1048p);
                abstractC2328ak.mo766a(c2355h.f1063c);
                abstractC2328ak.mo761c();
            }
            abstractC2328ak.mo772a(C2355h.f1049q);
            abstractC2328ak.mo774a(c2355h.f1064d);
            abstractC2328ak.mo761c();
            abstractC2328ak.mo772a(C2355h.f1050r);
            abstractC2328ak.mo774a(c2355h.f1065e);
            abstractC2328ak.mo761c();
            abstractC2328ak.mo772a(C2355h.f1051s);
            abstractC2328ak.mo774a(c2355h.f1066f);
            abstractC2328ak.mo761c();
            if (c2355h.f1067g != null) {
                abstractC2328ak.mo772a(C2355h.f1052t);
                abstractC2328ak.mo765a(c2355h.f1067g);
                abstractC2328ak.mo761c();
            }
            if (c2355h.f1068h != null) {
                abstractC2328ak.mo772a(C2355h.f1053u);
                abstractC2328ak.mo766a(c2355h.f1068h);
                abstractC2328ak.mo761c();
            }
            if (c2355h.f1069i != null) {
                abstractC2328ak.mo772a(C2355h.f1054v);
                abstractC2328ak.mo766a(c2355h.f1069i);
                abstractC2328ak.mo761c();
            }
            if (c2355h.m692F()) {
                abstractC2328ak.mo772a(C2355h.f1055w);
                abstractC2328ak.mo774a(c2355h.f1070j);
                abstractC2328ak.mo761c();
            }
            abstractC2328ak.mo760d();
            abstractC2328ak.mo762b();
        }
    }

    /* compiled from: UMEnvelope.java */
    /* renamed from: com.umeng.commonsdk.proguard.h$d */
    /* loaded from: classes2.dex */
    private static class C2360d implements AbstractC2338at {
        private C2360d() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2359c mo42b() {
            return new C2359c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UMEnvelope.java */
    /* renamed from: com.umeng.commonsdk.proguard.h$c */
    /* loaded from: classes2.dex */
    public static class C2359c extends AbstractC2340av<C2355h> {
        private C2359c() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo47a(AbstractC2328ak abstractC2328ak, C2355h c2355h) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            c2334aq.a(c2355h.f1061a);
            c2334aq.a(c2355h.f1062b);
            c2334aq.a(c2355h.f1063c);
            c2334aq.a(c2355h.f1064d);
            c2334aq.a(c2355h.f1065e);
            c2334aq.a(c2355h.f1066f);
            c2334aq.a(c2355h.f1067g);
            c2334aq.a(c2355h.f1068h);
            c2334aq.a(c2355h.f1069i);
            BitSet bitSet = new BitSet();
            if (c2355h.m692F()) {
                bitSet.set(0);
            }
            c2334aq.m731a(bitSet, 1);
            if (c2355h.m692F()) {
                c2334aq.a(c2355h.f1070j);
            }
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo45b(AbstractC2328ak abstractC2328ak, C2355h c2355h) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            c2355h.f1061a = c2334aq.z();
            c2355h.m673a(true);
            c2355h.f1062b = c2334aq.z();
            c2355h.m668b(true);
            c2355h.f1063c = c2334aq.z();
            c2355h.m664c(true);
            c2355h.f1064d = c2334aq.w();
            c2355h.m660d(true);
            c2355h.f1065e = c2334aq.w();
            c2355h.m656e(true);
            c2355h.f1066f = c2334aq.w();
            c2355h.m654f(true);
            c2355h.f1067g = c2334aq.A();
            c2355h.m652g(true);
            c2355h.f1068h = c2334aq.z();
            c2355h.m650h(true);
            c2355h.f1069i = c2334aq.z();
            c2355h.m648i(true);
            if (c2334aq.m729b(1).get(0)) {
                c2355h.f1070j = c2334aq.w();
                c2355h.m646j(true);
            }
        }
    }
}
