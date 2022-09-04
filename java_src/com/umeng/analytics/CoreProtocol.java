package com.umeng.analytics;

import android.content.Context;
import com.umeng.analytics.pro.C2244i;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class CoreProtocol implements UMLogDataProtocol {

    /* renamed from: a */
    private static Context f332a = null;

    private CoreProtocol() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.analytics.CoreProtocol$a */
    /* loaded from: classes2.dex */
    public static class C2202a {

        /* renamed from: a */
        private static final CoreProtocol f333a = new CoreProtocol();

        private C2202a() {
        }
    }

    public static CoreProtocol getInstance(Context context) {
        if (f332a == null && context != null) {
            f332a = context.getApplicationContext();
        }
        return C2202a.f333a;
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void workEvent(Object obj, int i) {
        C2244i.m1142a(f332a).m1139a(obj, i);
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void removeCacheData(Object obj) {
        C2244i.m1142a(f332a).m1140a(obj);
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public JSONObject setupReportData(long j) {
        return C2244i.m1142a(f332a).m1133b(j);
    }
}
