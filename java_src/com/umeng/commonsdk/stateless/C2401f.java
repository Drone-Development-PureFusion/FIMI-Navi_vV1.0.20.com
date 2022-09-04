package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.text.TextUtils;
import com.fimi.x8sdk.command.FcCollection;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.statistics.common.C2419e;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Locale;
import java.util.zip.Deflater;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.mina.proxy.handlers.socks.SocksProxyConstants;
/* compiled from: UMSLUtils.java */
/* renamed from: com.umeng.commonsdk.stateless.f */
/* loaded from: classes2.dex */
public class C2401f {

    /* renamed from: a */
    public static int f1208a;

    /* renamed from: b */
    private static final byte[] f1209b = {10, 1, 11, 5, 4, 15, 7, 9, FcCollection.MSG_ID_GET_LOW_POWER_OPERATION, 3, 1, 6, 8, 12, 13, SocksProxyConstants.V4_REPLY_REQUEST_REJECTED_OR_FAILED};

    /* renamed from: c */
    private static Object f1210c = new Object();

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b4, code lost:
        if (0 == 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b6, code lost:
        r1.close();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m419a(Context context, String str, String str2, byte[] bArr) {
        boolean z;
        boolean z2;
        boolean z3;
        FileOutputStream fileOutputStream = null;
        try {
            if (context == null) {
                return false;
            }
            try {
                synchronized (f1210c) {
                    try {
                        C2419e.m328a("walle", "[stateless] begin write envelope, thread is " + Thread.currentThread());
                        File file = new File(context.getFilesDir() + "/" + C2387a.f1127e);
                        if (!file.isDirectory()) {
                            file.mkdir();
                        }
                        File file2 = new File(file.getPath() + "/" + str);
                        if (!file2.isDirectory()) {
                            file2.mkdir();
                        }
                        File file3 = new File(file2.getPath() + "/" + str2);
                        if (!file3.exists()) {
                            file3.createNewFile();
                        }
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file3);
                        try {
                            fileOutputStream2.write(bArr);
                            fileOutputStream2.close();
                            FileOutputStream fileOutputStream3 = null;
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            z3 = false;
                        }
                        try {
                        } catch (Throwable th2) {
                            th = th2;
                            z3 = true;
                            while (true) {
                                try {
                                    break;
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        z3 = false;
                    }
                }
                try {
                    break;
                    throw th;
                } catch (IOException e) {
                    e = e;
                    z2 = z3;
                    C2419e.m328a("walle", "[stateless] write envelope, e is " + e.getMessage());
                    C2345b.m708a(context, e);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e2) {
                        }
                    }
                    C2419e.m328a("walle", "[stateless] end write envelope, thread id " + Thread.currentThread());
                    return z2;
                } catch (Throwable th5) {
                    th = th5;
                    z = z3;
                    C2419e.m328a("walle", "[stateless] write envelope, e is " + th.getMessage());
                    C2345b.m708a(context, th);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e3) {
                        }
                    }
                    C2419e.m328a("walle", "[stateless] end write envelope, thread id " + Thread.currentThread());
                    return z;
                }
            } catch (IOException e4) {
                e = e4;
                z2 = false;
            } catch (Throwable th6) {
                th = th6;
                z = false;
            }
            C2419e.m328a("walle", "[stateless] end write envelope, thread id " + Thread.currentThread());
            return true;
        } catch (Throwable th7) {
            if (0 != 0) {
                try {
                    fileOutputStream.close();
                } catch (IOException e5) {
                }
            }
            C2419e.m328a("walle", "[stateless] end write envelope, thread id " + Thread.currentThread());
            throw th7;
        }
    }

    /* renamed from: a */
    public static byte[] m418a(String str) throws IOException {
        Throwable th;
        IOException e;
        FileChannel channel;
        byte[] bArr;
        FileChannel fileChannel = null;
        synchronized (f1210c) {
            C2419e.m328a("walle", "[stateless] begin read envelope, thread is " + Thread.currentThread());
            try {
                try {
                    channel = new RandomAccessFile(str, "r").getChannel();
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                MappedByteBuffer load = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size()).load();
                System.out.println(load.isLoaded());
                bArr = new byte[(int) channel.size()];
                if (load.remaining() > 0) {
                    load.get(bArr, 0, load.remaining());
                }
                C2419e.m328a("walle", "[stateless] end read envelope, thread id " + Thread.currentThread());
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException e3) {
                    }
                }
            } catch (IOException e4) {
                e = e4;
                fileChannel = channel;
                C2419e.m328a("walle", "[stateless] write envelope, e is " + e.getMessage());
                throw e;
            } catch (Throwable th3) {
                th = th3;
                fileChannel = channel;
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (IOException e5) {
                    }
                }
                throw th;
            }
        }
        return bArr;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x00ca -> B:47:0x00cb). Please submit an issue!!! */
    /* renamed from: a */
    public static File m421a(Context context) {
        File file;
        Throwable th;
        File file2;
        File[] listFiles;
        File[] listFiles2;
        File file3 = null;
        try {
        } catch (Throwable th2) {
            th = th2;
            file = null;
        }
        synchronized (f1210c) {
            try {
                C2419e.m328a("walle", "get last envelope begin, thread is " + Thread.currentThread());
                if (context != null && context.getApplicationContext() != null) {
                    String str = context.getApplicationContext().getFilesDir() + "/" + C2387a.f1127e;
                    if (!TextUtils.isEmpty(str) && (file2 = new File(str)) != null && file2.isDirectory() && (listFiles = file2.listFiles()) != null && listFiles.length > 0) {
                        file = null;
                        for (File file4 : listFiles) {
                            try {
                                if (file4 != null && file4.isDirectory() && (listFiles2 = file4.listFiles()) != null && listFiles2.length > 0) {
                                    Arrays.sort(listFiles2, new Comparator<File>() { // from class: com.umeng.commonsdk.stateless.f.1
                                        @Override // java.util.Comparator
                                        /* renamed from: a */
                                        public int compare(File file5, File file6) {
                                            long lastModified = file5.lastModified() - file6.lastModified();
                                            if (lastModified > 0) {
                                                return 1;
                                            }
                                            if (lastModified == 0) {
                                                return 0;
                                            }
                                            return -1;
                                        }
                                    });
                                    File file5 = listFiles2[0];
                                    if (file5 != null && (file == null || file.lastModified() > file5.lastModified())) {
                                        file = file5;
                                    }
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                file3 = file;
                                try {
                                    throw th;
                                } catch (Throwable th4) {
                                    th = th4;
                                    file = file3;
                                    C2345b.m708a(context, th);
                                    return file;
                                }
                            }
                        }
                        C2419e.m328a("walle", "get last envelope end, thread is " + Thread.currentThread());
                        return file;
                    }
                }
                file = null;
                C2419e.m328a("walle", "get last envelope end, thread is " + Thread.currentThread());
                return file;
            } catch (Throwable th5) {
                th = th5;
            }
        }
    }

    /* renamed from: a */
    public static void m420a(Context context, String str, int i) {
        try {
            if (str == null) {
                C2419e.m328a("AmapLBS", "[lbs-build] fileDir not exist, thread is " + Thread.currentThread());
                return;
            }
            File file = new File(str);
            if (!file.isDirectory()) {
                C2419e.m328a("AmapLBS", "[lbs-build] fileDir not exist, thread is " + Thread.currentThread());
                return;
            }
            synchronized (f1210c) {
                File[] listFiles = file.listFiles();
                C2419e.m328a("AmapLBS", "[lbs-build] delete file begin " + listFiles.length + ", thread is " + Thread.currentThread());
                if (listFiles != null && listFiles.length >= i) {
                    C2419e.m328a("AmapLBS", "[lbs-build] file size >= max");
                    ArrayList arrayList = new ArrayList();
                    for (File file2 : listFiles) {
                        if (file2 != null) {
                            arrayList.add(file2);
                        }
                    }
                    if (arrayList != null && arrayList.size() >= i) {
                        Collections.sort(arrayList, new Comparator<File>() { // from class: com.umeng.commonsdk.stateless.f.2
                            @Override // java.util.Comparator
                            /* renamed from: a */
                            public int compare(File file3, File file4) {
                                if (file3 != null && file4 != null && file3.lastModified() < file4.lastModified()) {
                                    return -1;
                                }
                                if (file3 != null && file4 != null && file3.lastModified() == file4.lastModified()) {
                                    return 0;
                                }
                                return 1;
                            }
                        });
                        if (C2419e.f1262a) {
                            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                C2419e.m328a("AmapLBS", "[lbs-build] overrun native file is " + ((File) arrayList.get(i2)).getPath());
                            }
                        }
                        for (int i3 = 0; i3 <= arrayList.size() - i; i3++) {
                            if (arrayList != null && arrayList.get(i3) != null) {
                                C2419e.m328a("AmapLBS", "[lbs-build] overrun remove file is " + ((File) arrayList.get(i3)).getPath());
                                try {
                                    ((File) arrayList.get(i3)).delete();
                                    arrayList.remove(i3);
                                } catch (Exception e) {
                                }
                            }
                        }
                    }
                } else {
                    C2419e.m328a("AmapLBS", "[lbs-build] file size < max");
                }
                C2419e.m328a("AmapLBS", "[lbs-build] delete file end " + listFiles.length + ", thread is " + Thread.currentThread());
            }
        } catch (Throwable th) {
            C2345b.m708a(context, th);
        }
    }

    /* renamed from: a */
    public static boolean m422a(long j, long j2) {
        return j > j2;
    }

    /* renamed from: a */
    public static byte[] m417a(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        Deflater deflater = new Deflater();
        deflater.setInput(bArr);
        deflater.finish();
        byte[] bArr2 = new byte[8192];
        f1208a = 0;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            while (!deflater.finished()) {
                try {
                    int deflate = deflater.deflate(bArr2);
                    f1208a += deflate;
                    byteArrayOutputStream.write(bArr2, 0, deflate);
                } catch (Throwable th) {
                    th = th;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            }
            deflater.end();
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream = null;
        }
    }

    /* renamed from: a */
    public static byte[] m416a(byte[] bArr, byte[] bArr2) throws Exception {
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
        cipher.init(1, new SecretKeySpec(bArr2, "AES"), new IvParameterSpec(f1209b));
        return cipher.doFinal(bArr);
    }

    /* renamed from: b */
    public static byte[] m415b(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: c */
    public static String m414c(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < bArr.length; i++) {
            stringBuffer.append(String.format("%02X", Byte.valueOf(bArr[i])));
        }
        return stringBuffer.toString().toLowerCase(Locale.US);
    }
}
