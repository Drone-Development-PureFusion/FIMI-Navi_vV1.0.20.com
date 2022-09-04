package com.umeng.commonsdk.framework;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import ch.qos.logback.core.CoreConstants;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.statistics.common.C2419e;
import com.umeng.commonsdk.statistics.internal.C2445a;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
/* compiled from: UMFrUtils.java */
/* renamed from: com.umeng.commonsdk.framework.b */
/* loaded from: classes2.dex */
public class C2273b {

    /* renamed from: a */
    private static final String f668a = "last_successful_build_time";

    /* renamed from: b */
    private static Object f669b = new Object();

    /* renamed from: c */
    private static String f670c = "envelope";

    /* renamed from: d */
    private static String f671d = null;

    /* renamed from: e */
    private static Object f672e = new Object();

    /* renamed from: a */
    public static String m1016a(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            int myPid = Process.myPid();
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null && runningAppProcesses.size() > 0) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.pid == myPid) {
                        return runningAppProcessInfo.processName;
                    }
                }
            }
        } catch (Throwable th) {
            C2345b.m708a(context.getApplicationContext(), th);
        }
        return "";
    }

    /* renamed from: a */
    private static boolean m1014a(Context context, String str) {
        boolean z = true;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            if (Build.VERSION.SDK_INT >= 23) {
                try {
                    return ((Integer) Class.forName("android.content.Context").getMethod("checkSelfPermission", String.class).invoke(context, str)).intValue() == 0;
                } catch (Throwable th) {
                    C2345b.m708a(applicationContext, th);
                    return false;
                }
            }
            try {
                if (applicationContext.getPackageManager().checkPermission(str, applicationContext.getPackageName()) != 0) {
                    z = false;
                }
                return z;
            } catch (Throwable th2) {
                C2345b.m708a(applicationContext, th2);
                return false;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m1010b(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        try {
            if (m1014a(context, "android.permission.ACCESS_NETWORK_STATE") && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                return activeNetworkInfo.isConnectedOrConnecting();
            }
        } catch (Throwable th) {
            C2345b.m708a(context.getApplicationContext(), th);
        }
        return false;
    }

    /* renamed from: c */
    public static int m1008c(Context context) {
        File file;
        String[] list;
        if (context != null) {
            try {
                file = new File(m1002h(context));
            } catch (Throwable th) {
                C2345b.m708a(context, th);
            }
            synchronized (f672e) {
                if (file.isDirectory() && (list = file.list()) != null) {
                    return list.length;
                }
                return 0;
            }
        }
        return 0;
    }

    /* renamed from: a */
    private static long m1017a(long j, long j2) {
        long j3;
        if (j < j2) {
            j3 = j2 - j;
        } else {
            j3 = j - j2;
        }
        return j3 / 86400000;
    }

    /* renamed from: d */
    public static void m1006d(final Context context) {
        File file = new File(m1002h(context));
        synchronized (f672e) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length > 100) {
                Arrays.sort(listFiles, new Comparator<File>() { // from class: com.umeng.commonsdk.framework.b.1
                    @Override // java.util.Comparator
                    /* renamed from: a */
                    public int compare(File file2, File file3) {
                        String name = file2.getName();
                        String name2 = file3.getName();
                        String m1007c = C2273b.m1007c(name);
                        String m1007c2 = C2273b.m1007c(name2);
                        if (TextUtils.isEmpty(m1007c) || TextUtils.isEmpty(m1007c2)) {
                            return 1;
                        }
                        try {
                            long longValue = Long.valueOf(m1007c).longValue() - Long.valueOf(m1007c2).longValue();
                            if (longValue > 0) {
                                return 1;
                            }
                            if (longValue == 0) {
                                return 0;
                            }
                            return -1;
                        } catch (NumberFormatException e) {
                            C2345b.m708a(context, e);
                            return 1;
                        }
                    }
                });
                if (listFiles.length > 100) {
                    C2419e.m325b("--->>> biger than 10");
                    for (int i = 0; i < listFiles.length - 100; i++) {
                        if (!listFiles[i].delete()) {
                            C2419e.m325b("--->>> remove [" + i + "] file fail.");
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static String m1007c(String str) {
        Context m997a = C2276c.m997a();
        if (!TextUtils.isEmpty(str)) {
            int indexOf = str.indexOf(95);
            try {
                return str.substring(indexOf + 1, str.indexOf(95, indexOf + 1));
            } catch (IndexOutOfBoundsException e) {
                C2345b.m708a(m997a, e);
                return "";
            }
        }
        return "";
    }

    /* renamed from: e */
    public static File m1005e(final Context context) {
        File file = null;
        if (context != null) {
            File file2 = new File(m1002h(context));
            synchronized (f672e) {
                File[] listFiles = file2.listFiles();
                if (listFiles != null && listFiles.length != 0) {
                    Arrays.sort(listFiles, new Comparator<File>() { // from class: com.umeng.commonsdk.framework.b.2
                        @Override // java.util.Comparator
                        /* renamed from: a */
                        public int compare(File file3, File file4) {
                            String name = file3.getName();
                            String name2 = file4.getName();
                            String m1007c = C2273b.m1007c(name);
                            String m1007c2 = C2273b.m1007c(name2);
                            if (TextUtils.isEmpty(m1007c) || TextUtils.isEmpty(m1007c2)) {
                                return 1;
                            }
                            try {
                                long longValue = Long.valueOf(m1007c).longValue() - Long.valueOf(m1007c2).longValue();
                                if (longValue > 0) {
                                    return 1;
                                }
                                if (longValue == 0) {
                                    return 0;
                                }
                                return -1;
                            } catch (NumberFormatException e) {
                                C2345b.m708a(context, e);
                                return 1;
                            }
                        }
                    });
                    file = listFiles[0];
                }
            }
        }
        return file;
    }

    /* renamed from: f */
    public static void m1004f(Context context) {
        if (context != null) {
            try {
                String m1003g = m1003g(context);
                if (!TextUtils.isEmpty(m1003g) && !m1003g.equals(f670c)) {
                    File file = new File(context.getFilesDir().getAbsolutePath() + "/." + m1003g);
                    if (file.exists()) {
                        File[] listFiles = file.listFiles();
                        if (listFiles == null || listFiles.length == 0) {
                            if (file.isDirectory()) {
                                file.delete();
                                return;
                            }
                            return;
                        }
                        String m1002h = m1002h(context);
                        for (int i = 0; i < listFiles.length; i++) {
                            listFiles[i].renameTo(new File(m1002h + "/" + listFiles[i].getName()));
                        }
                        if (file.isDirectory()) {
                            file.delete();
                        }
                    }
                }
            } catch (Throwable th) {
                C2345b.m708a(context, th);
            }
        }
    }

    /* renamed from: g */
    public static String m1003g(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager != null) {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                C2419e.m325b("--->>> getEnvelopeDir: can't get process name, use default envelope directory.");
                return f670c;
            } else if (runningAppProcesses.size() == 0) {
                return f670c;
            } else {
                try {
                    for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                        if (runningAppProcessInfo.pid == Process.myPid()) {
                            String replace = runningAppProcessInfo.processName.replace(CoreConstants.COLON_CHAR, '_');
                            C2419e.m325b("--->>> getEnvelopeDir: use current process name as envelope directory.");
                            return replace;
                        }
                    }
                } catch (Throwable th) {
                    C2345b.m708a(context, th);
                }
            }
        }
        return f670c;
    }

    /* renamed from: h */
    public static String m1002h(Context context) {
        String str;
        synchronized (f672e) {
            if (f671d == null) {
                f671d = context.getFilesDir().getAbsolutePath() + "/." + f670c;
            }
            File file = new File(f671d);
            if (!file.exists() && !file.mkdir()) {
                C2419e.m325b("--->>> Create Envelope Directory failed!!!");
            }
            str = f671d;
        }
        return str;
    }

    /* renamed from: i */
    public static long m1001i(Context context) {
        long j;
        synchronized (f669b) {
            j = PreferenceWrapper.getDefault(context).getLong(f668a, 0L);
        }
        return j;
    }

    /* renamed from: j */
    private static void m1000j(Context context) {
        synchronized (f669b) {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            sharedPreferences.edit().putLong(f668a, System.currentTimeMillis()).commit();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0067 A[Catch: Throwable -> 0x006b, TRY_ENTER, TRY_LEAVE, TryCatch #7 {, blocks: (B:13:0x003a, B:15:0x0044, B:17:0x0048, B:32:0x006a, B:26:0x005c, B:31:0x0067, B:12:0x0037, B:25:0x0059), top: B:5:0x0029 }] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m1013a(Context context, String str, byte[] bArr) {
        FileOutputStream fileOutputStream;
        int i = 101;
        if (bArr != null) {
            String str2 = m1002h(context) + "/" + str;
            File file = new File(str2);
            synchronized (f672e) {
                try {
                    try {
                        fileOutputStream = new FileOutputStream(file);
                        try {
                            fileOutputStream.write(bArr);
                            fileOutputStream.close();
                            FileOutputStream fileOutputStream2 = null;
                            if (0 != 0) {
                                fileOutputStream2.close();
                            }
                            if (C2445a.m240a(context).m239a(str)) {
                                m1000j(context);
                            }
                            i = 0;
                            str2 = fileOutputStream;
                        } catch (IOException e) {
                            e = e;
                            C2345b.m708a(context, e);
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            str2 = fileOutputStream;
                            return i;
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (str2 != 0) {
                            str2.close();
                        }
                        throw th;
                    }
                } catch (IOException e2) {
                    e = e2;
                    fileOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    str2 = 0;
                    if (str2 != 0) {
                    }
                    throw th;
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    public static boolean m1012a(File file) {
        boolean delete;
        C2276c.m997a();
        synchronized (f672e) {
            if (file != null) {
                if (file.exists()) {
                    delete = file.delete();
                }
            }
            delete = true;
        }
        return delete;
    }

    /* renamed from: a */
    public static byte[] m1011a(String str) throws IOException {
        Throwable th;
        IOException e;
        FileChannel channel;
        byte[] bArr;
        Context m997a = C2276c.m997a();
        FileChannel fileChannel = null;
        synchronized (f672e) {
            try {
                try {
                    channel = new RandomAccessFile(str, "r").getChannel();
                } catch (IOException e2) {
                    e = e2;
                }
                try {
                    MappedByteBuffer load = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size()).load();
                    System.out.println(load.isLoaded());
                    bArr = new byte[(int) channel.size()];
                    if (load.remaining() > 0) {
                        load.get(bArr, 0, load.remaining());
                    }
                    channel.close();
                } catch (IOException e3) {
                    e = e3;
                    fileChannel = channel;
                    C2345b.m708a(m997a, e);
                    throw e;
                } catch (Throwable th2) {
                    th = th2;
                    fileChannel = channel;
                    fileChannel.close();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return bArr;
    }

    /* renamed from: a */
    public static boolean m1015a(Context context, UMLogDataProtocol.UMBusinessType uMBusinessType) {
        String str = C2354g.f1001al;
        if (uMBusinessType == UMLogDataProtocol.UMBusinessType.U_DPLUS) {
            str = "d";
        } else if (uMBusinessType == UMLogDataProtocol.UMBusinessType.U_INTERNAL) {
            str = "i";
        }
        File file = new File(m1002h(context));
        synchronized (f672e) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length != 0) {
                for (File file2 : listFiles) {
                    if (file2.getName().startsWith(str)) {
                        return true;
                    }
                }
                return false;
            }
        }
        return false;
    }
}
