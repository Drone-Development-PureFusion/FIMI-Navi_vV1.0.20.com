package com.umeng.commonsdk.internal.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.statistics.common.C2419e;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import org.json.JSONObject;
/* compiled from: UMProbe.java */
/* renamed from: com.umeng.commonsdk.internal.utils.l */
/* loaded from: classes2.dex */
public class C2312l {

    /* renamed from: a */
    public static final String f831a = "UM_PROBE_DATA";

    /* renamed from: b */
    public static final String f832b = "_dsk_s";

    /* renamed from: c */
    public static final String f833c = "_thm_z";

    /* renamed from: d */
    public static final String f834d = "_gdf_r";

    /* renamed from: e */
    private static Object f835e = new Object();

    /* renamed from: a */
    public static String m816a(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f831a, 0);
            if (sharedPreferences == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            synchronized (f835e) {
                jSONObject.put(f832b, sharedPreferences.getString(f832b, ""));
                jSONObject.put(f833c, sharedPreferences.getString(f833c, ""));
                jSONObject.put(f834d, sharedPreferences.getString(f834d, ""));
            }
            return jSONObject.toString();
        } catch (Exception e) {
            C2345b.m708a(context, e);
            return null;
        }
    }

    /* renamed from: b */
    public static void m812b(final Context context) {
        if (!m809c(context)) {
            final String[] strArr = {"unknown", "unknown", "unknown"};
            new Thread() { // from class: com.umeng.commonsdk.internal.utils.l.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    super.run();
                    strArr[0] = C2312l.m810c();
                    strArr[1] = C2312l.m817a();
                    strArr[2] = C2312l.m813b();
                    C2419e.m319c("diskType = " + strArr[0] + "; ThremalZone = " + strArr[1] + "; GoldFishRc = " + strArr[2]);
                    C2312l.m811b(context, strArr);
                }
            }.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m811b(Context context, String[] strArr) {
        SharedPreferences sharedPreferences;
        if (context != null && (sharedPreferences = context.getApplicationContext().getSharedPreferences(f831a, 0)) != null) {
            synchronized (f835e) {
                sharedPreferences.edit().putString(f832b, strArr[0]).putString(f833c, strArr[1]).putString(f834d, strArr[2]).commit();
            }
        }
    }

    /* renamed from: c */
    public static boolean m809c(Context context) {
        SharedPreferences sharedPreferences;
        return (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f831a, 0)) == null || TextUtils.isEmpty(sharedPreferences.getString(f832b, ""))) ? false : true;
    }

    /* renamed from: a */
    public static int m814a(String str, String str2) throws IOException {
        int i;
        Process exec = Runtime.getRuntime().exec(str);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                i = -1;
                break;
            } else if (readLine.contains(str2)) {
                i = 1;
                break;
            }
        }
        try {
            if (exec.waitFor() == 0) {
                return i;
            }
            return -1;
        } catch (InterruptedException e) {
            return -1;
        }
    }

    /* renamed from: a */
    public static String m817a() {
        int i = -1;
        try {
            i = m814a("ls /sys/class/thermal", "thermal_zone");
        } catch (IOException e) {
        }
        if (i > 0) {
            return "thermal_zone";
        }
        if (i >= 0) {
            return "unknown";
        }
        return "noper";
    }

    /* renamed from: b */
    public static String m813b() {
        int i = -1;
        try {
            i = m814a("ls /", "goldfish");
        } catch (IOException e) {
        }
        if (i > 0) {
            return "goldfish";
        }
        if (i >= 0) {
            return "unknown";
        }
        return "noper";
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m810c() {
        BufferedReader bufferedReader;
        String str;
        BufferedReader bufferedReader2;
        String str2 = "unknown";
        try {
            bufferedReader2 = new BufferedReader(new FileReader("/proc/diskstats"));
            if (bufferedReader2 != null) {
                while (true) {
                    try {
                        String readLine = bufferedReader2.readLine();
                        if (readLine != null) {
                            if (readLine.contains("mmcblk")) {
                                str2 = "mmcblk";
                                break;
                            } else if (readLine.contains("sda")) {
                                str2 = "sda";
                                break;
                            } else if (readLine.contains("mtd")) {
                                str2 = "mtd";
                                break;
                            }
                        } else {
                            break;
                        }
                    } catch (Exception e) {
                        bufferedReader = bufferedReader2;
                        str = "noper";
                        bufferedReader2 = bufferedReader;
                        if (bufferedReader2 != null) {
                        }
                        return str;
                    }
                }
            }
            str = str2;
        } catch (Exception e2) {
            bufferedReader = null;
        }
        if (bufferedReader2 != null) {
            try {
                bufferedReader2.close();
            } catch (Throwable th) {
            }
        }
        return str;
    }
}
