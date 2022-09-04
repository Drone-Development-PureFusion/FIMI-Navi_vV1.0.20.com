package com.umeng.commonsdk.internal.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Size;
import com.umeng.commonsdk.framework.C2273b;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.C2285a;
import com.umeng.commonsdk.internal.C2286b;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.statistics.common.C2419e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SystemLayerUtil.java */
/* renamed from: com.umeng.commonsdk.internal.utils.j */
/* loaded from: classes2.dex */
public class C2307j {

    /* renamed from: a */
    private static final String f807a = "info";

    /* renamed from: b */
    private static final String f808b = "stat";

    /* renamed from: d */
    private static HandlerThread f810d = null;

    /* renamed from: e */
    private static Context f811e = null;

    /* renamed from: l */
    private static final int f818l = 40;

    /* renamed from: m */
    private static final int f819m = 50000;

    /* renamed from: n */
    private static SensorManager f820n;

    /* renamed from: c */
    private static boolean f809c = false;

    /* renamed from: f */
    private static int f812f = 0;

    /* renamed from: g */
    private static int f813g = 0;

    /* renamed from: h */
    private static int f814h = 0;

    /* renamed from: i */
    private static int f815i = 1;

    /* renamed from: j */
    private static long f816j = 0;

    /* renamed from: k */
    private static long f817k = 0;

    /* renamed from: o */
    private static ArrayList<float[]> f821o = new ArrayList<>();

    /* renamed from: p */
    private static SensorEventListener f822p = new SensorEventListener() { // from class: com.umeng.commonsdk.internal.utils.j.1
        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (C2307j.f813g >= 15) {
                if (C2307j.f812f < 20) {
                    C2307j.m836e();
                    C2307j.f821o.add(sensorEvent.values);
                }
                if (C2307j.f812f == 20) {
                    C2307j.m836e();
                    if (C2307j.f815i == 1) {
                        long unused = C2307j.f816j = System.currentTimeMillis();
                    }
                    if (C2307j.f815i == 2) {
                        long unused2 = C2307j.f817k = System.currentTimeMillis();
                    }
                    C2307j.m831h();
                    C2307j.m827l();
                    return;
                }
                return;
            }
            C2307j.m840c();
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }
    };

    /* compiled from: SystemLayerUtil.java */
    /* renamed from: com.umeng.commonsdk.internal.utils.j$a */
    /* loaded from: classes2.dex */
    public static class C2310a {

        /* renamed from: a */
        public int f825a;

        /* renamed from: b */
        public int f826b;

        /* renamed from: c */
        public long f827c;
    }

    /* renamed from: c */
    static /* synthetic */ int m840c() {
        int i = f813g;
        f813g = i + 1;
        return i;
    }

    /* renamed from: e */
    static /* synthetic */ int m836e() {
        int i = f812f;
        f812f = i + 1;
        return i;
    }

    /* renamed from: h */
    static /* synthetic */ int m831h() {
        int i = f815i;
        f815i = i + 1;
        return i;
    }

    /* renamed from: a */
    public static List<Sensor> m844a(Context context) {
        if (context == null) {
            return null;
        }
        return ((SensorManager) context.getSystemService(C2354g.f990aa)).getSensorList(-1);
    }

    /* renamed from: b */
    public static void m841b(Context context) {
        if (context != null && !m847a()) {
            f809c = true;
            f811e = context.getApplicationContext();
            String m1016a = C2273b.m1016a(context);
            String packageName = context.getPackageName();
            if (m1016a != null && m1016a.equals(packageName)) {
                f820n = (SensorManager) context.getSystemService(C2354g.f990aa);
                final Sensor defaultSensor = f820n.getDefaultSensor(4);
                final Sensor defaultSensor2 = f820n.getDefaultSensor(1);
                if (defaultSensor != null) {
                    f814h = 4;
                    f820n.registerListener(f822p, defaultSensor, f819m);
                } else if (defaultSensor2 != null) {
                    f814h = 1;
                    f820n.registerListener(f822p, defaultSensor2, f819m);
                }
                f810d = new HandlerThread("sensor_thread");
                f810d.start();
                new Handler(f810d.getLooper()).postDelayed(new Runnable() { // from class: com.umeng.commonsdk.internal.utils.j.2
                    @Override // java.lang.Runnable
                    public void run() {
                        int unused = C2307j.f812f = 0;
                        if (defaultSensor != null) {
                            C2307j.f820n.registerListener(C2307j.f822p, defaultSensor, C2307j.f819m);
                        } else if (defaultSensor2 != null) {
                            C2307j.f820n.registerListener(C2307j.f822p, defaultSensor2, C2307j.f819m);
                        }
                    }
                }, (new Random().nextInt(3) * 1000) + 4000);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public static void m827l() {
        if (f820n != null) {
            f820n.unregisterListener(f822p);
        }
        if (f821o.size() == 40) {
            m833f(f811e);
            if (f821o != null) {
                f821o.clear();
            }
            if (f810d != null) {
                f810d.quit();
                f810d = null;
            }
            f811e = null;
            f809c = false;
        }
    }

    /* renamed from: c */
    public static JSONArray m839c(Context context) {
        String string;
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f807a, 0);
        if (sharedPreferences == null || (string = sharedPreferences.getString(f808b, null)) == null) {
            return null;
        }
        try {
            return new JSONArray(string);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: f */
    private static void m833f(Context context) {
        int i;
        if (context != null) {
            try {
                JSONArray jSONArray = new JSONArray();
                for (int i2 = 0; i2 < 2; i2++) {
                    JSONObject jSONObject = new JSONObject();
                    JSONArray jSONArray2 = new JSONArray();
                    int i3 = 0;
                    if (i2 == 1) {
                        i3 = 20;
                        i = 40;
                    } else {
                        i = 20;
                    }
                    while (i3 < i) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("x", f821o.get(i3)[0]);
                        jSONObject2.put("y", f821o.get(i3)[1]);
                        jSONObject2.put("z", f821o.get(i3)[2]);
                        jSONArray2.put(jSONObject2);
                        i3++;
                    }
                    if (f814h == 4) {
                        jSONObject.put("g", jSONArray2);
                    } else if (f814h == 1) {
                        jSONObject.put(C2354g.f1001al, jSONArray2);
                    }
                    if (i2 == 0) {
                        jSONObject.put("ts", f816j);
                    } else {
                        jSONObject.put("ts", f817k);
                    }
                    jSONArray.put(jSONObject);
                    UMWorkDispatch.sendEvent(context, C2285a.f724l, C2286b.m962a(context).m963a(), jSONArray.toString());
                }
            } catch (Exception e) {
                C2345b.m708a(context, e);
            }
        }
    }

    /* renamed from: d */
    public static void m837d(Context context) {
        if (context != null) {
            context.getApplicationContext().getSharedPreferences(f807a, 0).edit().remove(f808b).commit();
        }
    }

    /* renamed from: a */
    public static synchronized boolean m847a() {
        boolean z;
        synchronized (C2307j.class) {
            z = f809c;
        }
        return z;
    }

    /* renamed from: e */
    public static List<C2310a> m835e(Context context) {
        if (context != null && DeviceConfig.checkPermission(context, "android.permission.CAMERA")) {
            ArrayList arrayList = new ArrayList();
            try {
                if (Build.VERSION.SDK_INT >= 21) {
                    CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
                    String[] cameraIdList = cameraManager.getCameraIdList();
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= cameraIdList.length) {
                            break;
                        }
                        Size size = (Size) cameraManager.getCameraCharacteristics(cameraIdList[i2]).get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE);
                        if (size != null) {
                            C2310a c2310a = new C2310a();
                            c2310a.f825a = size.getWidth();
                            c2310a.f826b = size.getHeight();
                            c2310a.f827c = System.currentTimeMillis();
                            arrayList.add(c2310a);
                        }
                        i = i2 + 1;
                    }
                }
            } catch (Exception e) {
                C2419e.m319c("camera access exception");
            }
            return arrayList;
        }
        return null;
    }
}
