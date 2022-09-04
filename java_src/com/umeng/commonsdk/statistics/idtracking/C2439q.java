package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
/* compiled from: UOPTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.q */
/* loaded from: classes2.dex */
public class C2439q extends AbstractC2422a {

    /* renamed from: a */
    public static final String f1330a = "uopdta";

    /* renamed from: b */
    private static final String f1331b = "uop";

    /* renamed from: c */
    private Context f1332c;

    public C2439q(Context context) {
        super(f1331b);
        this.f1332c = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.f1332c);
        if (sharedPreferences == null) {
            return "";
        }
        return sharedPreferences.getString(f1330a, "");
    }
}
