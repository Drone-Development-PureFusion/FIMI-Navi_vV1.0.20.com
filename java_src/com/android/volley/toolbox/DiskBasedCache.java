package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.Cache;
import com.android.volley.VolleyLog;
import com.fimi.kernel.connect.tcp.SocketOption;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class DiskBasedCache implements Cache {
    private static final int CACHE_MAGIC = 538247942;
    private static final int DEFAULT_DISK_USAGE_BYTES = 5242880;
    private static final float HYSTERESIS_FACTOR = 0.9f;
    private final Map<String, CacheHeader> mEntries;
    private final int mMaxCacheSizeInBytes;
    private final File mRootDirectory;
    private long mTotalSize;

    public DiskBasedCache(File rootDirectory, int maxCacheSizeInBytes) {
        this.mEntries = new LinkedHashMap(16, 0.75f, true);
        this.mTotalSize = 0L;
        this.mRootDirectory = rootDirectory;
        this.mMaxCacheSizeInBytes = maxCacheSizeInBytes;
    }

    public DiskBasedCache(File rootDirectory) {
        this(rootDirectory, DEFAULT_DISK_USAGE_BYTES);
    }

    @Override // com.android.volley.Cache
    public synchronized void clear() {
        File[] files = this.mRootDirectory.listFiles();
        if (files != null) {
            for (File file : files) {
                file.delete();
            }
        }
        this.mEntries.clear();
        this.mTotalSize = 0L;
        VolleyLog.m1425d("Cache cleared.", new Object[0]);
    }

    @Override // com.android.volley.Cache
    public synchronized Cache.Entry get(String key) {
        CountingInputStream cis;
        Cache.Entry entry = null;
        synchronized (this) {
            CacheHeader entry2 = this.mEntries.get(key);
            if (entry2 != null) {
                File file = getFileForKey(key);
                CountingInputStream cis2 = null;
                try {
                    try {
                        cis = new CountingInputStream(new BufferedInputStream(new FileInputStream(file)));
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        CacheHeader.readHeader(cis);
                        byte[] data = streamToBytes(cis, (int) (file.length() - cis.bytesRead));
                        Cache.Entry cacheEntry = entry2.toCacheEntry(data);
                        if (cis != null) {
                            try {
                                cis.close();
                            } catch (IOException e) {
                            }
                        }
                        entry = cacheEntry;
                    } catch (IOException e2) {
                        e = e2;
                        cis2 = cis;
                        VolleyLog.m1425d("%s: %s", file.getAbsolutePath(), e.toString());
                        remove(key);
                        if (cis2 != null) {
                            try {
                                cis2.close();
                            } catch (IOException e3) {
                            }
                        }
                        return entry;
                    } catch (NegativeArraySizeException e4) {
                        e = e4;
                        cis2 = cis;
                        VolleyLog.m1425d("%s: %s", file.getAbsolutePath(), e.toString());
                        remove(key);
                        if (cis2 != null) {
                            try {
                                cis2.close();
                            } catch (IOException e5) {
                            }
                        }
                        return entry;
                    } catch (Throwable th2) {
                        th = th2;
                        cis2 = cis;
                        if (cis2 != null) {
                            try {
                                cis2.close();
                            } catch (IOException e6) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException e7) {
                    e = e7;
                } catch (NegativeArraySizeException e8) {
                    e = e8;
                }
            }
        }
        return entry;
    }

    @Override // com.android.volley.Cache
    public synchronized void initialize() {
        BufferedInputStream fis;
        if (this.mRootDirectory.exists()) {
            File[] files = this.mRootDirectory.listFiles();
            if (files != null) {
                for (File file : files) {
                    BufferedInputStream fis2 = null;
                    try {
                        try {
                            fis = new BufferedInputStream(new FileInputStream(file));
                        } catch (IOException e) {
                        }
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        CacheHeader entry = CacheHeader.readHeader(fis);
                        entry.size = file.length();
                        putEntry(entry.key, entry);
                        if (fis != null) {
                            try {
                                fis.close();
                            } catch (IOException e2) {
                            }
                        }
                    } catch (IOException e3) {
                        fis2 = fis;
                        if (file != null) {
                            file.delete();
                        }
                        if (fis2 != null) {
                            try {
                                fis2.close();
                            } catch (IOException e4) {
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fis2 = fis;
                        if (fis2 != null) {
                            try {
                                fis2.close();
                            } catch (IOException e5) {
                            }
                        }
                        throw th;
                    }
                }
            }
        } else if (!this.mRootDirectory.mkdirs()) {
            VolleyLog.m1424e("Unable to create cache dir %s", this.mRootDirectory.getAbsolutePath());
        }
    }

    @Override // com.android.volley.Cache
    public synchronized void invalidate(String key, boolean fullExpire) {
        Cache.Entry entry = get(key);
        if (entry != null) {
            entry.softTtl = 0L;
            if (fullExpire) {
                entry.ttl = 0L;
            }
            put(key, entry);
        }
    }

    @Override // com.android.volley.Cache
    public synchronized void put(String key, Cache.Entry entry) {
        BufferedOutputStream fos;
        CacheHeader e;
        boolean success;
        pruneIfNeeded(entry.data.length);
        File file = getFileForKey(key);
        try {
            fos = new BufferedOutputStream(new FileOutputStream(file));
            e = new CacheHeader(key, entry);
            success = e.writeHeader(fos);
        } catch (IOException e2) {
            boolean deleted = file.delete();
            if (!deleted) {
                VolleyLog.m1425d("Could not clean up file %s", file.getAbsolutePath());
            }
        }
        if (!success) {
            fos.close();
            VolleyLog.m1425d("Failed to write header for %s", file.getAbsolutePath());
            throw new IOException();
        }
        fos.write(entry.data);
        fos.close();
        putEntry(key, e);
    }

    @Override // com.android.volley.Cache
    public synchronized void remove(String key) {
        boolean deleted = getFileForKey(key).delete();
        removeEntry(key);
        if (!deleted) {
            VolleyLog.m1425d("Could not delete cache entry for key=%s, filename=%s", key, getFilenameForKey(key));
        }
    }

    private String getFilenameForKey(String key) {
        int firstHalfLength = key.length() / 2;
        String localFilename = String.valueOf(key.substring(0, firstHalfLength).hashCode());
        return localFilename + String.valueOf(key.substring(firstHalfLength).hashCode());
    }

    public File getFileForKey(String key) {
        return new File(this.mRootDirectory, getFilenameForKey(key));
    }

    private void pruneIfNeeded(int neededSpace) {
        if (this.mTotalSize + neededSpace >= this.mMaxCacheSizeInBytes) {
            if (VolleyLog.DEBUG) {
                VolleyLog.m1422v("Pruning old cache entries.", new Object[0]);
            }
            long before = this.mTotalSize;
            int prunedFiles = 0;
            long startTime = SystemClock.elapsedRealtime();
            Iterator<Map.Entry<String, CacheHeader>> iterator = this.mEntries.entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry<String, CacheHeader> entry = iterator.next();
                CacheHeader e = entry.getValue();
                boolean deleted = getFileForKey(e.key).delete();
                if (deleted) {
                    this.mTotalSize -= e.size;
                } else {
                    VolleyLog.m1425d("Could not delete cache entry for key=%s, filename=%s", e.key, getFilenameForKey(e.key));
                }
                iterator.remove();
                prunedFiles++;
                if (((float) (this.mTotalSize + neededSpace)) < this.mMaxCacheSizeInBytes * HYSTERESIS_FACTOR) {
                    break;
                }
            }
            if (VolleyLog.DEBUG) {
                VolleyLog.m1422v("pruned %d files, %d bytes, %d ms", Integer.valueOf(prunedFiles), Long.valueOf(this.mTotalSize - before), Long.valueOf(SystemClock.elapsedRealtime() - startTime));
            }
        }
    }

    private void putEntry(String key, CacheHeader entry) {
        if (!this.mEntries.containsKey(key)) {
            this.mTotalSize += entry.size;
        } else {
            CacheHeader oldEntry = this.mEntries.get(key);
            this.mTotalSize += entry.size - oldEntry.size;
        }
        this.mEntries.put(key, entry);
    }

    private void removeEntry(String key) {
        CacheHeader entry = this.mEntries.get(key);
        if (entry != null) {
            this.mTotalSize -= entry.size;
            this.mEntries.remove(key);
        }
    }

    private static byte[] streamToBytes(InputStream in, int length) throws IOException {
        byte[] bytes = new byte[length];
        int pos = 0;
        while (pos < length) {
            int count = in.read(bytes, pos, length - pos);
            if (count == -1) {
                break;
            }
            pos += count;
        }
        if (pos != length) {
            throw new IOException("Expected " + length + " bytes, read " + pos + " bytes");
        }
        return bytes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class CacheHeader {
        public String etag;
        public String key;
        public long lastModified;
        public Map<String, String> responseHeaders;
        public long serverDate;
        public long size;
        public long softTtl;
        public long ttl;

        private CacheHeader() {
        }

        public CacheHeader(String key, Cache.Entry entry) {
            this.key = key;
            this.size = entry.data.length;
            this.etag = entry.etag;
            this.serverDate = entry.serverDate;
            this.lastModified = entry.lastModified;
            this.ttl = entry.ttl;
            this.softTtl = entry.softTtl;
            this.responseHeaders = entry.responseHeaders;
        }

        public static CacheHeader readHeader(InputStream is) throws IOException {
            CacheHeader entry = new CacheHeader();
            int magic = DiskBasedCache.readInt(is);
            if (magic != DiskBasedCache.CACHE_MAGIC) {
                throw new IOException();
            }
            entry.key = DiskBasedCache.readString(is);
            entry.etag = DiskBasedCache.readString(is);
            if (entry.etag.equals("")) {
                entry.etag = null;
            }
            entry.serverDate = DiskBasedCache.readLong(is);
            entry.lastModified = DiskBasedCache.readLong(is);
            entry.ttl = DiskBasedCache.readLong(is);
            entry.softTtl = DiskBasedCache.readLong(is);
            entry.responseHeaders = DiskBasedCache.readStringStringMap(is);
            return entry;
        }

        public Cache.Entry toCacheEntry(byte[] data) {
            Cache.Entry e = new Cache.Entry();
            e.data = data;
            e.etag = this.etag;
            e.serverDate = this.serverDate;
            e.lastModified = this.lastModified;
            e.ttl = this.ttl;
            e.softTtl = this.softTtl;
            e.responseHeaders = this.responseHeaders;
            return e;
        }

        public boolean writeHeader(OutputStream os) {
            try {
                DiskBasedCache.writeInt(os, DiskBasedCache.CACHE_MAGIC);
                DiskBasedCache.writeString(os, this.key);
                DiskBasedCache.writeString(os, this.etag == null ? "" : this.etag);
                DiskBasedCache.writeLong(os, this.serverDate);
                DiskBasedCache.writeLong(os, this.lastModified);
                DiskBasedCache.writeLong(os, this.ttl);
                DiskBasedCache.writeLong(os, this.softTtl);
                DiskBasedCache.writeStringStringMap(this.responseHeaders, os);
                os.flush();
                return true;
            } catch (IOException e) {
                VolleyLog.m1425d("%s", e.toString());
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class CountingInputStream extends FilterInputStream {
        private int bytesRead;

        private CountingInputStream(InputStream in) {
            super(in);
            this.bytesRead = 0;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int result = super.read();
            if (result != -1) {
                this.bytesRead++;
            }
            return result;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] buffer, int offset, int count) throws IOException {
            int result = super.read(buffer, offset, count);
            if (result != -1) {
                this.bytesRead += result;
            }
            return result;
        }
    }

    private static int read(InputStream is) throws IOException {
        int b = is.read();
        if (b == -1) {
            throw new EOFException();
        }
        return b;
    }

    static void writeInt(OutputStream os, int n) throws IOException {
        os.write((n >> 0) & 255);
        os.write((n >> 8) & 255);
        os.write((n >> 16) & 255);
        os.write((n >> 24) & 255);
    }

    static int readInt(InputStream is) throws IOException {
        int n = 0 | (read(is) << 0);
        return n | (read(is) << 8) | (read(is) << 16) | (read(is) << 24);
    }

    static void writeLong(OutputStream os, long n) throws IOException {
        os.write((byte) (n >>> 0));
        os.write((byte) (n >>> 8));
        os.write((byte) (n >>> 16));
        os.write((byte) (n >>> 24));
        os.write((byte) (n >>> 32));
        os.write((byte) (n >>> 40));
        os.write((byte) (n >>> 48));
        os.write((byte) (n >>> 56));
    }

    static long readLong(InputStream is) throws IOException {
        long n = 0 | ((read(is) & 255) << 0);
        return n | ((read(is) & 255) << 8) | ((read(is) & 255) << 16) | ((read(is) & 255) << 24) | ((read(is) & 255) << 32) | ((read(is) & 255) << 40) | ((read(is) & 255) << 48) | ((read(is) & 255) << 56);
    }

    static void writeString(OutputStream os, String s) throws IOException {
        byte[] b = s.getBytes(SocketOption.DEFAULT_CHARSET);
        writeLong(os, b.length);
        os.write(b, 0, b.length);
    }

    static String readString(InputStream is) throws IOException {
        int n = (int) readLong(is);
        byte[] b = streamToBytes(is, n);
        return new String(b, SocketOption.DEFAULT_CHARSET);
    }

    static void writeStringStringMap(Map<String, String> map, OutputStream os) throws IOException {
        if (map != null) {
            writeInt(os, map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                writeString(os, entry.getKey());
                writeString(os, entry.getValue());
            }
            return;
        }
        writeInt(os, 0);
    }

    static Map<String, String> readStringStringMap(InputStream is) throws IOException {
        int size = readInt(is);
        Map<String, String> result = size == 0 ? Collections.emptyMap() : new HashMap<>(size);
        for (int i = 0; i < size; i++) {
            String key = readString(is).intern();
            String value = readString(is).intern();
            result.put(key, value);
        }
        return result;
    }
}
