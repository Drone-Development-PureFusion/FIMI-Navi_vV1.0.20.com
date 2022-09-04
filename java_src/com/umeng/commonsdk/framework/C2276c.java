package com.umeng.commonsdk.framework;

import android.content.Context;
import java.util.HashMap;
/* compiled from: UMModuleRegister.java */
/* renamed from: com.umeng.commonsdk.framework.c */
/* loaded from: classes2.dex */
public class C2276c {

    /* renamed from: a */
    public static final String f675a = "analytics";

    /* renamed from: b */
    public static final String f676b = "push";

    /* renamed from: c */
    public static final String f677c = "share";

    /* renamed from: d */
    public static final String f678d = "internal";

    /* renamed from: e */
    private static HashMap<String, UMLogDataProtocol> f679e = null;

    /* renamed from: f */
    private static Context f680f = null;

    /* renamed from: g */
    private static final int f681g = 16385;

    /* renamed from: h */
    private static final int f682h = 20480;

    /* renamed from: i */
    private static final int f683i = 24577;

    /* renamed from: j */
    private static final int f684j = 28672;

    /* renamed from: k */
    private static final int f685k = 32769;

    /* renamed from: l */
    private static final int f686l = 36864;

    /* renamed from: a */
    public static String m996a(int i) {
        String str = "analytics";
        if (i >= f681g && i <= f682h) {
            str = "push";
        }
        if (i >= f683i && i <= f684j) {
            str = "share";
        }
        if (i >= 32769 && i <= f686l) {
            return f678d;
        }
        return str;
    }

    /* renamed from: a */
    public static boolean m995a(int i, UMLogDataProtocol uMLogDataProtocol) {
        if (f679e == null) {
            f679e = new HashMap<>();
        }
        String m996a = m996a(i);
        if (!f679e.containsKey(m996a)) {
            if (!m997a().getPackageName().equals(C2273b.m1016a(m997a().getApplicationContext()))) {
                return false;
            }
            f679e.put(m996a, uMLogDataProtocol);
            return true;
        }
        return true;
    }

    /* renamed from: a */
    public static void m994a(Context context) {
        if (f680f == null) {
            f680f = context.getApplicationContext();
        }
    }

    /* renamed from: a */
    public static UMLogDataProtocol m993a(String str) {
        if (f679e.containsKey(str)) {
            return f679e.get(str);
        }
        return null;
    }

    /* renamed from: a */
    public static Context m997a() {
        return f680f;
    }
}
