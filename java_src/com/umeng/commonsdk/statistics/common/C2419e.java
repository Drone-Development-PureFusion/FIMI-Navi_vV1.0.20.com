package com.umeng.commonsdk.statistics.common;

import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.util.Formatter;
import java.util.Locale;
/* compiled from: ULog.java */
/* renamed from: com.umeng.commonsdk.statistics.common.e */
/* loaded from: classes2.dex */
public class C2419e {

    /* renamed from: c */
    private static final int f1264c = 1;

    /* renamed from: d */
    private static final int f1265d = 2;

    /* renamed from: e */
    private static final int f1266e = 3;

    /* renamed from: f */
    private static final int f1267f = 4;

    /* renamed from: g */
    private static final int f1268g = 5;

    /* renamed from: a */
    public static boolean f1262a = false;

    /* renamed from: b */
    private static String f1263b = "ULog";

    /* renamed from: h */
    private static int f1269h = XiaomiOAuthConstants.SCOPE_MI_CLOUD_CONTACT;

    private C2419e() {
    }

    /* renamed from: a */
    public static void m326a(Locale locale, String str, Object... objArr) {
        try {
            m318c(f1263b, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m303e(th);
        }
    }

    /* renamed from: b */
    public static void m320b(Locale locale, String str, Object... objArr) {
        try {
            m324b(f1263b, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m303e(th);
        }
    }

    /* renamed from: c */
    public static void m314c(Locale locale, String str, Object... objArr) {
        try {
            m306e(f1263b, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m303e(th);
        }
    }

    /* renamed from: d */
    public static void m308d(Locale locale, String str, Object... objArr) {
        try {
            m330a(f1263b, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m303e(th);
        }
    }

    /* renamed from: e */
    public static void m302e(Locale locale, String str, Object... objArr) {
        try {
            m312d(f1263b, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m303e(th);
        }
    }

    /* renamed from: a */
    public static void m328a(String str, Object... objArr) {
        try {
            String str2 = "";
            if (str.contains("%")) {
                m318c(f1263b, new Formatter().format(str, objArr).toString(), (Throwable) null);
                return;
            }
            if (objArr != null) {
                str2 = (String) objArr[0];
            }
            m318c(str, str2, (Throwable) null);
        } catch (Throwable th) {
            m303e(th);
        }
    }

    /* renamed from: b */
    public static void m322b(String str, Object... objArr) {
        try {
            String str2 = "";
            if (str.contains("%")) {
                m324b(f1263b, new Formatter().format(str, objArr).toString(), (Throwable) null);
                return;
            }
            if (objArr != null) {
                str2 = (String) objArr[0];
            }
            m324b(str, str2, (Throwable) null);
        } catch (Throwable th) {
            m303e(th);
        }
    }

    /* renamed from: c */
    public static void m316c(String str, Object... objArr) {
        try {
            String str2 = "";
            if (str.contains("%")) {
                m306e(f1263b, new Formatter().format(str, objArr).toString(), (Throwable) null);
                return;
            }
            if (objArr != null) {
                str2 = (String) objArr[0];
            }
            m306e(str, str2, (Throwable) null);
        } catch (Throwable th) {
            m303e(th);
        }
    }

    /* renamed from: d */
    public static void m310d(String str, Object... objArr) {
        try {
            String str2 = "";
            if (str.contains("%")) {
                m330a(f1263b, new Formatter().format(str, objArr).toString(), (Throwable) null);
                return;
            }
            if (objArr != null) {
                str2 = (String) objArr[0];
            }
            m330a(str, str2, (Throwable) null);
        } catch (Throwable th) {
            m303e(th);
        }
    }

    /* renamed from: e */
    public static void m304e(String str, Object... objArr) {
        try {
            String str2 = "";
            if (str.contains("%")) {
                m312d(f1263b, new Formatter().format(str, objArr).toString(), (Throwable) null);
                return;
            }
            if (objArr != null) {
                str2 = (String) objArr[0];
            }
            m312d(str, str2, (Throwable) null);
        } catch (Throwable th) {
            m303e(th);
        }
    }

    /* renamed from: a */
    public static void m327a(Throwable th) {
        m318c(f1263b, (String) null, th);
    }

    /* renamed from: b */
    public static void m321b(Throwable th) {
        m330a(f1263b, (String) null, th);
    }

    /* renamed from: c */
    public static void m315c(Throwable th) {
        m312d(f1263b, (String) null, th);
    }

    /* renamed from: d */
    public static void m309d(Throwable th) {
        m324b(f1263b, (String) null, th);
    }

    /* renamed from: e */
    public static void m303e(Throwable th) {
        m306e(f1263b, (String) null, th);
    }

    /* renamed from: a */
    public static void m329a(String str, Throwable th) {
        m318c(f1263b, str, th);
    }

    /* renamed from: b */
    public static void m323b(String str, Throwable th) {
        m330a(f1263b, str, th);
    }

    /* renamed from: c */
    public static void m317c(String str, Throwable th) {
        m312d(f1263b, str, th);
    }

    /* renamed from: d */
    public static void m311d(String str, Throwable th) {
        m324b(f1263b, str, th);
    }

    /* renamed from: e */
    public static void m305e(String str, Throwable th) {
        m306e(f1263b, str, th);
    }

    /* renamed from: a */
    public static void m331a(String str) {
        m330a(f1263b, str, (Throwable) null);
    }

    /* renamed from: b */
    public static void m325b(String str) {
        m324b(f1263b, str, (Throwable) null);
    }

    /* renamed from: c */
    public static void m319c(String str) {
        m318c(f1263b, str, (Throwable) null);
    }

    /* renamed from: d */
    public static void m313d(String str) {
        m312d(f1263b, str, (Throwable) null);
    }

    /* renamed from: e */
    public static void m307e(String str) {
        m306e(f1263b, str, (Throwable) null);
    }

    /* renamed from: a */
    public static void m330a(String str, String str2, Throwable th) {
        if (f1262a) {
            m332a(1, str, str2, th);
        }
    }

    /* renamed from: b */
    public static void m324b(String str, String str2, Throwable th) {
        if (f1262a) {
            m332a(2, str, str2, th);
        }
    }

    /* renamed from: c */
    public static void m318c(String str, String str2, Throwable th) {
        if (f1262a) {
            m332a(3, str, str2, th);
        }
    }

    /* renamed from: d */
    public static void m312d(String str, String str2, Throwable th) {
        if (f1262a) {
            m332a(4, str, str2, th);
        }
    }

    /* renamed from: e */
    public static void m306e(String str, String str2, Throwable th) {
        if (f1262a) {
            m332a(5, str, str2, th);
        }
    }

    /* renamed from: a */
    private static void m332a(int i, String str, String str2, Throwable th) {
        if (!TextUtils.isEmpty(str2)) {
            int length = str2.length();
            int i2 = f1269h;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (i3 < 100) {
                    if (length > i2) {
                        switch (i) {
                            case 1:
                                Log.v(str, str2.substring(i4, i2));
                                break;
                            case 2:
                                Log.d(str, str2.substring(i4, i2));
                                break;
                            case 3:
                                Log.i(str, str2.substring(i4, i2));
                                break;
                            case 4:
                                Log.w(str, str2.substring(i4, i2));
                                break;
                            case 5:
                                Log.e(str, str2.substring(i4, i2));
                                break;
                        }
                        i3++;
                        i4 = i2;
                        i2 = f1269h + i2;
                    } else {
                        switch (i) {
                            case 1:
                                Log.v(str, str2.substring(i4, length));
                                break;
                            case 2:
                                Log.d(str, str2.substring(i4, length));
                                break;
                            case 3:
                                Log.i(str, str2.substring(i4, length));
                                break;
                            case 4:
                                Log.w(str, str2.substring(i4, length));
                                break;
                            case 5:
                                Log.e(str, str2.substring(i4, length));
                                break;
                        }
                    }
                }
            }
        }
        if (th != null) {
            String m301f = m301f(th);
            if (!TextUtils.isEmpty(m301f)) {
                switch (i) {
                    case 1:
                        Log.v(str, m301f);
                        return;
                    case 2:
                        Log.d(str, m301f);
                        return;
                    case 3:
                        Log.i(str, m301f);
                        return;
                    case 4:
                        Log.w(str, m301f);
                        return;
                    case 5:
                        Log.e(str, m301f);
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:40)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:203)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:46)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:40)
        */
    /* renamed from: f */
    public static java.lang.String m301f(java.lang.Throwable r4) {
        /*
            r2 = 0
            java.lang.String r0 = ""
            java.io.StringWriter r3 = new java.io.StringWriter     // Catch: java.lang.Throwable -> L25
            r3.<init>()     // Catch: java.lang.Throwable -> L25
            java.io.PrintWriter r1 = new java.io.PrintWriter     // Catch: java.lang.Throwable -> L4c
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L4c
            r4.printStackTrace(r1)     // Catch: java.lang.Throwable -> L4f
            r1.flush()     // Catch: java.lang.Throwable -> L4f
            r3.flush()     // Catch: java.lang.Throwable -> L4f
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L4f
            if (r3 == 0) goto L1f
            r3.close()     // Catch: java.lang.Throwable -> L41
        L1f:
            if (r1 == 0) goto L24
            r1.close()
        L24:
            return r0
        L25:
            r1 = move-exception
            r1 = r2
            r3 = r2
        L28:
            if (r3 == 0) goto L2d
            r3.close()     // Catch: java.lang.Throwable -> L43
        L2d:
            if (r1 == 0) goto L24
            r1.close()
            goto L24
        L33:
            r0 = move-exception
            r1 = r2
            r3 = r2
        L36:
            if (r3 == 0) goto L3b
            r3.close()     // Catch: java.lang.Throwable -> L45
        L3b:
            if (r1 == 0) goto L40
            r1.close()
        L40:
            throw r0
        L41:
            r2 = move-exception
            goto L1f
        L43:
            r2 = move-exception
            goto L2d
        L45:
            r2 = move-exception
            goto L3b
        L47:
            r0 = move-exception
            r1 = r2
            goto L36
        L4a:
            r0 = move-exception
            goto L36
        L4c:
            r1 = move-exception
            r1 = r2
            goto L28
        L4f:
            r2 = move-exception
            goto L28
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.C2419e.m301f(java.lang.Throwable):java.lang.String");
    }
}
