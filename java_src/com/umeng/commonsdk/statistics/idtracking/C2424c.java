package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.C2408a;
/* compiled from: IDFATracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.c */
/* loaded from: classes2.dex */
public class C2424c extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1291a = "idfa";

    /* renamed from: b */
    private Context f1292b;

    public C2424c(Context context) {
        super(f1291a);
        this.f1292b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        String m364a = C2408a.m364a(this.f1292b);
        return m364a == null ? "" : m364a;
    }
}
