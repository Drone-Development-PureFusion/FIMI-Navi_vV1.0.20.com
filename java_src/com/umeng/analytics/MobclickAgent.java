package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import ch.qos.logback.core.net.SyslogConstants;
import com.umeng.commonsdk.statistics.common.MLog;
import java.util.HashMap;
import java.util.Map;
import javax.microedition.khronos.opengles.GL10;
/* loaded from: classes2.dex */
public class MobclickAgent {

    /* renamed from: a */
    private static final String f336a = "input map is null";

    public static void setLocation(double d, double d2) {
        C2208b.m1277a().m1276a(d, d2);
    }

    public static void setLatencyWindow(long j) {
    }

    public static void enableEncrypt(boolean z) {
    }

    public static void setCatchUncaughtExceptions(boolean z) {
        C2208b.m1277a().m1256a(z);
    }

    public static void setSecret(Context context, String str) {
        C2208b.m1277a().m1245c(context, str);
    }

    public static void setScenarioType(Context context, EScenarioType eScenarioType) {
        C2208b.m1277a().m1272a(context, eScenarioType);
    }

    public static void setSessionContinueMillis(long j) {
        C2208b.m1277a().m1275a(j);
    }

    public static C2208b getAgent() {
        return C2208b.m1277a();
    }

    public static void setCheckDevice(boolean z) {
    }

    public static void setOpenGLContext(GL10 gl10) {
        C2208b.m1277a().m1257a(gl10);
    }

    public static void openActivityDurationTrack(boolean z) {
        C2208b.m1277a().m1248b(z);
    }

    public static void onPageStart(String str) {
        if (!TextUtils.isEmpty(str)) {
            C2208b.m1277a().m1260a(str);
        } else {
            MLog.m388e("pageName is null or empty");
        }
    }

    public static void onPageEnd(String str) {
        if (!TextUtils.isEmpty(str)) {
            C2208b.m1277a().m1250b(str);
        } else {
            MLog.m388e("pageName is null or empty");
        }
    }

    public static void setDebugMode(boolean z) {
    }

    public static void onPause(Context context) {
        C2208b.m1277a().m1254b(context);
    }

    public static void onResume(Context context) {
        if (context == null) {
            MLog.m388e("unexpected null context in onResume");
        } else {
            C2208b.m1277a().m1274a(context);
        }
    }

    public static void reportError(Context context, String str) {
        C2208b.m1277a().m1271a(context, str);
    }

    public static void reportError(Context context, Throwable th) {
        C2208b.m1277a().m1265a(context, th);
    }

    public static void onEvent(Context context, String str) {
        C2208b.m1277a().m1269a(context, str, null, -1L, 1);
    }

    public static void onEvent(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            MLog.m370w("label is null or empty");
        } else {
            C2208b.m1277a().m1269a(context, str, str2, -1L, 1);
        }
    }

    public static void onEvent(Context context, String str, Map<String, String> map) {
        if (map == null) {
            MLog.m388e(f336a);
        } else {
            C2208b.m1277a().m1266a(context, str, new HashMap(map), -1L);
        }
    }

    public static void onEventValue(Context context, String str, Map<String, String> map, int i) {
        HashMap hashMap;
        if (map == null) {
            hashMap = new HashMap();
        } else {
            hashMap = new HashMap(map);
        }
        hashMap.put("__ct__", Integer.valueOf(i));
        C2208b.m1277a().m1266a(context, str, hashMap, -1L);
    }

    public static void onKillProcess(Context context) {
        C2208b.m1277a().m1246c(context);
    }

    public static void onDeepLinkReceived(Context context, String str) {
        C2208b.m1277a().m1253b(context, str);
    }

    public static void onProfileSignIn(String str) {
        onProfileSignIn("_adhoc", str);
    }

    public static void onProfileSignIn(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            MLog.m370w("uid is null");
        } else if (str2.length() > 64) {
            MLog.m370w("uid is Illegal(length bigger then  legitimate length).");
        } else if (TextUtils.isEmpty(str)) {
            C2208b.m1277a().m1258a("_adhoc", str2);
        } else if (str.length() > 32) {
            MLog.m370w("provider is Illegal(length bigger then  legitimate length).");
        } else {
            C2208b.m1277a().m1258a(str, str2);
        }
    }

    public static void onProfileSignOff() {
        C2208b.m1277a().m1235g();
    }

    /* loaded from: classes2.dex */
    public enum EScenarioType {
        E_UM_NORMAL(0),
        E_UM_GAME(1),
        E_DUM_NORMAL(SyslogConstants.LOG_LOCAL4),
        E_DUM_GAME(161);
        

        /* renamed from: a */
        private int f338a;

        EScenarioType(int i) {
            this.f338a = i;
        }

        public int toValue() {
            return this.f338a;
        }
    }
}
