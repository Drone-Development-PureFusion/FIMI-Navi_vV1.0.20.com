package com.umeng.analytics.game;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.pro.C2265s;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.Serializable;
/* compiled from: GameState.java */
/* renamed from: com.umeng.analytics.game.a */
/* loaded from: classes2.dex */
public class C2212a {

    /* renamed from: a */
    public String f367a;

    /* renamed from: b */
    public String f368b;

    /* renamed from: c */
    private Context f369c;

    /* renamed from: d */
    private final String f370d = "um_g_cache";

    /* renamed from: e */
    private final String f371e = "single_level";

    /* renamed from: f */
    private final String f372f = "stat_player_level";

    /* renamed from: g */
    private final String f373g = "stat_game_level";

    /* renamed from: h */
    private C2213a f374h = null;

    public C2212a(Context context) {
        this.f369c = context;
    }

    /* renamed from: a */
    public C2213a m1222a(String str) {
        this.f374h = new C2213a(str);
        this.f374h.m1219a();
        return this.f374h;
    }

    /* renamed from: a */
    public void m1223a() {
        try {
            if (this.f374h != null) {
                this.f374h.m1217b();
                SharedPreferences.Editor edit = this.f369c.getSharedPreferences("um_g_cache", 0).edit();
                edit.putString("single_level", C2265s.m1039a(this.f374h));
                edit.putString("stat_player_level", this.f368b);
                edit.putString("stat_game_level", this.f367a);
                edit.commit();
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public void m1221b() {
        SharedPreferences sharedPreferences;
        try {
            SharedPreferences preferenceWrapper = PreferenceWrapper.getInstance(this.f369c, "um_g_cache");
            String string = preferenceWrapper.getString("single_level", null);
            if (!TextUtils.isEmpty(string)) {
                this.f374h = (C2213a) C2265s.m1038a(string);
                if (this.f374h != null) {
                    this.f374h.m1216c();
                }
            }
            if (TextUtils.isEmpty(this.f368b)) {
                this.f368b = preferenceWrapper.getString("stat_player_level", null);
                if (this.f368b == null && (sharedPreferences = PreferenceWrapper.getDefault(this.f369c)) != null) {
                    this.f368b = sharedPreferences.getString("userlevel", null);
                }
            }
            if (this.f367a == null) {
                this.f367a = preferenceWrapper.getString("stat_game_level", null);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public C2213a m1220b(String str) {
        if (this.f374h != null) {
            this.f374h.m1215d();
            if (this.f374h.m1218a(str)) {
                C2213a c2213a = this.f374h;
                this.f374h = null;
                return c2213a;
            }
        }
        return null;
    }

    /* compiled from: GameState.java */
    /* renamed from: com.umeng.analytics.game.a$a */
    /* loaded from: classes2.dex */
    static class C2213a implements Serializable {

        /* renamed from: a */
        private static final long f375a = 20140327;

        /* renamed from: b */
        private String f376b;

        /* renamed from: c */
        private long f377c;

        /* renamed from: d */
        private long f378d;

        public C2213a(String str) {
            this.f376b = str;
        }

        /* renamed from: a */
        public boolean m1218a(String str) {
            return this.f376b.equals(str);
        }

        /* renamed from: a */
        public void m1219a() {
            this.f378d = System.currentTimeMillis();
        }

        /* renamed from: b */
        public void m1217b() {
            this.f377c += System.currentTimeMillis() - this.f378d;
            this.f378d = 0L;
        }

        /* renamed from: c */
        public void m1216c() {
            m1219a();
        }

        /* renamed from: d */
        public void m1215d() {
            m1217b();
        }

        /* renamed from: e */
        public long m1214e() {
            return this.f377c;
        }

        /* renamed from: f */
        public String m1213f() {
            return this.f376b;
        }
    }
}
