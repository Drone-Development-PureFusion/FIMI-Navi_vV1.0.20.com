package com.github.moduth.blockcanary;

import android.util.Log;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes2.dex */
final class Uploader {
    private static final SimpleDateFormat FORMAT = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss", Locale.US);
    private static final String TAG = "Uploader";

    private Uploader() {
        throw new InstantiationError("Must not instantiate this class");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File zip() {
        String timeString = Long.toString(System.currentTimeMillis());
        try {
            timeString = FORMAT.format(new Date());
        } catch (Throwable e) {
            Log.e(TAG, "zip: ", e);
        }
        File zippedFile = LogWriter.generateTempZip("BlockCanary-" + timeString);
        BlockCanaryInternals.getContext().zip(BlockCanaryInternals.getLogFiles(), zippedFile);
        LogWriter.deleteAll();
        return zippedFile;
    }

    public static void zipAndUpload() {
        HandlerThreadFactory.getWriteLogThreadHandler().post(new Runnable() { // from class: com.github.moduth.blockcanary.Uploader.1
            @Override // java.lang.Runnable
            public void run() {
                File file = Uploader.zip();
                if (file.exists()) {
                    BlockCanaryInternals.getContext().upload(file);
                }
            }
        });
    }
}
