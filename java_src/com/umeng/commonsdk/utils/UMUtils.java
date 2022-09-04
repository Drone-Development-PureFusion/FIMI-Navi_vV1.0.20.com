package com.umeng.commonsdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import ch.qos.logback.core.CoreConstants;
import com.facebook.internal.AnalyticsEvents;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.MLog;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Locale;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.microedition.khronos.opengles.GL10;
import org.slf4j.Marker;
/* loaded from: classes2.dex */
public class UMUtils {
    public static final int DEFAULT_TIMEZONE = 8;
    private static final String KEY_APP_KEY = "appkey";
    private static final String KEY_CHANNEL = "channel";
    private static final String KEY_LAST_APP_KEY = "last_appkey";
    private static final String KEY_MIUI_VERSION_NAME = "ro.miui.ui.version.name";
    private static final String KEY_SHARED_PREFERENCES_NAME = "umeng_common_config";
    public static final String MOBILE_NETWORK = "2G/3G";
    private static final String SD_PERMISSION = "android.permission.WRITE_EXTERNAL_STORAGE";
    private static final String TAG = "UMUtils";
    public static final String UNKNOW = "";
    public static final String WIFI = "Wi-Fi";
    private static final Pattern pattern = Pattern.compile("UTDID\">([^<]+)");

    public static void setLastAppkey(Context context, String str) {
        if (context != null && str != null) {
            try {
                SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putString(KEY_LAST_APP_KEY, str).commit();
                }
            } catch (Exception e) {
                if (AnalyticsConstants.UM_DEBUG) {
                    Log.e(TAG, "set last app key e is " + e);
                }
                C2345b.m708a(context, e);
            } catch (Throwable th) {
                if (AnalyticsConstants.UM_DEBUG) {
                    Log.e(TAG, "set last app key e is " + th);
                }
                C2345b.m708a(context, th);
            }
        }
    }

    public static String getLastAppkey(Context context) {
        if (context == null) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
            if (sharedPreferences == null) {
                return null;
            }
            return sharedPreferences.getString(KEY_LAST_APP_KEY, null);
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get last app key e is " + e);
            }
            C2345b.m708a(context, e);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get last app key e is " + th);
            }
            C2345b.m708a(context, th);
            return null;
        }
    }

    public static synchronized void setAppkey(Context context, String str) {
        synchronized (UMUtils.class) {
            if (context != null && str != null) {
                try {
                    SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
                    if (sharedPreferences != null) {
                        sharedPreferences.edit().putString("appkey", str).commit();
                    }
                } catch (Exception e) {
                    if (AnalyticsConstants.UM_DEBUG) {
                        Log.e(TAG, "set app key e is " + e);
                    }
                    C2345b.m708a(context, e);
                }
            }
        }
    }

    public static synchronized String getAppkey(Context context) {
        String str = null;
        synchronized (UMUtils.class) {
            if (context != null) {
                try {
                    SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
                    if (sharedPreferences != null) {
                        str = sharedPreferences.getString("appkey", null);
                    }
                } catch (Exception e) {
                    if (AnalyticsConstants.UM_DEBUG) {
                        Log.e(TAG, "get app key e is " + e);
                    }
                    C2345b.m708a(context, e);
                } catch (Throwable th) {
                    if (AnalyticsConstants.UM_DEBUG) {
                        Log.e(TAG, "get app key e is " + th);
                    }
                    C2345b.m708a(context, th);
                }
            }
        }
        return str;
    }

    public static void setChannel(Context context, String str) {
        if (context != null && str != null) {
            try {
                SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putString("channel", str).commit();
                }
            } catch (Exception e) {
                if (AnalyticsConstants.UM_DEBUG) {
                    Log.e(TAG, "set channel e is " + e);
                }
                C2345b.m708a(context, e);
            } catch (Throwable th) {
                if (AnalyticsConstants.UM_DEBUG) {
                    Log.e(TAG, "set channel e is " + th);
                }
                C2345b.m708a(context, th);
            }
        }
    }

    public static String getChannel(Context context) {
        if (context == null) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("umeng_common_config", 0);
            if (sharedPreferences == null) {
                return null;
            }
            return sharedPreferences.getString("channel", null);
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get channel e is " + e);
            }
            C2345b.m708a(context, e);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get channel e is " + th);
            }
            C2345b.m708a(context, th);
            return null;
        }
    }

    public static String getUTDID(Context context) {
        if (context == null) {
            return null;
        }
        try {
            try {
                return (String) Class.forName("com.ut.device.UTDevice").getMethod("getUtdid", Context.class).invoke(null, context.getApplicationContext());
            } catch (Exception e) {
                try {
                    return readUTDId(context);
                } catch (Exception e2) {
                    if (AnalyticsConstants.UM_DEBUG) {
                        Log.e(TAG, "get utiid e is " + e2);
                    }
                    return null;
                }
            }
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get utiid e is " + th);
            }
            return null;
        }
    }

    private static String readUTDId(Context context) {
        File file;
        String str = null;
        if (context == null || (file = getFile(context)) == null || !file.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            String parseId = parseId(readStreamToString(fileInputStream));
            safeClose(fileInputStream);
            str = parseId;
            return str;
        } catch (Exception e) {
            return str;
        }
    }

    private static void safeClose(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception e) {
            }
        }
    }

    private static String parseId(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = pattern.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        return matcher.group(1);
    }

    private static String readStreamToString(InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
        char[] cArr = new char[1024];
        StringWriter stringWriter = new StringWriter();
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (-1 != read) {
                stringWriter.write(cArr, 0, read);
            } else {
                return stringWriter.toString();
            }
        }
    }

    private static File getFile(Context context) {
        if (context != null && checkPermission(context, SD_PERMISSION) && Environment.getExternalStorageState().equals("mounted")) {
            try {
                return new File(Environment.getExternalStorageDirectory().getCanonicalPath(), ".UTSystemConfig/Global/Alvin2.xml");
            } catch (Exception e) {
                return null;
            }
        }
        return null;
    }

    public static String[] getGPU(GL10 gl10) {
        try {
            return new String[]{gl10.glGetString(7936), gl10.glGetString(7937)};
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "Could not read gpu infor, e is " + e);
            }
            return new String[0];
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "Could not read gpu infor, e is " + th);
            }
            return new String[0];
        }
    }

    public static String getCPU() {
        String str = null;
        try {
            try {
                FileReader fileReader = new FileReader("/proc/cpuinfo");
                if (fileReader != null) {
                    try {
                        BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
                        str = bufferedReader.readLine();
                        bufferedReader.close();
                        fileReader.close();
                    } catch (IOException e) {
                        if (AnalyticsConstants.UM_DEBUG) {
                            Log.e(TAG, "Could not read from file /proc/cpuinfo, e is " + e);
                        }
                    }
                }
            } catch (FileNotFoundException e2) {
                if (AnalyticsConstants.UM_DEBUG) {
                    Log.e(TAG, "Could not read from file /proc/cpuinfo, e is " + e2);
                }
            }
            if (str != null) {
                return str.substring(str.indexOf(58) + 1).trim();
            }
            return "";
        } catch (Exception e3) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get cpu e is " + e3);
            }
            return "";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get cpu e is " + th);
            }
            return "";
        }
    }

    public static String getImsi(Context context) {
        try {
            return checkPermission(context, "android.permission.READ_PHONE_STATE") ? ((TelephonyManager) context.getSystemService("phone")).getSubscriberId() : null;
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get imei e is " + e);
            }
            C2345b.m708a(context, e);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get imei e is " + th);
            }
            C2345b.m708a(context, th);
            return null;
        }
    }

    public static String getRegisteredOperator(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return checkPermission(context, "android.permission.READ_PHONE_STATE") ? ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator() : null;
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get registered operator e is " + e);
            }
            C2345b.m708a(context, e);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get registered operator e is " + th);
            }
            C2345b.m708a(context, th);
            return null;
        }
    }

    public static String getNetworkOperatorName(Context context) {
        if (context == null) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (checkPermission(context, "android.permission.READ_PHONE_STATE") && telephonyManager != null) {
                return telephonyManager.getNetworkOperatorName();
            }
            return "";
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get network operator e is " + e);
            }
            C2345b.m708a(context, e);
            return "";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get network operator e is " + th);
            }
            C2345b.m708a(context, th);
            return "";
        }
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
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get display resolution e is " + e);
            }
            C2345b.m708a(context, e);
            return "";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get display resolution e is " + th);
            }
            C2345b.m708a(context, th);
            return "";
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0084 -> B:10:0x0010). Please submit an issue!!! */
    public static String[] getNetworkAccessMode(Context context) {
        String[] strArr;
        String[] strArr2 = {"", ""};
        if (context == null) {
            return strArr2;
        }
        try {
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get network access mode e is " + e);
            }
            C2345b.m708a(context, e);
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get network access mode e is " + th);
            }
            C2345b.m708a(context, th);
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

    public static boolean isSdCardWrittenable() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0019 A[Catch: Exception -> 0x003e, Throwable -> 0x005f, TRY_ENTER, TryCatch #1 {Exception -> 0x003e, blocks: (B:10:0x0019, B:24:0x0020, B:26:0x0024), top: B:23:0x0020 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Locale getLocale(Context context) {
        Locale locale;
        Configuration configuration;
        if (context == null) {
            return null;
        }
        try {
            try {
                configuration = new Configuration();
                configuration.setToDefaults();
                Settings.System.getConfiguration(context.getContentResolver(), configuration);
            } catch (Exception e) {
                try {
                    if (AnalyticsConstants.UM_DEBUG) {
                        Log.e(TAG, "fail to read user config locale, e is " + e);
                    }
                } catch (Exception e2) {
                    if (AnalyticsConstants.UM_DEBUG) {
                        Log.e(TAG, "get locale e is " + e2);
                    }
                    C2345b.m708a(context, e2);
                    return null;
                }
            }
            if (configuration != null) {
                locale = configuration.locale;
                if (locale == null) {
                    locale = Locale.getDefault();
                }
                return locale;
            }
            locale = null;
            if (locale == null) {
            }
            return locale;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get locale e is " + th);
            }
            C2345b.m708a(context, th);
            return null;
        }
    }

    public static String getMac(Context context) {
        if (context == null) {
            return null;
        }
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
                return wifiManager.getConnectionInfo().getMacAddress();
            }
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
            }
            return "";
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get mac e is " + e);
            }
            C2345b.m708a(context, e);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get mac e is " + th);
            }
            C2345b.m708a(context, th);
            return null;
        }
    }

    public static String getOperator(Context context) {
        if (context == null) {
            return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        }
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get get operator e is " + e);
            }
            C2345b.m708a(context, e);
            return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get get operator e is " + th);
            }
            C2345b.m708a(context, th);
            return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        }
    }

    public static String getSubOSName(Context context) {
        String str;
        if (context == null) {
            return null;
        }
        try {
            try {
                Properties buildProp = getBuildProp();
                try {
                    str = buildProp.getProperty(KEY_MIUI_VERSION_NAME);
                    if (TextUtils.isEmpty(str)) {
                        if (isFlyMe()) {
                            str = "Flyme";
                        } else if (!TextUtils.isEmpty(getYunOSVersion(buildProp))) {
                            str = "YunOS";
                        }
                    } else {
                        str = "MIUI";
                    }
                } catch (Exception e) {
                    C2345b.m708a(context, e);
                    str = null;
                }
                return str;
            } catch (Throwable th) {
                if (AnalyticsConstants.UM_DEBUG) {
                    Log.e(TAG, "get sub os name e is " + th);
                }
                C2345b.m708a(context, th);
                return null;
            }
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get sub os name e is " + e2);
            }
            C2345b.m708a(context, e2);
            return null;
        }
    }

    public static String getSubOSVersion(Context context) {
        String str;
        if (context == null) {
            return null;
        }
        try {
            try {
                Properties buildProp = getBuildProp();
                try {
                    str = buildProp.getProperty(KEY_MIUI_VERSION_NAME);
                    if (TextUtils.isEmpty(str)) {
                        if (isFlyMe()) {
                            try {
                                str = getFlymeVersion(buildProp);
                            } catch (Exception e) {
                            }
                        } else {
                            try {
                                str = getYunOSVersion(buildProp);
                            } catch (Exception e2) {
                            }
                        }
                    }
                } catch (Exception e3) {
                    C2345b.m708a(context, e3);
                    str = null;
                }
                return str;
            } catch (Throwable th) {
                if (AnalyticsConstants.UM_DEBUG) {
                    Log.e(TAG, "get sub os version e is " + th);
                }
                C2345b.m708a(context, th);
                return null;
            }
        } catch (Exception e4) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get sub os version e is " + e4);
            }
            C2345b.m708a(context, e4);
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
        } catch (Exception e) {
        }
        return null;
    }

    public static Properties getBuildProp() {
        Throwable th;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        Properties properties = new Properties();
        try {
            fileInputStream2 = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
            try {
                properties.load(fileInputStream2);
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e) {
                    }
                }
            } catch (IOException e2) {
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e3) {
                    }
                }
                return properties;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e4) {
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            fileInputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
        return properties;
    }

    private static boolean isFlyMe() {
        try {
            Build.class.getMethod("hasSmartBar", new Class[0]);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static String getDeviceType(Context context) {
        if (context == null) {
            return "Phone";
        }
        try {
            if ((context.getResources().getConfiguration().screenLayout & 15) >= 3) {
                return "Tablet";
            }
            return "Phone";
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get device type e is " + e);
            }
            C2345b.m708a(context, e);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get device type e is " + th);
            }
            C2345b.m708a(context, th);
            return null;
        }
    }

    public static String getAppVersionCode(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get app version code e is " + e);
            }
            return "";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get app version code e is " + th);
            }
            return "";
        }
    }

    public static String getAppVersinoCode(Context context, String str) {
        if (context == null || str == null) {
            return "";
        }
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(str, 0).versionCode);
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get app version code e is " + e);
            }
            return "";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get app version code e is " + th);
            }
            return "";
        }
    }

    public static String getAppVersionName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get app version name e is " + e);
            }
            return "";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get app version name e is " + th);
            }
            return "";
        }
    }

    public static String getAppVersionName(Context context, String str) {
        if (context == null || str == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get app version name e is " + e);
            }
            C2345b.m708a(context, e);
            return "";
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get app version name e is " + th);
            }
            C2345b.m708a(context, th);
            return "";
        }
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
        } catch (Exception e) {
            C2345b.m708a(context, e);
            return false;
        }
    }

    public static String getAppMD5Signature(Context context) {
        PackageInfo packageInfo;
        CertificateFactory certificateFactory;
        X509Certificate x509Certificate;
        if (context == null) {
            return null;
        }
        try {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            } catch (PackageManager.NameNotFoundException e) {
                packageInfo = null;
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(packageInfo.signatures[0].toByteArray());
            try {
                certificateFactory = CertificateFactory.getInstance("X509");
            } catch (CertificateException e2) {
                certificateFactory = null;
            }
            try {
                x509Certificate = (X509Certificate) certificateFactory.generateCertificate(byteArrayInputStream);
            } catch (CertificateException e3) {
                x509Certificate = null;
            }
            try {
                return byte2HexFormatted(MessageDigest.getInstance("MD5").digest(x509Certificate.getEncoded()));
            } catch (NoSuchAlgorithmException e4) {
                return null;
            } catch (CertificateEncodingException e5) {
                return null;
            }
        } catch (Exception e6) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get app MD5 signature e is " + e6);
            }
            C2345b.m708a(context, e6);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get app MD5 signature e is " + th);
            }
            C2345b.m708a(context, th);
            return null;
        }
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
            sb.append(hexString.toUpperCase());
            if (i < bArr.length - 1) {
                sb.append(CoreConstants.COLON_CHAR);
            }
        }
        return sb.toString();
    }

    public static boolean isDebug(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Exception e) {
            C2345b.m708a(context, e);
            return false;
        }
    }

    public static String getAppName(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get app name e is " + e);
            }
            C2345b.m708a(context, e);
            return null;
        } catch (Throwable th) {
            if (AnalyticsConstants.UM_DEBUG) {
                Log.e(TAG, "get app name e is " + th);
            }
            C2345b.m708a(context, th);
            return null;
        }
    }

    public static String MD5(String str) {
        if (str == null) {
            return null;
        }
        try {
            try {
                byte[] bytes = str.getBytes();
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.reset();
                messageDigest.update(bytes);
                byte[] digest = messageDigest.digest();
                StringBuffer stringBuffer = new StringBuffer();
                for (int i = 0; i < digest.length; i++) {
                    stringBuffer.append(String.format("%02X", Byte.valueOf(digest[i])));
                }
                return stringBuffer.toString();
            } catch (Exception e) {
                try {
                    return str.replaceAll("[^[a-z][A-Z][0-9][.][_]]", "");
                } catch (Exception e2) {
                    if (!AnalyticsConstants.UM_DEBUG) {
                        return null;
                    }
                    Log.e(TAG, "MD5 e is " + e2);
                    return null;
                }
            }
        } catch (Throwable th) {
            if (!AnalyticsConstants.UM_DEBUG) {
                return null;
            }
            Log.e(TAG, "MD5 e is " + th);
            return null;
        }
    }

    public static String getFileMD5(File file) {
        try {
            try {
                byte[] bArr = new byte[1024];
                try {
                    if (!file.isFile()) {
                        return "";
                    }
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    FileInputStream fileInputStream = new FileInputStream(file);
                    while (true) {
                        int read = fileInputStream.read(bArr, 0, 1024);
                        if (read != -1) {
                            messageDigest.update(bArr, 0, read);
                        } else {
                            fileInputStream.close();
                            return String.format("%1$032x", new BigInteger(1, messageDigest.digest()));
                        }
                    }
                } catch (Exception e) {
                    return null;
                }
            } catch (Throwable th) {
                if (!AnalyticsConstants.UM_DEBUG) {
                    return null;
                }
                Log.e(TAG, "get file MD5 e is " + th);
                return null;
            }
        } catch (Exception e2) {
            if (!AnalyticsConstants.UM_DEBUG) {
                return null;
            }
            Log.e(TAG, "get file MD5 e is " + e2);
            return null;
        }
    }

    public static String encryptBySHA1(String str) {
        try {
            try {
                byte[] bytes = str.getBytes();
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                    messageDigest.update(bytes);
                    return bytes2Hex(messageDigest.digest());
                } catch (Exception e) {
                    return null;
                }
            } catch (Exception e2) {
                if (!AnalyticsConstants.UM_DEBUG) {
                    return null;
                }
                Log.e(TAG, "encrypt by SHA1 e is " + e2);
                return null;
            }
        } catch (Throwable th) {
            if (!AnalyticsConstants.UM_DEBUG) {
                return null;
            }
            Log.e(TAG, "encrypt by SHA1 e is " + th);
            return null;
        }
    }

    private static String bytes2Hex(byte[] bArr) {
        String str = "";
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                str = str + "0";
            }
            str = str + hexString;
        }
        return str;
    }

    public static String getUMId(Context context) {
        if (context != null) {
            try {
                return UMEnvelopeBuild.imprintProperty(context.getApplicationContext(), C2354g.f1020f, null);
            } catch (Exception e) {
                C2345b.m708a(context, e);
                return null;
            }
        }
        return null;
    }

    public static String getDeviceToken(Context context) {
        String str;
        Method method;
        Object invoke;
        Method method2;
        Object invoke2;
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        try {
            Class<?> cls = Class.forName("com.umeng.message.MessageSharedPrefs");
            if (cls == null || (method = cls.getMethod("getInstance", Context.class)) == null || (invoke = method.invoke(cls, applicationContext)) == null || (method2 = cls.getMethod("getDeviceToken", new Class[0])) == null || (invoke2 = method2.invoke(invoke, new Object[0])) == null || !(invoke2 instanceof String)) {
                str = null;
            } else {
                str = (String) invoke2;
            }
            return str;
        } catch (Throwable th) {
            return null;
        }
    }

    public static String getAppkeyByXML(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                String string = applicationInfo.metaData.getString("UMENG_APPKEY");
                if (string != null) {
                    return string.trim();
                }
                MLog.m385e(AnalyticsConstants.LOG_TAG, "getAppkey failed. the applicationinfo is null!");
            }
        } catch (Throwable th) {
            MLog.m387e(AnalyticsConstants.LOG_TAG, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", th);
        }
        return null;
    }

    public static String getChannelByXML(Context context) {
        Object obj;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null && (obj = applicationInfo.metaData.get("UMENG_CHANNEL")) != null) {
                String obj2 = obj.toString();
                if (obj2 != null) {
                    return obj2.trim();
                }
                if (AnalyticsConstants.UM_DEBUG) {
                    MLog.m379i(AnalyticsConstants.LOG_TAG, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
                }
            }
        } catch (Throwable th) {
            MLog.m387e(AnalyticsConstants.LOG_TAG, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.", th);
        }
        return null;
    }
}
