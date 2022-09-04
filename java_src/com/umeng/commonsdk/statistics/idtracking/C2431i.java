package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import java.io.File;
/* compiled from: OldUMIDTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.i */
/* loaded from: classes2.dex */
public class C2431i extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1313a = "oldumid";

    /* renamed from: b */
    private Context f1314b;

    /* renamed from: c */
    private String f1315c = null;

    /* renamed from: d */
    private String f1316d = null;

    public C2431i(Context context) {
        super(f1313a);
        this.f1314b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        return this.f1315c;
    }

    /* renamed from: g */
    public boolean m253g() {
        return m252h();
    }

    /* renamed from: h */
    public boolean m252h() {
        this.f1316d = UMEnvelopeBuild.imprintProperty(this.f1314b, C2354g.f1020f, null);
        if (!TextUtils.isEmpty(this.f1316d)) {
            this.f1316d = DataHelper.encryptBySHA1(this.f1316d);
            String readFile = HelperUtils.readFile(new File("/sdcard/Android/data/.um/sysid.dat"));
            String readFile2 = HelperUtils.readFile(new File("/sdcard/Android/obj/.um/sysid.dat"));
            String readFile3 = HelperUtils.readFile(new File("/data/local/tmp/.um/sysid.dat"));
            if (TextUtils.isEmpty(readFile)) {
                m248l();
            } else if (!this.f1316d.equals(readFile)) {
                this.f1315c = readFile;
                return true;
            }
            if (TextUtils.isEmpty(readFile2)) {
                m249k();
            } else if (!this.f1316d.equals(readFile2)) {
                this.f1315c = readFile2;
                return true;
            }
            if (TextUtils.isEmpty(readFile3)) {
                m250j();
            } else if (!this.f1316d.equals(readFile3)) {
                this.f1315c = readFile3;
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public void m251i() {
        try {
            m248l();
            m249k();
            m250j();
        } catch (Exception e) {
        }
    }

    /* renamed from: j */
    private void m250j() {
        try {
            m254b("/data/local/tmp/.um");
            HelperUtils.writeFile(new File("/data/local/tmp/.um/sysid.dat"), this.f1316d);
        } catch (Throwable th) {
        }
    }

    /* renamed from: k */
    private void m249k() {
        try {
            m254b("/sdcard/Android/obj/.um");
            HelperUtils.writeFile(new File("/sdcard/Android/obj/.um/sysid.dat"), this.f1316d);
        } catch (Throwable th) {
        }
    }

    /* renamed from: l */
    private void m248l() {
        try {
            m254b("/sdcard/Android/data/.um");
            HelperUtils.writeFile(new File("/sdcard/Android/data/.um/sysid.dat"), this.f1316d);
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    private void m254b(String str) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
    }
}
