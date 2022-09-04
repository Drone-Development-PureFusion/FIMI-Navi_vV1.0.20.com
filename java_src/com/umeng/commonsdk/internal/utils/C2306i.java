package com.umeng.commonsdk.internal.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.C2272a;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.statistics.common.C2419e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
/* compiled from: SDStorage.java */
/* renamed from: com.umeng.commonsdk.internal.utils.i */
/* loaded from: classes2.dex */
public class C2306i {

    /* renamed from: a */
    private static final String f802a = "/.um/.umm.dat";

    /* renamed from: b */
    private static final String f803b = "/.uxx/.cca.dat";

    /* renamed from: c */
    private static final String f804c = "/.cc/.adfwe.dat";

    /* renamed from: d */
    private static final String f805d = "/.a.dat";

    /* renamed from: e */
    private static final String f806e = "umdat";

    /* renamed from: a */
    public static void m860a(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            String m850g = m850g(context);
            if (TextUtils.isEmpty(m850g) || !str.equals(m850g)) {
                m857b(context, str);
            }
        }
    }

    /* renamed from: a */
    public static String m861a(Context context) {
        String m858b = m858b(context);
        if (m858b == null || m858b.equals("")) {
            m858b = m850g(context);
        }
        if (m858b == null || m858b.equals("")) {
            m858b = m856c(context);
        }
        if (m858b == null || m858b.equals("")) {
            m858b = m854d(context);
        }
        if (m858b == null || m858b.equals("")) {
            m858b = m852e(context);
        }
        if (m858b == null || m858b.equals("")) {
            return m851f(context);
        }
        return m858b;
    }

    /* renamed from: b */
    public static String m858b(Context context) {
        return m849h(context);
    }

    /* renamed from: c */
    public static String m856c(Context context) {
        return m855c(context, f802a);
    }

    /* renamed from: d */
    public static String m854d(Context context) {
        return m855c(context, f803b);
    }

    /* renamed from: e */
    public static String m852e(Context context) {
        return m855c(context, f804c);
    }

    /* renamed from: f */
    public static String m851f(Context context) {
        return m855c(context, f805d);
    }

    /* renamed from: g */
    public static String m850g(Context context) {
        return m848i(context);
    }

    /* renamed from: h */
    private static String m849h(Context context) {
        return C2272a.m1020a(context, C2354g.f1019e, (String) null);
    }

    /* renamed from: b */
    public static void m857b(Context context, String str) {
        m859a(context, str, f802a);
        m859a(context, str, f803b);
        m859a(context, str, f804c);
        m859a(context, str, f805d);
        m853d(context, str);
    }

    /* renamed from: a */
    private static void m859a(Context context, String str, String str2) {
        if (DeviceConfig.checkPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            try {
                String externalStorageState = Environment.getExternalStorageState();
                if (externalStorageState != null && externalStorageState.equalsIgnoreCase("mounted")) {
                    String m855c = m855c(context, str2);
                    if (m855c == null || !m855c.equals(str)) {
                        File file = new File(Environment.getExternalStorageDirectory() + str2);
                        if (file.getParentFile() != null && !file.getParentFile().exists()) {
                            file.getParentFile().mkdir();
                        }
                        RandomAccessFile randomAccessFile = new RandomAccessFile(Environment.getExternalStorageDirectory() + str2, "rw");
                        randomAccessFile.setLength(str.getBytes().length);
                        FileChannel channel = randomAccessFile.getChannel();
                        FileLock tryLock = channel.tryLock();
                        ByteBuffer allocate = ByteBuffer.allocate(1024);
                        allocate.clear();
                        allocate.put(str.getBytes());
                        allocate.flip();
                        while (allocate.hasRemaining()) {
                            channel.write(allocate);
                        }
                        channel.force(true);
                        if (tryLock != null) {
                            tryLock.release();
                        }
                        channel.close();
                    }
                }
            } catch (Exception e) {
                if (e != null) {
                    C2419e.m307e("saveFileUmtt:" + e.getMessage());
                }
            }
        }
    }

    /* renamed from: c */
    private static String m855c(Context context, String str) {
        String externalStorageState;
        try {
            if (!DeviceConfig.checkPermission(context, "android.permission.READ_EXTERNAL_STORAGE") || (externalStorageState = Environment.getExternalStorageState()) == null || !externalStorageState.equalsIgnoreCase("mounted") || !new File(Environment.getExternalStorageDirectory() + str).exists()) {
                return null;
            }
            FileChannel channel = new RandomAccessFile(Environment.getExternalStorageDirectory() + str, "rw").getChannel();
            FileLock tryLock = channel.tryLock();
            StringBuilder sb = new StringBuilder();
            ByteBuffer allocate = ByteBuffer.allocate(1024);
            allocate.clear();
            while (channel.read(allocate) != -1) {
                byte[] bArr = new byte[allocate.position()];
                for (int i = 0; i < allocate.position(); i++) {
                    bArr[i] = allocate.get(i);
                }
                sb.append(new String(bArr));
                allocate.clear();
            }
            if (channel != null) {
                tryLock.release();
            }
            channel.close();
            return sb.toString();
        } catch (Exception e) {
            if (e == null) {
                return null;
            }
            C2419e.m307e("getFileUmtt:" + e.getMessage());
            return null;
        }
    }

    /* renamed from: d */
    private static void m853d(Context context, String str) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f806e, 0);
        if (sharedPreferences != null) {
            String string = sharedPreferences.getString("u", null);
            if (string == null || !string.equals(str)) {
                sharedPreferences.edit().putString("u", str).commit();
            }
        }
    }

    /* renamed from: i */
    private static String m848i(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f806e, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getString("u", null);
        }
        return null;
    }
}
