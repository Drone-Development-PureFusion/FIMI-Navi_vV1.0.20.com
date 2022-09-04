package com.umeng.commonsdk.statistics.proto;

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
import com.umeng.commonsdk.proguard.C2373r;
import com.umeng.commonsdk.proguard.C2384x;
import com.umeng.commonsdk.proguard.C2385y;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* compiled from: IdSnapshot.java */
/* renamed from: com.umeng.commonsdk.statistics.proto.b */
/* loaded from: classes2.dex */
public class C2465b implements AbstractC2365l<C2465b, EnumC2471e>, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map<EnumC2471e, C2384x> f1385d;

    /* renamed from: e */
    private static final long f1386e = -6496538196005191531L;

    /* renamed from: f */
    private static final C2333ap f1387f = new C2333ap("IdSnapshot");

    /* renamed from: g */
    private static final C2323af f1388g = new C2323af("identity", (byte) 11, 1);

    /* renamed from: h */
    private static final C2323af f1389h = new C2323af("ts", (byte) 10, 2);

    /* renamed from: i */
    private static final C2323af f1390i = new C2323af(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, (byte) 8, 3);

    /* renamed from: j */
    private static final Map<Class<? extends AbstractC2337as>, AbstractC2338at> f1391j = new HashMap();

    /* renamed from: k */
    private static final int f1392k = 0;

    /* renamed from: l */
    private static final int f1393l = 1;

    /* renamed from: a */
    public String f1394a;

    /* renamed from: b */
    public long f1395b;

    /* renamed from: c */
    public int f1396c;

    /* renamed from: m */
    private byte f1397m;

    static {
        f1391j.put(AbstractC2339au.class, new C2468b());
        f1391j.put(AbstractC2340av.class, new C2470d());
        EnumMap enumMap = new EnumMap(EnumC2471e.class);
        enumMap.put((EnumMap) EnumC2471e.IDENTITY, (EnumC2471e) new C2384x("identity", (byte) 1, new C2385y((byte) 11)));
        enumMap.put((EnumMap) EnumC2471e.TS, (EnumC2471e) new C2384x("ts", (byte) 1, new C2385y((byte) 10)));
        enumMap.put((EnumMap) EnumC2471e.VERSION, (EnumC2471e) new C2384x(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, (byte) 1, new C2385y((byte) 8)));
        f1385d = Collections.unmodifiableMap(enumMap);
        C2384x.m526a(C2465b.class, f1385d);
    }

    /* compiled from: IdSnapshot.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.b$e */
    /* loaded from: classes2.dex */
    public enum EnumC2471e implements AbstractC2374s {
        IDENTITY(1, "identity"),
        TS(2, "ts"),
        VERSION(3, ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
        

        /* renamed from: d */
        private static final Map<String, EnumC2471e> f1401d = new HashMap();

        /* renamed from: e */
        private final short f1403e;

        /* renamed from: f */
        private final String f1404f;

        static {
            Iterator it = EnumSet.allOf(EnumC2471e.class).iterator();
            while (it.hasNext()) {
                EnumC2471e enumC2471e = (EnumC2471e) it.next();
                f1401d.put(enumC2471e.mo38b(), enumC2471e);
            }
        }

        /* renamed from: a */
        public static EnumC2471e m150a(int i) {
            switch (i) {
                case 1:
                    return IDENTITY;
                case 2:
                    return TS;
                case 3:
                    return VERSION;
                default:
                    return null;
            }
        }

        /* renamed from: b */
        public static EnumC2471e m148b(int i) {
            EnumC2471e m150a = m150a(i);
            if (m150a == null) {
                throw new IllegalArgumentException("Field " + i + " doesn't exist!");
            }
            return m150a;
        }

        /* renamed from: a */
        public static EnumC2471e m149a(String str) {
            return f1401d.get(str);
        }

        EnumC2471e(short s, String str) {
            this.f1403e = s;
            this.f1404f = str;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: a */
        public short mo41a() {
            return this.f1403e;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: b */
        public String mo38b() {
            return this.f1404f;
        }
    }

    public C2465b() {
        this.f1397m = (byte) 0;
    }

    public C2465b(String str, long j, int i) {
        this();
        this.f1394a = str;
        this.f1395b = j;
        m171b(true);
        this.f1396c = i;
        m169c(true);
    }

    public C2465b(C2465b c2465b) {
        this.f1397m = (byte) 0;
        this.f1397m = c2465b.f1397m;
        if (c2465b.m168d()) {
            this.f1394a = c2465b.f1394a;
        }
        this.f1395b = c2465b.f1395b;
        this.f1396c = c2465b.f1396c;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    /* renamed from: a */
    public C2465b deepCopy() {
        return new C2465b(this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void clear() {
        this.f1394a = null;
        m171b(false);
        this.f1395b = 0L;
        m169c(false);
        this.f1396c = 0;
    }

    /* renamed from: b */
    public String m173b() {
        return this.f1394a;
    }

    /* renamed from: a */
    public C2465b m175a(String str) {
        this.f1394a = str;
        return this;
    }

    /* renamed from: c */
    public void m170c() {
        this.f1394a = null;
    }

    /* renamed from: d */
    public boolean m168d() {
        return this.f1394a != null;
    }

    /* renamed from: a */
    public void m174a(boolean z) {
        if (!z) {
            this.f1394a = null;
        }
    }

    /* renamed from: e */
    public long m167e() {
        return this.f1395b;
    }

    /* renamed from: a */
    public C2465b m178a(long j) {
        this.f1395b = j;
        m171b(true);
        return this;
    }

    /* renamed from: f */
    public void m166f() {
        this.f1397m = C2362i.m608b(this.f1397m, 0);
    }

    /* renamed from: g */
    public boolean m165g() {
        return C2362i.m620a(this.f1397m, 0);
    }

    /* renamed from: b */
    public void m171b(boolean z) {
        this.f1397m = C2362i.m619a(this.f1397m, 0, z);
    }

    /* renamed from: h */
    public int m164h() {
        return this.f1396c;
    }

    /* renamed from: a */
    public C2465b m179a(int i) {
        this.f1396c = i;
        m169c(true);
        return this;
    }

    /* renamed from: i */
    public void m163i() {
        this.f1397m = C2362i.m608b(this.f1397m, 1);
    }

    /* renamed from: j */
    public boolean m162j() {
        return C2362i.m620a(this.f1397m, 1);
    }

    /* renamed from: c */
    public void m169c(boolean z) {
        this.f1397m = C2362i.m619a(this.f1397m, 1, z);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    /* renamed from: b */
    public EnumC2471e fieldForId(int i) {
        return EnumC2471e.m150a(i);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void read(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1391j.get(abstractC2328ak.mo732D()).mo42b().mo45b(abstractC2328ak, this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void write(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1391j.get(abstractC2328ak.mo732D()).mo42b().mo47a(abstractC2328ak, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdSnapshot(");
        sb.append("identity:");
        if (this.f1394a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1394a);
        }
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.f1395b);
        sb.append(", ");
        sb.append("version:");
        sb.append(this.f1396c);
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: k */
    public void m161k() throws C2373r {
        if (this.f1394a == null) {
            throw new C2329al("Required field 'identity' was not present! Struct: " + toString());
        }
    }

    /* renamed from: a */
    private void m176a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2320ae(new C2341aw(objectOutputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    /* renamed from: a */
    private void m177a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f1397m = (byte) 0;
            read(new C2320ae(new C2341aw(objectInputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    /* compiled from: IdSnapshot.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.b$b */
    /* loaded from: classes2.dex */
    private static class C2468b implements AbstractC2338at {
        private C2468b() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2467a mo42b() {
            return new C2467a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IdSnapshot.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.b$a */
    /* loaded from: classes2.dex */
    public static class C2467a extends AbstractC2339au<C2465b> {
        private C2467a() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo45b(AbstractC2328ak abstractC2328ak, C2465b c2465b) throws C2373r {
            abstractC2328ak.mo754j();
            while (true) {
                C2323af mo752l = abstractC2328ak.mo752l();
                if (mo752l.f893b != 0) {
                    switch (mo752l.f894c) {
                        case 1:
                            if (mo752l.f893b == 11) {
                                c2465b.f1394a = abstractC2328ak.mo738z();
                                c2465b.m174a(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 2:
                            if (mo752l.f893b == 10) {
                                c2465b.f1395b = abstractC2328ak.mo740x();
                                c2465b.m171b(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 3:
                            if (mo752l.f893b == 8) {
                                c2465b.f1396c = abstractC2328ak.mo741w();
                                c2465b.m169c(true);
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
                    if (!c2465b.m165g()) {
                        throw new C2329al("Required field 'ts' was not found in serialized data! Struct: " + toString());
                    }
                    if (!c2465b.m162j()) {
                        throw new C2329al("Required field 'version' was not found in serialized data! Struct: " + toString());
                    }
                    c2465b.m161k();
                    return;
                }
            }
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo47a(AbstractC2328ak abstractC2328ak, C2465b c2465b) throws C2373r {
            c2465b.m161k();
            abstractC2328ak.mo767a(C2465b.f1387f);
            if (c2465b.f1394a != null) {
                abstractC2328ak.mo772a(C2465b.f1388g);
                abstractC2328ak.mo766a(c2465b.f1394a);
                abstractC2328ak.mo761c();
            }
            abstractC2328ak.mo772a(C2465b.f1389h);
            abstractC2328ak.mo773a(c2465b.f1395b);
            abstractC2328ak.mo761c();
            abstractC2328ak.mo772a(C2465b.f1390i);
            abstractC2328ak.mo774a(c2465b.f1396c);
            abstractC2328ak.mo761c();
            abstractC2328ak.mo760d();
            abstractC2328ak.mo762b();
        }
    }

    /* compiled from: IdSnapshot.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.b$d */
    /* loaded from: classes2.dex */
    private static class C2470d implements AbstractC2338at {
        private C2470d() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2469c mo42b() {
            return new C2469c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IdSnapshot.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.b$c */
    /* loaded from: classes2.dex */
    public static class C2469c extends AbstractC2340av<C2465b> {
        private C2469c() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo47a(AbstractC2328ak abstractC2328ak, C2465b c2465b) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            c2334aq.a(c2465b.f1394a);
            c2334aq.a(c2465b.f1395b);
            c2334aq.a(c2465b.f1396c);
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo45b(AbstractC2328ak abstractC2328ak, C2465b c2465b) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            c2465b.f1394a = c2334aq.z();
            c2465b.m174a(true);
            c2465b.f1395b = c2334aq.x();
            c2465b.m171b(true);
            c2465b.f1396c = c2334aq.w();
            c2465b.m169c(true);
        }
    }
}
