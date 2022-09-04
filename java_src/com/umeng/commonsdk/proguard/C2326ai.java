package com.umeng.commonsdk.proguard;
/* compiled from: TMessage.java */
/* renamed from: com.umeng.commonsdk.proguard.ai */
/* loaded from: classes2.dex */
public final class C2326ai {

    /* renamed from: a */
    public final String f900a;

    /* renamed from: b */
    public final byte f901b;

    /* renamed from: c */
    public final int f902c;

    public C2326ai() {
        this("", (byte) 0, 0);
    }

    public C2326ai(String str, byte b, int i) {
        this.f900a = str;
        this.f901b = b;
        this.f902c = i;
    }

    public String toString() {
        return "<TMessage name:'" + this.f900a + "' type: " + ((int) this.f901b) + " seqid:" + this.f902c + ">";
    }

    public boolean equals(Object obj) {
        if (obj instanceof C2326ai) {
            return m781a((C2326ai) obj);
        }
        return false;
    }

    /* renamed from: a */
    public boolean m781a(C2326ai c2326ai) {
        return this.f900a.equals(c2326ai.f900a) && this.f901b == c2326ai.f901b && this.f902c == c2326ai.f902c;
    }
}
