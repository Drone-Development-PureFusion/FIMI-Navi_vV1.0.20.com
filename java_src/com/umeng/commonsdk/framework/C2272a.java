package com.umeng.commonsdk.framework;

import android.content.Context;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.statistics.C2405b;
import com.umeng.commonsdk.statistics.common.C2419e;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import org.json.JSONObject;
/* compiled from: UMEnvelopeBuildImpl.java */
/* renamed from: com.umeng.commonsdk.framework.a */
/* loaded from: classes2.dex */
public class C2272a {
    /* renamed from: a */
    public static long m1022a(Context context) {
        if (context == null) {
            return 0L;
        }
        return C2273b.m1001i(context.getApplicationContext());
    }

    /* renamed from: a */
    public static boolean m1021a(Context context, UMLogDataProtocol.UMBusinessType uMBusinessType) {
        boolean z = false;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            boolean m1010b = C2273b.m1010b(applicationContext);
            int m1008c = C2273b.m1008c(applicationContext);
            if (m1010b && !C2273b.m1015a(applicationContext, uMBusinessType)) {
                z = true;
            }
            if (m1010b && m1008c > 0) {
                C2277d.m985b();
            }
        }
        return z;
    }

    /* renamed from: a */
    public static JSONObject m1019a(Context context, JSONObject jSONObject, JSONObject jSONObject2) {
        C2419e.m325b("--->>> buildEnvelopeFile Enter.");
        return new C2405b().m407a(context.getApplicationContext(), jSONObject, jSONObject2);
    }

    /* renamed from: a */
    public static String m1020a(Context context, String str, String str2) {
        return context == null ? str2 : ImprintHandler.getImprintService(context.getApplicationContext()).m293b().m283a(str, str2);
    }

    /* renamed from: b */
    public static long m1018b(Context context) {
        if (context == null) {
            return 0L;
        }
        return C2405b.m409a(context.getApplicationContext());
    }
}
