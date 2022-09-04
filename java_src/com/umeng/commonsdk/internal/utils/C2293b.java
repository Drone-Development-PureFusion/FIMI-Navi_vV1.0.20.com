package com.umeng.commonsdk.internal.utils;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.C2285a;
import com.umeng.commonsdk.internal.C2286b;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.statistics.common.C2419e;
/* compiled from: BaseStationUtils.java */
/* renamed from: com.umeng.commonsdk.internal.utils.b */
/* loaded from: classes2.dex */
public class C2293b {

    /* renamed from: b */
    private static final String f752b = "BaseStationUtils";

    /* renamed from: c */
    private static boolean f753c = false;

    /* renamed from: d */
    private static Context f754d = null;

    /* renamed from: a */
    PhoneStateListener f755a;

    /* renamed from: e */
    private TelephonyManager f756e;

    private C2293b(Context context) {
        this.f755a = new PhoneStateListener() { // from class: com.umeng.commonsdk.internal.utils.b.1
            @Override // android.telephony.PhoneStateListener
            public void onSignalStrengthsChanged(SignalStrength signalStrength) {
                super.onSignalStrengthsChanged(signalStrength);
                C2419e.m316c(C2293b.f752b, "base station onSignalStrengthsChanged");
                try {
                    C2293b.this.f756e = (TelephonyManager) C2293b.f754d.getSystemService("phone");
                    String[] split = signalStrength.toString().split(" ");
                    String str = null;
                    if (C2293b.this.f756e.getNetworkType() != 13) {
                        if (C2293b.this.f756e.getNetworkType() == 8 || C2293b.this.f756e.getNetworkType() == 10 || C2293b.this.f756e.getNetworkType() == 9 || C2293b.this.f756e.getNetworkType() == 3) {
                            String m891e = C2293b.this.m891e();
                            if (!TextUtils.isEmpty(m891e) && m891e.equals("中国移动")) {
                                str = "0";
                            } else if (!TextUtils.isEmpty(m891e) && m891e.equals("中国联通")) {
                                str = signalStrength.getCdmaDbm() + "";
                            } else if (!TextUtils.isEmpty(m891e) && m891e.equals("中国电信")) {
                                str = signalStrength.getEvdoDbm() + "";
                            }
                        } else {
                            str = ((signalStrength.getGsmSignalStrength() * 2) - 113) + "";
                        }
                    } else {
                        str = "" + Integer.parseInt(split[9]);
                    }
                    C2419e.m316c(C2293b.f752b, "stationStrength is " + str);
                    if (!TextUtils.isEmpty(str)) {
                        UMWorkDispatch.sendEvent(C2293b.f754d, C2285a.f720h, C2286b.m962a(C2293b.f754d).m963a(), str);
                    }
                    C2293b.this.m893c();
                } catch (Exception e) {
                    C2345b.m708a(C2293b.f754d, e);
                }
            }
        };
        if (context != null) {
            try {
                this.f756e = (TelephonyManager) context.getSystemService("phone");
            } catch (Throwable th) {
            }
        }
    }

    /* compiled from: BaseStationUtils.java */
    /* renamed from: com.umeng.commonsdk.internal.utils.b$a */
    /* loaded from: classes2.dex */
    private static class C2295a {

        /* renamed from: a */
        private static final C2293b f758a = new C2293b(C2293b.f754d);

        private C2295a() {
        }
    }

    /* renamed from: a */
    public static C2293b m898a(Context context) {
        if (f754d == null && context != null) {
            f754d = context.getApplicationContext();
        }
        return C2295a.f758a;
    }

    /* renamed from: a */
    public synchronized boolean m899a() {
        return f753c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public String m891e() {
        try {
            String simOperator = ((TelephonyManager) f754d.getSystemService("phone")).getSimOperator();
            if (!TextUtils.isEmpty(simOperator)) {
                if (simOperator.equals("46000") || simOperator.equals("46002")) {
                    return "中国移动";
                }
                if (simOperator.equals("46001")) {
                    return "中国联通";
                }
                if (simOperator.equals("46003")) {
                    return "中国电信";
                }
            }
        } catch (Throwable th) {
            C2345b.m708a(f754d, th);
        }
        return null;
    }

    /* renamed from: b */
    public synchronized void m895b() {
        C2419e.m316c(f752b, "base station registerListener");
        if (this.f756e != null) {
            this.f756e.listen(this.f755a, 256);
        }
        f753c = true;
    }

    /* renamed from: c */
    public synchronized void m893c() {
        C2419e.m316c(f752b, "base station unRegisterListener");
        if (this.f756e != null) {
            this.f756e.listen(this.f755a, 0);
        }
        f753c = false;
    }
}
