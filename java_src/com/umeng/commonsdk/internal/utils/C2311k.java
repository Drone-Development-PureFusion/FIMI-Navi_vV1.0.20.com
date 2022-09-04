package com.umeng.commonsdk.internal.utils;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.utils.UMUtils;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: UMInternalUtils.java */
/* renamed from: com.umeng.commonsdk.internal.utils.k */
/* loaded from: classes2.dex */
public class C2311k {

    /* renamed from: a */
    private static final String f828a = "um_pri";

    /* renamed from: b */
    private static final String f829b = "um_common_strength";

    /* renamed from: c */
    private static final String f830c = "um_common_battery";

    /* renamed from: a */
    public static String m826a(Context context) {
        if (context == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return Settings.Secure.getString(context.getContentResolver(), "bluetooth_address");
        }
        if (!UMUtils.checkPermission(context, "android.permission.BLUETOOTH")) {
            return null;
        }
        return BluetoothAdapter.getDefaultAdapter().getAddress();
    }

    /* renamed from: b */
    public static String m824b(Context context) {
        if (context == null || !UMUtils.checkPermission(context, "android.permission.READ_PHONE_STATE")) {
            return null;
        }
        return ((TelephonyManager) context.getSystemService("phone")).getSimSerialNumber();
    }

    /* renamed from: c */
    public static String m822c(Context context) {
        if (context == null || Build.VERSION.SDK_INT < 23 || !UMUtils.checkPermission(context, "android.permission.READ_PHONE_STATE")) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Class<?> cls = telephonyManager.getClass();
            return ((Integer) cls.getMethod("getPhoneCount", new Class[0]).invoke(telephonyManager, new Object[0])).intValue() == 2 ? (String) cls.getMethod("getDeviceId", Integer.TYPE).invoke(telephonyManager, 2) : null;
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: d */
    public static JSONObject m821d(Context context) {
        JSONObject jSONObject;
        if (context == null || !UMUtils.checkPermission(context, "android.permission.ACCESS_COARSE_LOCATION")) {
            return null;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        CellLocation cellLocation = telephonyManager.getCellLocation();
        int phoneType = telephonyManager.getPhoneType();
        if (phoneType == 1 && (cellLocation instanceof GsmCellLocation)) {
            GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
            int cid = gsmCellLocation.getCid();
            if (cid <= 0 || cid == 65535) {
                jSONObject = null;
            } else {
                int lac = gsmCellLocation.getLac();
                jSONObject = new JSONObject();
                try {
                    jSONObject.put("cid", cid);
                    jSONObject.put("lacid", lac);
                    jSONObject.put("ts", System.currentTimeMillis());
                } catch (Exception e) {
                }
            }
            return jSONObject;
        } else if (phoneType != 2 || !(cellLocation instanceof CdmaCellLocation)) {
            return null;
        } else {
            CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
            int baseStationId = cdmaCellLocation.getBaseStationId();
            int networkId = cdmaCellLocation.getNetworkId();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("cid", baseStationId);
                jSONObject2.put("lacid", networkId);
                jSONObject2.put("ts", System.currentTimeMillis());
                return jSONObject2;
            } catch (Exception e2) {
                return jSONObject2;
            }
        }
    }

    /* renamed from: a */
    public static void m825a(Context context, String str) {
        SharedPreferences sharedPreferences;
        if (context != null && !TextUtils.isEmpty(str) && (sharedPreferences = context.getApplicationContext().getSharedPreferences(f828a, 0)) != null) {
            sharedPreferences.edit().putString(f829b, str).commit();
        }
    }

    /* renamed from: e */
    public static String m820e(Context context) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f828a, 0)) == null) {
            return null;
        }
        return sharedPreferences.getString(f829b, null);
    }

    /* renamed from: f */
    public static String m819f(Context context) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f828a, 0)) == null) {
            return null;
        }
        return sharedPreferences.getString(f830c, null);
    }

    /* renamed from: b */
    public static void m823b(Context context, String str) {
        SharedPreferences sharedPreferences;
        if (context != null && !TextUtils.isEmpty(str) && (sharedPreferences = context.getApplicationContext().getSharedPreferences(f828a, 0)) != null) {
            sharedPreferences.edit().putString(f830c, str).commit();
        }
    }

    /* renamed from: g */
    public static JSONArray m818g(Context context) {
        JSONArray jSONArray = new JSONArray();
        if (context != null) {
            for (Sensor sensor : ((SensorManager) context.getSystemService(C2354g.f990aa)).getSensorList(-1)) {
                if (sensor != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("a_type", sensor.getType());
                        jSONObject.put("a_ven", sensor.getVendor());
                        if (Build.VERSION.SDK_INT >= 24) {
                            jSONObject.put("a_id", sensor.getId());
                        }
                        jSONObject.put("a_na", sensor.getName());
                        jSONObject.put("a_ver", sensor.getVersion());
                        jSONObject.put("a_mar", sensor.getMaximumRange());
                        jSONObject.put("a_ver", sensor.getVersion());
                        jSONObject.put("a_res", sensor.getResolution());
                        jSONObject.put("a_po", sensor.getPower());
                        if (Build.VERSION.SDK_INT >= 9) {
                            jSONObject.put("a_mid", sensor.getMinDelay());
                        }
                        if (Build.VERSION.SDK_INT >= 21) {
                            jSONObject.put("a_mad", sensor.getMaxDelay());
                        }
                        jSONObject.put("ts", System.currentTimeMillis());
                    } catch (Exception e) {
                    }
                    jSONArray.put(jSONObject);
                }
            }
        }
        return jSONArray;
    }
}
