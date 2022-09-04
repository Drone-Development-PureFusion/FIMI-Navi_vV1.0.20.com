package com.umeng.commonsdk.proguard;

import java.io.Serializable;
/* compiled from: FieldValueMetaData.java */
/* renamed from: com.umeng.commonsdk.proguard.y */
/* loaded from: classes2.dex */
public class C2385y implements Serializable {

    /* renamed from: a */
    private final boolean f1118a;

    /* renamed from: b */
    public final byte f1119b;

    /* renamed from: c */
    private final String f1120c;

    /* renamed from: d */
    private final boolean f1121d;

    public C2385y(byte b, boolean z) {
        this.f1119b = b;
        this.f1118a = false;
        this.f1120c = null;
        this.f1121d = z;
    }

    public C2385y(byte b) {
        this(b, false);
    }

    public C2385y(byte b, String str) {
        this.f1119b = b;
        this.f1118a = true;
        this.f1120c = str;
        this.f1121d = false;
    }

    /* renamed from: a */
    public boolean m525a() {
        return this.f1118a;
    }

    /* renamed from: b */
    public String m524b() {
        return this.f1120c;
    }

    /* renamed from: c */
    public boolean m523c() {
        return this.f1119b == 12;
    }

    /* renamed from: d */
    public boolean m522d() {
        return this.f1119b == 15 || this.f1119b == 13 || this.f1119b == 14;
    }

    /* renamed from: e */
    public boolean m521e() {
        return this.f1121d;
    }
}
