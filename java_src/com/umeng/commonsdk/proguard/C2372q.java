package com.umeng.commonsdk.proguard;

import java.lang.reflect.InvocationTargetException;
/* compiled from: TEnumHelper.java */
/* renamed from: com.umeng.commonsdk.proguard.q */
/* loaded from: classes2.dex */
public class C2372q {
    /* renamed from: a */
    public static AbstractC2371p m558a(Class<? extends AbstractC2371p> cls, int i) {
        try {
            return (AbstractC2371p) cls.getMethod("findByValue", Integer.TYPE).invoke(null, Integer.valueOf(i));
        } catch (IllegalAccessException e) {
            return null;
        } catch (NoSuchMethodException e2) {
            return null;
        } catch (InvocationTargetException e3) {
            return null;
        }
    }
}
