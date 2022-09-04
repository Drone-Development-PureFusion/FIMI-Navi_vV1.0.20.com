package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.AbstractC2374s;
import com.umeng.commonsdk.proguard.AbstractC2377v;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: TUnion.java */
/* renamed from: com.umeng.commonsdk.proguard.v */
/* loaded from: classes2.dex */
public abstract class AbstractC2377v<T extends AbstractC2377v<?, ?>, F extends AbstractC2374s> implements AbstractC2365l<T, F> {

    /* renamed from: c */
    private static final Map<Class<? extends AbstractC2337as>, AbstractC2338at> f1110c = new HashMap();

    /* renamed from: a */
    protected Object f1111a;

    /* renamed from: b */
    protected F f1112b;

    /* renamed from: a */
    protected abstract F m542a(short s);

    /* renamed from: a */
    protected abstract Object m550a(AbstractC2328ak abstractC2328ak, C2323af c2323af) throws C2373r;

    /* renamed from: a */
    protected abstract Object m549a(AbstractC2328ak abstractC2328ak, short s) throws C2373r;

    /* renamed from: a */
    protected abstract void m551a(AbstractC2328ak abstractC2328ak) throws C2373r;

    /* renamed from: b */
    protected abstract void m539b(AbstractC2328ak abstractC2328ak) throws C2373r;

    /* renamed from: b */
    protected abstract void m537b(F f, Object obj) throws ClassCastException;

    /* renamed from: c */
    protected abstract C2323af m535c(F f);

    /* renamed from: d */
    protected abstract C2333ap m534d();

    protected AbstractC2377v() {
        this.f1112b = null;
        this.f1111a = null;
    }

    static {
        f1110c.put(AbstractC2339au.class, new C2380b());
        f1110c.put(AbstractC2340av.class, new C2382d());
    }

    protected AbstractC2377v(F f, Object obj) {
        m547a((AbstractC2377v<T, F>) f, obj);
    }

    protected AbstractC2377v(AbstractC2377v<T, F> abstractC2377v) {
        if (!abstractC2377v.getClass().equals(getClass())) {
            throw new ClassCastException();
        }
        this.f1112b = abstractC2377v.f1112b;
        this.f1111a = m546a(abstractC2377v.f1111a);
    }

    /* renamed from: a */
    private static Object m546a(Object obj) {
        if (obj instanceof AbstractC2365l) {
            return ((AbstractC2365l) obj).deepCopy();
        }
        if (obj instanceof ByteBuffer) {
            return C2366m.m576d((ByteBuffer) obj);
        }
        if (obj instanceof List) {
            return m545a((List) obj);
        }
        if (obj instanceof Set) {
            return m543a((Set) obj);
        }
        if (obj instanceof Map) {
            return m544a((Map<Object, Object>) obj);
        }
        return obj;
    }

    /* renamed from: a */
    private static Map m544a(Map<Object, Object> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            hashMap.put(m546a(entry.getKey()), m546a(entry.getValue()));
        }
        return hashMap;
    }

    /* renamed from: a */
    private static Set m543a(Set set) {
        HashSet hashSet = new HashSet();
        for (Object obj : set) {
            hashSet.add(m546a(obj));
        }
        return hashSet;
    }

    /* renamed from: a */
    private static List m545a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Object obj : list) {
            arrayList.add(m546a(obj));
        }
        return arrayList;
    }

    /* renamed from: a */
    public F m554a() {
        return this.f1112b;
    }

    /* renamed from: b */
    public Object m541b() {
        return this.f1111a;
    }

    /* renamed from: a */
    public Object m548a(F f) {
        if (f != this.f1112b) {
            throw new IllegalArgumentException("Cannot get the value of field " + f + " because union's set field is " + this.f1112b);
        }
        return m541b();
    }

    /* renamed from: a */
    public Object m553a(int i) {
        return m548a((AbstractC2377v<T, F>) m542a((short) i));
    }

    /* renamed from: c */
    public boolean m536c() {
        return this.f1112b != null;
    }

    /* renamed from: b */
    public boolean m538b(F f) {
        return this.f1112b == f;
    }

    /* renamed from: b */
    public boolean m540b(int i) {
        return m538b((AbstractC2377v<T, F>) m542a((short) i));
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void read(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1110c.get(abstractC2328ak.mo732D()).mo42b().mo45b(abstractC2328ak, this);
    }

    /* renamed from: a */
    public void m547a(F f, Object obj) {
        m537b(f, obj);
        this.f1112b = f;
        this.f1111a = obj;
    }

    /* renamed from: a */
    public void m552a(int i, Object obj) {
        m547a((AbstractC2377v<T, F>) m542a((short) i), obj);
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public void write(AbstractC2328ak abstractC2328ak) throws C2373r {
        f1110c.get(abstractC2328ak.mo732D()).mo42b().mo47a(abstractC2328ak, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<");
        sb.append(getClass().getSimpleName());
        sb.append(" ");
        if (m554a() != null) {
            Object m541b = m541b();
            sb.append(m535c(m554a()).f892a);
            sb.append(":");
            if (m541b instanceof ByteBuffer) {
                C2366m.m587a((ByteBuffer) m541b, sb);
            } else {
                sb.append(m541b.toString());
            }
        }
        sb.append(">");
        return sb.toString();
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2365l
    public final void clear() {
        this.f1112b = null;
        this.f1111a = null;
    }

    /* compiled from: TUnion.java */
    /* renamed from: com.umeng.commonsdk.proguard.v$b */
    /* loaded from: classes2.dex */
    private static class C2380b implements AbstractC2338at {
        private C2380b() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2379a mo42b() {
            return new C2379a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TUnion.java */
    /* renamed from: com.umeng.commonsdk.proguard.v$a */
    /* loaded from: classes2.dex */
    public static class C2379a extends AbstractC2339au<AbstractC2377v> {
        private C2379a() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo45b(AbstractC2328ak abstractC2328ak, AbstractC2377v abstractC2377v) throws C2373r {
            abstractC2377v.f1112b = null;
            abstractC2377v.f1111a = null;
            abstractC2328ak.mo754j();
            C2323af mo752l = abstractC2328ak.mo752l();
            abstractC2377v.f1111a = abstractC2377v.m550a(abstractC2328ak, mo752l);
            if (abstractC2377v.f1111a != null) {
                abstractC2377v.f1112b = (F) abstractC2377v.m542a(mo752l.f894c);
            }
            abstractC2328ak.mo751m();
            abstractC2328ak.mo752l();
            abstractC2328ak.mo753k();
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo47a(AbstractC2328ak abstractC2328ak, AbstractC2377v abstractC2377v) throws C2373r {
            if (abstractC2377v.m554a() == null || abstractC2377v.m541b() == null) {
                throw new C2329al("Cannot write a TUnion with no set value!");
            }
            abstractC2328ak.mo767a(abstractC2377v.m534d());
            abstractC2328ak.mo772a(abstractC2377v.m535c(abstractC2377v.f1112b));
            abstractC2377v.m551a(abstractC2328ak);
            abstractC2328ak.mo761c();
            abstractC2328ak.mo760d();
            abstractC2328ak.mo762b();
        }
    }

    /* compiled from: TUnion.java */
    /* renamed from: com.umeng.commonsdk.proguard.v$d */
    /* loaded from: classes2.dex */
    private static class C2382d implements AbstractC2338at {
        private C2382d() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2338at
        /* renamed from: a */
        public C2381c mo42b() {
            return new C2381c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TUnion.java */
    /* renamed from: com.umeng.commonsdk.proguard.v$c */
    /* loaded from: classes2.dex */
    public static class C2381c extends AbstractC2340av<AbstractC2377v> {
        private C2381c() {
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: a */
        public void mo45b(AbstractC2328ak abstractC2328ak, AbstractC2377v abstractC2377v) throws C2373r {
            abstractC2377v.f1112b = null;
            abstractC2377v.f1111a = null;
            short mo742v = abstractC2328ak.mo742v();
            abstractC2377v.f1111a = abstractC2377v.m549a(abstractC2328ak, mo742v);
            if (abstractC2377v.f1111a != null) {
                abstractC2377v.f1112b = (F) abstractC2377v.m542a(mo742v);
            }
        }

        @Override // com.umeng.commonsdk.proguard.AbstractC2337as
        /* renamed from: b */
        public void mo47a(AbstractC2328ak abstractC2328ak, AbstractC2377v abstractC2377v) throws C2373r {
            if (abstractC2377v.m554a() == null || abstractC2377v.m541b() == null) {
                throw new C2329al("Cannot write a TUnion with no set value!");
            }
            abstractC2328ak.mo764a(abstractC2377v.f1112b.mo41a());
            abstractC2377v.m539b(abstractC2328ak);
        }
    }
}
