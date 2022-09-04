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
/* compiled from: IdJournal.java */
/* renamed from: com.umeng.commonsdk.statistics.proto.a */
/* loaded from: classes2.dex */
public class C2458a implements AbstractC2365l<C2458a, EnumC2464e>, Serializable, Cloneable {

    /* renamed from: e */
    public static final Map<EnumC2464e, C2384x> f1362e;

    /* renamed from: f */
    private static final long f1363f = 9132678615281394583L;

    /* renamed from: g */
    private static final C2333ap f1364g = new C2333ap("IdJournal");

    /* renamed from: h */
    private static final C2323af f1365h = new C2323af("domain", (byte) 11, 1);

    /* renamed from: i */
    private static final C2323af f1366i = new C2323af("old_id", (byte) 11, 2);

    /* renamed from: j */
    private static final C2323af f1367j = new C2323af("new_id", (byte) 11, 3);

    /* renamed from: k */
    private static final C2323af f1368k = new C2323af("ts", (byte) 10, 4);

    /* renamed from: l */
    private static final Map<Class<? extends AbstractC2337as>, AbstractC2338at> f1369l = new HashMap();

    /* renamed from: m */
    private static final int f1370m = 0;

    /* renamed from: a */
    public String f1371a;

    /* renamed from: b */
    public String f1372b;

    /* renamed from: c */
    public String f1373c;

    /* renamed from: d */
    public long f1374d;

    /* renamed from: n */
    private byte f1375n;

    /* renamed from: o */
    private EnumC2464e[] f1376o;

    static {
        f1369l.put(AbstractC2339au.class, new C2461b());
        f1369l.put(AbstractC2340av.class, new C2463d());
        EnumMap enumMap = new EnumMap(EnumC2464e.class);
        enumMap.put((EnumMap) EnumC2464e.DOMAIN, (EnumC2464e) new C2384x("domain", (byte) 1, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2464e.OLD_ID, (EnumC2464e) new C2384x("old_id", (byte) 2, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2464e.NEW_ID, (EnumC2464e) new C2384x("new_id", (byte) 1, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2464e.TS, (EnumC2464e) new C2384x("ts", (byte) 1, new C2385y((byte) 10)));
        f1362e = Collections.unmodifiableMap(enumMap);
        C2384x.m526a(C2458a.class, f1362e);
    }

    /* compiled from: IdJournal.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.a$e */
    /* loaded from: classes2.dex */
    public enum EnumC2464e implements AbstractC2374s {
        DOMAIN(1, "domain"),
        OLD_ID(2, "old_id"),
        NEW_ID(3, "new_id"),
        TS(4, "ts");
        

        /* renamed from: e */
        private static final Map<String, EnumC2464e> f1381e = new HashMap();

        /* renamed from: f */
        private final short f1383f;

        /* renamed from: g */
        private final String f1384g;

        static {
            Iterator it = EnumSet.allOf(EnumC2464e.class).iterator();
            while (it.hasNext()) {
                EnumC2464e enumC2464e = (EnumC2464e) it.next();
                f1381e.put(enumC2464e.mo38b(), enumC2464e);
            }
        }

        /* renamed from: a */
        public static EnumC2464e m183a(int i) {
            switch (i) {
                case 1:
                    return DOMAIN;
                case 2:
                    return OLD_ID;
                case 3:
                    return NEW_ID;
                case 4:
                    return TS;
                default:
                    return null;
            }
        }

        /* renamed from: b */
        public static EnumC2464e m181b(int i) {
            EnumC2464e m183a = m183a(i);
            if (m183a == null) {
                throw new IllegalArgumentException("Field " + i + " doesn't exist!");
            }
            return m183a;
        }

        /* renamed from: a */
        public static EnumC2464e m182a(String str) {
            return f1381e.get(str);
        }

        EnumC2464e(short s, String str) {
            this.f1383f = s;
            this.f1384g = str;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: a */
        public short mo41a() {
            return this.f1383f;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: b */
        public String mo38b() {
            return this.f1384g;
        }
    }

    public C2458a() {
        this.f1375n = (byte) 0;
        this.f1376o = new EnumC2464e[]{EnumC2464e.OLD_ID};
    }

    public C2458a(String str, String str2, long j) {
        this();
        this.f1371a = str;
        this.f1373c = str2;
        this.f1374d = j;
        m205d(true);
    }

    public C2458a(C2458a c2458a) {
        this.f1375n = (byte) 0;
        this.f1376o = new EnumC2464e[]{EnumC2464e.OLD_ID};
        this.f1375n = c2458a.f1375n;
        if (c2458a.m206d()) {
            this.f1371a = c2458a.f1371a;
        }
        if (c2458a.m202g()) {
            this.f1372b = c2458a.f1372b;
        }
        if (c2458a.m199j()) {
            this.f1373c = c2458a.f1373c;
        }
        this.f1374d = c2458a.f1374d;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    /* renamed from: a */
    public C2458a deepCopy() {
        return new C2458a(this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void clear() {
        this.f1371a = null;
        this.f1372b = null;
        this.f1373c = null;
        m205d(false);
        this.f1374d = 0L;
    }

    /* renamed from: b */
    public String m212b() {
        return this.f1371a;
    }

    /* renamed from: a */
    public C2458a m214a(String str) {
        this.f1371a = str;
        return this;
    }

    /* renamed from: c */
    public void m209c() {
        this.f1371a = null;
    }

    /* renamed from: d */
    public boolean m206d() {
        return this.f1371a != null;
    }

    /* renamed from: a */
    public void m213a(boolean z) {
        if (!z) {
            this.f1371a = null;
        }
    }

    /* renamed from: e */
    public String m204e() {
        return this.f1372b;
    }

    /* renamed from: b */
    public C2458a m211b(String str) {
        this.f1372b = str;
        return this;
    }

    /* renamed from: f */
    public void m203f() {
        this.f1372b = null;
    }

    /* renamed from: g */
    public boolean m202g() {
        return this.f1372b != null;
    }

    /* renamed from: b */
    public void m210b(boolean z) {
        if (!z) {
            this.f1372b = null;
        }
    }

    /* renamed from: h */
    public String m201h() {
        return this.f1373c;
    }

    /* renamed from: c */
    public C2458a m208c(String str) {
        this.f1373c = str;
        return this;
    }

    /* renamed from: i */
    public void m200i() {
        this.f1373c = null;
    }

    /* renamed from: j */
    public boolean m199j() {
        return this.f1373c != null;
    }

    /* renamed from: c */
    public void m207c(boolean z) {
        if (!z) {
            this.f1373c = null;
        }
    }

    /* renamed from: k */
    public long m198k() {
        return this.f1374d;
    }

    /* renamed from: a */
    public C2458a m217a(long j) {
        this.f1374d = j;
        m205d(true);
        return this;
    }

    /* renamed from: l */
    public void m197l() {
        this.f1375n = C2362i.m608b(this.f1375n, 0);
    }

    /* renamed from: m */
    public boolean m196m() {
        return C2362i.m620a(this.f1375n, 0);
    }

    /* renamed from: d */
    public void m205d(boolean z) {
        this.f1375n = C2362i.m619a(this.f1375n, 0, z);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    /* renamed from: a */
    public EnumC2464e fieldForId(int i) {
        return EnumC2464e.m183a(i);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void read(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1369l.get(abstractC2328ak.mo732D()).mo42b().mo45b(abstractC2328ak, this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void write(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1369l.get(abstractC2328ak.mo732D()).mo42b().mo47a(abstractC2328ak, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdJournal(");
        sb.append("domain:");
        if (this.f1371a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1371a);
        }
        if (m202g()) {
            sb.append(", ");
            sb.append("old_id:");
            if (this.f1372b == null) {
                sb.append("null");
            } else {
                sb.append(this.f1372b);
            }
        }
        sb.append(", ");
        sb.append("new_id:");
        if (this.f1373c == null) {
            sb.append("null");
        } else {
            sb.append(this.f1373c);
        }
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.f1374d);
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: n */
    public void m195n() throws C2373r {
        if (this.f1371a == null) {
            throw new C2329al("Required field 'domain' was not present! Struct: " + toString());
        }
        if (this.f1373c == null) {
            throw new C2329al("Required field 'new_id' was not present! Struct: " + toString());
        }
    }

    /* renamed from: a */
    private void m215a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2320ae(new C2341aw(objectOutputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    /* renamed from: a */
    private void m216a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f1375n = (byte) 0;
            read(new C2320ae(new C2341aw(objectInputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    /* compiled from: IdJournal.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.a$b */
    /* loaded from: classes2.dex */
    private static class C2461b implements AbstractC2338at {
        private C2461b() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2460a mo42b() {
            return new C2460a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IdJournal.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.a$a */
    /* loaded from: classes2.dex */
    public static class C2460a extends AbstractC2339au<C2458a> {
        private C2460a() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo45b(AbstractC2328ak abstractC2328ak, C2458a c2458a) throws C2373r {
            abstractC2328ak.mo754j();
            while (true) {
                C2323af mo752l = abstractC2328ak.mo752l();
                if (mo752l.f893b != 0) {
                    switch (mo752l.f894c) {
                        case 1:
                            if (mo752l.f893b == 11) {
                                c2458a.f1371a = abstractC2328ak.mo738z();
                                c2458a.m213a(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 2:
                            if (mo752l.f893b == 11) {
                                c2458a.f1372b = abstractC2328ak.mo738z();
                                c2458a.m210b(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 3:
                            if (mo752l.f893b == 11) {
                                c2458a.f1373c = abstractC2328ak.mo738z();
                                c2458a.m207c(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 4:
                            if (mo752l.f893b == 10) {
                                c2458a.f1374d = abstractC2328ak.mo740x();
                                c2458a.m205d(true);
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
                    if (!c2458a.m196m()) {
                        throw new C2329al("Required field 'ts' was not found in serialized data! Struct: " + toString());
                    }
                    c2458a.m195n();
                    return;
                }
            }
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo47a(AbstractC2328ak abstractC2328ak, C2458a c2458a) throws C2373r {
            c2458a.m195n();
            abstractC2328ak.mo767a(C2458a.f1364g);
            if (c2458a.f1371a != null) {
                abstractC2328ak.mo772a(C2458a.f1365h);
                abstractC2328ak.mo766a(c2458a.f1371a);
                abstractC2328ak.mo761c();
            }
            if (c2458a.f1372b != null && c2458a.m202g()) {
                abstractC2328ak.mo772a(C2458a.f1366i);
                abstractC2328ak.mo766a(c2458a.f1372b);
                abstractC2328ak.mo761c();
            }
            if (c2458a.f1373c != null) {
                abstractC2328ak.mo772a(C2458a.f1367j);
                abstractC2328ak.mo766a(c2458a.f1373c);
                abstractC2328ak.mo761c();
            }
            abstractC2328ak.mo772a(C2458a.f1368k);
            abstractC2328ak.mo773a(c2458a.f1374d);
            abstractC2328ak.mo761c();
            abstractC2328ak.mo760d();
            abstractC2328ak.mo762b();
        }
    }

    /* compiled from: IdJournal.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.a$d */
    /* loaded from: classes2.dex */
    private static class C2463d implements AbstractC2338at {
        private C2463d() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2462c mo42b() {
            return new C2462c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IdJournal.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.a$c */
    /* loaded from: classes2.dex */
    public static class C2462c extends AbstractC2340av<C2458a> {
        private C2462c() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo47a(AbstractC2328ak abstractC2328ak, C2458a c2458a) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            c2334aq.a(c2458a.f1371a);
            c2334aq.a(c2458a.f1373c);
            c2334aq.a(c2458a.f1374d);
            BitSet bitSet = new BitSet();
            if (c2458a.m202g()) {
                bitSet.set(0);
            }
            c2334aq.m731a(bitSet, 1);
            if (c2458a.m202g()) {
                c2334aq.a(c2458a.f1372b);
            }
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo45b(AbstractC2328ak abstractC2328ak, C2458a c2458a) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            c2458a.f1371a = c2334aq.z();
            c2458a.m213a(true);
            c2458a.f1373c = c2334aq.z();
            c2458a.m207c(true);
            c2458a.f1374d = c2334aq.x();
            c2458a.m205d(true);
            if (c2334aq.m729b(1).get(0)) {
                c2458a.f1372b = c2334aq.z();
                c2458a.m210b(true);
            }
        }
    }
}
