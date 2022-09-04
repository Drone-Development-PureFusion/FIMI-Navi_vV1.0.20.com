package com.umeng.commonsdk.proguard;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* compiled from: FieldMetaData.java */
/* renamed from: com.umeng.commonsdk.proguard.x */
/* loaded from: classes2.dex */
public class C2384x implements Serializable {

    /* renamed from: d */
    private static Map<Class<? extends AbstractC2365l>, Map<? extends AbstractC2374s, C2384x>> f1114d = new HashMap();

    /* renamed from: a */
    public final String f1115a;

    /* renamed from: b */
    public final byte f1116b;

    /* renamed from: c */
    public final C2385y f1117c;

    public C2384x(String str, byte b, C2385y c2385y) {
        this.f1115a = str;
        this.f1116b = b;
        this.f1117c = c2385y;
    }

    /* renamed from: a */
    public static void m526a(Class<? extends AbstractC2365l> cls, Map<? extends AbstractC2374s, C2384x> map) {
        f1114d.put(cls, map);
    }

    /* renamed from: a */
    public static Map<? extends AbstractC2374s, C2384x> m527a(Class<? extends AbstractC2365l> cls) {
        if (!f1114d.containsKey(cls)) {
            try {
                cls.newInstance();
            } catch (IllegalAccessException e) {
                throw new RuntimeException("IllegalAccessException for TBase class: " + cls.getName() + ", message: " + e.getMessage());
            } catch (InstantiationException e2) {
                throw new RuntimeException("InstantiationException for TBase class: " + cls.getName() + ", message: " + e2.getMessage());
            }
        }
        return f1114d.get(cls);
    }
}
