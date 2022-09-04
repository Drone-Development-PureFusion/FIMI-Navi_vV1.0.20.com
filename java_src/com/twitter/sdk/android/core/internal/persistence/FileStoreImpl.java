package com.twitter.sdk.android.core.internal.persistence;

import android.content.Context;
import android.os.Environment;
import com.twitter.sdk.android.core.Twitter;
import java.io.File;
/* loaded from: classes2.dex */
public class FileStoreImpl implements FileStore {
    private final Context context;

    public FileStoreImpl(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null");
        }
        this.context = context;
    }

    @Override // com.twitter.sdk.android.core.internal.persistence.FileStore
    public File getCacheDir() {
        return prepare(this.context.getCacheDir());
    }

    @Override // com.twitter.sdk.android.core.internal.persistence.FileStore
    public File getExternalCacheDir() {
        return isExternalStorageAvailable() ? prepare(this.context.getExternalCacheDir()) : prepare(null);
    }

    @Override // com.twitter.sdk.android.core.internal.persistence.FileStore
    public File getFilesDir() {
        return prepare(this.context.getFilesDir());
    }

    @Override // com.twitter.sdk.android.core.internal.persistence.FileStore
    public File getExternalFilesDir() {
        return isExternalStorageAvailable() ? prepare(this.context.getExternalFilesDir(null)) : prepare(null);
    }

    File prepare(File file) {
        if (file != null) {
            if (!file.exists() && !file.mkdirs()) {
                Twitter.getLogger().mo1285w("Twitter", "Couldn't create file");
            } else {
                return file;
            }
        } else {
            Twitter.getLogger().mo1293d("Twitter", "Null File");
        }
        return null;
    }

    boolean isExternalStorageAvailable() {
        String state = Environment.getExternalStorageState();
        if (!"mounted".equals(state)) {
            Twitter.getLogger().mo1285w("Twitter", "External Storage is not mounted and/or writable\nHave you declared android.permission.WRITE_EXTERNAL_STORAGE in the manifest?");
            return false;
        }
        return true;
    }
}
