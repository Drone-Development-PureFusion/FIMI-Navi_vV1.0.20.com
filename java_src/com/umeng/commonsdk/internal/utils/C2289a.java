package com.umeng.commonsdk.internal.utils;

import android.app.ActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import com.twitter.sdk.android.core.internal.scribe.SyndicatedSdkImpressionEvent;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.C2285a;
import com.umeng.commonsdk.internal.C2286b;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.statistics.common.C2419e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: ApplicationLayerUtil.java */
/* renamed from: com.umeng.commonsdk.internal.utils.a */
/* loaded from: classes2.dex */
public class C2289a {

    /* compiled from: ApplicationLayerUtil.java */
    /* renamed from: com.umeng.commonsdk.internal.utils.a$a */
    /* loaded from: classes2.dex */
    public static class C2290a {

        /* renamed from: a */
        public String f735a;

        /* renamed from: b */
        public String f736b;
    }

    /* compiled from: ApplicationLayerUtil.java */
    /* renamed from: com.umeng.commonsdk.internal.utils.a$b */
    /* loaded from: classes2.dex */
    public static class C2291b {

        /* renamed from: a */
        public String f737a = null;

        /* renamed from: b */
        public int f738b = -1;

        /* renamed from: c */
        public String f739c = null;
    }

    /* compiled from: ApplicationLayerUtil.java */
    /* renamed from: com.umeng.commonsdk.internal.utils.a$c */
    /* loaded from: classes2.dex */
    public static class C2292c {

        /* renamed from: a */
        public int f740a;

        /* renamed from: b */
        public String f741b;

        /* renamed from: c */
        public String f742c;

        /* renamed from: d */
        public int f743d;

        /* renamed from: e */
        public int f744e;

        /* renamed from: f */
        public int f745f;

        /* renamed from: g */
        public int f746g;

        /* renamed from: h */
        public String f747h;

        /* renamed from: i */
        public int f748i;

        /* renamed from: j */
        public int f749j;

        /* renamed from: k */
        public int f750k;

        /* renamed from: l */
        public long f751l;
    }

    /* renamed from: a */
    public static long m932a(Context context, String str) {
        if (context == null) {
            return 0L;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).firstInstallTime;
        } catch (PackageManager.NameNotFoundException e) {
            C2345b.m708a(context, e);
            if (e == null) {
                return 0L;
            }
            C2419e.m307e("getAppFirstInstallTime" + e.getMessage());
            return 0L;
        }
    }

    /* renamed from: b */
    public static long m929b(Context context, String str) {
        if (context == null) {
            return 0L;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).lastUpdateTime;
        } catch (PackageManager.NameNotFoundException e) {
            C2345b.m708a(context, e);
            if (e == null) {
                return 0L;
            }
            C2419e.m307e("getAppLastUpdateTime:" + e.getMessage());
            return 0L;
        }
    }

    /* renamed from: c */
    public static String m926c(Context context, String str) {
        try {
            return context.getPackageManager().getInstallerPackageName(str);
        } catch (Exception e) {
            C2345b.m708a(context, e);
            if (e == null) {
                return null;
            }
            C2419e.m307e("getAppInstaller:" + e.getMessage());
            return null;
        }
    }

    /* renamed from: d */
    public static int m923d(Context context, String str) {
        if (context == null) {
            return 0;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getPackageInfo(str, 0).applicationInfo;
            if (applicationInfo == null) {
                return 0;
            }
            return applicationInfo.uid;
        } catch (PackageManager.NameNotFoundException e) {
            C2345b.m708a(context, e);
            if (e == null) {
                return 0;
            }
            C2419e.m307e("getAppUid:" + e.getMessage());
            return 0;
        }
    }

    /* renamed from: a */
    public static boolean m935a() {
        return C2305h.m866a();
    }

    /* renamed from: b */
    public static String m931b() {
        return new SimpleDateFormat().format(new Date());
    }

    /* renamed from: a */
    public static float m933a(Context context) {
        if (context == null) {
            return 0.0f;
        }
        Configuration configuration = new Configuration();
        try {
            configuration.updateFrom(context.getResources().getConfiguration());
            if (configuration == null) {
                return 0.0f;
            }
            return configuration.fontScale;
        } catch (Exception e) {
            if (e == null) {
                return 0.0f;
            }
            C2419e.m307e("getFontSize:" + e.getMessage());
            return 0.0f;
        }
    }

    /* renamed from: b */
    public static List<ScanResult> m930b(Context context) {
        WifiManager wifiManager;
        List<ScanResult> list;
        if (context == null || (wifiManager = (WifiManager) context.getSystemService("wifi")) == null) {
            return null;
        }
        if (DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
            list = wifiManager.getScanResults();
            if (list == null || list.size() == 0) {
                return list;
            }
        } else {
            list = null;
        }
        return list;
    }

    /* renamed from: c */
    public static WifiInfo m927c(Context context) {
        WifiManager wifiManager;
        if (context == null) {
            return null;
        }
        return (!DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE") || (wifiManager = (WifiManager) context.getSystemService("wifi")) == null) ? null : wifiManager.getConnectionInfo();
    }

    /* renamed from: d */
    public static void m924d(Context context) {
        WifiInfo m927c;
        boolean z = true;
        if (context != null && (m927c = m927c(context)) != null) {
            C2292c c2292c = new C2292c();
            c2292c.f740a = m927c.describeContents();
            c2292c.f741b = m927c.getBSSID();
            c2292c.f742c = m927c.getSSID();
            if (Build.VERSION.SDK_INT >= 21) {
                c2292c.f743d = m927c.getFrequency();
            } else {
                c2292c.f743d = -1;
            }
            if (m927c.getHiddenSSID()) {
                c2292c.f744e = 1;
            } else {
                c2292c.f744e = 0;
            }
            c2292c.f745f = m927c.getIpAddress();
            c2292c.f746g = m927c.getLinkSpeed();
            c2292c.f747h = DeviceConfig.getMac(context);
            c2292c.f748i = m927c.getNetworkId();
            c2292c.f749j = m927c.getRssi();
            c2292c.f750k = m916g(context);
            c2292c.f751l = System.currentTimeMillis();
            if (m927c != null) {
                try {
                    JSONArray m874b = C2303f.m874b(context);
                    if (m874b != null && m874b.length() > 0) {
                        for (int i = 0; i < m874b.length(); i++) {
                            String optString = m874b.optJSONObject(i).optString("ssid", null);
                            if (optString != null && optString.equals(c2292c.f742c)) {
                                break;
                            }
                        }
                    }
                    z = false;
                    if (!z) {
                        C2303f.m877a(context, c2292c);
                    }
                } catch (Exception e) {
                    if (e != null) {
                        C2419e.m307e("wifiChange:" + e.getMessage());
                    }
                }
            }
        }
    }

    /* renamed from: e */
    public static JSONArray m921e(Context context) {
        if (context == null) {
            return null;
        }
        return C2303f.m874b(context);
    }

    /* renamed from: f */
    public static void m918f(Context context) {
        if (context != null) {
            C2303f.m873c(context);
        }
    }

    /* renamed from: g */
    public static int m916g(Context context) {
        WifiManager wifiManager;
        if (context == null) {
            return -1;
        }
        return (!DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE") || (wifiManager = (WifiManager) context.getSystemService("wifi")) == null) ? -1 : wifiManager.getWifiState();
    }

    /* renamed from: h */
    public static int m914h(Context context) {
        if (context == null) {
            return 0;
        }
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", SyndicatedSdkImpressionEvent.CLIENT_NAME));
    }

    /* renamed from: i */
    public static int m912i(Context context) {
        if (context == null) {
            return 0;
        }
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", SyndicatedSdkImpressionEvent.CLIENT_NAME));
    }

    /* renamed from: j */
    public static DisplayMetrics m910j(Context context) {
        if (context == null) {
            return null;
        }
        return context.getResources().getDisplayMetrics();
    }

    /* renamed from: j */
    private static boolean m911j() {
        String externalStorageState = Environment.getExternalStorageState();
        return "mounted".equals(externalStorageState) || "mounted_ro".equals(externalStorageState);
    }

    /* renamed from: c */
    public static long m928c() {
        if (!m911j() || Build.VERSION.SDK_INT < 9) {
            return 0L;
        }
        return Environment.getExternalStorageDirectory().getFreeSpace();
    }

    /* renamed from: d */
    public static long m925d() {
        if (!m911j() || Build.VERSION.SDK_INT < 9) {
            return 0L;
        }
        return Environment.getExternalStorageDirectory().getTotalSpace();
    }

    /* renamed from: e */
    public static String m922e() {
        return C2304g.m869a("df");
    }

    /* renamed from: k */
    public static String m909k(Context context) {
        TelephonyManager telephonyManager;
        if (context == null) {
            return null;
        }
        return (!DeviceConfig.checkPermission(context, "android.permission.READ_PHONE_STATE") || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) ? null : telephonyManager.getSubscriberId();
    }

    /* renamed from: l */
    public static String m908l(Context context) {
        String str;
        if (context == null) {
            return null;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (!DeviceConfig.checkPermission(context, "android.permission.READ_PHONE_STATE") || telephonyManager == null) {
            str = null;
        } else if (Build.VERSION.SDK_INT < 26) {
            str = telephonyManager.getDeviceId();
        } else {
            try {
                String m900t = m900t(context);
                try {
                    str = TextUtils.isEmpty(m900t) ? telephonyManager.getDeviceId() : m900t;
                } catch (Throwable th) {
                    str = m900t;
                }
            } catch (Throwable th2) {
                str = null;
            }
        }
        return str;
    }

    /* renamed from: t */
    private static String m900t(Context context) {
        if (context == null) {
            return null;
        }
        try {
            Object invoke = Class.forName("android.telephony.TelephonyManager").getMethod("getMeid", new Class[0]).invoke(null, new Object[0]);
            return (invoke == null || !(invoke instanceof String)) ? null : (String) invoke;
        } catch (Exception e) {
            if (e == null) {
                return null;
            }
            C2419e.m307e("meid:" + e.getMessage());
            return null;
        }
    }

    /* renamed from: m */
    public static List<InputMethodInfo> m907m(Context context) {
        if (context == null) {
            return null;
        }
        return ((InputMethodManager) context.getSystemService("input_method")).getInputMethodList();
    }

    /* renamed from: n */
    public static void m906n(Context context) {
        if (context != null) {
            try {
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                C2291b c2291b = new C2291b();
                if (DeviceConfig.checkPermission(context, "android.permission.BLUETOOTH") && defaultAdapter.isEnabled()) {
                    c2291b.f738b = defaultAdapter.getState();
                    if (Build.VERSION.SDK_INT < 23) {
                        c2291b.f737a = defaultAdapter.getAddress();
                    } else {
                        c2291b.f737a = m934a(defaultAdapter);
                    }
                    c2291b.f739c = defaultAdapter.getName();
                    UMWorkDispatch.sendEvent(context, C2285a.f721i, C2286b.m962a(context).m963a(), c2291b);
                }
            } catch (Exception e) {
                if (e != null) {
                    C2419e.m307e("startBluethInfo:" + e.getMessage());
                }
            }
        }
    }

    /* renamed from: o */
    public static JSONObject m905o(Context context) {
        if (context == null) {
            return null;
        }
        return C2303f.m878a(context);
    }

    /* renamed from: a */
    private static String m934a(BluetoothAdapter bluetoothAdapter) {
        if (bluetoothAdapter == null) {
            return null;
        }
        Class<?> cls = bluetoothAdapter.getClass();
        try {
            Class<?> cls2 = Class.forName("android.bluetooth.IBluetooth");
            Field declaredField = cls.getDeclaredField("mService");
            declaredField.setAccessible(true);
            Method method = cls2.getMethod("getAddress", new Class[0]);
            method.setAccessible(true);
            return (String) method.invoke(declaredField.get(bluetoothAdapter), new Object[0]);
        } catch (Exception e) {
            return bluetoothAdapter.getAddress();
        }
    }

    /* renamed from: p */
    public static List<C2290a> m904p(Context context) {
        String[] list;
        if (context == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            File file = new File(Environment.getExternalStorageDirectory() + "/Android/data/");
            if (file != null && file.isDirectory() && (list = file.list()) != null && list.length > 0) {
                for (String str : list) {
                    if (str != null && !str.startsWith(".")) {
                        C2290a c2290a = new C2290a();
                        c2290a.f735a = str;
                        c2290a.f736b = m920e(context, str);
                        arrayList.add(c2290a);
                    }
                }
                return arrayList;
            }
            return arrayList;
        } catch (Exception e) {
            if (e != null) {
                C2419e.m307e("getAppList:" + e.getMessage());
                return arrayList;
            }
            return arrayList;
        }
    }

    /* renamed from: e */
    private static String m920e(Context context, String str) {
        if (context == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 128);
            return applicationInfo != null ? (String) applicationInfo.loadLabel(context.getPackageManager()) : null;
        } catch (Exception e) {
            if (e == null) {
                return null;
            }
            C2419e.m307e("getLabel:" + e.getMessage());
            return null;
        }
    }

    /* renamed from: q */
    public static ActivityManager.MemoryInfo m903q(Context context) {
        if (context == null) {
            return null;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    /* renamed from: f */
    public static long m919f() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    /* renamed from: r */
    public static String m902r(Context context) {
        if (context == null) {
        }
        return null;
    }

    /* renamed from: s */
    public static String m901s(Context context) {
        return null;
    }

    /* renamed from: g */
    public static String m917g() {
        try {
            Method declaredMethod = Build.class.getDeclaredMethod("getString", String.class);
            declaredMethod.setAccessible(true);
            String obj = declaredMethod.invoke(null, "net.hostname").toString();
            if (obj != null && !obj.equalsIgnoreCase("")) {
                return HelperUtils.getUmengMD5(obj);
            }
            return obj;
        } catch (Exception e) {
            if (e == null) {
                return null;
            }
            C2419e.m307e("getHostName:" + e.getMessage());
            return null;
        }
    }

    /* renamed from: h */
    public static long m915h() {
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Exception e) {
            return 0L;
        }
    }

    /* renamed from: i */
    public static long m913i() {
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Exception e) {
            return 0L;
        }
    }
}
