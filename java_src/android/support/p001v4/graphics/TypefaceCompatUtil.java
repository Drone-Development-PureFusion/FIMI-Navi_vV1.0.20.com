package android.support.p001v4.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.os.Process;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v4.graphics.TypefaceCompatUtil */
/* loaded from: classes.dex */
public class TypefaceCompatUtil {
    private static final String CACHE_FILE_PREFIX = ".font";
    private static final String TAG = "TypefaceCompatUtil";

    private TypefaceCompatUtil() {
    }

    public static File getTempFile(Context context) {
        String prefix = CACHE_FILE_PREFIX + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i = 0; i < 100; i++) {
            File file = new File(context.getCacheDir(), prefix + i);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    @RequiresApi(19)
    private static ByteBuffer mmap(File file) {
        try {
            FileInputStream fis = new FileInputStream(file);
            FileChannel channel = fis.getChannel();
            long size = channel.size();
            MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, size);
            if (fis != null) {
                if (0 != 0) {
                    fis.close();
                } else {
                    fis.close();
                }
            }
            return map;
        } catch (IOException e) {
            return null;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:40)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:203)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:46)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:40)
        */
    @android.support.annotation.RequiresApi(19)
    public static java.nio.ByteBuffer mmap(android.content.Context r13, android.os.CancellationSignal r14, android.net.Uri r15) {
        /*
            r10 = 0
            android.content.ContentResolver r9 = r13.getContentResolver()
            java.lang.String r1 = "r"
            android.os.ParcelFileDescriptor r8 = r9.openFileDescriptor(r15, r1, r14)     // Catch: java.io.IOException -> L46
            r11 = 0
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L3a
            java.io.FileDescriptor r1 = r8.getFileDescriptor()     // Catch: java.lang.Throwable -> L3a
            r7.<init>(r1)     // Catch: java.lang.Throwable -> L3a
            r12 = 0
            java.nio.channels.FileChannel r0 = r7.getChannel()     // Catch: java.lang.Throwable -> L5a
            long r4 = r0.size()     // Catch: java.lang.Throwable -> L5a
            java.nio.channels.FileChannel$MapMode r1 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch: java.lang.Throwable -> L5a
            r2 = 0
            java.nio.MappedByteBuffer r1 = r0.map(r1, r2, r4)     // Catch: java.lang.Throwable -> L5a
            if (r7 == 0) goto L2d
            if (r10 == 0) goto L49
            r7.close()     // Catch: java.lang.Throwable -> L35
        L2d:
            if (r8 == 0) goto L34
            if (r10 == 0) goto L56
            r8.close()     // Catch: java.lang.Throwable -> L51
        L34:
            return r1
        L35:
            r2 = move-exception
            r12.addSuppressed(r2)     // Catch: java.lang.Throwable -> L3a
            goto L2d
        L3a:
            r1 = move-exception
            throw r1     // Catch: java.lang.Throwable -> L3c
        L3c:
            r2 = move-exception
            r3 = r1
        L3e:
            if (r8 == 0) goto L45
            if (r3 == 0) goto L74
            r8.close()     // Catch: java.lang.Throwable -> L6f
        L45:
            throw r2     // Catch: java.io.IOException -> L46
        L46:
            r6 = move-exception
            r1 = r10
            goto L34
        L49:
            r7.close()     // Catch: java.lang.Throwable -> L3a
            goto L2d
        L4d:
            r1 = move-exception
            r2 = r1
            r3 = r10
            goto L3e
        L51:
            r2 = move-exception
            r11.addSuppressed(r2)     // Catch: java.io.IOException -> L46
            goto L34
        L56:
            r8.close()     // Catch: java.io.IOException -> L46
            goto L34
        L5a:
            r1 = move-exception
            throw r1     // Catch: java.lang.Throwable -> L5c
        L5c:
            r2 = move-exception
            r3 = r1
        L5e:
            if (r7 == 0) goto L65
            if (r3 == 0) goto L6b
            r7.close()     // Catch: java.lang.Throwable -> L66
        L65:
            throw r2     // Catch: java.lang.Throwable -> L3a
        L66:
            r1 = move-exception
            r3.addSuppressed(r1)     // Catch: java.lang.Throwable -> L3a
            goto L65
        L6b:
            r7.close()     // Catch: java.lang.Throwable -> L3a
            goto L65
        L6f:
            r1 = move-exception
            r3.addSuppressed(r1)     // Catch: java.io.IOException -> L46
            goto L45
        L74:
            r8.close()     // Catch: java.io.IOException -> L46
            goto L45
        L78:
            r1 = move-exception
            r2 = r1
            r3 = r10
            goto L5e
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.graphics.TypefaceCompatUtil.mmap(android.content.Context, android.os.CancellationSignal, android.net.Uri):java.nio.ByteBuffer");
    }

    @RequiresApi(19)
    public static ByteBuffer copyToDirectBuffer(Context context, Resources res, int id) {
        ByteBuffer byteBuffer = null;
        File tmpFile = getTempFile(context);
        if (tmpFile != null) {
            try {
                if (copyToFile(tmpFile, res, id)) {
                    byteBuffer = mmap(tmpFile);
                }
            } finally {
                tmpFile.delete();
            }
        }
        return byteBuffer;
    }

    public static boolean copyToFile(File file, InputStream is) {
        FileOutputStream os;
        FileOutputStream os2 = null;
        try {
            try {
                os = new FileOutputStream(file, false);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            byte[] buffer = new byte[1024];
            while (true) {
                int readLen = is.read(buffer);
                if (readLen != -1) {
                    os.write(buffer, 0, readLen);
                } else {
                    closeQuietly(os);
                    return true;
                }
            }
        } catch (IOException e2) {
            e = e2;
            os2 = os;
            Log.e(TAG, "Error copying resource contents to temp file: " + e.getMessage());
            closeQuietly(os2);
            return false;
        } catch (Throwable th2) {
            th = th2;
            os2 = os;
            closeQuietly(os2);
            throw th;
        }
    }

    public static boolean copyToFile(File file, Resources res, int id) {
        InputStream is = null;
        try {
            is = res.openRawResource(id);
            return copyToFile(file, is);
        } finally {
            closeQuietly(is);
        }
    }

    public static void closeQuietly(Closeable c) {
        if (c != null) {
            try {
                c.close();
            } catch (IOException e) {
            }
        }
    }
}
