package com.umeng.commonsdk.statistics.common;

import android.text.TextUtils;
import android.util.Log;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.util.Formatter;
import java.util.Locale;
/* loaded from: classes2.dex */
public class MLog {
    private static final int LEVEL_DEBUG = 2;
    private static final int LEVEL_ERROR = 5;
    private static final int LEVEL_INFO = 3;
    private static final int LEVEL_VERBOSE = 1;
    private static final int LEVEL_WARN = 4;
    public static boolean DEBUG = false;
    private static String TAG = AnalyticsConstants.LOG_TAG;
    private static int LOG_MAXLENGTH = XiaomiOAuthConstants.SCOPE_MI_CLOUD_CONTACT;

    private MLog() {
    }

    /* renamed from: i */
    public static void m377i(Locale locale, String str, Object... objArr) {
        try {
            m381i(TAG, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m384e(th);
        }
    }

    /* renamed from: d */
    public static void m389d(Locale locale, String str, Object... objArr) {
        try {
            m393d(TAG, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m384e(th);
        }
    }

    /* renamed from: e */
    public static void m383e(Locale locale, String str, Object... objArr) {
        try {
            m387e(TAG, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m384e(th);
        }
    }

    /* renamed from: v */
    public static void m371v(Locale locale, String str, Object... objArr) {
        try {
            m375v(TAG, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m384e(th);
        }
    }

    /* renamed from: w */
    public static void m365w(Locale locale, String str, Object... objArr) {
        try {
            m369w(TAG, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m384e(th);
        }
    }

    /* renamed from: i */
    public static void m379i(String str, Object... objArr) {
        try {
            String str2 = "";
            if (str.contains("%")) {
                m381i(TAG, new Formatter().format(str, objArr).toString(), (Throwable) null);
                return;
            }
            if (objArr != null) {
                str2 = (String) objArr[0];
            }
            m381i(str, str2, (Throwable) null);
        } catch (Throwable th) {
            m384e(th);
        }
    }

    /* renamed from: d */
    public static void m391d(String str, Object... objArr) {
        try {
            String str2 = "";
            if (str.contains("%")) {
                m393d(TAG, new Formatter().format(str, objArr).toString(), (Throwable) null);
                return;
            }
            if (objArr != null) {
                str2 = (String) objArr[0];
            }
            m393d(str, str2, (Throwable) null);
        } catch (Throwable th) {
            m384e(th);
        }
    }

    /* renamed from: e */
    public static void m385e(String str, Object... objArr) {
        try {
            String str2 = "";
            if (str.contains("%")) {
                m387e(TAG, new Formatter().format(str, objArr).toString(), (Throwable) null);
                return;
            }
            if (objArr != null) {
                str2 = (String) objArr[0];
            }
            m387e(str, str2, (Throwable) null);
        } catch (Throwable th) {
            m384e(th);
        }
    }

    /* renamed from: v */
    public static void m373v(String str, Object... objArr) {
        try {
            String str2 = "";
            if (str.contains("%")) {
                m375v(TAG, new Formatter().format(str, objArr).toString(), (Throwable) null);
                return;
            }
            if (objArr != null) {
                str2 = (String) objArr[0];
            }
            m375v(str, str2, (Throwable) null);
        } catch (Throwable th) {
            m384e(th);
        }
    }

    /* renamed from: w */
    public static void m367w(String str, Object... objArr) {
        try {
            String str2 = "";
            if (str.contains("%")) {
                m369w(TAG, new Formatter().format(str, objArr).toString(), (Throwable) null);
                return;
            }
            if (objArr != null) {
                str2 = (String) objArr[0];
            }
            m369w(str, str2, (Throwable) null);
        } catch (Throwable th) {
            m384e(th);
        }
    }

    /* renamed from: i */
    public static void m378i(Throwable th) {
        m381i(TAG, (String) null, th);
    }

    /* renamed from: v */
    public static void m372v(Throwable th) {
        m375v(TAG, (String) null, th);
    }

    /* renamed from: w */
    public static void m366w(Throwable th) {
        m369w(TAG, (String) null, th);
    }

    /* renamed from: d */
    public static void m390d(Throwable th) {
        m393d(TAG, (String) null, th);
    }

    /* renamed from: e */
    public static void m384e(Throwable th) {
        m387e(TAG, (String) null, th);
    }

    /* renamed from: i */
    public static void m380i(String str, Throwable th) {
        m381i(TAG, str, th);
    }

    /* renamed from: v */
    public static void m374v(String str, Throwable th) {
        m375v(TAG, str, th);
    }

    /* renamed from: w */
    public static void m368w(String str, Throwable th) {
        m369w(TAG, str, th);
    }

    /* renamed from: d */
    public static void m392d(String str, Throwable th) {
        m393d(TAG, str, th);
    }

    /* renamed from: e */
    public static void m386e(String str, Throwable th) {
        m387e(TAG, str, th);
    }

    /* renamed from: v */
    public static void m376v(String str) {
        m375v(TAG, str, (Throwable) null);
    }

    /* renamed from: d */
    public static void m394d(String str) {
        m393d(TAG, str, (Throwable) null);
    }

    /* renamed from: i */
    public static void m382i(String str) {
        m381i(TAG, str, (Throwable) null);
    }

    /* renamed from: w */
    public static void m370w(String str) {
        m369w(TAG, str, (Throwable) null);
    }

    /* renamed from: e */
    public static void m388e(String str) {
        m387e(TAG, str, (Throwable) null);
    }

    /* renamed from: v */
    public static void m375v(String str, String str2, Throwable th) {
        if (DEBUG) {
            print(1, str, str2, th);
        }
    }

    /* renamed from: d */
    public static void m393d(String str, String str2, Throwable th) {
        if (DEBUG) {
            print(2, str, str2, th);
        }
    }

    /* renamed from: i */
    public static void m381i(String str, String str2, Throwable th) {
        if (DEBUG) {
            print(3, str, str2, th);
        }
    }

    /* renamed from: w */
    public static void m369w(String str, String str2, Throwable th) {
        if (DEBUG) {
            print(4, str, str2, th);
        }
    }

    /* renamed from: e */
    public static void m387e(String str, String str2, Throwable th) {
        if (DEBUG) {
            print(5, str, str2, th);
        }
    }

    private static void print(int i, String str, String str2, Throwable th) {
        if (!TextUtils.isEmpty(str2)) {
            int length = str2.length();
            int i2 = LOG_MAXLENGTH;
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
                        i2 = LOG_MAXLENGTH + i2;
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
            String stackTrace = getStackTrace(th);
            if (!TextUtils.isEmpty(stackTrace)) {
                switch (i) {
                    case 1:
                        Log.v(str, stackTrace);
                        return;
                    case 2:
                        Log.d(str, stackTrace);
                        return;
                    case 3:
                        Log.i(str, stackTrace);
                        return;
                    case 4:
                        Log.w(str, stackTrace);
                        return;
                    case 5:
                        Log.e(str, stackTrace);
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
    public static java.lang.String getStackTrace(java.lang.Throwable r4) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.MLog.getStackTrace(java.lang.Throwable):java.lang.String");
    }
}
