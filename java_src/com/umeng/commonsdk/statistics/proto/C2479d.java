package com.umeng.commonsdk.statistics.proto;

import com.facebook.internal.ServerProtocol;
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
import com.umeng.commonsdk.proguard.C2325ah;
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
/* compiled from: Imprint.java */
/* renamed from: com.umeng.commonsdk.statistics.proto.d */
/* loaded from: classes2.dex */
public class C2479d implements AbstractC2365l<C2479d, EnumC2485e>, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map<EnumC2485e, C2384x> f1423d;

    /* renamed from: e */
    private static final long f1424e = 2846460275012375038L;

    /* renamed from: f */
    private static final C2333ap f1425f = new C2333ap("Imprint");

    /* renamed from: g */
    private static final C2323af f1426g = new C2323af("property", (byte) 13, 1);

    /* renamed from: h */
    private static final C2323af f1427h = new C2323af(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, (byte) 8, 2);

    /* renamed from: i */
    private static final C2323af f1428i = new C2323af("checksum", (byte) 11, 3);

    /* renamed from: j */
    private static final Map<Class<? extends AbstractC2337as>, AbstractC2338at> f1429j = new HashMap();

    /* renamed from: k */
    private static final int f1430k = 0;

    /* renamed from: a */
    public Map<String, C2486e> f1431a;

    /* renamed from: b */
    public int f1432b;

    /* renamed from: c */
    public String f1433c;

    /* renamed from: l */
    private byte f1434l;

    static {
        f1429j.put(AbstractC2339au.class, new C2482b());
        f1429j.put(AbstractC2340av.class, new C2484d());
        EnumMap enumMap = new EnumMap(EnumC2485e.class);
        enumMap.put((EnumMap) EnumC2485e.PROPERTY, (EnumC2485e) new C2384x("property", (byte) 1, new C2315aa((byte) 13, new C2385y((byte) 11), new C2317ac((byte) 12, C2486e.class))));
        enumMap.put((EnumMap) EnumC2485e.VERSION, (EnumC2485e) new C2384x(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, (byte) 1, new C2385y((byte) 8)));
        enumMap.put((EnumMap) EnumC2485e.CHECKSUM, (EnumC2485e) new C2384x("checksum", (byte) 1, new C2385y((byte) 11)));
        f1423d = Collections.unmodifiableMap(enumMap);
        C2384x.m526a(C2479d.class, f1423d);
    }

    /* compiled from: Imprint.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.d$e */
    /* loaded from: classes2.dex */
    public enum EnumC2485e implements AbstractC2374s {
        PROPERTY(1, "property"),
        VERSION(2, ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION),
        CHECKSUM(3, "checksum");
        

        /* renamed from: d */
        private static final Map<String, EnumC2485e> f1438d = new HashMap();

        /* renamed from: e */
        private final short f1440e;

        /* renamed from: f */
        private final String f1441f;

        static {
            Iterator it = EnumSet.allOf(EnumC2485e.class).iterator();
            while (it.hasNext()) {
                EnumC2485e enumC2485e = (EnumC2485e) it.next();
                f1438d.put(enumC2485e.mo38b(), enumC2485e);
            }
        }

        /* renamed from: a */
        public static EnumC2485e m77a(int i) {
            switch (i) {
                case 1:
                    return PROPERTY;
                case 2:
                    return VERSION;
                case 3:
                    return CHECKSUM;
                default:
                    return null;
            }
        }

        /* renamed from: b */
        public static EnumC2485e m75b(int i) {
            EnumC2485e m77a = m77a(i);
            if (m77a == null) {
                throw new IllegalArgumentException("Field " + i + " doesn't exist!");
            }
            return m77a;
        }

        /* renamed from: a */
        public static EnumC2485e m76a(String str) {
            return f1438d.get(str);
        }

        EnumC2485e(short s, String str) {
            this.f1440e = s;
            this.f1441f = str;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: a */
        public short mo41a() {
            return this.f1440e;
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2374s
        /* renamed from: b */
        public String mo38b() {
            return this.f1441f;
        }
    }

    public C2479d() {
        this.f1434l = (byte) 0;
    }

    public C2479d(Map<String, C2486e> map, int i, String str) {
        this();
        this.f1431a = map;
        this.f1432b = i;
        m99b(true);
        this.f1433c = str;
    }

    public C2479d(C2479d c2479d) {
        this.f1434l = (byte) 0;
        this.f1434l = c2479d.f1434l;
        if (c2479d.m95e()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, C2486e> entry : c2479d.f1431a.entrySet()) {
                hashMap.put(entry.getKey(), new C2486e(entry.getValue()));
            }
            this.f1431a = hashMap;
        }
        this.f1432b = c2479d.f1432b;
        if (c2479d.m89k()) {
            this.f1433c = c2479d.f1433c;
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    /* renamed from: a */
    public C2479d deepCopy() {
        return new C2479d(this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void clear() {
        this.f1431a = null;
        m99b(false);
        this.f1432b = 0;
        this.f1433c = null;
    }

    /* renamed from: b */
    public int m101b() {
        if (this.f1431a == null) {
            return 0;
        }
        return this.f1431a.size();
    }

    /* renamed from: a */
    public void m104a(String str, C2486e c2486e) {
        if (this.f1431a == null) {
            this.f1431a = new HashMap();
        }
        this.f1431a.put(str, c2486e);
    }

    /* renamed from: c */
    public Map<String, C2486e> m98c() {
        return this.f1431a;
    }

    /* renamed from: a */
    public C2479d m103a(Map<String, C2486e> map) {
        this.f1431a = map;
        return this;
    }

    /* renamed from: d */
    public void m96d() {
        this.f1431a = null;
    }

    /* renamed from: e */
    public boolean m95e() {
        return this.f1431a != null;
    }

    /* renamed from: a */
    public void m102a(boolean z) {
        if (!z) {
            this.f1431a = null;
        }
    }

    /* renamed from: f */
    public int m94f() {
        return this.f1432b;
    }

    /* renamed from: a */
    public C2479d m108a(int i) {
        this.f1432b = i;
        m99b(true);
        return this;
    }

    /* renamed from: g */
    public void m93g() {
        this.f1434l = C2362i.m608b(this.f1434l, 0);
    }

    /* renamed from: h */
    public boolean m92h() {
        return C2362i.m620a(this.f1434l, 0);
    }

    /* renamed from: b */
    public void m99b(boolean z) {
        this.f1434l = C2362i.m619a(this.f1434l, 0, z);
    }

    /* renamed from: i */
    public String m91i() {
        return this.f1433c;
    }

    /* renamed from: a */
    public C2479d m105a(String str) {
        this.f1433c = str;
        return this;
    }

    /* renamed from: j */
    public void m90j() {
        this.f1433c = null;
    }

    /* renamed from: k */
    public boolean m89k() {
        return this.f1433c != null;
    }

    /* renamed from: c */
    public void m97c(boolean z) {
        if (!z) {
            this.f1433c = null;
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    /* renamed from: b */
    public EnumC2485e fieldForId(int i) {
        return EnumC2485e.m77a(i);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void read(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1429j.get(abstractC2328ak.mo732D()).mo42b().mo45b(abstractC2328ak, this);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void write(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1429j.get(abstractC2328ak.mo732D()).mo42b().mo47a(abstractC2328ak, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Imprint(");
        sb.append("property:");
        if (this.f1431a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1431a);
        }
        sb.append(", ");
        sb.append("version:");
        sb.append(this.f1432b);
        sb.append(", ");
        sb.append("checksum:");
        if (this.f1433c == null) {
            sb.append("null");
        } else {
            sb.append(this.f1433c);
        }
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: l */
    public void m88l() throws C2373r {
        if (this.f1431a == null) {
            throw new C2329al("Required field 'property' was not present! Struct: " + toString());
        }
        if (this.f1433c == null) {
            throw new C2329al("Required field 'checksum' was not present! Struct: " + toString());
        }
    }

    /* renamed from: a */
    private void m106a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2320ae(new C2341aw(objectOutputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    /* renamed from: a */
    private void m107a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.f1434l = (byte) 0;
            read(new C2320ae(new C2341aw(objectInputStream)));
        } catch (C2373r e) {
            throw new IOException(e.getMessage());
        }
    }

    /* compiled from: Imprint.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.d$b */
    /* loaded from: classes2.dex */
    private static class C2482b implements AbstractC2338at {
        private C2482b() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2481a mo42b() {
            return new C2481a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Imprint.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.d$a */
    /* loaded from: classes2.dex */
    public static class C2481a extends AbstractC2339au<C2479d> {
        private C2481a() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo45b(AbstractC2328ak abstractC2328ak, C2479d c2479d) throws C2373r {
            abstractC2328ak.mo754j();
            while (true) {
                C2323af mo752l = abstractC2328ak.mo752l();
                if (mo752l.f893b != 0) {
                    switch (mo752l.f894c) {
                        case 1:
                            if (mo752l.f893b == 13) {
                                C2325ah mo750n = abstractC2328ak.mo750n();
                                c2479d.f1431a = new HashMap(mo750n.f899c * 2);
                                for (int i = 0; i < mo750n.f899c; i++) {
                                    String mo738z = abstractC2328ak.mo738z();
                                    C2486e c2486e = new C2486e();
                                    c2486e.read(abstractC2328ak);
                                    c2479d.f1431a.put(mo738z, c2486e);
                                }
                                abstractC2328ak.mo749o();
                                c2479d.m102a(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 2:
                            if (mo752l.f893b == 8) {
                                c2479d.f1432b = abstractC2328ak.mo741w();
                                c2479d.m99b(true);
                                break;
                            } else {
                                C2331an.m735a(abstractC2328ak, mo752l.f893b);
                                break;
                            }
                        case 3:
                            if (mo752l.f893b == 11) {
                                c2479d.f1433c = abstractC2328ak.mo738z();
                                c2479d.m97c(true);
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
                    if (!c2479d.m92h()) {
                        throw new C2329al("Required field 'version' was not found in serialized data! Struct: " + toString());
                    }
                    c2479d.m88l();
                    return;
                }
            }
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo47a(AbstractC2328ak abstractC2328ak, C2479d c2479d) throws C2373r {
            c2479d.m88l();
            abstractC2328ak.mo767a(C2479d.f1425f);
            if (c2479d.f1431a != null) {
                abstractC2328ak.mo772a(C2479d.f1426g);
                abstractC2328ak.mo770a(new C2325ah((byte) 11, (byte) 12, c2479d.f1431a.size()));
                for (Map.Entry<String, C2486e> entry : c2479d.f1431a.entrySet()) {
                    abstractC2328ak.mo766a(entry.getKey());
                    entry.getValue().write(abstractC2328ak);
                }
                abstractC2328ak.mo759e();
                abstractC2328ak.mo761c();
            }
            abstractC2328ak.mo772a(C2479d.f1427h);
            abstractC2328ak.mo774a(c2479d.f1432b);
            abstractC2328ak.mo761c();
            if (c2479d.f1433c != null) {
                abstractC2328ak.mo772a(C2479d.f1428i);
                abstractC2328ak.mo766a(c2479d.f1433c);
                abstractC2328ak.mo761c();
            }
            abstractC2328ak.mo760d();
            abstractC2328ak.mo762b();
        }
    }

    /* compiled from: Imprint.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.d$d */
    /* loaded from: classes2.dex */
    private static class C2484d implements AbstractC2338at {
        private C2484d() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2483c mo42b() {
            return new C2483c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Imprint.java */
    /* renamed from: com.umeng.commonsdk.statistics.proto.d$c */
    /* loaded from: classes2.dex */
    public static class C2483c extends AbstractC2340av<C2479d> {
        private C2483c() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo47a(AbstractC2328ak abstractC2328ak, C2479d c2479d) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            c2334aq.a(c2479d.f1431a.size());
            for (Map.Entry<String, C2486e> entry : c2479d.f1431a.entrySet()) {
                c2334aq.a(entry.getKey());
                entry.getValue().write(c2334aq);
            }
            c2334aq.a(c2479d.f1432b);
            c2334aq.a(c2479d.f1433c);
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo45b(AbstractC2328ak abstractC2328ak, C2479d c2479d) throws C2373r {
            C2334aq c2334aq = (C2334aq) abstractC2328ak;
            C2325ah c2325ah = new C2325ah((byte) 11, (byte) 12, c2334aq.w());
            c2479d.f1431a = new HashMap(c2325ah.f899c * 2);
            for (int i = 0; i < c2325ah.f899c; i++) {
                String z = c2334aq.z();
                C2486e c2486e = new C2486e();
                c2486e.read(c2334aq);
                c2479d.f1431a.put(z, c2486e);
            }
            c2479d.m102a(true);
            c2479d.f1432b = c2334aq.w();
            c2479d.m99b(true);
            c2479d.f1433c = c2334aq.z();
            c2479d.m97c(true);
        }
    }
}
