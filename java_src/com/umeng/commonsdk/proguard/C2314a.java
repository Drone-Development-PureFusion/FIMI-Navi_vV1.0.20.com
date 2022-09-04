package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.C2276c;
import com.umeng.commonsdk.statistics.common.C2419e;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
/* compiled from: AliUMIDManager.java */
/* renamed from: com.umeng.commonsdk.proguard.a */
/* loaded from: classes2.dex */
public class C2314a {

    /* renamed from: a */
    private static Object f838a = new Object();

    /* renamed from: b */
    private static String f839b;

    /* renamed from: a */
    public static void m808a(Context context) {
        Constructor<?> constructor;
        Object newInstance;
        try {
            Class<?>[] clsArr = {Context.class};
            try {
                Class<?> cls = Class.forName("com.wireless.security.securityenv.sdk.SecurityEnvSDK");
                if (cls != null && (constructor = cls.getConstructor(clsArr)) != null && (newInstance = constructor.newInstance(context)) != null) {
                    Method declaredMethod = cls.getDeclaredMethod("initSync", new Class[0]);
                    if (declaredMethod != null) {
                        declaredMethod.setAccessible(true);
                        declaredMethod.invoke(newInstance, new Object[0]);
                    }
                    Method declaredMethod2 = cls.getDeclaredMethod("getToken", new Class[0]);
                    if (declaredMethod2 != null) {
                        declaredMethod2.setAccessible(true);
                        String str = (String) declaredMethod2.invoke(newInstance, new Object[0]);
                        if (!TextUtils.isEmpty(str)) {
                            synchronized (f838a) {
                                f839b = str;
                            }
                        }
                    }
                }
            } catch (Exception e) {
            }
        } catch (Exception e2) {
            C2419e.m316c(C2276c.f678d, "e is " + e2);
        }
    }

    /* renamed from: b */
    public static String m807b(Context context) {
        String str;
        synchronized (f838a) {
            str = f839b;
        }
        return str;
    }
}
