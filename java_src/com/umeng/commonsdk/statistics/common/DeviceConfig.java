package com.umeng.commonsdk.statistics.common;

import android.content.Context;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import ch.qos.logback.core.CoreConstants;
import com.facebook.internal.AnalyticsEvents;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.NetworkInterface;
import java.security.MessageDigest;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Calendar;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Properties;
import javax.microedition.khronos.opengles.GL10;
import org.slf4j.Marker;
/* loaded from: classes2.dex */
public class DeviceConfig {
    public static final int DEFAULT_TIMEZONE = 8;
    private static final String KEY_EMUI_VERSION_CODE = "ro.build.hw_emui_api_level";
    private static final String KEY_MIUI_VERSION_NAME = "ro.miui.ui.version.name";
    protected static final String LOG_TAG = DeviceConfig.class.getName();
    public static final String MOBILE_NETWORK = "2G/3G";
    public static final String UNKNOW = "";
    public static final String WIFI = "Wi-Fi";

    public static String getImei(Context context) {
        String deviceId;
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null && checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                    deviceId = telephonyManager.getDeviceId();
                    return deviceId;
                }
            } catch (Exception e) {
                if (!AnalyticsConstants.UM_DEBUG) {
                    return null;
                }
                MLog.m368w("No IMEI.", e);
                return null;
            }
        }
        deviceId = null;
        return deviceId;
    }

    public static String getImeiNew(Context context) {
        Exception exc;
        String str;
        String str2;
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null && checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        try {
                            Method method = telephonyManager.getClass().getMethod("getImei", new Class[0]);
                            method.setAccessible(true);
                            str2 = (String) method.invoke(telephonyManager, new Object[0]);
                        } catch (Exception e) {
                            str2 = null;
                        }
                        try {
                            return TextUtils.isEmpty(str2) ? telephonyManager.getDeviceId() : str2;
                        } catch (Exception e2) {
                            exc = e2;
                            str = str2;
                            if (AnalyticsConstants.UM_DEBUG) {
                                MLog.m368w("No IMEI.", exc);
                                return str;
                            }
                            return str;
                        }
                    }
                    return telephonyManager.getDeviceId();
                }
            } catch (Exception e3) {
                exc = e3;
                str = null;
            }
        }
        return null;
    }

    public static String getAndroidId(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            if (!AnalyticsConstants.UM_DEBUG) {
                return null;
            }
            MLog.m370w("can't read android id");
            return null;
        }
    }

    public static String getSerial() {
        if (Build.VERSION.SDK_INT >= 9) {
            if (Build.VERSION.SDK_INT >= 26) {
                try {
                    Class<?> cls = Class.forName("android.os.Build");
                    return (String) cls.getMethod("getSerial", new Class[0]).invoke(cls, new Object[0]);
                } catch (Throwable th) {
                    return null;
                }
            }
            return Build.SERIAL;
        }
        return null;
    }

    public static String getAppVersionCode(Context context) {
        return UMUtils.getAppVersionCode(context);
    }

    public static String getAppVersionName(Context context) {
        return UMUtils.getAppVersionName(context);
    }

    public static boolean checkPermission(Context context, String str) {
        if (context == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        }
        try {
            return ((Integer) Class.forName("android.content.Context").getMethod("checkSelfPermission", String.class).invoke(context, str)).intValue() == 0;
        } catch (Throwable th) {
            return false;
        }
    }

    public static String[] getGPU(GL10 gl10) {
        try {
            return new String[]{gl10.glGetString(7936), gl10.glGetString(7937)};
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.m387e(LOG_TAG, "Could not read gpu infor:", th);
            }
            return new String[0];
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000c A[Catch: Throwable -> 0x0072, TryCatch #0 {Throwable -> 0x0072, blocks: (B:3:0x0002, B:4:0x0006, B:6:0x000c, B:8:0x001e, B:11:0x002a, B:13:0x0030, B:15:0x0035, B:17:0x003e, B:19:0x0056, B:21:0x005c, B:22:0x0065), top: B:2:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String getMacByJavaAPI() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface nextElement = networkInterfaces.nextElement();
                if ("wlan0".equals(nextElement.getName()) || "eth0".equals(nextElement.getName())) {
                    byte[] hardwareAddress = nextElement.getHardwareAddress();
                    if (hardwareAddress == null || hardwareAddress.length == 0) {
                        return null;
                    }
                    StringBuilder sb = new StringBuilder();
                    int length = hardwareAddress.length;
                    for (int i = 0; i < length; i++) {
                        sb.append(String.format("%02X:", Byte.valueOf(hardwareAddress[i])));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString().toLowerCase(Locale.getDefault());
                }
                while (networkInterfaces.hasMoreElements()) {
                }
            }
        } catch (Throwable th) {
        }
        return null;
    }

    private static String getMacShell() {
        int i = 0;
        try {
            String[] strArr = {"/sys/class/net/wlan0/address", "/sys/class/net/eth0/address", "/sys/devices/virtual/net/wlan0/address"};
            while (true) {
                int i2 = i;
                if (i2 >= strArr.length) {
                    break;
                }
                String reaMac = reaMac(strArr[i2]);
                if (reaMac == null) {
                    i = i2 + 1;
                } else {
                    return reaMac;
                }
            }
        } catch (Throwable th) {
        }
        return null;
    }

    private static String reaMac(String str) {
        BufferedReader bufferedReader;
        String str2 = null;
        try {
            FileReader fileReader = new FileReader(str);
            if (fileReader != null) {
                try {
                    bufferedReader = new BufferedReader(fileReader, 1024);
                    try {
                        str2 = bufferedReader.readLine();
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (Throwable th) {
                            }
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th2) {
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (Throwable th4) {
                            }
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th5) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    bufferedReader = null;
                }
            }
        } catch (Throwable th7) {
        }
        return str2;
    }

    public static String getCPU() {
        String str = null;
        try {
            FileReader fileReader = new FileReader("/proc/cpuinfo");
            if (fileReader != null) {
                BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
                str = bufferedReader.readLine();
                bufferedReader.close();
                fileReader.close();
            }
        } catch (FileNotFoundException e) {
            MLog.m387e(LOG_TAG, "Could not open file /proc/cpuinfo", e);
        }
        if (str != null) {
            return str.substring(str.indexOf(58) + 1).trim();
        }
        return "";
    }

    public static String getDeviceId(Context context) {
        return AnalyticsConstants.getDeviceType() == 2 ? getDeviceIdForBox(context) : getDeviceIdForGeneral(context);
    }

    public static String getDeviceIdUmengMD5(Context context) {
        return HelperUtils.getUmengMD5(getDeviceId(context));
    }

    public static String getMCCMNC(Context context) {
        if (context == null || getImsi(context) == null) {
            return null;
        }
        int i = context.getResources().getConfiguration().mcc;
        int i2 = context.getResources().getConfiguration().mnc;
        if (i == 0) {
            return null;
        }
        String valueOf = String.valueOf(i2);
        if (i2 < 10) {
            valueOf = String.format("%02d", Integer.valueOf(i2));
        }
        return new StringBuffer().append(String.valueOf(i)).append(valueOf).toString();
    }

    public static String getImsi(Context context) {
        if (context == null) {
            return null;
        }
        return checkPermission(context, "android.permission.READ_PHONE_STATE") ? ((TelephonyManager) context.getSystemService("phone")).getSubscriberId() : null;
    }

    public static String getRegisteredOperator(Context context) {
        if (context == null) {
            return null;
        }
        return checkPermission(context, "android.permission.READ_PHONE_STATE") ? ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator() : null;
    }

    public static String getNetworkOperatorName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (checkPermission(context, "android.permission.READ_PHONE_STATE") && telephonyManager != null) {
                return telephonyManager.getNetworkOperatorName();
            }
        } catch (Throwable th) {
        }
        return "";
    }

    public static String getDisplayResolution(Context context) {
        if (context == null) {
            return "";
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            int i = displayMetrics.widthPixels;
            return String.valueOf(displayMetrics.heightPixels) + Marker.ANY_MARKER + String.valueOf(i);
        } catch (Throwable th) {
            return "";
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0065 -> B:10:0x0010). Please submit an issue!!! */
    public static String[] getNetworkAccessMode(Context context) {
        String[] strArr;
        String[] strArr2 = {"", ""};
        if (context == null) {
            return strArr2;
        }
        if (!checkPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            strArr2[0] = "";
            strArr = strArr2;
        } else {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                strArr2[0] = "";
                strArr = strArr2;
            } else {
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
                if (networkInfo != null && networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    strArr2[0] = "Wi-Fi";
                    strArr = strArr2;
                } else {
                    NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
                    if (networkInfo2 != null && networkInfo2.getState() == NetworkInfo.State.CONNECTED) {
                        strArr2[0] = "2G/3G";
                        strArr2[1] = networkInfo2.getSubtypeName();
                        strArr = strArr2;
                    }
                    strArr = strArr2;
                }
            }
        }
        return strArr;
    }

    public static boolean isWiFiAvailable(Context context) {
        if (context == null) {
            return false;
        }
        return "Wi-Fi".equals(getNetworkAccessMode(context)[0]);
    }

    public static boolean isOnline(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return false;
        }
        try {
            if (checkPermission(context, "android.permission.ACCESS_NETWORK_STATE") && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                return activeNetworkInfo.isConnectedOrConnecting();
            }
        } catch (Throwable th) {
        }
        return false;
    }

    public static int getTimeZone(Context context) {
        if (context == null) {
            return 8;
        }
        try {
            Calendar calendar = Calendar.getInstance(getLocale(context));
            if (calendar == null) {
                return 8;
            }
            return calendar.getTimeZone().getRawOffset() / CoreConstants.MILLIS_IN_ONE_HOUR;
        } catch (Throwable th) {
            MLog.m381i(LOG_TAG, "error in getTimeZone", th);
            return 8;
        }
    }

    public static boolean isChineseAera(Context context) {
        if (context == null) {
            return false;
        }
        String imprintProperty = UMEnvelopeBuild.imprintProperty(context, C2354g.f976N, "");
        if (!TextUtils.isEmpty(imprintProperty)) {
            return imprintProperty.equals("cn");
        } else if (getImsi(context) == null) {
            String str = getLocaleInfo(context)[0];
            return !TextUtils.isEmpty(str) && str.equalsIgnoreCase("cn");
        } else {
            int i = context.getResources().getConfiguration().mcc;
            if (i == 460 || i == 461) {
                return true;
            }
            if (i != 0) {
                return false;
            }
            String str2 = getLocaleInfo(context)[0];
            return !TextUtils.isEmpty(str2) && str2.equalsIgnoreCase("cn");
        }
    }

    public static String[] getLocaleInfo(Context context) {
        String[] strArr = {AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN, AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN};
        if (context != null) {
            try {
                Locale locale = getLocale(context);
                if (locale != null) {
                    strArr[0] = locale.getCountry();
                    strArr[1] = locale.getLanguage();
                }
                if (TextUtils.isEmpty(strArr[0])) {
                    strArr[0] = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
                }
                if (TextUtils.isEmpty(strArr[1])) {
                    strArr[1] = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
                }
            } catch (Throwable th) {
                MLog.m387e(LOG_TAG, "error in getLocaleInfo", th);
            }
        }
        return strArr;
    }

    private static Locale getLocale(Context context) {
        Locale locale = null;
        if (context == null) {
            return Locale.getDefault();
        }
        try {
            Configuration configuration = new Configuration();
            configuration.setToDefaults();
            Settings.System.getConfiguration(context.getContentResolver(), configuration);
            if (configuration != null) {
                locale = configuration.locale;
            }
        } catch (Throwable th) {
            MLog.m385e(LOG_TAG, "fail to read user config locale");
        }
        if (locale == null) {
            return Locale.getDefault();
        }
        return locale;
    }

    public static String getMac(Context context) {
        if (context == null) {
            return "";
        }
        if (Build.VERSION.SDK_INT < 23) {
            return getMacBySystemInterface(context);
        }
        if (Build.VERSION.SDK_INT == 23) {
            String macByJavaAPI = getMacByJavaAPI();
            if (TextUtils.isEmpty(macByJavaAPI)) {
                if (AnalyticsConstants.CHECK_DEVICE) {
                    return getMacShell();
                }
                return getMacBySystemInterface(context);
            }
            return macByJavaAPI;
        }
        String macByJavaAPI2 = getMacByJavaAPI();
        if (TextUtils.isEmpty(macByJavaAPI2)) {
            return getMacBySystemInterface(context);
        }
        return macByJavaAPI2;
    }

    private static String getMacBySystemInterface(Context context) {
        if (context == null) {
            return "";
        }
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
                return wifiManager.getConnectionInfo().getMacAddress();
            }
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.m367w(LOG_TAG, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
            }
            return "";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.m367w(LOG_TAG, "Could not get mac address." + th.toString());
            }
            return "";
        }
    }

    public static int[] getResolutionArray(Context context) {
        int i;
        int i2;
        int i3;
        if (context == null) {
            return null;
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            if ((context.getApplicationInfo().flags & 8192) == 0) {
                i2 = reflectMetrics(displayMetrics, "noncompatWidthPixels");
                i = reflectMetrics(displayMetrics, "noncompatHeightPixels");
            } else {
                i = -1;
                i2 = -1;
            }
            if (i2 == -1 || i == -1) {
                i2 = displayMetrics.widthPixels;
                i3 = displayMetrics.heightPixels;
            } else {
                i3 = i;
            }
            int[] iArr = new int[2];
            if (i2 > i3) {
                iArr[0] = i3;
                iArr[1] = i2;
                return iArr;
            }
            iArr[0] = i2;
            iArr[1] = i3;
            return iArr;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.m387e(LOG_TAG, "read resolution fail", th);
            }
            return null;
        }
    }

    private static int reflectMetrics(Object obj, String str) {
        try {
            Field declaredField = DisplayMetrics.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.getInt(obj);
        } catch (Throwable th) {
            return -1;
        }
    }

    public static String getPackageName(Context context) {
        if (context == null) {
            return null;
        }
        return context.getPackageName();
    }

    public static String getAppSHA1Key(Context context) {
        try {
            return byte2HexFormatted(MessageDigest.getInstance("SHA1").digest(((X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures[0].toByteArray()))).getEncoded()));
        } catch (Exception e) {
            return null;
        }
    }

    public static String getAppHashKey(Context context) {
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures;
            if (0 < signatureArr.length) {
                Signature signature = signatureArr[0];
                MessageDigest messageDigest = MessageDigest.getInstance("SHA");
                messageDigest.update(signature.toByteArray());
                return Base64.encodeToString(messageDigest.digest(), 0).trim();
            }
        } catch (Throwable th) {
        }
        return null;
    }

    public static String getAppMD5Signature(Context context) {
        String str;
        if (context == null) {
            return null;
        }
        try {
            str = byte2HexFormatted(MessageDigest.getInstance("MD5").digest(((X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures[0].toByteArray()))).getEncoded()));
        } catch (Throwable th) {
            str = null;
        }
        return str;
    }

    private static String byte2HexFormatted(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            String hexString = Integer.toHexString(bArr[i]);
            int length = hexString.length();
            if (length == 1) {
                hexString = "0" + hexString;
            }
            if (length > 2) {
                hexString = hexString.substring(length - 2, length);
            }
            sb.append(hexString.toUpperCase(Locale.getDefault()));
            if (i < bArr.length - 1) {
                sb.append(CoreConstants.COLON_CHAR);
            }
        }
        return sb.toString();
    }

    public static String getApplicationLable(Context context) {
        return context == null ? "" : context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
    }

    public static String getAppName(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (Throwable th) {
            if (!AnalyticsConstants.UM_DEBUG) {
                return null;
            }
            MLog.m380i(LOG_TAG, th);
            return null;
        }
    }

    public static String getDeviceIdForGeneral(Context context) {
        if (context == null) {
            return "";
        }
        if (Build.VERSION.SDK_INT < 23) {
            String imei = getIMEI(context);
            if (TextUtils.isEmpty(imei)) {
                if (AnalyticsConstants.UM_DEBUG) {
                    MLog.m367w(LOG_TAG, "No IMEI.");
                }
                String macBySystemInterface = getMacBySystemInterface(context);
                if (TextUtils.isEmpty(macBySystemInterface)) {
                    String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
                    if (AnalyticsConstants.UM_DEBUG) {
                        MLog.m379i(LOG_TAG, "getDeviceId, ANDROID_ID: " + string);
                    }
                    if (TextUtils.isEmpty(string)) {
                        return getSerialNo();
                    }
                    return string;
                }
                return macBySystemInterface;
            }
            return imei;
        } else if (Build.VERSION.SDK_INT == 23) {
            String imei2 = getIMEI(context);
            if (TextUtils.isEmpty(imei2)) {
                String macByJavaAPI = getMacByJavaAPI();
                if (TextUtils.isEmpty(macByJavaAPI)) {
                    if (AnalyticsConstants.CHECK_DEVICE) {
                        macByJavaAPI = getMacShell();
                    } else {
                        macByJavaAPI = getMacBySystemInterface(context);
                    }
                }
                if (AnalyticsConstants.UM_DEBUG) {
                    MLog.m379i(LOG_TAG, "getDeviceId, MAC: " + macByJavaAPI);
                }
                if (TextUtils.isEmpty(macByJavaAPI)) {
                    String string2 = Settings.Secure.getString(context.getContentResolver(), "android_id");
                    if (AnalyticsConstants.UM_DEBUG) {
                        MLog.m379i(LOG_TAG, "getDeviceId, ANDROID_ID: " + string2);
                    }
                    if (TextUtils.isEmpty(string2)) {
                        return getSerialNo();
                    }
                    return string2;
                }
                return macByJavaAPI;
            }
            return imei2;
        } else {
            String imei3 = getIMEI(context);
            if (TextUtils.isEmpty(imei3)) {
                String serialNo = getSerialNo();
                if (TextUtils.isEmpty(serialNo)) {
                    String string3 = Settings.Secure.getString(context.getContentResolver(), "android_id");
                    if (AnalyticsConstants.UM_DEBUG) {
                        MLog.m379i(LOG_TAG, "getDeviceId, ANDROID_ID: " + string3);
                    }
                    if (TextUtils.isEmpty(string3)) {
                        String macByJavaAPI2 = getMacByJavaAPI();
                        if (TextUtils.isEmpty(macByJavaAPI2)) {
                            String macBySystemInterface2 = getMacBySystemInterface(context);
                            if (AnalyticsConstants.UM_DEBUG) {
                                MLog.m379i(LOG_TAG, "getDeviceId, MAC: " + macBySystemInterface2);
                                return macBySystemInterface2;
                            }
                            return macBySystemInterface2;
                        }
                        return macByJavaAPI2;
                    }
                    return string3;
                }
                return serialNo;
            }
            return imei3;
        }
    }

    public static String getDeviceIdForBox(Context context) {
        if (context == null) {
            return "";
        }
        if (Build.VERSION.SDK_INT < 23) {
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.m379i(LOG_TAG, "getDeviceId, ANDROID_ID: " + string);
            }
            if (TextUtils.isEmpty(string)) {
                String macBySystemInterface = getMacBySystemInterface(context);
                if (AnalyticsConstants.UM_DEBUG) {
                    MLog.m379i(LOG_TAG, "getDeviceId, MAC: " + macBySystemInterface);
                }
                if (TextUtils.isEmpty(macBySystemInterface)) {
                    String serialNo = getSerialNo();
                    if (TextUtils.isEmpty(serialNo)) {
                        return getIMEI(context);
                    }
                    return serialNo;
                }
                return macBySystemInterface;
            }
            return string;
        } else if (Build.VERSION.SDK_INT == 23) {
            String string2 = Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.m379i(LOG_TAG, "getDeviceId, ANDROID_ID: " + string2);
            }
            if (TextUtils.isEmpty(string2)) {
                String macByJavaAPI = getMacByJavaAPI();
                if (TextUtils.isEmpty(macByJavaAPI)) {
                    if (AnalyticsConstants.CHECK_DEVICE) {
                        macByJavaAPI = getMacShell();
                    } else {
                        macByJavaAPI = getMacBySystemInterface(context);
                    }
                }
                if (AnalyticsConstants.UM_DEBUG) {
                    MLog.m379i(LOG_TAG, "getDeviceId, MAC: " + macByJavaAPI);
                }
                if (TextUtils.isEmpty(macByJavaAPI)) {
                    String serialNo2 = getSerialNo();
                    if (TextUtils.isEmpty(serialNo2)) {
                        return getIMEI(context);
                    }
                    return serialNo2;
                }
                return macByJavaAPI;
            }
            return string2;
        } else {
            String string3 = Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.m379i(LOG_TAG, "getDeviceId: ANDROID_ID: " + string3);
            }
            if (TextUtils.isEmpty(string3)) {
                String serialNo3 = getSerialNo();
                if (TextUtils.isEmpty(serialNo3)) {
                    String imei = getIMEI(context);
                    if (TextUtils.isEmpty(imei)) {
                        String macByJavaAPI2 = getMacByJavaAPI();
                        if (TextUtils.isEmpty(macByJavaAPI2)) {
                            String macBySystemInterface2 = getMacBySystemInterface(context);
                            if (AnalyticsConstants.UM_DEBUG) {
                                MLog.m379i(LOG_TAG, "getDeviceId, MAC: " + macBySystemInterface2);
                                return macBySystemInterface2;
                            }
                            return macBySystemInterface2;
                        }
                        return macByJavaAPI2;
                    }
                    return imei;
                }
                return serialNo3;
            }
            return string3;
        }
    }

    private static String getIMEI(Context context) {
        String str;
        if (context == null) {
            return "";
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            try {
            } catch (Throwable th) {
                th = th;
                str = "";
            }
            if (checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                str = telephonyManager.getDeviceId();
                try {
                    if (AnalyticsConstants.UM_DEBUG) {
                        MLog.m379i(LOG_TAG, "getDeviceId, IMEI: " + str);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (AnalyticsConstants.UM_DEBUG) {
                        MLog.m369w(LOG_TAG, "No IMEI.", th);
                    }
                    return str;
                }
                return str;
            }
        }
        str = "";
        return str;
    }

    private static String getSerialNo() {
        String str;
        if (Build.VERSION.SDK_INT < 9) {
            str = "";
        } else if (Build.VERSION.SDK_INT >= 26) {
            try {
                Class<?> cls = Class.forName("android.os.Build");
                str = (String) cls.getMethod("getSerial", new Class[0]).invoke(cls, new Object[0]);
            } catch (Throwable th) {
                str = "";
            }
        } else {
            str = Build.SERIAL;
        }
        if (AnalyticsConstants.UM_DEBUG) {
            MLog.m379i(LOG_TAG, "getDeviceId, serial no: " + str);
        }
        return str;
    }

    public static String getSubOSName(Context context) {
        Properties buildProp = getBuildProp();
        try {
            String property = buildProp.getProperty(KEY_MIUI_VERSION_NAME);
            if (TextUtils.isEmpty(property)) {
                if (isFlyMe()) {
                    return "Flyme";
                }
                if (isEmui(buildProp)) {
                    return "Emui";
                }
                if (!TextUtils.isEmpty(getYunOSVersion(buildProp))) {
                    return "YunOS";
                }
                return property;
            }
            return "MIUI";
        } catch (Throwable th) {
            return null;
        }
    }

    public static String getSubOSVersion(Context context) {
        Properties buildProp = getBuildProp();
        try {
            String property = buildProp.getProperty(KEY_MIUI_VERSION_NAME);
            if (TextUtils.isEmpty(property)) {
                if (isFlyMe()) {
                    try {
                        return getFlymeVersion(buildProp);
                    } catch (Throwable th) {
                        return property;
                    }
                } else if (isEmui(buildProp)) {
                    try {
                        return getEmuiVersion(buildProp);
                    } catch (Throwable th2) {
                        return property;
                    }
                } else {
                    try {
                        return getYunOSVersion(buildProp);
                    } catch (Throwable th3) {
                        return property;
                    }
                }
            }
            return property;
        } catch (Throwable th4) {
            return null;
        }
    }

    private static String getYunOSVersion(Properties properties) {
        String property = properties.getProperty("ro.yunos.version");
        if (!TextUtils.isEmpty(property)) {
            return property;
        }
        return null;
    }

    private static String getFlymeVersion(Properties properties) {
        try {
            String lowerCase = properties.getProperty("ro.build.display.id").toLowerCase(Locale.getDefault());
            if (lowerCase.contains("flyme os")) {
                return lowerCase.split(" ")[2];
            }
        } catch (Throwable th) {
        }
        return null;
    }

    private static String getEmuiVersion(Properties properties) {
        try {
            return properties.getProperty(KEY_EMUI_VERSION_CODE, null);
        } catch (Exception e) {
            return null;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:40)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:203)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:46)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:40)
        */
    private static java.util.Properties getBuildProp() {
        /*
            java.util.Properties r2 = new java.util.Properties
            r2.<init>()
            r1 = 0
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L1f
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L1f
            java.io.File r4 = android.os.Environment.getRootDirectory()     // Catch: java.lang.Throwable -> L1f
            java.lang.String r5 = "build.prop"
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L1f
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L1f
            r2.load(r0)     // Catch: java.lang.Throwable -> L3a
            if (r0 == 0) goto L1e
            r0.close()     // Catch: java.lang.Throwable -> L32
        L1e:
            return r2
        L1f:
            r0 = move-exception
            r0 = r1
        L21:
            if (r0 == 0) goto L1e
            r0.close()     // Catch: java.lang.Throwable -> L27
            goto L1e
        L27:
            r0 = move-exception
            goto L1e
        L29:
            r0 = move-exception
            r2 = r0
            r3 = r1
        L2c:
            if (r3 == 0) goto L31
            r3.close()     // Catch: java.lang.Throwable -> L34
        L31:
            throw r2
        L32:
            r0 = move-exception
            goto L1e
        L34:
            r0 = move-exception
            goto L31
        L36:
            r1 = move-exception
            r2 = r1
            r3 = r0
            goto L2c
        L3a:
            r1 = move-exception
            goto L21
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getBuildProp():java.util.Properties");
    }

    private static boolean isFlyMe() {
        try {
            Build.class.getMethod("hasSmartBar", new Class[0]);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    private static boolean isEmui(Properties properties) {
        try {
            return properties.getProperty(KEY_EMUI_VERSION_CODE, null) != null;
        } catch (Exception e) {
            return false;
        }
    }

    public static String getDeviceType(Context context) {
        if (context == null) {
            return "Phone";
        }
        if ((context.getResources().getConfiguration().screenLayout & 15) >= 3) {
            return "Tablet";
        }
        return "Phone";
    }

    public static String getDBencryptID(Context context) {
        String str;
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null || !checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                str = null;
            } else {
                str = telephonyManager.getDeviceId();
            }
            try {
                if (TextUtils.isEmpty(str)) {
                    String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
                    try {
                        if (!TextUtils.isEmpty(string) || Build.VERSION.SDK_INT < 9) {
                            return string;
                        }
                        if (Build.VERSION.SDK_INT >= 26) {
                            try {
                                Class<?> cls = Class.forName("android.os.Build");
                                return (String) cls.getMethod("getSerial", new Class[0]).invoke(cls, new Object[0]);
                            } catch (Throwable th) {
                                return string;
                            }
                        }
                        return Build.SERIAL;
                    } catch (Throwable th2) {
                        return string;
                    }
                }
                return str;
            } catch (Throwable th3) {
                return str;
            }
        } catch (Throwable th4) {
            return null;
        }
    }
}
