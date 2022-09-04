package com.umeng.commonsdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.AnalyticsEvents;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.stateless.C2387a;
import com.umeng.commonsdk.stateless.UMSLEnvelopeBuild;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.C2404a;
import com.umeng.commonsdk.statistics.C2405b;
import com.umeng.commonsdk.statistics.C2420d;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.utils.UMUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public class UMConfigure {
    public static final int DEVICE_TYPE_BOX = 2;
    public static final int DEVICE_TYPE_PHONE = 1;
    private static final String KEY_FILE_NAME_APPKEY = "APPKEY";
    private static final String KEY_FILE_NAME_LOG = "LOG";
    private static final String KEY_METHOD_NAME_PUSH_SETCHANNEL = "setMessageChannel";
    private static final String KEY_METHOD_NAME_PUSH_SET_SECRET = "setSecret";
    private static final String KEY_METHOD_NAME_SETAPPKEY = "setAppkey";
    private static final String KEY_METHOD_NAME_SETCHANNEL = "setChannel";
    private static final String KEY_METHOD_NAME_SETDEBUGMODE = "setDebugMode";
    private static final String TAG = "UMConfigure";
    private static final String WRAPER_TYPE_COCOS2DX_X = "Cocos2d-x";
    private static final String WRAPER_TYPE_COCOS2DX_XLUA = "Cocos2d-x_lua";
    private static final String WRAPER_TYPE_HYBRID = "hybrid";
    private static final String WRAPER_TYPE_NATIVE = "native";
    private static final String WRAPER_TYPE_PHONEGAP = "phonegap";
    private static final String WRAPER_TYPE_REACTNATIVE = "react-native";
    private static final String WRAPER_TYPE_UNITY = "Unity";
    private static final String WRAPER_TYPE_WEEX = "weex";
    private static boolean debugLog = false;

    private static Class<?> getClass(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    private Object getInstanceObject(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e) {
            return null;
        } catch (InstantiationException e2) {
            return null;
        }
    }

    private static Object getDecInstanceObject(Class<?> cls) {
        Constructor<?> constructor;
        if (cls != null) {
            try {
                constructor = cls.getDeclaredConstructor(new Class[0]);
            } catch (NoSuchMethodException e) {
                constructor = null;
            }
            if (constructor == null) {
                return null;
            }
            constructor.setAccessible(true);
            try {
                return constructor.newInstance(new Object[0]);
            } catch (IllegalAccessException e2) {
                return null;
            } catch (IllegalArgumentException e3) {
                return null;
            } catch (InstantiationException e4) {
                return null;
            } catch (InvocationTargetException e5) {
                return null;
            }
        }
        return null;
    }

    private static Method getDecMethod(Class<?> cls, String str, Class<?>[] clsArr) {
        Method method = null;
        if (cls != null) {
            try {
                method = cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException e) {
            }
            if (method != null) {
                method.setAccessible(true);
            }
        }
        return method;
    }

    private static void invoke(Method method, Object obj, Object[] objArr) {
        if (method != null && obj != null) {
            try {
                method.invoke(obj, objArr);
            } catch (IllegalAccessException e) {
            } catch (IllegalArgumentException e2) {
            } catch (InvocationTargetException e3) {
            }
        }
    }

    private static void invoke(Method method, Object[] objArr) {
        if (method != null) {
            try {
                method.invoke(null, objArr);
            } catch (IllegalAccessException e) {
            } catch (IllegalArgumentException e2) {
            } catch (InvocationTargetException e3) {
            }
        }
    }

    private static void setFile(Class<?> cls, String str, String str2) {
        if (cls != null) {
            try {
                cls.getField(str).set(str, str2);
            } catch (Exception e) {
            }
        }
    }

    private static void setFile(Class<?> cls, String str, boolean z) {
        if (cls != null) {
            try {
                cls.getField(str).set(str, Boolean.valueOf(z));
            } catch (Exception e) {
            }
        }
    }

    private static void saveSDKComponent() {
        StringBuffer stringBuffer = new StringBuffer();
        if (getClass("com.umeng.analytics.vismode.V") != null) {
            stringBuffer.append("v");
        } else if (getClass("com.umeng.analytics.MobclickAgent") != null) {
            stringBuffer.append(C2354g.f1001al);
        }
        if (getClass("com.umeng.visual.UMVisualAgent") != null) {
            stringBuffer.append("x");
        }
        if (getClass("com.umeng.message.PushAgent") != null) {
            stringBuffer.append(C2354g.f1004ao);
        }
        if (getClass("com.umeng.socialize.UMShareAPI") != null) {
            stringBuffer.append(C2354g.f1005ap);
        }
        if (getClass("com.umeng.error.UMError") != null) {
            stringBuffer.append("e");
        }
        stringBuffer.append("i");
        if (C2420d.f1271b != 1 && getClass("com.umeng.commonsdk.internal.UMOplus") != null) {
            stringBuffer.append("o");
        }
        if (!TextUtils.isEmpty(stringBuffer)) {
            C2405b.f1216a = stringBuffer.toString();
            UMSLEnvelopeBuild.module = stringBuffer.toString();
        }
    }

    public static void init(Context context, int i, String str) {
        init(context, null, null, i, str);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x025f -> B:98:0x0033). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:107:0x027f -> B:98:0x0033). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x0322 -> B:98:0x0033). Please submit an issue!!! */
    public static void init(Context context, String str, String str2, int i, String str3) {
        Method declaredMethod;
        Method declaredMethod2;
        Method declaredMethod3;
        Method declaredMethod4;
        Method declaredMethod5;
        Method declaredMethod6;
        Object invoke;
        Method declaredMethod7;
        Method declaredMethod8;
        Object invoke2;
        Method declaredMethod9;
        try {
            try {
                if (debugLog) {
                    Log.i(TAG, "common version is 1.4.1");
                    Log.i(TAG, "common type is " + C2420d.f1271b);
                }
                if (context == null) {
                    if (debugLog) {
                        Log.e(TAG, "context is null !!!");
                        return;
                    }
                    return;
                }
                Context applicationContext = context.getApplicationContext();
                if (TextUtils.isEmpty(str)) {
                    str = UMUtils.getAppkeyByXML(applicationContext);
                }
                String channelByXML = TextUtils.isEmpty(str2) ? UMUtils.getChannelByXML(applicationContext) : str2;
                if (TextUtils.isEmpty(channelByXML)) {
                    channelByXML = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
                }
                UMUtils.setChannel(applicationContext, channelByXML);
                if (debugLog) {
                    Log.i(TAG, "channel is " + channelByXML);
                }
                saveSDKComponent();
                try {
                    Class<?> cls = Class.forName("com.umeng.message.PushAgent");
                    if (cls != null && (declaredMethod8 = cls.getDeclaredMethod("getInstance", Context.class)) != null && (invoke2 = declaredMethod8.invoke(cls, applicationContext)) != null && (declaredMethod9 = cls.getDeclaredMethod(KEY_METHOD_NAME_SETAPPKEY, String.class)) != null) {
                        declaredMethod9.setAccessible(true);
                        declaredMethod9.invoke(invoke2, str);
                        if (debugLog) {
                            Log.i(TAG, "---->>>> init Push app key is OK ~~");
                        }
                    }
                } catch (Exception e) {
                }
                try {
                    Class<?> cls2 = Class.forName("com.umeng.message.PushAgent");
                    if (cls2 != null && (declaredMethod6 = cls2.getDeclaredMethod("getInstance", Context.class)) != null && (invoke = declaredMethod6.invoke(cls2, applicationContext)) != null && (declaredMethod7 = cls2.getDeclaredMethod(KEY_METHOD_NAME_PUSH_SETCHANNEL, String.class)) != null) {
                        declaredMethod7.setAccessible(true);
                        declaredMethod7.invoke(invoke, channelByXML);
                        if (debugLog) {
                            Log.i(TAG, "---->>>> init Push channel is OK ~~");
                        }
                    }
                } catch (Exception e2) {
                }
                try {
                    Class<?> cls3 = getClass("com.umeng.socialize.UMShareAPI");
                    setFile(cls3, KEY_FILE_NAME_APPKEY, str);
                    if (cls3 != null && (declaredMethod5 = cls3.getDeclaredMethod("init", Context.class, String.class)) != null) {
                        declaredMethod5.setAccessible(true);
                        declaredMethod5.invoke(cls3, applicationContext, str);
                        if (debugLog) {
                            Log.i(TAG, "---->>>> init share appkey is OK ~~");
                        }
                    }
                } catch (Throwable th) {
                }
                if (TextUtils.isEmpty(str)) {
                    if (debugLog) {
                        Log.e(TAG, "appkey is null !!!");
                        return;
                    }
                    return;
                }
                UMUtils.setAppkey(applicationContext, str);
                String lastAppkey = UMUtils.getLastAppkey(applicationContext);
                if (!TextUtils.isEmpty(str) && !str.equals(lastAppkey)) {
                    if (!TextUtils.isEmpty(lastAppkey) && debugLog) {
                        Log.i(TAG, "appkey is change !!!");
                    }
                    UMUtils.setLastAppkey(applicationContext, str);
                }
                if (debugLog) {
                    Log.i(TAG, "current appkey is " + str + ", last appkey is " + lastAppkey);
                }
                AnalyticsConstants.setDeviceType(i);
                if (TextUtils.isEmpty(str3)) {
                    if (debugLog) {
                    }
                } else {
                    if (debugLog) {
                        Log.i(TAG, "push secret is " + str3);
                    }
                    try {
                        Class<?> cls4 = Class.forName("com.umeng.message.PushAgent");
                        if (cls4 != null && (declaredMethod = cls4.getDeclaredMethod("getInstance", Context.class)) != null) {
                            declaredMethod.setAccessible(true);
                            Object invoke3 = declaredMethod.invoke(cls4, applicationContext);
                            if (invoke3 != null && (declaredMethod2 = cls4.getDeclaredMethod(KEY_METHOD_NAME_PUSH_SET_SECRET, String.class)) != null) {
                                declaredMethod2.setAccessible(true);
                                declaredMethod2.invoke(invoke3, str3);
                                if (debugLog) {
                                    Log.i(TAG, "---->>>> init push secret is OK ~~");
                                }
                            }
                        }
                    } catch (Throwable th2) {
                    }
                }
                try {
                    Class<?> cls5 = Class.forName("com.umeng.error.UMError");
                    if (cls5 != null && (declaredMethod4 = cls5.getDeclaredMethod("init", Context.class)) != null) {
                        declaredMethod4.setAccessible(true);
                        declaredMethod4.invoke(cls5, applicationContext);
                        if (debugLog) {
                            Log.i(TAG, "---->>>> init um e is ok ~~");
                        }
                    }
                } catch (Throwable th3) {
                }
                if (C2420d.f1271b != 1) {
                    try {
                        Class<?> cls6 = Class.forName("com.umeng.commonsdk.UMConfigureImpl");
                        if (cls6 != null && (declaredMethod3 = cls6.getDeclaredMethod("init", Context.class)) != null) {
                            declaredMethod3.setAccessible(true);
                            declaredMethod3.invoke(cls6, applicationContext);
                        }
                    } catch (Throwable th4) {
                    }
                } else {
                    C2270a.m1023a(applicationContext);
                }
                try {
                    Method method = Class.forName("com.umeng.visual.UMVisualAgent").getMethod("init", Context.class, String.class);
                    if (!TextUtils.isEmpty(str)) {
                        method.invoke(null, context, str);
                    } else if (AnalyticsConstants.UM_DEBUG) {
                        MLog.m388e("initDebugSDK appkey  is null");
                    }
                } catch (ClassNotFoundException e3) {
                    try {
                        Class.forName("com.umeng.analytics.vismode.event.VisualHelper").getMethod("init", Context.class).invoke(null, context);
                    } catch (Exception e4) {
                    }
                } catch (Throwable th5) {
                }
            } catch (Exception e5) {
                if (debugLog) {
                    Log.e(TAG, "init e is " + e5);
                }
            }
        } catch (Throwable th6) {
            if (debugLog) {
                Log.e(TAG, "init e is " + th6);
            }
        }
    }

    public static void setLogEnabled(boolean z) {
        try {
            debugLog = z;
            MLog.DEBUG = z;
            Class<?> cls = getClass("com.umeng.message.PushAgent");
            invoke(getDecMethod(cls, KEY_METHOD_NAME_SETDEBUGMODE, new Class[]{Boolean.TYPE}), getDecInstanceObject(cls), new Object[]{Boolean.valueOf(z)});
            setFile(getClass("com.umeng.socialize.Config"), "DEBUG", z);
        } catch (Exception e) {
            if (debugLog) {
                Log.e(TAG, "set log enabled e is " + e);
            }
        } catch (Throwable th) {
            if (debugLog) {
                Log.e(TAG, "set log enabled e is " + th);
            }
        }
    }

    public static void setEncryptEnabled(boolean z) {
        C2405b.m404a(z);
        UMSLEnvelopeBuild.setEncryptEnabled(z);
    }

    public static String getUMIDString(Context context) {
        if (context != null) {
            return UMUtils.getUMId(context.getApplicationContext());
        }
        return null;
    }

    private static void setLatencyWindow(long j) {
        C2404a.f1214c = ((int) j) * 1000;
    }

    private static void setCheckDevice(boolean z) {
        AnalyticsConstants.CHECK_DEVICE = z;
    }

    private static void setWraperType(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (str.equals("native")) {
                C2387a.f1123a = "native";
                C2404a.f1212a = "native";
            } else if (str.equals(WRAPER_TYPE_COCOS2DX_X)) {
                C2387a.f1123a = WRAPER_TYPE_COCOS2DX_X;
                C2404a.f1212a = WRAPER_TYPE_COCOS2DX_X;
            } else if (str.equals(WRAPER_TYPE_COCOS2DX_XLUA)) {
                C2387a.f1123a = WRAPER_TYPE_COCOS2DX_XLUA;
                C2404a.f1212a = WRAPER_TYPE_COCOS2DX_XLUA;
            } else if (str.equals(WRAPER_TYPE_UNITY)) {
                C2387a.f1123a = WRAPER_TYPE_UNITY;
                C2404a.f1212a = WRAPER_TYPE_UNITY;
            } else if (str.equals(WRAPER_TYPE_REACTNATIVE)) {
                C2387a.f1123a = WRAPER_TYPE_REACTNATIVE;
                C2404a.f1212a = WRAPER_TYPE_REACTNATIVE;
            } else if (str.equals(WRAPER_TYPE_PHONEGAP)) {
                C2387a.f1123a = WRAPER_TYPE_PHONEGAP;
                C2404a.f1212a = WRAPER_TYPE_PHONEGAP;
            } else if (str.equals(WRAPER_TYPE_WEEX)) {
                C2387a.f1123a = WRAPER_TYPE_WEEX;
                C2404a.f1212a = WRAPER_TYPE_WEEX;
            } else if (str.equals(WRAPER_TYPE_HYBRID)) {
                C2387a.f1123a = WRAPER_TYPE_HYBRID;
                C2404a.f1212a = WRAPER_TYPE_HYBRID;
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            C2387a.f1124b = str2;
            C2404a.f1213b = str2;
        }
    }

    public static String[] getTestDeviceInfo(Context context) {
        String[] strArr = new String[2];
        if (context != null) {
            try {
                strArr[0] = DeviceConfig.getDeviceIdForGeneral(context);
                strArr[1] = DeviceConfig.getMac(context);
            } catch (Exception e) {
            }
        }
        return strArr;
    }
}
