package com.umeng.commonsdk.stateless;

import android.content.Context;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.proguard.C2376u;
import com.umeng.commonsdk.statistics.common.C2419e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
/* compiled from: UMSLEnvelopeManager.java */
/* renamed from: com.umeng.commonsdk.stateless.c */
/* loaded from: classes2.dex */
public class C2395c {

    /* renamed from: e */
    private String f1184e;

    /* renamed from: j */
    private int f1189j;

    /* renamed from: k */
    private int f1190k;

    /* renamed from: l */
    private byte[] f1191l;

    /* renamed from: m */
    private byte[] f1192m;

    /* renamed from: a */
    private final byte[] f1180a = {0, 0, 0, 0, 0, 0, 0, 0};

    /* renamed from: b */
    private final int f1181b = 1;

    /* renamed from: c */
    private final int f1182c = 0;

    /* renamed from: d */
    private String f1183d = "1.0";

    /* renamed from: f */
    private byte[] f1185f = null;

    /* renamed from: g */
    private byte[] f1186g = null;

    /* renamed from: h */
    private byte[] f1187h = null;

    /* renamed from: i */
    private int f1188i = 0;

    /* renamed from: n */
    private boolean f1193n = false;

    private C2395c(byte[] bArr, String str, byte[] bArr2) throws Exception {
        this.f1184e = null;
        this.f1189j = 0;
        this.f1190k = 0;
        this.f1191l = null;
        this.f1192m = null;
        if (bArr == null || bArr.length == 0) {
            throw new Exception("entity is null or empty");
        }
        this.f1184e = str;
        this.f1190k = bArr.length;
        this.f1191l = C2401f.m417a(bArr);
        this.f1189j = (int) (System.currentTimeMillis() / 1000);
        this.f1192m = bArr2;
    }

    /* renamed from: a */
    public static C2395c m442a(Context context, String str, byte[] bArr) {
        try {
            String mac = DeviceConfig.getMac(context);
            String deviceId = DeviceConfig.getDeviceId(context);
            Object[] objArr = new Object[1];
            objArr[0] = "[stateless] build envelope, raw is  " + (bArr == null) + "m app key is " + str + "device id is " + deviceId + ", mac is " + mac;
            C2419e.m328a("walle", objArr);
            C2395c c2395c = new C2395c(bArr, str, (deviceId + mac).getBytes());
            c2395c.m443a();
            return c2395c;
        } catch (Exception e) {
            C2419e.m328a("walle", "[stateless] build envelope, e is " + e.getMessage());
            C2345b.m708a(context, e);
            return null;
        }
    }

    /* renamed from: b */
    public static C2395c m438b(Context context, String str, byte[] bArr) {
        try {
            C2395c c2395c = new C2395c(bArr, str, (DeviceConfig.getDeviceId(context) + DeviceConfig.getMac(context)).getBytes());
            c2395c.m441a(true);
            c2395c.m443a();
            return c2395c;
        } catch (Exception e) {
            C2345b.m708a(context, e);
            return null;
        }
    }

    /* renamed from: a */
    public void m441a(boolean z) {
        this.f1193n = z;
    }

    /* renamed from: a */
    public void m443a() {
        if (this.f1185f == null) {
            this.f1185f = m437c();
        }
        if (this.f1193n) {
            byte[] bArr = new byte[16];
            try {
                System.arraycopy(this.f1185f, 1, bArr, 0, 16);
                this.f1191l = C2401f.m416a(this.f1191l, bArr);
            } catch (Exception e) {
            }
        }
        this.f1186g = m440a(this.f1185f, this.f1189j);
        this.f1187h = m436d();
    }

    /* renamed from: a */
    private byte[] m440a(byte[] bArr, int i) {
        byte[] m415b = C2401f.m415b(this.f1192m);
        byte[] m415b2 = C2401f.m415b(this.f1191l);
        int length = m415b.length;
        byte[] bArr2 = new byte[length * 2];
        for (int i2 = 0; i2 < length; i2++) {
            bArr2[i2 * 2] = m415b2[i2];
            bArr2[(i2 * 2) + 1] = m415b[i2];
        }
        for (int i3 = 0; i3 < 2; i3++) {
            bArr2[i3] = bArr[i3];
            bArr2[(bArr2.length - i3) - 1] = bArr[(bArr.length - i3) - 1];
        }
        byte[] bArr3 = {(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) (i >>> 24)};
        for (int i4 = 0; i4 < bArr2.length; i4++) {
            bArr2[i4] = (byte) (bArr2[i4] ^ bArr3[i4 % 4]);
        }
        return bArr2;
    }

    /* renamed from: c */
    private byte[] m437c() {
        return m440a(this.f1180a, (int) (System.currentTimeMillis() / 1000));
    }

    /* renamed from: d */
    private byte[] m436d() {
        return C2401f.m415b((C2401f.m414c(this.f1185f) + this.f1188i + this.f1189j + this.f1190k + C2401f.m414c(this.f1186g)).getBytes());
    }

    /* renamed from: b */
    public byte[] m439b() {
        C2388b c2388b = new C2388b();
        c2388b.m498a(this.f1183d);
        c2388b.m492b(this.f1184e);
        c2388b.m488c(C2401f.m414c(this.f1185f));
        c2388b.m501a(this.f1188i);
        c2388b.m493b(this.f1189j);
        c2388b.m489c(this.f1190k);
        c2388b.m495a(this.f1191l);
        c2388b.m485d(this.f1193n ? 1 : 0);
        c2388b.m484d(C2401f.m414c(this.f1186g));
        c2388b.m480e(C2401f.m414c(this.f1187h));
        try {
            return new C2376u().m557a(c2388b);
        } catch (Exception e) {
            return null;
        }
    }
}
