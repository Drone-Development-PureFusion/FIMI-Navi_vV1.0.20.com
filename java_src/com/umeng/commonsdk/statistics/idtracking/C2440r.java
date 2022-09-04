package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.os.Environment;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import java.io.File;
import java.io.FileInputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: UTDIdTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.r */
/* loaded from: classes2.dex */
public class C2440r extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1333a = "utdid";

    /* renamed from: b */
    private static final String f1334b = "android.permission.WRITE_EXTERNAL_STORAGE";

    /* renamed from: c */
    private static final Pattern f1335c = Pattern.compile("UTDID\">([^<]+)");

    /* renamed from: d */
    private Context f1336d;

    public C2440r(Context context) {
        super(f1333a);
        this.f1336d = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        try {
            return (String) Class.forName("com.ut.device.UTDevice").getMethod("getUtdid", Context.class).invoke(null, this.f1336d);
        } catch (Exception e) {
            return m246g();
        }
    }

    /* renamed from: g */
    private String m246g() {
        File m245h = m245h();
        if (m245h == null || !m245h.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(m245h);
            String m247b = m247b(HelperUtils.readStreamToString(fileInputStream));
            HelperUtils.safeClose(fileInputStream);
            return m247b;
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: b */
    private String m247b(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = f1335c.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        return matcher.group(1);
    }

    /* renamed from: h */
    private File m245h() {
        if (DeviceConfig.checkPermission(this.f1336d, f1334b) && Environment.getExternalStorageState().equals("mounted")) {
            try {
                return new File(Environment.getExternalStorageDirectory().getCanonicalPath(), ".UTSystemConfig/Global/Alvin2.xml");
            } catch (Exception e) {
                return null;
            }
        }
        return null;
    }
}
