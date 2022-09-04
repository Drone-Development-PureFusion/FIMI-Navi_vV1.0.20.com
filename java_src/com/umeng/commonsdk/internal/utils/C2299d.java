package com.umeng.commonsdk.internal.utils;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.InputStream;
/* compiled from: CpuUtil.java */
/* renamed from: com.umeng.commonsdk.internal.utils.d */
/* loaded from: classes2.dex */
public class C2299d {

    /* compiled from: CpuUtil.java */
    /* renamed from: com.umeng.commonsdk.internal.utils.d$a */
    /* loaded from: classes2.dex */
    public static class C2300a {

        /* renamed from: a */
        public String f765a;

        /* renamed from: b */
        public String f766b;

        /* renamed from: c */
        public int f767c;

        /* renamed from: d */
        public String f768d;

        /* renamed from: e */
        public String f769e;

        /* renamed from: f */
        public String f770f;

        /* renamed from: g */
        public String f771g;

        /* renamed from: h */
        public String f772h;

        /* renamed from: i */
        public String f773i;

        /* renamed from: j */
        public String f774j;

        /* renamed from: k */
        public String f775k;

        /* renamed from: l */
        public String f776l;
    }

    /* renamed from: a */
    public static C2300a m883a() {
        int i;
        C2300a c2300a;
        try {
            c2300a = new C2300a();
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"));
                String readLine = bufferedReader.readLine();
                boolean z = true;
                i = 0;
                while (true) {
                    if (readLine == null && readLine == "") {
                        break;
                    }
                    try {
                        String[] split = readLine.split(":\\s+", 2);
                        if (z && split != null && split.length > 1) {
                            c2300a.f765a = split[1];
                            z = false;
                        }
                        if (split != null && split.length > 1 && split[0].contains("processor")) {
                            i++;
                        }
                        if (split != null && split.length > 1 && split[0].contains("Features")) {
                            c2300a.f768d = split[1];
                        }
                        if (split != null && split.length > 1 && split[0].contains("implementer")) {
                            c2300a.f769e = split[1];
                        }
                        if (split != null && split.length > 1 && split[0].contains("architecture")) {
                            c2300a.f770f = split[1];
                        }
                        if (split != null && split.length > 1 && split[0].contains("variant")) {
                            c2300a.f771g = split[1];
                        }
                        if (split != null && split.length > 1 && split[0].contains("part")) {
                            c2300a.f772h = split[1];
                        }
                        if (split != null && split.length > 1 && split[0].contains("revision")) {
                            c2300a.f773i = split[1];
                        }
                        if (split != null && split.length > 1 && split[0].contains("Hardware")) {
                            c2300a.f774j = split[1];
                        }
                        if (split != null && split.length > 1 && split[0].contains("Revision")) {
                            c2300a.f775k = split[1];
                        }
                        if (split != null && split.length > 1 && split[0].contains("Serial")) {
                            c2300a.f776l = split[1];
                        }
                        if (split != null && split.length > 1 && split[0].contains("implementer")) {
                            c2300a.f769e = split[1];
                        }
                        readLine = bufferedReader.readLine();
                    } catch (Exception e) {
                    }
                }
            } catch (Exception e2) {
                i = 0;
            }
        } catch (Exception e3) {
            i = 0;
            c2300a = null;
        }
        c2300a.f767c = i;
        return c2300a;
    }

    /* renamed from: b */
    public static String m882b() {
        byte[] bArr;
        String str = "";
        try {
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            while (inputStream.read(new byte[24]) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
        } catch (Exception e) {
        }
        return str.trim();
    }

    /* renamed from: c */
    public static String m881c() {
        byte[] bArr;
        String str = "";
        try {
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq").start().getInputStream();
            while (inputStream.read(new byte[24]) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
        } catch (Exception e) {
        }
        return str.trim();
    }

    /* renamed from: d */
    public static String m880d() {
        try {
            return new BufferedReader(new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq")).readLine().trim();
        } catch (Exception e) {
            return "";
        }
    }
}
