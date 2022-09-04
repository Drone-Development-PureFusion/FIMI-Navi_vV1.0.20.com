package com.umeng.commonsdk.internal.utils;

import android.os.Build;
import com.umeng.commonsdk.internal.utils.C2301e;
import java.io.File;
/* compiled from: Root.java */
/* renamed from: com.umeng.commonsdk.internal.utils.h */
/* loaded from: classes2.dex */
public class C2305h {
    /* renamed from: a */
    public static boolean m866a() {
        return m865b() || m864c() || m863d() || m862e();
    }

    /* renamed from: b */
    private static boolean m865b() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    /* renamed from: c */
    private static boolean m864c() {
        try {
            if (new File("/system/app/Superuser.apk").exists()) {
                return true;
            }
        } catch (Exception e) {
        }
        return new File("/system/app/Kinguser.apk").exists();
    }

    /* renamed from: d */
    private static boolean m863d() {
        return new C2301e().m879a(C2301e.EnumC2302a.check_su_binary) != null;
    }

    /* renamed from: e */
    private static boolean m862e() {
        String[] strArr;
        int length = new String[]{"/bin", "/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/", "/su/bin/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/"}.length;
        for (int i = 0; i < length; i++) {
            if (new File(strArr[i] + "su").exists()) {
                return true;
            }
        }
        return false;
    }
}
