package com.github.moduth.blockcanary;

import android.util.Log;
import com.fimi.host.HostConstants;
import com.fimi.kernel.connect.tcp.SocketOption;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* loaded from: classes2.dex */
public class LogWriter {
    private static final long OBSOLETE_DURATION = 172800000;
    private static final String TAG = "LogWriter";
    private static final Object SAVE_DELETE_LOCK = new Object();
    private static final SimpleDateFormat FILE_NAME_FORMATTER = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss.SSS", Locale.US);
    private static final SimpleDateFormat TIME_FORMATTER = new SimpleDateFormat(HostConstants.FORMATDATE, Locale.US);

    private LogWriter() {
        throw new InstantiationError("Must not instantiate this class");
    }

    public static String save(String str) {
        String path;
        synchronized (SAVE_DELETE_LOCK) {
            path = save("looper", str);
        }
        return path;
    }

    public static void cleanObsolete() {
        HandlerThreadFactory.getWriteLogThreadHandler().post(new Runnable() { // from class: com.github.moduth.blockcanary.LogWriter.1
            @Override // java.lang.Runnable
            public void run() {
                long now = System.currentTimeMillis();
                File[] f = BlockCanaryInternals.getLogFiles();
                if (f != null && f.length > 0) {
                    synchronized (LogWriter.SAVE_DELETE_LOCK) {
                        for (File aF : f) {
                            if (now - aF.lastModified() > LogWriter.OBSOLETE_DURATION) {
                                aF.delete();
                            }
                        }
                    }
                }
            }
        });
    }

    public static void deleteAll() {
        synchronized (SAVE_DELETE_LOCK) {
            try {
                File[] files = BlockCanaryInternals.getLogFiles();
                if (files != null && files.length > 0) {
                    for (File file : files) {
                        file.delete();
                    }
                }
            }
        }
    }

    private static String save(String logFileName, String str) {
        String path = "";
        BufferedWriter writer = null;
        try {
            File file = BlockCanaryInternals.detectedBlockDirectory();
            long time = System.currentTimeMillis();
            path = file.getAbsolutePath() + "/" + logFileName + "-" + FILE_NAME_FORMATTER.format(Long.valueOf(time)) + ".log";
            OutputStreamWriter out = new OutputStreamWriter(new FileOutputStream(path, true), SocketOption.DEFAULT_CHARSET);
            BufferedWriter writer2 = new BufferedWriter(out);
            try {
                writer2.write("\r\n");
                writer2.write("**********************");
                writer2.write("\r\n");
                writer2.write(TIME_FORMATTER.format(Long.valueOf(time)) + "(write log time)");
                writer2.write("\r\n");
                writer2.write("\r\n");
                writer2.write(str);
                writer2.write("\r\n");
                writer2.flush();
                writer2.close();
                writer = null;
            } catch (Throwable th) {
                t = th;
                writer = writer2;
                try {
                    Log.e(TAG, "save: ", t);
                    if (writer != null) {
                        try {
                            writer.close();
                        } catch (Exception e) {
                            Log.e(TAG, "save: ", e);
                        }
                    }
                    return path;
                } finally {
                    if (writer != null) {
                        try {
                            writer.close();
                        } catch (Exception e2) {
                            Log.e(TAG, "save: ", e2);
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            t = th2;
        }
        return path;
    }

    public static File generateTempZip(String filename) {
        return new File(BlockCanaryInternals.getPath() + "/" + filename + ".zip");
    }
}
