package com.umeng.commonsdk.statistics.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.C2273b;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Locale;
/* compiled from: StoreHelper.java */
/* renamed from: com.umeng.commonsdk.statistics.common.d */
/* loaded from: classes2.dex */
public final class C2415d {

    /* renamed from: a */
    private static C2415d f1251a = null;

    /* renamed from: b */
    private static Context f1252b = null;

    /* renamed from: c */
    private static String f1253c = null;

    /* renamed from: e */
    private static final String f1254e = "mobclick_agent_user_";

    /* renamed from: f */
    private static final String f1255f = "mobclick_agent_header_";

    /* renamed from: g */
    private static final String f1256g = "mobclick_agent_cached_";

    /* renamed from: d */
    private C2416a f1257d;

    /* compiled from: StoreHelper.java */
    /* renamed from: com.umeng.commonsdk.statistics.common.d$b */
    /* loaded from: classes2.dex */
    public interface AbstractC2418b {
        /* renamed from: a */
        void m335a(File file);

        /* renamed from: b */
        boolean m334b(File file);

        /* renamed from: c */
        void m333c(File file);
    }

    public C2415d(Context context) {
        this.f1257d = new C2416a(context);
    }

    /* renamed from: a */
    public static synchronized C2415d m348a(Context context) {
        C2415d c2415d;
        synchronized (C2415d.class) {
            f1252b = context.getApplicationContext();
            f1253c = context.getPackageName();
            if (f1251a == null) {
                f1251a = new C2415d(context);
            }
            c2415d = f1251a;
        }
        return c2415d;
    }

    /* renamed from: a */
    public void m349a(int i) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f1252b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putInt("vt", i).commit();
        }
    }

    /* renamed from: a */
    public int m350a() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f1252b);
        if (sharedPreferences != null) {
            return sharedPreferences.getInt("vt", 0);
        }
        return 0;
    }

    /* renamed from: b */
    public String m345b() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f1252b);
        if (sharedPreferences != null) {
            return sharedPreferences.getString("st", null);
        }
        return null;
    }

    /* renamed from: a */
    public void m347a(String str) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f1252b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("st", str).commit();
        }
    }

    /* renamed from: c */
    public boolean m344c() {
        return C2273b.m1008c(f1252b) > 0;
    }

    /* compiled from: StoreHelper.java */
    /* renamed from: com.umeng.commonsdk.statistics.common.d$a */
    /* loaded from: classes2.dex */
    public static class C2416a {

        /* renamed from: a */
        private final int f1258a;

        /* renamed from: b */
        private File f1259b;

        /* renamed from: c */
        private FilenameFilter f1260c;

        public C2416a(Context context) {
            this(context, ".um");
        }

        public C2416a(Context context, String str) {
            this.f1258a = 10;
            this.f1260c = new FilenameFilter() { // from class: com.umeng.commonsdk.statistics.common.d.a.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str2) {
                    return str2.startsWith("um");
                }
            };
            this.f1259b = new File(context.getFilesDir(), str);
            if (!this.f1259b.exists() || !this.f1259b.isDirectory()) {
                this.f1259b.mkdir();
            }
        }

        /* renamed from: a */
        public boolean m340a() {
            File[] listFiles = this.f1259b.listFiles();
            return listFiles != null && listFiles.length > 0;
        }

        /* renamed from: a */
        public void m339a(AbstractC2418b abstractC2418b) {
            File[] listFiles = this.f1259b.listFiles(this.f1260c);
            if (listFiles != null && listFiles.length >= 10) {
                Arrays.sort(listFiles);
                int length = listFiles.length - 10;
                for (int i = 0; i < length; i++) {
                    listFiles[i].delete();
                }
            }
            if (listFiles != null && listFiles.length > 0) {
                abstractC2418b.m335a(this.f1259b);
                int length2 = listFiles.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    try {
                        if (abstractC2418b.m334b(listFiles[i2])) {
                            listFiles[i2].delete();
                        }
                    } catch (Throwable th) {
                        listFiles[i2].delete();
                    }
                }
                abstractC2418b.m333c(this.f1259b);
            }
        }

        /* renamed from: a */
        public void m338a(byte[] bArr) {
            if (bArr != null && bArr.length != 0) {
                try {
                    HelperUtils.writeFile(new File(this.f1259b, String.format(Locale.US, "um_cache_%d.env", Long.valueOf(System.currentTimeMillis()))), bArr);
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: b */
        public void m337b() {
            File[] listFiles = this.f1259b.listFiles(this.f1260c);
            if (listFiles != null && listFiles.length > 0) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
        }

        /* renamed from: c */
        public int m336c() {
            File[] listFiles = this.f1259b.listFiles(this.f1260c);
            if (listFiles == null || listFiles.length <= 0) {
                return 0;
            }
            return listFiles.length;
        }
    }

    /* renamed from: f */
    private SharedPreferences m341f() {
        return f1252b.getSharedPreferences(f1254e + f1253c, 0);
    }

    /* renamed from: a */
    public void m346a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            SharedPreferences.Editor edit = m341f().edit();
            edit.putString("au_p", str);
            edit.putString("au_u", str2);
            edit.commit();
        }
    }

    /* renamed from: d */
    public String[] m343d() {
        try {
            SharedPreferences m341f = m341f();
            String string = m341f.getString("au_p", null);
            String string2 = m341f.getString("au_u", null);
            if (string != null && string2 != null) {
                return new String[]{string, string2};
            }
        } catch (Exception e) {
        }
        return null;
    }

    /* renamed from: e */
    public void m342e() {
        m341f().edit().remove("au_p").remove("au_u").commit();
    }
}
