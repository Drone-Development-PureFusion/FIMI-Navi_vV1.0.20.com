package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import com.twitter.sdk.android.core.internal.CommonUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public class QueueFileEventStorage implements EventsStorage {
    private final Context context;
    private QueueFile queueFile;
    private File targetDirectory;
    private final String targetDirectoryName;
    private final File workingDirectory;
    private final File workingFile;

    public QueueFileEventStorage(Context context, File workingDirectory, String workingFileName, String targetDirectoryName) throws IOException {
        this.context = context;
        this.workingDirectory = workingDirectory;
        this.targetDirectoryName = targetDirectoryName;
        this.workingFile = new File(this.workingDirectory, workingFileName);
        this.queueFile = new QueueFile(this.workingFile);
        createTargetDirectory();
    }

    private void createTargetDirectory() {
        this.targetDirectory = new File(this.workingDirectory, this.targetDirectoryName);
        if (!this.targetDirectory.exists()) {
            this.targetDirectory.mkdirs();
        }
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public void add(byte[] data) throws IOException {
        this.queueFile.add(data);
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public int getWorkingFileUsedSizeInBytes() {
        return this.queueFile.usedBytes();
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public void rollOver(String targetName) throws IOException {
        this.queueFile.close();
        move(this.workingFile, new File(this.targetDirectory, targetName));
        this.queueFile = new QueueFile(this.workingFile);
    }

    private void move(File sourceFile, File targetFile) throws IOException {
        FileInputStream fis;
        OutputStream fos = null;
        FileInputStream fis2 = null;
        try {
            fis = new FileInputStream(sourceFile);
        } catch (Throwable th) {
            th = th;
        }
        try {
            fos = getMoveOutputStream(targetFile);
            CommonUtils.copyStream(fis, fos, new byte[1024]);
            CommonUtils.closeOrLog(fis, "Failed to close file input stream");
            CommonUtils.closeOrLog(fos, "Failed to close output stream");
            sourceFile.delete();
        } catch (Throwable th2) {
            th = th2;
            fis2 = fis;
            CommonUtils.closeOrLog(fis2, "Failed to close file input stream");
            CommonUtils.closeOrLog(fos, "Failed to close output stream");
            sourceFile.delete();
            throw th;
        }
    }

    public OutputStream getMoveOutputStream(File targetFile) throws IOException {
        return new FileOutputStream(targetFile);
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public File getWorkingDirectory() {
        return this.workingDirectory;
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public File getRollOverDirectory() {
        return this.targetDirectory;
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public List<File> getBatchOfFilesToSend(int maxBatchSize) {
        File[] listFiles;
        List<File> batch = new ArrayList<>();
        for (File file : this.targetDirectory.listFiles()) {
            batch.add(file);
            if (batch.size() >= maxBatchSize) {
                break;
            }
        }
        return batch;
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public void deleteFilesInRollOverDirectory(List<File> files) {
        for (File file : files) {
            CommonUtils.logControlled(this.context, String.format("deleting sent analytics file %s", file.getName()));
            file.delete();
        }
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public List<File> getAllFilesInRollOverDirectory() {
        return Arrays.asList(this.targetDirectory.listFiles());
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public void deleteWorkingFile() {
        try {
            this.queueFile.close();
        } catch (IOException e) {
        }
        this.workingFile.delete();
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public boolean isWorkingFileEmpty() {
        return this.queueFile.isEmpty();
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public boolean canWorkingFileStore(int newEventSizeInBytes, int maxByteSizePerFile) {
        return this.queueFile.hasSpaceFor(newEventSizeInBytes, maxByteSizePerFile);
    }
}
