package com.umeng.commonsdk.stateless;

import com.facebook.internal.ServerProtocol;
import com.umeng.commonsdk.proguard.AbstractC2328ak;
import com.umeng.commonsdk.proguard.AbstractC2337as;
import com.umeng.commonsdk.proguard.AbstractC2338at;
import com.umeng.commonsdk.proguard.AbstractC2339au;
import com.umeng.commonsdk.proguard.AbstractC2340av;
import com.umeng.commonsdk.proguard.AbstractC2365l;
import com.umeng.commonsdk.proguard.AbstractC2374s;
import com.umeng.commonsdk.proguard.C2320ae;
import com.umeng.commonsdk.proguard.C2323af;
import com.umeng.commonsdk.proguard.C2329al;
import com.umeng.commonsdk.proguard.C2331an;
import com.umeng.commonsdk.proguard.C2333ap;
import com.umeng.commonsdk.proguard.C2334aq;
import com.umeng.commonsdk.proguard.C2341aw;
import com.umeng.commonsdk.proguard.C2362i;
import com.umeng.commonsdk.proguard.C2366m;
import com.umeng.commonsdk.proguard.C2373r;
import com.umeng.commonsdk.proguard.C2384x;
import com.umeng.commonsdk.proguard.C2385y;
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
/* compiled from: UMSLEnvelope.java */
/* renamed from: com.umeng.commonsdk.stateless.b */
/* loaded from: classes2.dex */
public class C2388b implements AbstractC2365l<C2388b, EnumC2394e>, Serializable, Cloneable {

    /* renamed from: A */
    private static final int f1136A = 2;

    /* renamed from: B */
    private static final int f1137B = 3;

    /* renamed from: k */
    public static final Map<EnumC2394e, C2384x> f1138k;

    /* renamed from: l */
    private static final long f1139l = 420342210744516016L;

    /* renamed from: m */
    private static final C2333ap f1140m = new C2333ap("UMSLEnvelope");

    /* renamed from: n */
    private static final C2323af f1141n = new C2323af(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, (byte) 11, 1);

    /* renamed from: o */
    private static final C2323af f1142o = new C2323af("address", (byte) 11, 2);

    /* renamed from: p */
    private static final C2323af f1143p = new C2323af("signature", (byte) 11, 3);

    /* renamed from: q */
    private static final C2323af f1144q = new C2323af("serial_num", (byte) 8, 4);

    /* renamed from: r */
    private static final C2323af f1145r = new C2323af("ts_secs", (byte) 8, 5);

    /* renamed from: s */
    private static final C2323af f1146s = new C2323af("length", (byte) 8, 6);

    /* renamed from: t */
    private static final C2323af f1147t = new C2323af("entity", (byte) 11, 7);

    /* renamed from: u */
    private static final C2323af f1148u = new C2323af("guid", (byte) 11, 8);

    /* renamed from: v */
    private static final C2323af f1149v = new C2323af("checksum", (byte) 11, 9);

    /* renamed from: w */
    private static final C2323af f1150w = new C2323af("codex", (byte) 8, 10);

    /* renamed from: x */
    private static final Map<Class<? extends AbstractC2337as>, AbstractC2338at> f1151x = new HashMap();

    /* renamed from: y */
    private static final int f1152y = 0;

    /* renamed from: z */
    private static final int f1153z = 1;

    /* renamed from: C */
    private byte f1154C;

    /* renamed from: D */
    private EnumC2394e[] f1155D;

    /* renamed from: a */
    public String f1156a;

    /* renamed from: b */
    public String f1157b;

    /* renamed from: c */
    public String f1158c;

    /* renamed from: d */
    public int f1159d;

    /* renamed from: e */
    public int f1160e;

    /* renamed from: f */
    public int f1161f;

    /* renamed from: g */
    public ByteBuffer f1162g;

    /* renamed from: h */
    public String f1163h;

    /* renamed from: i */
    public String f1164i;

    /* renamed from: j */
    public int f1165j;

    static {
        f1151x.put(AbstractC2339au.class, new C2391b());
        f1151x.put(AbstractC2340av.class, new C2393d());
        EnumMap enumMap = new EnumMap(EnumC2394e.class);
        enumMap.put((EnumMap) EnumC2394e.VERSION, (EnumC2394e) new C2384x(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, (byte) 1, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2394e.ADDRESS, (EnumC2394e) new C2384x("address", (byte) 1, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2394e.SIGNATURE, (EnumC2394e) new C2384x("signature", (byte) 1, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2394e.SERIAL_NUM, (EnumC2394e) new C2384x("serial_num", (byte) 1, new C2385y((byte) 8)));
        enumMap.put((EnumMap) EnumC2394e.TS_SECS, (EnumC2394e) new C2384x("ts_secs", (byte) 1, new C2385y((byte) 8)));
        enumMap.put((EnumMap) EnumC2394e.LENGTH, (EnumC2394e) new C2384x("length", (byte) 1, new C2385y((byte) 8)));
        enumMap.put((EnumMap) EnumC2394e.ENTITY, (EnumC2394e) new C2384x("entity", (byte) 1, new C2385y((byte) 11, true)));
        enumMap.put((EnumMap) EnumC2394e.GUID, (EnumC2394e) new C2384x("guid", (byte) 1, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2394e.CHECKSUM, (EnumC2394e) new C2384x("checksum", (byte) 1, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2394e.CODEX, (EnumC2394e) new C2384x("codex", (byte) 2, new C2385y((byte) 8)));
        f1138k = Collections.unmodifiableMap(enumMap);
        C2384x.m526a(C2388b.class, f1138k);
    }

    /* compiled from: UMSLEnvelope.java */
    /* renamed from: com.umeng.commonsdk.stateless.b$e */
    /* loaded from: classes2.dex */
    public enum EnumC2394e implements AbstractC2374s {
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
        private static final Map<String, EnumC2394e> f1176k = new HashMap();

        /* renamed from: l */
        private final short f1178l;

        /* renamed from: m */
        private final String f1179m;

        static {
            Iterator it = EnumSet.allOf(EnumC2394e.class).iterator();
            while (it.hasNext()) {
                EnumC2394e enumC2394e = (EnumC2394e) it.next();
                f1176k.put(enumC2394e.mo38b(), enumC2394e);
            }
        }

        /* renamed from: a */
        public static EnumC2394e m446a(int i) {
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
        public static EnumC2394e m444b(int i) {
            EnumC2394e m446a = m446a(i);
            if (m446a == null) {
                throw new IllegalArgumentException("Field " + i + " doesn't exist!");
            }
            return m446a;
        }

        /* renamed from: a */
        public static EnumC2394e m445a(String str) {
            return f1176k.get(str);
        }

        EnumC2394e(short s, String str) {
            this.f1178l = s;
            this.f1179m = str;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: a */
        public short mo41a() {
            return this.f1178l;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: b */
        public String mo38b() {
            return this.f1179m;
        }
    }

    public C2388b() {
        this.f1154C = (byte) 0;
        this.f1155D = new EnumC2394e[]{EnumC2394e.CODEX};
    }

    public C2388b(String str, String str2, String str3, int i, int i2, int i3, ByteBuffer byteBuffer, String str4, String str5) {
        this();
        this.f1156a = str;
        this.f1157b = str2;
        this.f1158c = str3;
        this.f1159d = i;
        m483d(true);
        this.f1160e = i2;
        m479e(true);
        this.f1161f = i3;
        m477f(true);
        this.f1162g = byteBuffer;
        this.f1163h = str4;
        this.f1164i = str5;
    }

    public C2388b(C2388b c2388b) {
        this.f1154C = (byte) 0;
        this.f1155D = new EnumC2394e[]{EnumC2394e.CODEX};
        this.f1154C = c2388b.f1154C;
        if (c2388b.m486d()) {
            this.f1156a = c2388b.f1156a;
        }
        if (c2388b.m476g()) {
            this.f1157b = c2388b.f1157b;
        }
        if (c2388b.m470j()) {
            this.f1158c = c2388b.f1158c;
        }
        this.f1159d = c2388b.f1159d;
        this.f1160e = c2388b.f1160e;
        this.f1161f = c2388b.f1161f;
        if (c2388b.m456w()) {
            this.f1162g = C2366m.m576d(c2388b.f1162g);
        }
        if (c2388b.m453z()) {
            this.f1163h = c2388b.f1163h;
        }
        if (c2388b.m518C()) {
            this.f1164i = c2388b.f1164i;
        }
        this.f1165j = c2388b.f1165j;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    /* renamed from: a */
    public C2388b deepCopy() {
        return new C2388b(this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void clear() {
        this.f1156a = null;
        this.f1157b = null;
        this.f1158c = null;
        m483d(false);
        this.f1159d = 0;
        m479e(false);
        this.f1160e = 0;
        m477f(false);
        this.f1161f = 0;
        this.f1162g = null;
        this.f1163h = null;
        this.f1164i = null;
        m469j(false);
        this.f1165j = 0;
    }

    /* renamed from: b */
    public String m494b() {
        return this.f1156a;
    }

    /* renamed from: a */
    public C2388b m498a(String str) {
        this.f1156a = str;
        return this;
    }

    /* renamed from: c */
    public void m490c() {
        this.f1156a = null;
    }

    /* renamed from: d */
    public boolean m486d() {
        return this.f1156a != null;
    }

    /* renamed from: a */
    public void m496a(boolean z) {
        if (!z) {
            this.f1156a = null;
        }
    }

    /* renamed from: e */
    public String m482e() {
        return this.f1157b;
    }

    /* renamed from: b */
    public C2388b m492b(String str) {
        this.f1157b = str;
        return this;
    }

    /* renamed from: f */
    public void m478f() {
        this.f1157b = null;
    }

    /* renamed from: g */
    public boolean m476g() {
        return this.f1157b != null;
    }

    /* renamed from: b */
    public void m491b(boolean z) {
        if (!z) {
            this.f1157b = null;
        }
    }

    /* renamed from: h */
    public String m474h() {
        return this.f1158c;
    }

    /* renamed from: c */
    public C2388b m488c(String str) {
        this.f1158c = str;
        return this;
    }

    /* renamed from: i */
    public void m472i() {
        this.f1158c = null;
    }

    /* renamed from: j */
    public boolean m470j() {
        return this.f1158c != null;
    }

    /* renamed from: c */
    public void m487c(boolean z) {
        if (!z) {
            this.f1158c = null;
        }
    }

    /* renamed from: k */
    public int m468k() {
        return this.f1159d;
    }

    /* renamed from: a */
    public C2388b m501a(int i) {
        this.f1159d = i;
        m483d(true);
        return this;
    }

    /* renamed from: l */
    public void m467l() {
        this.f1154C = C2362i.m608b(this.f1154C, 0);
    }

    /* renamed from: m */
    public boolean m466m() {
        return C2362i.m620a(this.f1154C, 0);
    }

    /* renamed from: d */
    public void m483d(boolean z) {
        this.f1154C = C2362i.m619a(this.f1154C, 0, z);
    }

    /* renamed from: n */
    public int m465n() {
        return this.f1160e;
    }

    /* renamed from: b */
    public C2388b m493b(int i) {
        this.f1160e = i;
        m479e(true);
        return this;
    }

    /* renamed from: o */
    public void m464o() {
        this.f1154C = C2362i.m608b(this.f1154C, 1);
    }

    /* renamed from: p */
    public boolean m463p() {
        return C2362i.m620a(this.f1154C, 1);
    }

    /* renamed from: e */
    public void m479e(boolean z) {
        this.f1154C = C2362i.m619a(this.f1154C, 1, z);
    }

    /* renamed from: q */
    public int m462q() {
        return this.f1161f;
    }

    /* renamed from: c */
    public C2388b m489c(int i) {
        this.f1161f = i;
        m477f(true);
        return this;
    }

    /* renamed from: r */
    public void m461r() {
        this.f1154C = C2362i.m608b(this.f1154C, 2);
    }

    /* renamed from: s */
    public boolean m460s() {
        return C2362i.m620a(this.f1154C, 2);
    }

    /* renamed from: f */
    public void m477f(boolean z) {
        this.f1154C = C2362i.m619a(this.f1154C, 2, z);
    }

    /* renamed from: t */
    public byte[] m459t() {
        m497a(C2366m.m577c(this.f1162g));
        if (this.f1162g == null) {
            return null;
        }
        return this.f1162g.array();
    }

    /* renamed from: u */
    public ByteBuffer m458u() {
        return this.f1162g;
    }

    /* renamed from: a */
    public C2388b m495a(byte[] bArr) {
        m497a(bArr == null ? null : ByteBuffer.wrap(bArr));
        return this;
    }

    /* renamed from: a */
    public C2388b m497a(ByteBuffer byteBuffer) {
        this.f1162g = byteBuffer;
        return this;
    }

    /* renamed from: v */
    public void m457v() {
        this.f1162g = null;
    }

    /* renamed from: w */
    public boolean m456w() {
        return this.f1162g != null;
    }

    /* renamed from: g */
    public void m475g(boolean z) {
        if (!z) {
            this.f1162g = null;
        }
    }

    /* renamed from: x */
    public String m455x() {
        return this.f1163h;
    }

    /* renamed from: d */
    public C2388b m484d(String str) {
        this.f1163h = str;
        return this;
    }

    /* renamed from: y */
    public void m454y() {
        this.f1163h = null;
    }

    /* renamed from: z */
    public boolean m453z() {
        return this.f1163h != null;
    }

    /* renamed from: h */
    public void m473h(boolean z) {
        if (!z) {
            this.f1163h = null;
        }
    }

    /* renamed from: A */
    public String m520A() {
        return this.f1164i;
    }

    /* renamed from: e */
    public C2388b m480e(String str) {
        this.f1164i = str;
        return this;
    }

    /* renamed from: B */
    public void m519B() {
        this.f1164i = null;
    }

    /* renamed from: C */
    public boolean m518C() {
        return this.f1164i != null;
    }

    /* renamed from: i */
    public void m471i(boolean z) {
        if (!z) {
            this.f1164i = null;
        }
    }

    /* renamed from: D */
    public int m517D() {
        return this.f1165j;
    }

    /* renamed from: d */
    public C2388b m485d(int i) {
        this.f1165j = i;
        m469j(true);
        return this;
    }

    /* renamed from: E */
    public void m516E() {
        this.f1154C = C2362i.m608b(this.f1154C, 3);
    }

    /* renamed from: F */
    public boolean m515F() {
        return C2362i.m620a(this.f1154C, 3);
    }

    /* renamed from: j */
    public void m469j(boolean z) {
        this.f1154C = C2362i.m619a(this.f1154C, 3, z);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    /* renamed from: e */
    public EnumC2394e fieldForId(int i) {
        return EnumC2394e.m446a(i);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void read(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1151x.get(abstractC2328ak.mo732D()).mo42b().mo45b(abstractC2328ak, this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void write(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1151x.get(abstractC2328ak.mo732D()).mo42b().mo47a(abstractC2328ak, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UMSLEnvelope(");
        sb.append("version:");
        if (this.f1156a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1156a);
        }
        sb.append(", ");
        sb.append("address:");
        if (this.f1157b == null) {
            sb.append("null");
        } else {
            sb.append(this.f1157b);
        }
        sb.append(", ");
        sb.append("signature:");
        if (this.f1158c == null) {
            sb.append("null");
        } else {
            sb.append(this.f1158c);
        }
        sb.append(", ");
        sb.append("serial_num:");
        sb.append(this.f1159d);
        sb.append(", ");
        sb.append("ts_secs:");
        sb.append(this.f1160e);
        sb.append(", ");
        sb.append("length:");
        sb.append(this.f1161f);
        sb.append(", ");
        sb.append("entity:");
        if (this.f1162g == null) {
            sb.append("null");
        } else {
            C2366m.m587a(this.f1162g, sb);
        }
        sb.append(", ");
        sb.append("guid:");
        if (this.f1163h == null) {
            sb.append("null");
        } else {
            sb.append(this.f1163h);
        }
        sb.append(", ");
        sb.append("checksum:");
        if (this.f1164i == null) {
            sb.append("null");
        } else {
            sb.append(this.f1164i);
        }
        if (m515F()) {
            sb.append(", ");
            sb.append("codex:");
            sb.append(this.f1165j);
        }
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: G */
    public void m514G() throws C2373r {
        if (this.f1156a == null) {
            throw new C2329al("Required field 'version' was not present! Struct: " + toString());
        }
        if (this.f1157b == null) {
            throw new C2329al("Required field 'address' was not present! Struct: " + toString());
        }
        if (this.f1158c == null) {
            throw new C2329al("Required field 'signature' was not present! Struct: " + toString());
        }
        if (this.f1162g == null) {
            throw new C2329al("Required field 'entity' was not present! Struct: " + toString());
        }
        if (this.f1163h == null) {
            throw new C2329al("Required field 'guid' was not present! Struct: " + toString());
        }
        if (this.f1164i == null) {
            throw new C2329al("Required field 'checksum' was not present! Struct: " + toString());
        }
    }

    /* renamed from: a */
    private void m499a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2320ae(new C2341aw(objectOutputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    /* renamed from: a */
    private void m500a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f1154C = (byte) 0;
            read(new C2320ae(new C2341aw(objectInputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    /* compiled from: UMSLEnvelope.java */
    /* renamed from: com.umeng.commonsdk.stateless.b$b */
    /* loaded from: classes2.dex */
    private static class C2391b implements AbstractC2338at {
        private C2391b() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2390a mo42b() {
            return new C2390a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UMSLEnvelope.java */
    /* renamed from: com.umeng.commonsdk.stateless.b$a */
    /* loaded from: classes2.dex */
    public static class C2390a extends AbstractC2339au<C2388b> {
        private C2390a() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo45b(AbstractC2328ak abstractC2328ak, C2388b c2388b) throws C2373r {
            abstractC2328ak.mo754j();
            while (true) {
                C2323af mo752l = abstractC2328ak.mo752l();
                if (mo752l.f893b != 0) {
                    switch (mo752l.f894c) {
                        case 1:
                            if (mo752l.f893b == 11) {
                                c2388b.f1156a = abstractC2328ak.mo738z();
                                c2388b.m496a(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 2:
                            if (mo752l.f893b == 11) {
                                c2388b.f1157b = abstractC2328ak.mo738z();
                                c2388b.m491b(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 3:
                            if (mo752l.f893b == 11) {
                                c2388b.f1158c = abstractC2328ak.mo738z();
                                c2388b.m487c(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 4:
                            if (mo752l.f893b == 8) {
                                c2388b.f1159d = abstractC2328ak.mo741w();
                                c2388b.m483d(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 5:
                            if (mo752l.f893b == 8) {
                                c2388b.f1160e = abstractC2328ak.mo741w();
                                c2388b.m479e(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 6:
                            if (mo752l.f893b == 8) {
                                c2388b.f1161f = abstractC2328ak.mo741w();
                                c2388b.m477f(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 7:
                            if (mo752l.f893b == 11) {
                                c2388b.f1162g = abstractC2328ak.mo780A();
                                c2388b.m475g(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 8:
                            if (mo752l.f893b == 11) {
                                c2388b.f1163h = abstractC2328ak.mo738z();
                                c2388b.m473h(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 9:
                            if (mo752l.f893b == 11) {
                                c2388b.f1164i = abstractC2328ak.mo738z();
                                c2388b.m471i(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 10:
                            if (mo752l.f893b == 8) {
                                c2388b.f1165j = abstractC2328ak.mo741w();
                                c2388b.m469j(true);
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
                    if (!c2388b.m466m()) {
                        throw new C2329al("Required field 'serial_num' was not found in serialized data! Struct: " + toString());
                    }
                    if (!c2388b.m463p()) {
                        throw new C2329al("Required field 'ts_secs' was not found in serialized data! Struct: " + toString());
                    }
                    if (!c2388b.m460s()) {
                        throw new C2329al("Required field 'length' was not found in serialized data! Struct: " + toString());
                    }
                    c2388b.m514G();
                    return;
                }
            }
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo47a(AbstractC2328ak abstractC2328ak, C2388b c2388b) throws C2373r {
            c2388b.m514G();
            abstractC2328ak.mo767a(C2388b.f1140m);
            if (c2388b.f1156a != null) {
                abstractC2328ak.mo772a(C2388b.f1141n);
                abstractC2328ak.mo766a(c2388b.f1156a);
                abstractC2328ak.mo761c();
            }
            if (c2388b.f1157b != null) {
                abstractC2328ak.mo772a(C2388b.f1142o);
                abstractC2328ak.mo766a(c2388b.f1157b);
                abstractC2328ak.mo761c();
            }
            if (c2388b.f1158c != null) {
                abstractC2328ak.mo772a(C2388b.f1143p);
                abstractC2328ak.mo766a(c2388b.f1158c);
                abstractC2328ak.mo761c();
            }
            abstractC2328ak.mo772a(C2388b.f1144q);
            abstractC2328ak.mo774a(c2388b.f1159d);
            abstractC2328ak.mo761c();
            abstractC2328ak.mo772a(C2388b.f1145r);
            abstractC2328ak.mo774a(c2388b.f1160e);
            abstractC2328ak.mo761c();
            abstractC2328ak.mo772a(C2388b.f1146s);
            abstractC2328ak.mo774a(c2388b.f1161f);
            abstractC2328ak.mo761c();
            if (c2388b.f1162g != null) {
                abstractC2328ak.mo772a(C2388b.f1147t);
                abstractC2328ak.mo765a(c2388b.f1162g);
                abstractC2328ak.mo761c();
            }
            if (c2388b.f1163h != null) {
                abstractC2328ak.mo772a(C2388b.f1148u);
                abstractC2328ak.mo766a(c2388b.f1163h);
                abstractC2328ak.mo761c();
            }
            if (c2388b.f1164i != null) {
                abstractC2328ak.mo772a(C2388b.f1149v);
                abstractC2328ak.mo766a(c2388b.f1164i);
                abstractC2328ak.mo761c();
            }
            if (c2388b.m515F()) {
                abstractC2328ak.mo772a(C2388b.f1150w);
                abstractC2328ak.mo774a(c2388b.f1165j);
                abstractC2328ak.mo761c();
            }
            abstractC2328ak.mo760d();
            abstractC2328ak.mo762b();
        }
    }

    /* compiled from: UMSLEnvelope.java */
    /* renamed from: com.umeng.commonsdk.stateless.b$d */
    /* loaded from: classes2.dex */
    private static class C2393d implements AbstractC2338at {
        private C2393d() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2392c mo42b() {
            return new C2392c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UMSLEnvelope.java */
    /* renamed from: com.umeng.commonsdk.stateless.b$c */
    /* loaded from: classes2.dex */
    public static class C2392c extends AbstractC2340av<C2388b> {
        private C2392c() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo47a(AbstractC2328ak abstractC2328ak, C2388b c2388b) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            c2334aq.a(c2388b.f1156a);
            c2334aq.a(c2388b.f1157b);
            c2334aq.a(c2388b.f1158c);
            c2334aq.a(c2388b.f1159d);
            c2334aq.a(c2388b.f1160e);
            c2334aq.a(c2388b.f1161f);
            c2334aq.a(c2388b.f1162g);
            c2334aq.a(c2388b.f1163h);
            c2334aq.a(c2388b.f1164i);
            BitSet bitSet = new BitSet();
            if (c2388b.m515F()) {
                bitSet.set(0);
            }
            c2334aq.m731a(bitSet, 1);
            if (c2388b.m515F()) {
                c2334aq.a(c2388b.f1165j);
            }
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo45b(AbstractC2328ak abstractC2328ak, C2388b c2388b) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            c2388b.f1156a = c2334aq.z();
            c2388b.m496a(true);
            c2388b.f1157b = c2334aq.z();
            c2388b.m491b(true);
            c2388b.f1158c = c2334aq.z();
            c2388b.m487c(true);
            c2388b.f1159d = c2334aq.w();
            c2388b.m483d(true);
            c2388b.f1160e = c2334aq.w();
            c2388b.m479e(true);
            c2388b.f1161f = c2334aq.w();
            c2388b.m477f(true);
            c2388b.f1162g = c2334aq.A();
            c2388b.m475g(true);
            c2388b.f1163h = c2334aq.z();
            c2388b.m473h(true);
            c2388b.f1164i = c2334aq.z();
            c2388b.m471i(true);
            if (c2334aq.m729b(1).get(0)) {
                c2388b.f1165j = c2334aq.w();
                c2388b.m469j(true);
            }
        }
    }
}
