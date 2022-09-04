package com.umeng.commonsdk;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.C2273b;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.C2285a;
import com.umeng.commonsdk.internal.C2286b;
/* compiled from: UMConfigureInternation.java */
/* renamed from: com.umeng.commonsdk.a */
/* loaded from: classes2.dex */
public class C2270a {

    /* renamed from: a */
    private static boolean f666a = false;

    /* renamed from: a */
    public static synchronized void m1023a(final Context context) {
        synchronized (C2270a.class) {
            if (context != null) {
                try {
                    if (!f666a) {
                        new Thread(new Runnable() { // from class: com.umeng.commonsdk.a.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    String m1016a = C2273b.m1016a(context);
                                    String packageName = context.getPackageName();
                                    if (TextUtils.isEmpty(m1016a) || TextUtils.isEmpty(packageName)) {
                                        return;
                                    }
                                    if (m1016a.equals(packageName)) {
                                        try {
                                            if (UMEnvelopeBuild.isReadyBuild(context, UMLogDataProtocol.UMBusinessType.U_INTERNAL)) {
                                                UMWorkDispatch.sendEvent(context, C2285a.f725m, C2286b.m962a(context).m963a(), null);
                                            }
                                        } catch (Throwable th) {
                                        }
                                    }
                                } catch (Throwable th2) {
                                }
                            }
                        }).start();
                        f666a = true;
                    }
                } finally {
                }
            }
        }
    }
}
