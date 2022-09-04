package com.umeng.commonsdk.statistics.proto;

import com.umeng.commonsdk.proguard.AbstractC2328ak;
import com.umeng.commonsdk.proguard.AbstractC2337as;
import com.umeng.commonsdk.proguard.AbstractC2338at;
import com.umeng.commonsdk.proguard.AbstractC2339au;
import com.umeng.commonsdk.proguard.AbstractC2340av;
import com.umeng.commonsdk.proguard.AbstractC2365l;
import com.umeng.commonsdk.proguard.AbstractC2374s;
import com.umeng.commonsdk.proguard.C2315aa;
import com.umeng.commonsdk.proguard.C2317ac;
import com.umeng.commonsdk.proguard.C2320ae;
import com.umeng.commonsdk.proguard.C2323af;
import com.umeng.commonsdk.proguard.C2324ag;
import com.umeng.commonsdk.proguard.C2325ah;
import com.umeng.commonsdk.proguard.C2329al;
import com.umeng.commonsdk.proguard.C2331an;
import com.umeng.commonsdk.proguard.C2333ap;
import com.umeng.commonsdk.proguard.C2334aq;
import com.umeng.commonsdk.proguard.C2341aw;
import com.umeng.commonsdk.proguard.C2373r;
import com.umeng.commonsdk.proguard.C2384x;
import com.umeng.commonsdk.proguard.C2385y;
import com.umeng.commonsdk.proguard.C2386z;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* compiled from: IdTracking.java */
/* renamed from: com.umeng.commonsdk.statistics.proto.c */
/* loaded from: classes2.dex */
public class C2472c implements AbstractC2365l<C2472c, EnumC2478e>, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map<EnumC2478e, C2384x> f1405d;

    /* renamed from: e */
    private static final long f1406e = -5764118265293965743L;

    /* renamed from: f */
    private static final C2333ap f1407f = new C2333ap("IdTracking");

    /* renamed from: g */
    private static final C2323af f1408g = new C2323af("snapshots", (byte) 13, 1);

    /* renamed from: h */
    private static final C2323af f1409h = new C2323af("journals", (byte) 15, 2);

    /* renamed from: i */
    private static final C2323af f1410i = new C2323af("checksum", (byte) 11, 3);

    /* renamed from: j */
    private static final Map<Class<? extends AbstractC2337as>, AbstractC2338at> f1411j = new HashMap();

    /* renamed from: a */
    public Map<String, C2465b> f1412a;

    /* renamed from: b */
    public List<C2458a> f1413b;

    /* renamed from: c */
    public String f1414c;

    /* renamed from: k */
    private EnumC2478e[] f1415k;

    static {
        f1411j.put(AbstractC2339au.class, new C2475b());
        f1411j.put(AbstractC2340av.class, new C2477d());
        EnumMap enumMap = new EnumMap(EnumC2478e.class);
        enumMap.put((EnumMap) EnumC2478e.SNAPSHOTS, (EnumC2478e) new C2384x("snapshots", (byte) 1, new C2315aa((byte) 13, new C2385y((byte) 11), new C2317ac((byte) 12, C2465b.class))));
        enumMap.put((EnumMap) EnumC2478e.JOURNALS, (EnumC2478e) new C2384x("journals", (byte) 2, new C2386z((byte) 15, new C2317ac((byte) 12, C2458a.class))));
        enumMap.put((EnumMap) EnumC2478e.CHECKSUM, (EnumC2478e) new C2384x("checksum", (byte) 2, new C2385y((byte) 11)));
        f1405d = Collections.unmodifiableMap(enumMap);
        C2384x.m526a(C2472c.class, f1405d);
    }

    /* compiled from: IdTracking.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.c$e */
    /* loaded from: classes2.dex */
    public enum EnumC2478e implements AbstractC2374s {
        SNAPSHOTS(1, "snapshots"),
        JOURNALS(2, "journals"),
        CHECKSUM(3, "checksum");
        

        /* renamed from: d */
        private static final Map<String, EnumC2478e> f1419d = new HashMap();

        /* renamed from: e */
        private final short f1421e;

        /* renamed from: f */
        private final String f1422f;

        static {
            Iterator it = EnumSet.allOf(EnumC2478e.class).iterator();
            while (it.hasNext()) {
                EnumC2478e enumC2478e = (EnumC2478e) it.next();
                f1419d.put(enumC2478e.mo38b(), enumC2478e);
            }
        }

        /* renamed from: a */
        public static EnumC2478e m112a(int i) {
            switch (i) {
                case 1:
                    return SNAPSHOTS;
                case 2:
                    return JOURNALS;
                case 3:
                    return CHECKSUM;
                default:
                    return null;
            }
        }

        /* renamed from: b */
        public static EnumC2478e m110b(int i) {
            EnumC2478e m112a = m112a(i);
            if (m112a == null) {
                throw new IllegalArgumentException("Field " + i + " doesn't exist!");
            }
            return m112a;
        }

        /* renamed from: a */
        public static EnumC2478e m111a(String str) {
            return f1419d.get(str);
        }

        EnumC2478e(short s, String str) {
            this.f1421e = s;
            this.f1422f = str;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: a */
        public short mo41a() {
            return this.f1421e;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: b */
        public String mo38b() {
            return this.f1422f;
        }
    }

    public C2472c() {
        this.f1415k = new EnumC2478e[]{EnumC2478e.JOURNALS, EnumC2478e.CHECKSUM};
    }

    public C2472c(Map<String, C2465b> map) {
        this();
        this.f1412a = map;
    }

    public C2472c(C2472c c2472c) {
        this.f1415k = new EnumC2478e[]{EnumC2478e.JOURNALS, EnumC2478e.CHECKSUM};
        if (c2472c.m132e()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, C2465b> entry : c2472c.f1412a.entrySet()) {
                hashMap.put(entry.getKey(), new C2465b(entry.getValue()));
            }
            this.f1412a = hashMap;
        }
        if (c2472c.m127j()) {
            ArrayList arrayList = new ArrayList();
            for (C2458a c2458a : c2472c.f1413b) {
                arrayList.add(new C2458a(c2458a));
            }
            this.f1413b = arrayList;
        }
        if (c2472c.m124m()) {
            this.f1414c = c2472c.f1414c;
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    /* renamed from: a */
    public C2472c deepCopy() {
        return new C2472c(this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void clear() {
        this.f1412a = null;
        this.f1413b = null;
        this.f1414c = null;
    }

    /* renamed from: b */
    public int m137b() {
        if (this.f1412a == null) {
            return 0;
        }
        return this.f1412a.size();
    }

    /* renamed from: a */
    public void m141a(String str, C2465b c2465b) {
        if (this.f1412a == null) {
            this.f1412a = new HashMap();
        }
        this.f1412a.put(str, c2465b);
    }

    /* renamed from: c */
    public Map<String, C2465b> m135c() {
        return this.f1412a;
    }

    /* renamed from: a */
    public C2472c m139a(Map<String, C2465b> map) {
        this.f1412a = map;
        return this;
    }

    /* renamed from: d */
    public void m133d() {
        this.f1412a = null;
    }

    /* renamed from: e */
    public boolean m132e() {
        return this.f1412a != null;
    }

    /* renamed from: a */
    public void m138a(boolean z) {
        if (!z) {
            this.f1412a = null;
        }
    }

    /* renamed from: f */
    public int m131f() {
        if (this.f1413b == null) {
            return 0;
        }
        return this.f1413b.size();
    }

    /* renamed from: g */
    public Iterator<C2458a> m130g() {
        if (this.f1413b == null) {
            return null;
        }
        return this.f1413b.iterator();
    }

    /* renamed from: a */
    public void m145a(C2458a c2458a) {
        if (this.f1413b == null) {
            this.f1413b = new ArrayList();
        }
        this.f1413b.add(c2458a);
    }

    /* renamed from: h */
    public List<C2458a> m129h() {
        return this.f1413b;
    }

    /* renamed from: a */
    public C2472c m140a(List<C2458a> list) {
        this.f1413b = list;
        return this;
    }

    /* renamed from: i */
    public void m128i() {
        this.f1413b = null;
    }

    /* renamed from: j */
    public boolean m127j() {
        return this.f1413b != null;
    }

    /* renamed from: b */
    public void m136b(boolean z) {
        if (!z) {
            this.f1413b = null;
        }
    }

    /* renamed from: k */
    public String m126k() {
        return this.f1414c;
    }

    /* renamed from: a */
    public C2472c m142a(String str) {
        this.f1414c = str;
        return this;
    }

    /* renamed from: l */
    public void m125l() {
        this.f1414c = null;
    }

    /* renamed from: m */
    public boolean m124m() {
        return this.f1414c != null;
    }

    /* renamed from: c */
    public void m134c(boolean z) {
        if (!z) {
            this.f1414c = null;
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    /* renamed from: a */
    public EnumC2478e fieldForId(int i) {
        return EnumC2478e.m112a(i);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void read(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1411j.get(abstractC2328ak.mo732D()).mo42b().mo45b(abstractC2328ak, this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void write(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1411j.get(abstractC2328ak.mo732D()).mo42b().mo47a(abstractC2328ak, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdTracking(");
        sb.append("snapshots:");
        if (this.f1412a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1412a);
        }
        if (m127j()) {
            sb.append(", ");
            sb.append("journals:");
            if (this.f1413b == null) {
                sb.append("null");
            } else {
                sb.append(this.f1413b);
            }
        }
        if (m124m()) {
            sb.append(", ");
            sb.append("checksum:");
            if (this.f1414c == null) {
                sb.append("null");
            } else {
                sb.append(this.f1414c);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: n */
    public void m123n() throws C2373r {
        if (this.f1412a == null) {
            throw new C2329al("Required field 'snapshots' was not present! Struct: " + toString());
        }
    }

    /* renamed from: a */
    private void m143a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2320ae(new C2341aw(objectOutputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    /* renamed from: a */
    private void m144a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            read(new C2320ae(new C2341aw(objectInputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    /* compiled from: IdTracking.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.c$b */
    /* loaded from: classes2.dex */
    private static class C2475b implements AbstractC2338at {
        private C2475b() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2474a mo42b() {
            return new C2474a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IdTracking.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.c$a */
    /* loaded from: classes2.dex */
    public static class C2474a extends AbstractC2339au<C2472c> {
        private C2474a() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo45b(AbstractC2328ak abstractC2328ak, C2472c c2472c) throws C2373r {
            abstractC2328ak.mo754j();
            while (true) {
                C2323af mo752l = abstractC2328ak.mo752l();
                if (mo752l.f893b != 0) {
                    switch (mo752l.f894c) {
                        case 1:
                            if (mo752l.f893b == 13) {
                                C2325ah mo750n = abstractC2328ak.mo750n();
                                c2472c.f1412a = new HashMap(mo750n.f899c * 2);
                                for (int i = 0; i < mo750n.f899c; i++) {
                                    String mo738z = abstractC2328ak.mo738z();
                                    C2465b c2465b = new C2465b();
                                    c2465b.read(abstractC2328ak);
                                    c2472c.f1412a.put(mo738z, c2465b);
                                }
                                abstractC2328ak.mo749o();
                                c2472c.m138a(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 2:
                            if (mo752l.f893b == 15) {
                                C2324ag mo748p = abstractC2328ak.mo748p();
                                c2472c.f1413b = new ArrayList(mo748p.f896b);
                                for (int i2 = 0; i2 < mo748p.f896b; i2++) {
                                    C2458a c2458a = new C2458a();
                                    c2458a.read(abstractC2328ak);
                                    c2472c.f1413b.add(c2458a);
                                }
                                abstractC2328ak.mo747q();
                                c2472c.m136b(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 3:
                            if (mo752l.f893b == 11) {
                                c2472c.f1414c = abstractC2328ak.mo738z();
                                c2472c.m134c(true);
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
                    c2472c.m123n();
                    return;
                }
            }
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo47a(AbstractC2328ak abstractC2328ak, C2472c c2472c) throws C2373r {
            c2472c.m123n();
            abstractC2328ak.mo767a(C2472c.f1407f);
            if (c2472c.f1412a != null) {
                abstractC2328ak.mo772a(C2472c.f1408g);
                abstractC2328ak.mo770a(new C2325ah((byte) 11, (byte) 12, c2472c.f1412a.size()));
                for (Map.Entry<String, C2465b> entry : c2472c.f1412a.entrySet()) {
                    abstractC2328ak.mo766a(entry.getKey());
                    entry.getValue().write(abstractC2328ak);
                }
                abstractC2328ak.mo759e();
                abstractC2328ak.mo761c();
            }
            if (c2472c.f1413b != null && c2472c.m127j()) {
                abstractC2328ak.mo772a(C2472c.f1409h);
                abstractC2328ak.mo771a(new C2324ag((byte) 12, c2472c.f1413b.size()));
                for (C2458a c2458a : c2472c.f1413b) {
                    c2458a.write(abstractC2328ak);
                }
                abstractC2328ak.mo758f();
                abstractC2328ak.mo761c();
            }
            if (c2472c.f1414c != null && c2472c.m124m()) {
                abstractC2328ak.mo772a(C2472c.f1410i);
                abstractC2328ak.mo766a(c2472c.f1414c);
                abstractC2328ak.mo761c();
            }
            abstractC2328ak.mo760d();
            abstractC2328ak.mo762b();
        }
    }

    /* compiled from: IdTracking.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.c$d */
    /* loaded from: classes2.dex */
    private static class C2477d implements AbstractC2338at {
        private C2477d() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2476c mo42b() {
            return new C2476c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IdTracking.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.c$c */
    /* loaded from: classes2.dex */
    public static class C2476c extends AbstractC2340av<C2472c> {
        private C2476c() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo47a(AbstractC2328ak abstractC2328ak, C2472c c2472c) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            c2334aq.a(c2472c.f1412a.size());
            for (Map.Entry<String, C2465b> entry : c2472c.f1412a.entrySet()) {
                c2334aq.a(entry.getKey());
                entry.getValue().write(c2334aq);
            }
            BitSet bitSet = new BitSet();
            if (c2472c.m127j()) {
                bitSet.set(0);
            }
            if (c2472c.m124m()) {
                bitSet.set(1);
            }
            c2334aq.m731a(bitSet, 2);
            if (c2472c.m127j()) {
                c2334aq.a(c2472c.f1413b.size());
                for (C2458a c2458a : c2472c.f1413b) {
                    c2458a.write(c2334aq);
                }
            }
            if (c2472c.m124m()) {
                c2334aq.a(c2472c.f1414c);
            }
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo45b(AbstractC2328ak abstractC2328ak, C2472c c2472c) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            C2325ah c2325ah = new C2325ah((byte) 11, (byte) 12, c2334aq.w());
            c2472c.f1412a = new HashMap(c2325ah.f899c * 2);
            for (int i = 0; i < c2325ah.f899c; i++) {
                String z = c2334aq.z();
                C2465b c2465b = new C2465b();
                c2465b.read(c2334aq);
                c2472c.f1412a.put(z, c2465b);
            }
            c2472c.m138a(true);
            BitSet m729b = c2334aq.m729b(2);
            if (m729b.get(0)) {
                C2324ag c2324ag = new C2324ag((byte) 12, c2334aq.w());
                c2472c.f1413b = new ArrayList(c2324ag.f896b);
                for (int i2 = 0; i2 < c2324ag.f896b; i2++) {
                    C2458a c2458a = new C2458a();
                    c2458a.read(c2334aq);
                    c2472c.f1413b.add(c2458a);
                }
                c2472c.m136b(true);
            }
            if (m729b.get(1)) {
                c2472c.f1414c = c2334aq.z();
                c2472c.m134c(true);
            }
        }
    }
}
