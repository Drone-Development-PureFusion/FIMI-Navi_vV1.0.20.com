package com.umeng.commonsdk.framework;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.support.graphics.drawable.PathInterpolatorCompat;
import com.fimi.receiver.NetworkStateReceiver;
import com.umeng.commonsdk.internal.C2285a;
import com.umeng.commonsdk.internal.C2286b;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.statistics.C2406c;
import com.umeng.commonsdk.statistics.common.C2419e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ImLatent;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UMNetWorkSender.java */
/* renamed from: com.umeng.commonsdk.framework.d */
/* loaded from: classes2.dex */
public class C2277d {

    /* renamed from: d */
    private static final int f690d = 273;

    /* renamed from: e */
    private static final int f691e = 512;

    /* renamed from: f */
    private static final int f692f = 769;

    /* renamed from: g */
    private static FileObserverC2282a f693g;

    /* renamed from: h */
    private static ConnectivityManager f694h;

    /* renamed from: i */
    private static NetworkInfo f695i;

    /* renamed from: a */
    private static HandlerThread f687a = null;

    /* renamed from: b */
    private static Handler f688b = null;

    /* renamed from: c */
    private static Handler f689c = null;

    /* renamed from: j */
    private static IntentFilter f696j = null;

    /* renamed from: k */
    private static StatTracer f697k = null;

    /* renamed from: l */
    private static ImLatent f698l = null;

    /* renamed from: m */
    private static boolean f699m = false;

    /* renamed from: n */
    private static BroadcastReceiver f700n = new BroadcastReceiver() { // from class: com.umeng.commonsdk.framework.d.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(final Context context, Intent intent) {
            new Thread(new Runnable() { // from class: com.umeng.commonsdk.framework.d.1.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (context != null) {
                            UMWorkDispatch.sendEvent(context, C2285a.f722j, C2286b.m962a(context).m963a(), null);
                        }
                    } catch (Throwable th) {
                    }
                }
            }).start();
            if (intent.getAction().equals(NetworkStateReceiver.ACTION_CONNECTIVITY_CHANGE)) {
                Context m997a = C2276c.m997a();
                ConnectivityManager unused = C2277d.f694h = (ConnectivityManager) m997a.getSystemService("connectivity");
                try {
                    NetworkInfo unused2 = C2277d.f695i = C2277d.f694h.getActiveNetworkInfo();
                    if (C2277d.f695i != null && C2277d.f695i.isAvailable()) {
                        C2419e.m319c("--->>> network isAvailable, check if there are any files to send.");
                        boolean unused3 = C2277d.f699m = true;
                        C2277d.m982c(273);
                        if (C2277d.f695i.getType() == 1) {
                            C2419e.m319c("--->>> wifi connection available, send uop packet now.");
                            new Thread(new Runnable() { // from class: com.umeng.commonsdk.framework.d.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        Class<?> cls = Class.forName("com.umeng.commonsdk.internal.oplus.UMUdpSenderAgent");
                                        if (cls != null) {
                                            cls.getMethod("DoSendUdpGroupMsg", Context.class).invoke(cls, context);
                                        }
                                    } catch (ClassNotFoundException e) {
                                    } catch (Throwable th) {
                                    }
                                }
                            }).start();
                        }
                    } else {
                        C2419e.m319c("--->>> network disconnected.");
                        boolean unused4 = C2277d.f699m = false;
                    }
                } catch (Throwable th) {
                    C2345b.m708a(m997a, th);
                }
            }
        }
    };

    public C2277d(Context context, Handler handler) {
        f689c = handler;
        try {
            if (f687a == null) {
                f687a = new HandlerThread("NetWorkSender");
                f687a.start();
                if (f693g == null) {
                    f693g = new FileObserverC2282a(C2273b.m1002h(context));
                    f693g.startWatching();
                    C2419e.m325b("--->>> FileMonitor has already started!");
                }
                Context m997a = C2276c.m997a();
                if (DeviceConfig.checkPermission(m997a, "android.permission.ACCESS_NETWORK_STATE") && f696j == null) {
                    f696j = new IntentFilter();
                    f696j.addAction(NetworkStateReceiver.ACTION_CONNECTIVITY_CHANGE);
                    if (f700n != null) {
                        m997a.registerReceiver(f700n, f696j);
                    }
                }
                if (f697k == null) {
                    f697k = StatTracer.getInstance(context);
                    f698l = ImLatent.getService(context, f697k);
                }
                if (f688b == null) {
                    f688b = new Handler(f687a.getLooper()) { // from class: com.umeng.commonsdk.framework.d.2
                        @Override // android.os.Handler
                        public void handleMessage(Message message) {
                            switch (message.what) {
                                case 273:
                                    C2419e.m325b("--->>> handleMessage: recv MSG_PROCESS_NEXT msg.");
                                    C2277d.m975j();
                                    return;
                                case 512:
                                    C2277d.m976i();
                                    return;
                                default:
                                    return;
                            }
                        }
                    };
                }
            }
        } catch (Throwable th) {
            C2345b.m708a(context, th);
        }
    }

    /* renamed from: h */
    private static void m977h() {
        if (f687a != null) {
            f687a = null;
        }
        if (f688b != null) {
            f688b = null;
        }
        if (f689c != null) {
            f689c = null;
        }
        if (f698l != null) {
            f698l = null;
        }
        if (f697k != null) {
            f697k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public static void m976i() {
        if (f693g != null) {
            f693g.stopWatching();
            f693g = null;
        }
        if (f696j != null) {
            if (f700n != null) {
                C2276c.m997a().unregisterReceiver(f700n);
                f700n = null;
            }
            f696j = null;
        }
        C2419e.m325b("--->>> handleQuit: Quit sender thread.");
        if (f687a != null) {
            f687a.quit();
            m977h();
        }
    }

    /* renamed from: a */
    public static void m992a() {
        m982c(512);
    }

    /* renamed from: b */
    private static void m984b(int i) {
        if (f699m && f688b != null && !f688b.hasMessages(i)) {
            Message obtainMessage = f688b.obtainMessage();
            obtainMessage.what = i;
            f688b.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static void m982c(int i) {
        if (f699m && f688b != null) {
            Message obtainMessage = f688b.obtainMessage();
            obtainMessage.what = i;
            f688b.sendMessage(obtainMessage);
        }
    }

    /* renamed from: a */
    private static void m989a(int i, long j) {
        if (f699m && f688b != null) {
            Message obtainMessage = f688b.obtainMessage();
            obtainMessage.what = i;
            f688b.sendMessageDelayed(obtainMessage, j);
        }
    }

    /* renamed from: b */
    public static void m985b() {
        m984b(273);
    }

    /* renamed from: a */
    private static void m990a(int i, int i2) {
        if (f699m && f689c != null) {
            f689c.removeMessages(i);
            Message obtainMessage = f689c.obtainMessage();
            obtainMessage.what = i;
            f689c.sendMessageDelayed(obtainMessage, i2);
        }
    }

    /* renamed from: c */
    public static void m983c() {
        m990a(769, (int) PathInterpolatorCompat.MAX_NUM_POINTS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UMNetWorkSender.java */
    /* renamed from: com.umeng.commonsdk.framework.d$a */
    /* loaded from: classes2.dex */
    public static class FileObserverC2282a extends FileObserver {
        public FileObserverC2282a(String str) {
            super(str);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i, String str) {
            switch (i & 8) {
                case 8:
                    C2419e.m325b("--->>> envelope file created >>> " + str);
                    C2277d.m982c(273);
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public static void m975j() {
        C2419e.m325b("--->>> handleProcessNext: Enter...");
        if (f699m) {
            Context m997a = C2276c.m997a();
            try {
                if (C2273b.m1008c(m997a) > 0) {
                    C2419e.m325b("--->>> The envelope file exists.");
                    if (C2273b.m1008c(m997a) > 100) {
                        C2419e.m325b("--->>> Number of envelope files is greater than 100, remove old files first.");
                        C2273b.m1006d(m997a);
                    }
                    File m1005e = C2273b.m1005e(m997a);
                    if (m1005e != null) {
                        C2419e.m325b("--->>> Ready to send envelope file [" + m1005e.getPath() + "].");
                        C2406c c2406c = new C2406c(m997a);
                        if (f698l != null && f698l.isLatentActivite()) {
                            f698l.latentDeactivite();
                            long delayTime = f698l.getDelayTime();
                            if (delayTime > 0) {
                                C2419e.m319c("start lacency policy, wait [" + delayTime + "] milliseconds .");
                                Thread.sleep(delayTime * 1000);
                            }
                        }
                        if (c2406c.m400a(m1005e)) {
                            C2419e.m325b("--->>> Send envelope file success, delete it.");
                            if (!C2273b.m1012a(m1005e)) {
                                C2419e.m325b("--->>> Failed to delete already processed file. We try again after delete failed.");
                                C2273b.m1012a(m1005e);
                            }
                            m982c(273);
                            return;
                        }
                        C2419e.m325b("--->>> Send envelope file failed, abandon and wait next trigger!");
                        return;
                    }
                }
                C2419e.m325b("--->>> The envelope file not exists, start auto process for module cache data.");
                m983c();
            } catch (Throwable th) {
                C2345b.m708a(m997a, th);
            }
        }
    }
}
