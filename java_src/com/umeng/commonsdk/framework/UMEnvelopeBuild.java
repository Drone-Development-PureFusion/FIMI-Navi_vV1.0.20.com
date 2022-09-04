package com.umeng.commonsdk.framework;

import android.content.Context;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class UMEnvelopeBuild {
    public static boolean isReadyBuild(Context context, UMLogDataProtocol.UMBusinessType uMBusinessType) {
        return C2272a.m1021a(context, uMBusinessType);
    }

    public static JSONObject buildEnvelopeWithExtHeader(Context context, JSONObject jSONObject, JSONObject jSONObject2) {
        return C2272a.m1019a(context, jSONObject, jSONObject2);
    }

    public static String imprintProperty(Context context, String str, String str2) {
        return C2272a.m1020a(context, str, str2);
    }

    public static long maxDataSpace(Context context) {
        return C2272a.m1018b(context);
    }

    public static long lastSuccessfulBuildTime(Context context) {
        return C2272a.m1022a(context);
    }
}
