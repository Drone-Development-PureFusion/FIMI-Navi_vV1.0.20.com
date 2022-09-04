package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Looper;
import android.text.TextUtils;
import com.umeng.commonsdk.internal.C2285a;
import com.umeng.commonsdk.statistics.common.C2419e;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: UMSysLocationCache.java */
/* renamed from: com.umeng.commonsdk.proguard.e */
/* loaded from: classes2.dex */
public class C2350e {

    /* renamed from: a */
    public static final String f955a = "lng";

    /* renamed from: b */
    public static final String f956b = "lat";

    /* renamed from: c */
    public static final String f957c = "ts";

    /* renamed from: d */
    private static final String f958d = "UMSysLocationCache";

    /* renamed from: e */
    private static Object f959e = new Object();

    /* renamed from: a */
    public static void m700a(final Context context) {
        C2419e.m328a(f958d, "begin location");
        if (context != null) {
            try {
                new Thread(new Runnable() { // from class: com.umeng.commonsdk.proguard.e.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            Looper.prepare();
                            final C2349d c2349d = new C2349d(context);
                            c2349d.m702a(new AbstractC2353f() { // from class: com.umeng.commonsdk.proguard.e.1.1
                                @Override // com.umeng.commonsdk.proguard.AbstractC2353f
                                /* renamed from: a */
                                public void mo698a(Location location) {
                                    if (location != null) {
                                        double longitude = location.getLongitude();
                                        double latitude = location.getLatitude();
                                        float accuracy = location.getAccuracy();
                                        double altitude = location.getAltitude();
                                        C2419e.m328a(C2350e.f958d, "lon is " + longitude + ", lat is " + latitude + ", acc is " + accuracy + ", alt is " + altitude);
                                        if (longitude != 0.0d && latitude != 0.0d) {
                                            long time = location.getTime();
                                            JSONObject jSONObject = new JSONObject();
                                            try {
                                                jSONObject.put("lng", longitude);
                                                jSONObject.put("lat", latitude);
                                                jSONObject.put("ts", time);
                                                jSONObject.put("acc", accuracy);
                                                jSONObject.put("alt", altitude);
                                            } catch (JSONException e) {
                                                C2419e.m328a(C2350e.f958d, "e is " + e);
                                            }
                                            C2419e.m328a(C2350e.f958d, "locationJSONObject is " + jSONObject.toString());
                                            synchronized (C2350e.f959e) {
                                                SharedPreferences sharedPreferences = context.getSharedPreferences(C2285a.f727o, 0);
                                                if (sharedPreferences != null) {
                                                    SharedPreferences.Editor edit = sharedPreferences.edit();
                                                    edit.putString(C2285a.f728p, jSONObject.toString());
                                                    edit.commit();
                                                } else {
                                                    return;
                                                }
                                            }
                                        }
                                    }
                                    c2349d.m703a();
                                }
                            });
                            Looper.loop();
                        } catch (Throwable th) {
                            C2345b.m708a(context, th);
                        }
                    }
                }).start();
            } catch (Exception e) {
                C2419e.m328a(f958d, "e is " + e);
                C2345b.m708a(context, e);
            }
        }
    }

    /* renamed from: b */
    public static JSONObject m699b(Context context) {
        JSONObject jSONObject = null;
        synchronized (f959e) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(C2285a.f727o, 0);
            if (sharedPreferences != null) {
                try {
                    String string = sharedPreferences.getString(C2285a.f728p, "");
                    jSONObject = !TextUtils.isEmpty(string) ? new JSONObject(string) : null;
                } catch (JSONException e) {
                    C2419e.m328a(f958d, "e is " + e);
                    C2345b.m708a(context, e);
                } catch (Throwable th) {
                    C2419e.m328a(f958d, "e is " + th);
                    C2345b.m708a(context, th);
                }
                if (jSONObject != null) {
                    C2419e.m328a(f958d, "json str is " + jSONObject.toString());
                }
            }
        }
        return jSONObject;
    }
}
