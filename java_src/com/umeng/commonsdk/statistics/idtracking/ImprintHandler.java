package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.commonsdk.proguard.C2370o;
import com.umeng.commonsdk.proguard.C2376u;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.C2419e;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.AbstractC2451d;
import com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback;
import com.umeng.commonsdk.statistics.proto.C2479d;
import com.umeng.commonsdk.statistics.proto.C2486e;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public class ImprintHandler {

    /* renamed from: a */
    private static final String f1272a = "ImprintHandler";

    /* renamed from: c */
    private static final String f1274c = ".imprint";

    /* renamed from: k */
    private static Context f1279k;

    /* renamed from: e */
    private AbstractC2451d f1280e;

    /* renamed from: h */
    private C2421a f1281h = new C2421a();

    /* renamed from: i */
    private C2479d f1282i = null;

    /* renamed from: b */
    private static Object f1273b = new Object();

    /* renamed from: d */
    private static final byte[] f1275d = "pbl0".getBytes();

    /* renamed from: f */
    private static Map<String, ArrayList<UMImprintChangeCallback>> f1276f = new HashMap();

    /* renamed from: g */
    private static Object f1277g = new Object();

    /* renamed from: j */
    private static ImprintHandler f1278j = null;

    private ImprintHandler(Context context) {
        f1279k = context.getApplicationContext();
    }

    public static synchronized ImprintHandler getImprintService(Context context) {
        ImprintHandler imprintHandler;
        synchronized (ImprintHandler.class) {
            if (f1278j == null) {
                f1278j = new ImprintHandler(context);
                f1278j.m286e();
            }
            imprintHandler = f1278j;
        }
        return imprintHandler;
    }

    /* renamed from: a */
    private static void m295a(String str, UMImprintChangeCallback uMImprintChangeCallback) {
        synchronized (f1277g) {
            if (f1276f.containsKey(str)) {
                ArrayList<UMImprintChangeCallback> arrayList = f1276f.get(str);
                int size = arrayList.size();
                C2419e.m319c("--->>> addCallback: before add: callbacks size is: " + size);
                for (int i = 0; i < size; i++) {
                    if (uMImprintChangeCallback == arrayList.get(i)) {
                        C2419e.m319c("--->>> addCallback: callback has exist, just exit");
                        return;
                    }
                }
                arrayList.add(uMImprintChangeCallback);
                C2419e.m319c("--->>> addCallback: after add: callbacks size is: " + arrayList.size());
            } else {
                ArrayList<UMImprintChangeCallback> arrayList2 = new ArrayList<>();
                int size2 = arrayList2.size();
                C2419e.m319c("--->>> addCallback: before add: callbacks size is: " + size2);
                for (int i2 = 0; i2 < size2; i2++) {
                    if (uMImprintChangeCallback == arrayList2.get(i2)) {
                        C2419e.m319c("--->>> addCallback: callback has exist, just exit");
                        return;
                    }
                }
                arrayList2.add(uMImprintChangeCallback);
                C2419e.m319c("--->>> addCallback: after add: callbacks size is: " + arrayList2.size());
                f1276f.put(str, arrayList2);
            }
        }
    }

    /* renamed from: b */
    private static void m291b(String str, UMImprintChangeCallback uMImprintChangeCallback) {
        if (!TextUtils.isEmpty(str) && uMImprintChangeCallback != null) {
            synchronized (f1277g) {
                if (f1276f.containsKey(str)) {
                    ArrayList<UMImprintChangeCallback> arrayList = f1276f.get(str);
                    if (uMImprintChangeCallback != null && arrayList.size() > 0) {
                        int size = arrayList.size();
                        C2419e.m319c("--->>> removeCallback: before remove: callbacks size is: " + size);
                        int i = 0;
                        while (true) {
                            if (i >= size) {
                                break;
                            } else if (uMImprintChangeCallback != arrayList.get(i)) {
                                i++;
                            } else {
                                C2419e.m319c("--->>> removeCallback: remove index " + i);
                                arrayList.remove(i);
                                break;
                            }
                        }
                        C2419e.m319c("--->>> removeCallback: after remove: callbacks size is: " + arrayList.size());
                        if (arrayList.size() == 0) {
                            C2419e.m319c("--->>> removeCallback: remove key from map: key = " + str);
                            f1276f.remove(str);
                        }
                    }
                }
            }
        }
    }

    public void registImprintCallback(String str, UMImprintChangeCallback uMImprintChangeCallback) {
        if (!TextUtils.isEmpty(str) && uMImprintChangeCallback != null) {
            m295a(str, uMImprintChangeCallback);
        }
    }

    public void unregistImprintCallback(String str, UMImprintChangeCallback uMImprintChangeCallback) {
        if (!TextUtils.isEmpty(str) && uMImprintChangeCallback != null) {
            m291b(str, uMImprintChangeCallback);
        }
    }

    /* renamed from: a */
    public void m299a(AbstractC2451d abstractC2451d) {
        this.f1280e = abstractC2451d;
    }

    /* renamed from: a */
    public String m298a(C2479d c2479d) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : new TreeMap(c2479d.m98c()).entrySet()) {
            sb.append((String) entry.getKey());
            if (((C2486e) entry.getValue()).m62d()) {
                sb.append(((C2486e) entry.getValue()).m67b());
            }
            sb.append(((C2486e) entry.getValue()).m61e());
            sb.append(((C2486e) entry.getValue()).m58h());
        }
        sb.append(c2479d.f1432b);
        return HelperUtils.MD5(sb.toString()).toLowerCase(Locale.US);
    }

    /* renamed from: c */
    private boolean m289c(C2479d c2479d) {
        if (!c2479d.m91i().equals(m298a(c2479d))) {
            return false;
        }
        for (C2486e c2486e : c2479d.m98c().values()) {
            byte[] reverseHexString = DataHelper.reverseHexString(c2486e.m58h());
            byte[] m296a = m296a(c2486e);
            for (int i = 0; i < 4; i++) {
                if (reverseHexString[i] != m296a[i]) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: a */
    public byte[] m296a(C2486e c2486e) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(null);
        allocate.putLong(c2486e.m61e());
        byte[] array = allocate.array();
        byte[] bArr = f1275d;
        byte[] bArr2 = new byte[4];
        for (int i = 0; i < 4; i++) {
            bArr2[i] = (byte) (array[i] ^ bArr[i]);
        }
        return bArr2;
    }

    /* renamed from: b */
    public void m292b(C2479d c2479d) {
        C2479d m297a;
        boolean z;
        String str = null;
        if (c2479d == null) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.m394d("Imprint is null");
            }
        } else if (!m289c(c2479d)) {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.m388e("Imprint is not valid");
            }
        } else {
            if (AnalyticsConstants.UM_DEBUG) {
                MLog.m394d("Imprint is ok");
            }
            HashMap hashMap = new HashMap();
            synchronized (this) {
                C2479d c2479d2 = this.f1282i;
                String m91i = c2479d2 == null ? null : c2479d2.m91i();
                if (c2479d2 == null) {
                    m297a = m287d(c2479d);
                } else {
                    m297a = m297a(c2479d2, c2479d, hashMap);
                }
                this.f1282i = m297a;
                if (m297a != null) {
                    str = m297a.m91i();
                }
                z = !m294a(m91i, str);
            }
            if (this.f1282i != null) {
                if (AnalyticsConstants.UM_DEBUG) {
                }
                if (z) {
                    this.f1281h.m285a(this.f1282i);
                    if (this.f1280e != null) {
                        this.f1280e.onImprintChanged(this.f1281h);
                    }
                }
            }
            if (hashMap.size() > 0) {
                synchronized (f1277g) {
                    for (Map.Entry<String, String> entry : hashMap.entrySet()) {
                        String key = entry.getKey();
                        String value = entry.getValue();
                        if (!TextUtils.isEmpty(key) && f1276f.containsKey(key)) {
                            C2419e.m319c("--->>> target imprint key is: " + key + "; value is: " + value);
                            ArrayList<UMImprintChangeCallback> arrayList = f1276f.get(key);
                            if (arrayList != null) {
                                for (int i = 0; i < arrayList.size(); i++) {
                                    arrayList.get(i).onImprintValueChanged(key, value);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private boolean m294a(String str, String str2) {
        if (str == null) {
            if (str2 != null) {
                return false;
            }
            return true;
        }
        return str.equals(str2);
    }

    /* renamed from: a */
    private C2479d m297a(C2479d c2479d, C2479d c2479d2, Map<String, String> map) {
        if (c2479d2 != null) {
            Map<String, C2486e> m98c = c2479d.m98c();
            for (Map.Entry<String, C2486e> entry : c2479d2.m98c().entrySet()) {
                if (entry.getValue().m62d()) {
                    m98c.put(entry.getKey(), entry.getValue());
                    synchronized (f1277g) {
                        String key = entry.getKey();
                        String str = entry.getValue().f1450a;
                        if (!TextUtils.isEmpty(key) && f1276f.containsKey(key) && f1276f.get(key) != null) {
                            map.put(key, str);
                        }
                    }
                } else {
                    String key2 = entry.getKey();
                    m98c.remove(key2);
                    this.f1281h.m284a(key2);
                }
            }
            c2479d.m108a(c2479d2.m94f());
            c2479d.m105a(m298a(c2479d));
        }
        return c2479d;
    }

    /* renamed from: d */
    private C2479d m287d(C2479d c2479d) {
        Map<String, C2486e> m98c = c2479d.m98c();
        ArrayList<String> arrayList = new ArrayList(m98c.size() / 2);
        for (Map.Entry<String, C2486e> entry : m98c.entrySet()) {
            if (!entry.getValue().m62d()) {
                arrayList.add(entry.getKey());
            }
        }
        for (String str : arrayList) {
            m98c.remove(str);
        }
        return c2479d;
    }

    /* renamed from: a */
    public synchronized C2479d m300a() {
        return this.f1282i;
    }

    /* renamed from: b */
    public C2421a m293b() {
        return this.f1281h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m286e() {
        FileInputStream fileInputStream;
        InputStream inputStream = null;
        byte[] bArr = null;
        File filesDir = f1279k.getFilesDir();
        File file = new File(filesDir, f1274c);
        synchronized (f1273b) {
            try {
                if (file.exists()) {
                    try {
                        fileInputStream = f1279k.openFileInput(f1274c);
                        try {
                            bArr = HelperUtils.readStreamToByteArray(fileInputStream);
                            HelperUtils.safeClose(fileInputStream);
                            filesDir = fileInputStream;
                        } catch (Exception e) {
                            e = e;
                            e.printStackTrace();
                            HelperUtils.safeClose(fileInputStream);
                            filesDir = fileInputStream;
                            if (bArr != null) {
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                        fileInputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        HelperUtils.safeClose(inputStream);
                        throw th;
                    }
                    if (bArr != null) {
                        try {
                            C2479d c2479d = new C2479d();
                            new C2370o().m570a(c2479d, bArr);
                            this.f1282i = c2479d;
                            this.f1281h.m285a(c2479d);
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = filesDir;
            }
        }
    }

    /* renamed from: c */
    public void m290c() {
        if (this.f1282i != null) {
            try {
                synchronized (f1273b) {
                    byte[] m557a = new C2376u().m557a(this.f1282i);
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(f1279k.getFilesDir(), f1274c));
                    fileOutputStream.write(m557a);
                    fileOutputStream.flush();
                    HelperUtils.safeClose(fileOutputStream);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: d */
    public boolean m288d() {
        return new File(f1279k.getFilesDir(), f1274c).delete();
    }

    /* renamed from: com.umeng.commonsdk.statistics.idtracking.ImprintHandler$a */
    /* loaded from: classes2.dex */
    public static class C2421a {

        /* renamed from: a */
        private Map<String, String> f1283a = new HashMap();

        C2421a() {
        }

        /* renamed from: a */
        public synchronized void m284a(String str) {
            if (this.f1283a != null && this.f1283a.size() > 0 && !TextUtils.isEmpty(str) && this.f1283a.containsKey(str)) {
                this.f1283a.remove(str);
            }
        }

        C2421a(C2479d c2479d) {
            m285a(c2479d);
        }

        /* renamed from: a */
        public void m285a(C2479d c2479d) {
            if (c2479d != null) {
                m282b(c2479d);
            }
        }

        /* renamed from: b */
        private synchronized void m282b(C2479d c2479d) {
            C2486e c2486e;
            if (c2479d != null) {
                try {
                    if (c2479d.m95e()) {
                        Map<String, C2486e> m98c = c2479d.m98c();
                        for (String str : m98c.keySet()) {
                            if (!TextUtils.isEmpty(str) && (c2486e = m98c.get(str)) != null) {
                                String m67b = c2486e.m67b();
                                if (!TextUtils.isEmpty(m67b)) {
                                    this.f1283a.put(str, m67b);
                                    if (AnalyticsConstants.UM_DEBUG) {
                                        Log.i(ImprintHandler.f1272a, "imKey is " + str + ", imValue is " + m67b);
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                }
            }
        }

        /* renamed from: a */
        public synchronized String m283a(String str, String str2) {
            if (!TextUtils.isEmpty(str) && this.f1283a.size() > 0) {
                String str3 = this.f1283a.get(str);
                if (!TextUtils.isEmpty(str3)) {
                    str2 = str3;
                }
            }
            return str2;
        }
    }
}
