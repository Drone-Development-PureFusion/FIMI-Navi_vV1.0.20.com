package com.umeng.commonsdk.stateless;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.fimi.receiver.NetworkStateReceiver;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.statistics.common.C2419e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import java.io.File;
/* compiled from: UMSLNetWorkSender.java */
/* renamed from: com.umeng.commonsdk.stateless.d */
/* loaded from: classes2.dex */
public class C2396d {

    /* renamed from: a */
    public static final int f1194a = 273;

    /* renamed from: b */
    private static Context f1195b = null;

    /* renamed from: f */
    private static final int f1199f = 512;

    /* renamed from: g */
    private static IntentFilter f1200g;

    /* renamed from: c */
    private static HandlerThread f1196c = null;

    /* renamed from: d */
    private static Handler f1197d = null;

    /* renamed from: e */
    private static Object f1198e = new Object();

    /* renamed from: h */
    private static boolean f1201h = false;

    /* renamed from: i */
    private static BroadcastReceiver f1202i = new BroadcastReceiver() { // from class: com.umeng.commonsdk.stateless.d.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ConnectivityManager connectivityManager;
            if (context != null && intent != null) {
                try {
                    if (intent.getAction() != null && intent.getAction().equals(NetworkStateReceiver.ACTION_CONNECTIVITY_CHANGE)) {
                        Context unused = C2396d.f1195b = context.getApplicationContext();
                        if (C2396d.f1195b != null && (connectivityManager = (ConnectivityManager) C2396d.f1195b.getSystemService("connectivity")) != null) {
                            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                                boolean unused2 = C2396d.f1201h = true;
                                C2419e.m328a("walle", "[stateless] net reveiver ok --->>>");
                                C2396d.m430b(C2396d.f1194a);
                            } else {
                                C2419e.m328a("walle", "[stateless] net reveiver disconnected --->>>");
                                boolean unused3 = C2396d.f1201h = false;
                            }
                        }
                    }
                } catch (Throwable th) {
                    C2345b.m708a(context, th);
                }
            }
        }
    };

    public C2396d(Context context) {
        synchronized (f1198e) {
            if (context != null) {
                f1195b = context.getApplicationContext();
                if (f1195b != null && f1196c == null) {
                    f1196c = new HandlerThread("SL-NetWorkSender");
                    f1196c.start();
                    if (f1197d == null) {
                        f1197d = new Handler(f1196c.getLooper()) { // from class: com.umeng.commonsdk.stateless.d.2
                            @Override // android.os.Handler
                            public void handleMessage(Message message) {
                                switch (message.what) {
                                    case C2396d.f1194a /* 273 */:
                                        C2396d.m427e();
                                        return;
                                    case 512:
                                        C2396d.m426f();
                                        return;
                                    default:
                                        return;
                                }
                            }
                        };
                    }
                    if (DeviceConfig.checkPermission(f1195b, "android.permission.ACCESS_NETWORK_STATE")) {
                        C2419e.m328a("walle", "[stateless] begin register receiver");
                        if (f1200g == null) {
                            f1200g = new IntentFilter();
                            f1200g.addAction(NetworkStateReceiver.ACTION_CONNECTIVITY_CHANGE);
                            if (f1202i != null) {
                                C2419e.m328a("walle", "[stateless] register receiver ok");
                                f1195b.registerReceiver(f1202i, f1200g);
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static void m434a(int i) {
        if (f1201h && f1197d != null) {
            Message obtainMessage = f1197d.obtainMessage();
            obtainMessage.what = i;
            f1197d.sendMessage(obtainMessage);
        }
    }

    /* renamed from: b */
    public static void m430b(int i) {
        try {
            if (f1201h && f1197d != null && !f1197d.hasMessages(i)) {
                C2419e.m328a("walle", "[stateless] sendMsgOnce !!!!");
                Message obtainMessage = f1197d.obtainMessage();
                obtainMessage.what = i;
                f1197d.sendMessage(obtainMessage);
            }
        } catch (Throwable th) {
            C2345b.m708a(f1195b, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static void m427e() {
        if (f1201h && f1195b != null) {
            try {
                File m421a = C2401f.m421a(f1195b);
                if (m421a != null && m421a.getParentFile() != null && !TextUtils.isEmpty(m421a.getParentFile().getName())) {
                    C2399e c2399e = new C2399e(f1195b);
                    if (c2399e != null) {
                        String str = new String(Base64.decode(m421a.getParentFile().getName(), 0));
                        C2419e.m328a("walle", "[stateless] handleProcessNext, pathUrl is " + str);
                        byte[] bArr = null;
                        try {
                            bArr = C2401f.m418a(m421a.getAbsolutePath());
                        } catch (Exception e) {
                        }
                        if (c2399e.m424a(bArr, str)) {
                            C2419e.m328a("walle", "[stateless] Send envelope file success, delete it.");
                            File file = new File(m421a.getAbsolutePath());
                            if (!file.delete()) {
                                C2419e.m328a("walle", "[stateless] Failed to delete already processed file. We try again after delete failed.");
                                file.delete();
                            }
                        } else {
                            C2419e.m328a("walle", "[stateless] Send envelope file failed, abandon and wait next trigger!");
                            return;
                        }
                    }
                    m430b(f1194a);
                }
            } catch (Throwable th) {
                C2345b.m708a(f1195b, th);
            }
        }
    }

    /* renamed from: a */
    public static void m435a() {
        m430b(512);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static void m426f() {
        if (f1200g != null) {
            if (f1202i != null) {
                if (f1195b != null) {
                    f1195b.unregisterReceiver(f1202i);
                }
                f1202i = null;
            }
            f1200g = null;
        }
        if (f1196c != null) {
            f1196c.quit();
            if (f1196c != null) {
                f1196c = null;
            }
            if (f1197d != null) {
                f1197d = null;
            }
        }
    }
}
