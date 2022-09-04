package com.umeng.analytics.dplus;

import android.content.Context;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.statistics.common.MLog;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class UMADplus {
    public static void track(Context context, String str) {
        if (!AnalyticsConfig.FLAG_DPLUS) {
            MLog.m388e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
        } else {
            MobclickAgent.getAgent().m1267a(context, str, (Map<String, Object>) null);
        }
    }

    public static void track(Context context, String str, Map<String, Object> map) {
        if (!AnalyticsConfig.FLAG_DPLUS) {
            MLog.m388e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
            return;
        }
        if (map == null || map.size() <= 0) {
            MLog.m388e("the map is null!");
        }
        MobclickAgent.getAgent().m1267a(context, str, map);
    }

    public static void registerSuperProperty(Context context, String str, Object obj) {
        if (!AnalyticsConfig.FLAG_DPLUS) {
            MLog.m388e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
        } else {
            MobclickAgent.getAgent().m1270a(context, str, obj);
        }
    }

    public static void unregisterSuperProperty(Context context, String str) {
        if (!AnalyticsConfig.FLAG_DPLUS) {
            MLog.m388e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
        } else {
            MobclickAgent.getAgent().m1242d(context, str);
        }
    }

    public static Object getSuperProperty(Context context, String str) {
        if (!AnalyticsConfig.FLAG_DPLUS) {
            MLog.m388e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
            return null;
        }
        return MobclickAgent.getAgent().m1239e(context, str);
    }

    public static String getSuperProperties(Context context) {
        if (!AnalyticsConfig.FLAG_DPLUS) {
            MLog.m388e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
            return null;
        }
        return MobclickAgent.getAgent().m1243d(context);
    }

    public static void clearSuperProperties(Context context) {
        if (!AnalyticsConfig.FLAG_DPLUS) {
            MLog.m388e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
        } else {
            MobclickAgent.getAgent().m1240e(context);
        }
    }

    public static void setFirstLaunchEvent(Context context, List<String> list) {
        if (!AnalyticsConfig.FLAG_DPLUS) {
            MLog.m388e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
        } else {
            MobclickAgent.getAgent().m1264a(context, list);
        }
    }

    public static void registerPreProperties(Context context, JSONObject jSONObject) {
        if (!AnalyticsConfig.FLAG_DPLUS) {
            MLog.m388e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
        } else {
            MobclickAgent.getAgent().m1263a(context, jSONObject);
        }
    }

    public static void unregisterPreProperty(Context context, String str) {
        if (!AnalyticsConfig.FLAG_DPLUS) {
            MLog.m388e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
        } else {
            MobclickAgent.getAgent().m1236f(context, str);
        }
    }

    public static void clearPreProperties(Context context) {
        if (!AnalyticsConfig.FLAG_DPLUS) {
            MLog.m388e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
        } else {
            MobclickAgent.getAgent().m1237f(context);
        }
    }

    public static JSONObject getPreProperties(Context context) {
        if (!AnalyticsConfig.FLAG_DPLUS) {
            MLog.m388e("UMADplus class is Dplus API, can't be use in no-Dplus scenario.");
            return null;
        }
        return MobclickAgent.getAgent().m1234g(context);
    }
}
