package com.umeng.commonsdk.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.pro.C2216b;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.statistics.common.C2419e;
import org.json.JSONObject;
/* compiled from: UMInternalDataProtocol.java */
/* renamed from: com.umeng.commonsdk.internal.c */
/* loaded from: classes2.dex */
public class C2287c implements UMLogDataProtocol {

    /* renamed from: b */
    private static final String f732b = "info";

    /* renamed from: c */
    private static final String f733c = "stat";

    /* renamed from: a */
    private Context f734a;

    public C2287c(Context context) {
        if (context != null) {
            this.f734a = context.getApplicationContext();
        }
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void workEvent(Object obj, int i) {
        C2419e.m328a("walle", "[internal] workEvent");
        switch (i) {
            case C2285a.f717e /* 32769 */:
                try {
                    C2419e.m328a("walle", "[internal] workEvent send envelope");
                    try {
                        Class<?> cls = Class.forName("com.umeng.commonsdk.internal.UMInternalManagerAgent");
                        if (cls != null) {
                            cls.getMethod("sendInternalEnvelopeByStateful2", Context.class).invoke(cls, this.f734a);
                            return;
                        }
                        return;
                    } catch (ClassNotFoundException e) {
                        return;
                    } catch (Throwable th) {
                        return;
                    }
                } catch (Exception e2) {
                    return;
                }
            case C2285a.f718f /* 32770 */:
            default:
                return;
            case C2285a.f719g /* 32771 */:
                C2419e.m328a("walle", "[internal] workEvent cache battery, event is " + obj.toString());
                try {
                    Class<?> cls2 = Class.forName("com.umeng.commonsdk.internal.utils.UMInternalUtilsAgent");
                    if (cls2 != null) {
                        cls2.getMethod("saveBattery", Context.class, String.class).invoke(cls2, this.f734a, (String) obj);
                        return;
                    }
                    return;
                } catch (ClassNotFoundException e3) {
                    return;
                } catch (Throwable th2) {
                    return;
                }
            case C2285a.f720h /* 32772 */:
                C2419e.m328a("walle", "[internal] workEvent cache station, event is " + obj.toString());
                try {
                    Class<?> cls3 = Class.forName("com.umeng.commonsdk.internal.utils.UMInternalUtilsAgent");
                    if (cls3 != null) {
                        cls3.getMethod("saveBaseStationStrength", Context.class, String.class).invoke(cls3, this.f734a, (String) obj);
                        return;
                    }
                    return;
                } catch (ClassNotFoundException e4) {
                    return;
                } catch (Throwable th3) {
                    return;
                }
            case C2285a.f721i /* 32773 */:
                try {
                    Class<?> cls4 = Class.forName("com.umeng.commonsdk.internal.utils.InfoPreferenceAgent");
                    if (cls4 != null) {
                        cls4.getMethod("saveBluetoothInfo", Context.class, Object.class).invoke(cls4, this.f734a, obj);
                        return;
                    }
                    return;
                } catch (ClassNotFoundException e5) {
                    return;
                } catch (Throwable th4) {
                    return;
                }
            case C2285a.f722j /* 32774 */:
                try {
                    Class<?> cls5 = Class.forName("com.umeng.commonsdk.internal.utils.ApplicationLayerUtilAgent");
                    if (cls5 != null) {
                        cls5.getMethod("wifiChange", Context.class).invoke(cls5, this.f734a);
                        return;
                    }
                    return;
                } catch (ClassNotFoundException e6) {
                    return;
                } catch (Throwable th5) {
                    return;
                }
            case C2285a.f723k /* 32775 */:
                try {
                    Class<?> cls6 = Class.forName("com.umeng.commonsdk.internal.utils.InfoPreferenceAgent");
                    if (cls6 != null) {
                        cls6.getMethod("saveUA", Context.class, String.class).invoke(cls6, this.f734a, (String) obj);
                        return;
                    }
                    return;
                } catch (ClassNotFoundException e7) {
                    return;
                } catch (Throwable th6) {
                    return;
                }
            case C2285a.f724l /* 32776 */:
                SharedPreferences sharedPreferences = this.f734a.getApplicationContext().getSharedPreferences(f732b, 0);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putString(f733c, (String) obj).commit();
                    return;
                }
                return;
            case C2285a.f725m /* 32777 */:
                try {
                    C2419e.m328a("walle", "[internal] workEvent send envelope");
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(C2354g.f1010au, C2285a.f716d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(C2354g.f1000ak, new JSONObject());
                    JSONObject buildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(this.f734a, jSONObject, jSONObject2);
                    if (buildEnvelopeWithExtHeader != null && !buildEnvelopeWithExtHeader.has(C2216b.f448ao)) {
                        C2419e.m328a("walle", "[internal] workEvent send envelope back, result is ok");
                        return;
                    }
                    return;
                } catch (Exception e8) {
                    return;
                }
        }
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void removeCacheData(Object obj) {
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public JSONObject setupReportData(long j) {
        return null;
    }
}
