package com.umeng.analytics.game;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.facebook.share.internal.ShareConstants;
import com.fimi.kernel.connect.tcp.SocketOption;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.C2208b;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.game.C2212a;
import com.umeng.analytics.pro.AbstractC2264r;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
/* compiled from: InternalGameAgent.java */
/* renamed from: com.umeng.analytics.game.b */
/* loaded from: classes2.dex */
class C2214b implements AbstractC2264r {

    /* renamed from: a */
    public static boolean f379a = true;

    /* renamed from: A */
    private Context f380A;

    /* renamed from: b */
    private C2208b f381b = MobclickAgent.getAgent();

    /* renamed from: c */
    private C2212a f382c = null;

    /* renamed from: d */
    private final int f383d = 100;

    /* renamed from: e */
    private final int f384e = 1;

    /* renamed from: f */
    private final int f385f = 0;

    /* renamed from: g */
    private final int f386g = -1;

    /* renamed from: h */
    private final int f387h = 1;

    /* renamed from: i */
    private final String f388i = "level";

    /* renamed from: j */
    private final String f389j = "pay";

    /* renamed from: k */
    private final String f390k = "buy";

    /* renamed from: l */
    private final String f391l = "use";

    /* renamed from: m */
    private final String f392m = "bonus";

    /* renamed from: n */
    private final String f393n = "item";

    /* renamed from: o */
    private final String f394o = "cash";

    /* renamed from: p */
    private final String f395p = "coin";

    /* renamed from: q */
    private final String f396q = ShareConstants.FEED_SOURCE_PARAM;

    /* renamed from: r */
    private final String f397r = "amount";

    /* renamed from: s */
    private final String f398s = "user_level";

    /* renamed from: t */
    private final String f399t = "bonus_source";

    /* renamed from: u */
    private final String f400u = "level";

    /* renamed from: v */
    private final String f401v = "status";

    /* renamed from: w */
    private final String f402w = "duration";

    /* renamed from: x */
    private final String f403x = "curtype";

    /* renamed from: y */
    private final String f404y = "orderid";

    /* renamed from: z */
    private final String f405z = "UMGameAgent.init(Context) should be called before any game api";

    public C2214b() {
        f379a = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1208a(Context context) {
        if (context == null) {
            MLog.m388e("Context is null, can't init GameAgent");
            return;
        }
        this.f380A = context.getApplicationContext();
        this.f381b.m1262a((AbstractC2264r) this);
        this.f382c = new C2212a(this.f380A);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1203a(boolean z) {
        MLog.m394d(String.format("Trace sleep time : %b", Boolean.valueOf(z)));
        f379a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1207a(String str) {
        try {
            if (this.f380A == null) {
                MLog.m388e("UMGameAgent.init(Context) should be called before any game api");
            } else {
                this.f382c.f368b = str;
                SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.f380A);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putString("userlevel", str).commit();
                }
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m1202b(String str) {
        if (this.f380A == null) {
            MLog.m388e("UMGameAgent.init(Context) should be called before any game api");
        } else if (AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m388e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            this.f382c.f367a = str;
            this.f382c.m1222a(str);
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("level", str);
            hashMap.put("status", 0);
            if (this.f382c.f368b != null) {
                hashMap.put("user_level", this.f382c.f368b);
            }
            this.f381b.m1268a(this.f380A, "level", hashMap);
        }
    }

    /* renamed from: a */
    private void m1206a(String str, int i) {
        if (this.f380A == null) {
            MLog.m388e("UMGameAgent.init(Context) should be called before any game api");
        } else if (AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m388e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            C2212a.C2213a m1220b = this.f382c.m1220b(str);
            if (m1220b != null) {
                long m1214e = m1220b.m1214e();
                if (m1214e <= 0) {
                    MLog.m394d("level duration is 0");
                    return;
                }
                HashMap<String, Object> hashMap = new HashMap<>();
                hashMap.put("level", str);
                hashMap.put("status", Integer.valueOf(i));
                hashMap.put("duration", Long.valueOf(m1214e));
                if (this.f382c.f368b != null) {
                    hashMap.put("user_level", this.f382c.f368b);
                }
                this.f381b.m1268a(this.f380A, "level", hashMap);
                return;
            }
            MLog.m370w(String.format("finishLevel(or failLevel) called before startLevel", new Object[0]));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m1200c(String str) {
        if (this.f380A == null) {
            MLog.m388e("UMGameAgent.init(Context) should be called before any game api");
        } else if (AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m388e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            m1206a(str, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m1199d(String str) {
        if (this.f380A == null) {
            MLog.m388e("UMGameAgent.init(Context) should be called before any game api");
        } else if (AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m388e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            m1206a(str, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1212a(double d, double d2, int i) {
        if (this.f380A == null) {
            MLog.m388e("UMGameAgent.init(Context) should be called before any game api");
        } else if (AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m388e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("cash", Long.valueOf((long) (d * 100.0d)));
            hashMap.put("coin", Long.valueOf((long) (d2 * 100.0d)));
            hashMap.put(ShareConstants.FEED_SOURCE_PARAM, Integer.valueOf(i));
            if (this.f382c.f368b != null) {
                hashMap.put("user_level", this.f382c.f368b);
            }
            if (this.f382c.f367a != null) {
                hashMap.put("level", this.f382c.f367a);
            }
            this.f381b.m1268a(this.f380A, "pay", hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1209a(double d, String str, int i, double d2, int i2) {
        if (AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m388e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
            return;
        }
        m1212a(d, d2 * i, i2);
        m1205a(str, i, d2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1205a(String str, int i, double d) {
        if (this.f380A == null) {
            MLog.m388e("UMGameAgent.init(Context) should be called before any game api");
        } else if (AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m388e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("item", str);
            hashMap.put("amount", Integer.valueOf(i));
            hashMap.put("coin", Long.valueOf((long) (i * d * 100.0d)));
            if (this.f382c.f368b != null) {
                hashMap.put("user_level", this.f382c.f368b);
            }
            if (this.f382c.f367a != null) {
                hashMap.put("level", this.f382c.f367a);
            }
            this.f381b.m1268a(this.f380A, "buy", hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m1201b(String str, int i, double d) {
        if (this.f380A == null) {
            MLog.m388e("UMGameAgent.init(Context) should be called before any game api");
        } else if (AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m388e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("item", str);
            hashMap.put("amount", Integer.valueOf(i));
            hashMap.put("coin", Long.valueOf((long) (i * d * 100.0d)));
            if (this.f382c.f368b != null) {
                hashMap.put("user_level", this.f382c.f368b);
            }
            if (this.f382c.f367a != null) {
                hashMap.put("level", this.f382c.f367a);
            }
            this.f381b.m1268a(this.f380A, "use", hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1211a(double d, int i) {
        if (this.f380A == null) {
            MLog.m388e("UMGameAgent.init(Context) should be called before any game api");
        } else if (AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m388e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else {
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("coin", Long.valueOf((long) (100.0d * d)));
            hashMap.put("bonus_source", Integer.valueOf(i));
            if (this.f382c.f368b != null) {
                hashMap.put("user_level", this.f382c.f368b);
            }
            if (this.f382c.f367a != null) {
                hashMap.put("level", this.f382c.f367a);
            }
            this.f381b.m1268a(this.f380A, "bonus", hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1204a(String str, int i, double d, int i2) {
        if (AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m388e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
            return;
        }
        m1211a(i * d, i2);
        m1205a(str, i, d);
    }

    @Override // com.umeng.analytics.pro.AbstractC2264r
    /* renamed from: a */
    public void mo1041a() {
        MLog.m394d("App resume from background");
        if (this.f380A == null) {
            MLog.m388e("UMGameAgent.init(Context) should be called before any game api");
        } else if (AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m388e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else if (f379a) {
            this.f382c.m1221b();
        }
    }

    @Override // com.umeng.analytics.pro.AbstractC2264r
    /* renamed from: b */
    public void mo1040b() {
        if (this.f380A == null) {
            MLog.m388e("UMGameAgent.init(Context) should be called before any game api");
        } else if (AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m388e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else if (f379a) {
            this.f382c.m1223a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1210a(double d, String str, double d2, int i, String str2) {
        if (this.f380A == null) {
            MLog.m388e("UMGameAgent.init(Context) should be called before any game api");
        } else if (AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue() || AnalyticsConfig.getVerticalType(this.f380A) == MobclickAgent.EScenarioType.E_UM_NORMAL.toValue()) {
            MLog.m388e("UMGameAgent class is UMGameAgent API, can't be use in no-game scenario. ");
        } else if (d >= 0.0d && d2 >= 0.0d) {
            HashMap<String, Object> hashMap = new HashMap<>();
            if (!TextUtils.isEmpty(str) && str.length() > 0 && str.length() <= 3) {
                hashMap.put("curtype", str);
            }
            if (!TextUtils.isEmpty(str2)) {
                try {
                    int length = str2.getBytes(SocketOption.DEFAULT_CHARSET).length;
                    if (length > 0 && length <= 1024) {
                        hashMap.put("orderid", str2);
                    }
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
            hashMap.put("cash", Long.valueOf((long) (d * 100.0d)));
            hashMap.put("coin", Long.valueOf((long) (d2 * 100.0d)));
            hashMap.put(ShareConstants.FEED_SOURCE_PARAM, Integer.valueOf(i));
            if (this.f382c.f368b != null) {
                hashMap.put("user_level", this.f382c.f368b);
            }
            if (this.f382c.f367a != null) {
                hashMap.put("level", this.f382c.f367a);
            }
            this.f381b.m1268a(this.f380A, "pay", hashMap);
        }
    }
}
