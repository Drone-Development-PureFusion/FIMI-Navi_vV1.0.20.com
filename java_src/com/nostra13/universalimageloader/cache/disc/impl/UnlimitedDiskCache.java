package com.nostra13.universalimageloader.cache.disc.impl;

import com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator;
import java.io.File;
/* loaded from: classes2.dex */
public class UnlimitedDiskCache extends BaseDiskCache {
    public UnlimitedDiskCache(File cacheDir) {
        super(cacheDir);
    }

    public UnlimitedDiskCache(File cacheDir, File reserveCacheDir) {
        super(cacheDir, reserveCacheDir);
    }

    public UnlimitedDiskCache(File cacheDir, File reserveCacheDir, FileNameGenerator fileNameGenerator) {
        super(cacheDir, reserveCacheDir, fileNameGenerator);
    }
}
