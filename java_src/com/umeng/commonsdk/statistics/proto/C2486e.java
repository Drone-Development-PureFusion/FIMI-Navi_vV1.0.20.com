package com.umeng.commonsdk.statistics.proto;

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
import com.umeng.commonsdk.proguard.C2373r;
import com.umeng.commonsdk.proguard.C2384x;
import com.umeng.commonsdk.proguard.C2385y;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* compiled from: ImprintValue.java */
/* renamed from: com.umeng.commonsdk.statistics.proto.e */
/* loaded from: classes2.dex */
public class C2486e implements AbstractC2365l<C2486e, EnumC2492e>, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map<EnumC2492e, C2384x> f1442d;

    /* renamed from: e */
    private static final long f1443e = 7501688097813630241L;

    /* renamed from: f */
    private static final C2333ap f1444f = new C2333ap("ImprintValue");

    /* renamed from: g */
    private static final C2323af f1445g = new C2323af("value", (byte) 11, 1);

    /* renamed from: h */
    private static final C2323af f1446h = new C2323af("ts", (byte) 10, 2);

    /* renamed from: i */
    private static final C2323af f1447i = new C2323af("guid", (byte) 11, 3);

    /* renamed from: j */
    private static final Map<Class<? extends AbstractC2337as>, AbstractC2338at> f1448j = new HashMap();

    /* renamed from: k */
    private static final int f1449k = 0;

    /* renamed from: a */
    public String f1450a;

    /* renamed from: b */
    public long f1451b;

    /* renamed from: c */
    public String f1452c;

    /* renamed from: l */
    private byte f1453l;

    /* renamed from: m */
    private EnumC2492e[] f1454m;

    static {
        f1448j.put(AbstractC2339au.class, new C2489b());
        f1448j.put(AbstractC2340av.class, new C2491d());
        EnumMap enumMap = new EnumMap(EnumC2492e.class);
        enumMap.put((EnumMap) EnumC2492e.VALUE, (EnumC2492e) new C2384x("value", (byte) 2, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2492e.TS, (EnumC2492e) new C2384x("ts", (byte) 1, new C2385y((byte) 10)));
        enumMap.put((EnumMap) EnumC2492e.GUID, (EnumC2492e) new C2384x("guid", (byte) 1, new C2385y((byte) 11)));
        f1442d = Collections.unmodifiableMap(enumMap);
        C2384x.m526a(C2486e.class, f1442d);
    }

    /* compiled from: ImprintValue.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.e$e */
    /* loaded from: classes2.dex */
    public enum EnumC2492e implements AbstractC2374s {
        VALUE(1, "value"),
        TS(2, "ts"),
        GUID(3, "guid");
        

        /* renamed from: d */
        private static final Map<String, EnumC2492e> f1458d = new HashMap();

        /* renamed from: e */
        private final short f1460e;

        /* renamed from: f */
        private final String f1461f;

        static {
            Iterator it = EnumSet.allOf(EnumC2492e.class).iterator();
            while (it.hasNext()) {
                EnumC2492e enumC2492e = (EnumC2492e) it.next();
                f1458d.put(enumC2492e.mo38b(), enumC2492e);
            }
        }

        /* renamed from: a */
        public static EnumC2492e m40a(int i) {
            switch (i) {
                case 1:
                    return VALUE;
                case 2:
                    return TS;
                case 3:
                    return GUID;
                default:
                    return null;
            }
        }

        /* renamed from: b */
        public static EnumC2492e m37b(int i) {
            EnumC2492e m40a = m40a(i);
            if (m40a == null) {
                throw new IllegalArgumentException("Field " + i + " doesn't exist!");
            }
            return m40a;
        }

        /* renamed from: a */
        public static EnumC2492e m39a(String str) {
            return f1458d.get(str);
        }

        EnumC2492e(short s, String str) {
            this.f1460e = s;
            this.f1461f = str;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: a */
        public short mo41a() {
            return this.f1460e;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: b */
        public String mo38b() {
            return this.f1461f;
        }
    }

    public C2486e() {
        this.f1453l = (byte) 0;
        this.f1454m = new EnumC2492e[]{EnumC2492e.VALUE};
    }

    public C2486e(long j, String str) {
        this();
        this.f1451b = j;
        m65b(true);
        this.f1452c = str;
    }

    public C2486e(C2486e c2486e) {
        this.f1453l = (byte) 0;
        this.f1454m = new EnumC2492e[]{EnumC2492e.VALUE};
        this.f1453l = c2486e.f1453l;
        if (c2486e.m62d()) {
            this.f1450a = c2486e.f1450a;
        }
        this.f1451b = c2486e.f1451b;
        if (c2486e.m56j()) {
            this.f1452c = c2486e.f1452c;
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    /* renamed from: a */
    public C2486e deepCopy() {
        return new C2486e(this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void clear() {
        this.f1450a = null;
        m65b(false);
        this.f1451b = 0L;
        this.f1452c = null;
    }

    /* renamed from: b */
    public String m67b() {
        return this.f1450a;
    }

    /* renamed from: a */
    public C2486e m69a(String str) {
        this.f1450a = str;
        return this;
    }

    /* renamed from: c */
    public void m64c() {
        this.f1450a = null;
    }

    /* renamed from: d */
    public boolean m62d() {
        return this.f1450a != null;
    }

    /* renamed from: a */
    public void m68a(boolean z) {
        if (!z) {
            this.f1450a = null;
        }
    }

    /* renamed from: e */
    public long m61e() {
        return this.f1451b;
    }

    /* renamed from: a */
    public C2486e m72a(long j) {
        this.f1451b = j;
        m65b(true);
        return this;
    }

    /* renamed from: f */
    public void m60f() {
        this.f1453l = C2362i.m608b(this.f1453l, 0);
    }

    /* renamed from: g */
    public boolean m59g() {
        return C2362i.m620a(this.f1453l, 0);
    }

    /* renamed from: b */
    public void m65b(boolean z) {
        this.f1453l = C2362i.m619a(this.f1453l, 0, z);
    }

    /* renamed from: h */
    public String m58h() {
        return this.f1452c;
    }

    /* renamed from: b */
    public C2486e m66b(String str) {
        this.f1452c = str;
        return this;
    }

    /* renamed from: i */
    public void m57i() {
        this.f1452c = null;
    }

    /* renamed from: j */
    public boolean m56j() {
        return this.f1452c != null;
    }

    /* renamed from: c */
    public void m63c(boolean z) {
        if (!z) {
            this.f1452c = null;
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    /* renamed from: a */
    public EnumC2492e fieldForId(int i) {
        return EnumC2492e.m40a(i);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void read(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1448j.get(abstractC2328ak.mo732D()).mo42b().mo45b(abstractC2328ak, this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void write(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1448j.get(abstractC2328ak.mo732D()).mo42b().mo47a(abstractC2328ak, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ImprintValue(");
        boolean z = true;
        if (m62d()) {
            sb.append("value:");
            if (this.f1450a == null) {
                sb.append("null");
            } else {
                sb.append(this.f1450a);
            }
            z = false;
        }
        if (!z) {
            sb.append(", ");
        }
        sb.append("ts:");
        sb.append(this.f1451b);
        sb.append(", ");
        sb.append("guid:");
        if (this.f1452c == null) {
            sb.append("null");
        } else {
            sb.append(this.f1452c);
        }
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: k */
    public void m55k() throws C2373r {
        if (this.f1452c == null) {
            throw new C2329al("Required field 'guid' was not present! Struct: " + toString());
        }
    }

    /* renamed from: a */
    private void m70a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2320ae(new C2341aw(objectOutputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    /* renamed from: a */
    private void m71a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f1453l = (byte) 0;
            read(new C2320ae(new C2341aw(objectInputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    /* compiled from: ImprintValue.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.e$b */
    /* loaded from: classes2.dex */
    private static class C2489b implements AbstractC2338at {
        private C2489b() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2488a mo42b() {
            return new C2488a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImprintValue.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.e$a */
    /* loaded from: classes2.dex */
    public static class C2488a extends AbstractC2339au<C2486e> {
        private C2488a() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo45b(AbstractC2328ak abstractC2328ak, C2486e c2486e) throws C2373r {
            abstractC2328ak.mo754j();
            while (true) {
                C2323af mo752l = abstractC2328ak.mo752l();
                if (mo752l.f893b != 0) {
                    switch (mo752l.f894c) {
                        case 1:
                            if (mo752l.f893b == 11) {
                                c2486e.f1450a = abstractC2328ak.mo738z();
                                c2486e.m68a(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 2:
                            if (mo752l.f893b == 10) {
                                c2486e.f1451b = abstractC2328ak.mo740x();
                                c2486e.m65b(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 3:
                            if (mo752l.f893b == 11) {
                                c2486e.f1452c = abstractC2328ak.mo738z();
                                c2486e.m63c(true);
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
                    if (!c2486e.m59g()) {
                        throw new C2329al("Required field 'ts' was not found in serialized data! Struct: " + toString());
                    }
                    c2486e.m55k();
                    return;
                }
            }
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo47a(AbstractC2328ak abstractC2328ak, C2486e c2486e) throws C2373r {
            c2486e.m55k();
            abstractC2328ak.mo767a(C2486e.f1444f);
            if (c2486e.f1450a != null && c2486e.m62d()) {
                abstractC2328ak.mo772a(C2486e.f1445g);
                abstractC2328ak.mo766a(c2486e.f1450a);
                abstractC2328ak.mo761c();
            }
            abstractC2328ak.mo772a(C2486e.f1446h);
            abstractC2328ak.mo773a(c2486e.f1451b);
            abstractC2328ak.mo761c();
            if (c2486e.f1452c != null) {
                abstractC2328ak.mo772a(C2486e.f1447i);
                abstractC2328ak.mo766a(c2486e.f1452c);
                abstractC2328ak.mo761c();
            }
            abstractC2328ak.mo760d();
            abstractC2328ak.mo762b();
        }
    }

    /* compiled from: ImprintValue.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.e$d */
    /* loaded from: classes2.dex */
    private static class C2491d implements AbstractC2338at {
        private C2491d() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2490c mo42b() {
            return new C2490c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImprintValue.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.e$c */
    /* loaded from: classes2.dex */
    public static class C2490c extends AbstractC2340av<C2486e> {
        private C2490c() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo47a(AbstractC2328ak abstractC2328ak, C2486e c2486e) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            c2334aq.a(c2486e.f1451b);
            c2334aq.a(c2486e.f1452c);
            BitSet bitSet = new BitSet();
            if (c2486e.m62d()) {
                bitSet.set(0);
            }
            c2334aq.m731a(bitSet, 1);
            if (c2486e.m62d()) {
                c2334aq.a(c2486e.f1450a);
            }
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo45b(AbstractC2328ak abstractC2328ak, C2486e c2486e) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            c2486e.f1451b = c2334aq.x();
            c2486e.m65b(true);
            c2486e.f1452c = c2334aq.z();
            c2486e.m63c(true);
            if (c2334aq.m729b(1).get(0)) {
                c2486e.f1450a = c2334aq.z();
                c2486e.m68a(true);
            }
        }
    }
}
