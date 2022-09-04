package com.umeng.commonsdk.statistics.internal;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.utils.UMUtils;
/* compiled from: HeaderHelper.java */
/* renamed from: com.umeng.commonsdk.statistics.internal.a */
/* loaded from: classes2.dex */
public class C2445a {

    /* renamed from: a */
    private static Context f1345a = null;

    /* renamed from: b */
    private String f1346b;

    /* renamed from: c */
    private String f1347c;

    private C2445a() {
        this.f1346b = null;
        this.f1347c = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HeaderHelper.java */
    /* renamed from: com.umeng.commonsdk.statistics.internal.a$a */
    /* loaded from: classes2.dex */
    public static class C2447a {

        /* renamed from: a */
        private static final C2445a f1348a = new C2445a();

        private C2447a() {
        }
    }

    /* renamed from: a */
    public static C2445a m240a(Context context) {
        if (f1345a == null && context != null) {
            f1345a = context.getApplicationContext();
        }
        return C2447a.f1348a;
    }

    /* renamed from: a */
    public boolean m239a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str.startsWith(C2354g.f1001al);
        }
        return false;
    }

    /* renamed from: b */
    public void m237b(String str) {
        String substring = str.substring(0, str.indexOf(95));
        m235d(substring);
        m236c(substring);
    }

    /* renamed from: c */
    private void m236c(String str) {
        try {
            String replaceAll = str.replaceAll("&=", " ").replaceAll("&&", " ").replaceAll("==", "/");
            StringBuilder sb = new StringBuilder();
            sb.append(replaceAll).append("/").append("Android").append("/").append(Build.DISPLAY).append("/").append(Build.MODEL).append("/").append(Build.VERSION.RELEASE).append(" ").append(HelperUtils.getUmengMD5(UMUtils.getAppkey(f1345a)));
            this.f1346b = sb.toString();
        } catch (Throwable th) {
            C2345b.m708a(f1345a, th);
        }
    }

    /* renamed from: d */
    private void m235d(String str) {
        try {
            String str2 = str.split("&&")[0];
            if (!TextUtils.isEmpty(str2)) {
                String[] split = str2.split("&=");
                StringBuilder sb = new StringBuilder();
                sb.append(C2354g.f1011av);
                for (String str3 : split) {
                    if (!TextUtils.isEmpty(str3)) {
                        String substring = str3.substring(0, 2);
                        if (substring.endsWith("=")) {
                            substring = substring.replace("=", "");
                        }
                        sb.append(substring);
                    }
                }
                this.f1347c = sb.toString();
            }
        } catch (Throwable th) {
            C2345b.m708a(f1345a, th);
        }
    }

    /* renamed from: a */
    public String m241a() {
        return this.f1347c;
    }

    /* renamed from: b */
    public String m238b() {
        return this.f1346b;
    }
}
