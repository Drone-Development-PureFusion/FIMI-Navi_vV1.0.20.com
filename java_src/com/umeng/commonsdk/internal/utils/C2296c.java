package com.umeng.commonsdk.internal.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.C2285a;
import com.umeng.commonsdk.internal.C2286b;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.statistics.common.C2419e;
import org.json.JSONObject;
/* compiled from: BatteryUtils.java */
/* renamed from: com.umeng.commonsdk.internal.utils.c */
/* loaded from: classes2.dex */
public class C2296c {

    /* renamed from: a */
    private static final String f759a = "BatteryUtils";

    /* renamed from: b */
    private static boolean f760b = false;

    /* renamed from: c */
    private static Context f761c = null;

    /* renamed from: d */
    private BroadcastReceiver f762d;

    private C2296c() {
        this.f762d = new BroadcastReceiver() { // from class: com.umeng.commonsdk.internal.utils.c.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                int i = -1;
                int i2 = 1;
                try {
                    if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("le", intent.getIntExtra("level", 0));
                        } catch (Exception e) {
                        }
                        try {
                            jSONObject.put("vol", intent.getIntExtra("voltage", 0));
                        } catch (Exception e2) {
                        }
                        try {
                            jSONObject.put("temp", intent.getIntExtra("temperature", 0));
                            jSONObject.put("ts", System.currentTimeMillis());
                        } catch (Exception e3) {
                        }
                        switch (intent.getIntExtra("status", 0)) {
                            case 2:
                                i = 1;
                                break;
                            case 4:
                                i = 0;
                                break;
                            case 5:
                                i = 2;
                                break;
                        }
                        try {
                            jSONObject.put("st", i);
                        } catch (Exception e4) {
                        }
                        switch (intent.getIntExtra("plugged", 0)) {
                            case 1:
                                break;
                            case 2:
                                i2 = 2;
                                break;
                            default:
                                i2 = 0;
                                break;
                        }
                        try {
                            jSONObject.put("ct", i2);
                            jSONObject.put("ts", System.currentTimeMillis());
                        } catch (Exception e5) {
                        }
                        C2419e.m328a(C2296c.f759a, jSONObject.toString());
                        UMWorkDispatch.sendEvent(context, C2285a.f719g, C2286b.m962a(C2296c.f761c).m963a(), jSONObject.toString());
                        C2296c.this.m886c();
                    }
                } catch (Throwable th) {
                    C2345b.m708a(C2296c.f761c, th);
                }
            }
        };
    }

    /* compiled from: BatteryUtils.java */
    /* renamed from: com.umeng.commonsdk.internal.utils.c$a */
    /* loaded from: classes2.dex */
    private static class C2298a {

        /* renamed from: a */
        private static final C2296c f764a = new C2296c();

        private C2298a() {
        }
    }

    /* renamed from: a */
    public static C2296c m888a(Context context) {
        if (f761c == null && context != null) {
            f761c = context.getApplicationContext();
        }
        return C2298a.f764a;
    }

    /* renamed from: a */
    public synchronized boolean m889a() {
        return f760b;
    }

    /* renamed from: b */
    public synchronized void m887b() {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            f761c.registerReceiver(this.f762d, intentFilter);
            f760b = true;
        } catch (Throwable th) {
            C2345b.m708a(f761c, th);
        }
    }

    /* renamed from: c */
    public synchronized void m886c() {
        try {
            f761c.unregisterReceiver(this.f762d);
            f760b = false;
        } catch (Throwable th) {
            C2345b.m708a(f761c, th);
        }
    }
}
