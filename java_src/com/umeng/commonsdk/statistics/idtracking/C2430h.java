package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2354g;
/* compiled from: NewUMIDTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.h */
/* loaded from: classes2.dex */
public class C2430h extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1311a = "newumid";

    /* renamed from: b */
    private Context f1312b;

    public C2430h(Context context) {
        super(f1311a);
        this.f1312b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        return UMEnvelopeBuild.imprintProperty(this.f1312b, C2354g.f1020f, null);
    }
}
