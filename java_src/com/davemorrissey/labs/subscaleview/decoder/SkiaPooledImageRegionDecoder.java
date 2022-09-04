package com.davemorrissey.labs.subscaleview.decoder;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.support.p001v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.facebook.common.time.Clock;
import java.io.File;
import java.io.FileFilter;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class SkiaPooledImageRegionDecoder implements ImageRegionDecoder {
    private static final String ASSET_PREFIX = "file:///android_asset/";
    private static final String FILE_PREFIX = "file://";
    private static final String RESOURCE_PREFIX = "android.resource://";
    private static final String TAG = SkiaPooledImageRegionDecoder.class.getSimpleName();
    private static boolean debug = false;
    private final Bitmap.Config bitmapConfig;
    private Context context;
    private final ReadWriteLock decoderLock;
    private DecoderPool decoderPool;
    private long fileLength;
    private Point imageDimensions;
    private final AtomicBoolean lazyInited;
    private Uri uri;

    public SkiaPooledImageRegionDecoder() {
        this(null);
    }

    public SkiaPooledImageRegionDecoder(Bitmap.Config bitmapConfig) {
        this.decoderPool = new DecoderPool();
        this.decoderLock = new ReentrantReadWriteLock(true);
        this.fileLength = Clock.MAX_TIME;
        this.imageDimensions = new Point(0, 0);
        this.lazyInited = new AtomicBoolean(false);
        Bitmap.Config globalBitmapConfig = SubsamplingScaleImageView.getPreferredBitmapConfig();
        if (bitmapConfig != null) {
            this.bitmapConfig = bitmapConfig;
        } else if (globalBitmapConfig != null) {
            this.bitmapConfig = globalBitmapConfig;
        } else {
            this.bitmapConfig = Bitmap.Config.RGB_565;
        }
    }

    public static void setDebug(boolean debug2) {
        debug = debug2;
    }

    @Override // com.davemorrissey.labs.subscaleview.decoder.ImageRegionDecoder
    public Point init(Context context, Uri uri) throws Exception {
        this.context = context;
        this.uri = uri;
        initialiseDecoder();
        return this.imageDimensions;
    }

    private void lazyInit() {
        if (this.lazyInited.compareAndSet(false, true) && this.fileLength < Clock.MAX_TIME) {
            debug("Starting lazy init of additional decoders");
            Thread thread = new Thread() { // from class: com.davemorrissey.labs.subscaleview.decoder.SkiaPooledImageRegionDecoder.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    while (SkiaPooledImageRegionDecoder.this.decoderPool != null && SkiaPooledImageRegionDecoder.this.allowAdditionalDecoder(SkiaPooledImageRegionDecoder.this.decoderPool.size(), SkiaPooledImageRegionDecoder.this.fileLength)) {
                        try {
                            if (SkiaPooledImageRegionDecoder.this.decoderPool != null) {
                                long start = System.currentTimeMillis();
                                SkiaPooledImageRegionDecoder.this.debug("Starting decoder");
                                SkiaPooledImageRegionDecoder.this.initialiseDecoder();
                                long end = System.currentTimeMillis();
                                SkiaPooledImageRegionDecoder.this.debug("Started decoder, took " + (end - start) + "ms");
                            }
                        } catch (Exception e) {
                            SkiaPooledImageRegionDecoder.this.debug("Failed to start decoder: " + e.getMessage());
                        }
                    }
                }
            };
            thread.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initialiseDecoder() throws Exception {
        BitmapRegionDecoder decoder;
        Resources res;
        String uriString = this.uri.toString();
        long fileLength = Clock.MAX_TIME;
        if (uriString.startsWith(RESOURCE_PREFIX)) {
            String packageName = this.uri.getAuthority();
            if (this.context.getPackageName().equals(packageName)) {
                res = this.context.getResources();
            } else {
                PackageManager pm = this.context.getPackageManager();
                res = pm.getResourcesForApplication(packageName);
            }
            int id = 0;
            List<String> segments = this.uri.getPathSegments();
            int size = segments.size();
            if (size == 2 && segments.get(0).equals("drawable")) {
                String resName = segments.get(1);
                id = res.getIdentifier(resName, "drawable", packageName);
            } else if (size == 1 && TextUtils.isDigitsOnly(segments.get(0))) {
                try {
                    id = Integer.parseInt(segments.get(0));
                } catch (NumberFormatException e) {
                }
            }
            try {
                fileLength = this.context.getResources().openRawResourceFd(id).getLength();
            } catch (Exception e2) {
            }
            decoder = BitmapRegionDecoder.newInstance(this.context.getResources().openRawResource(id), false);
        } else if (uriString.startsWith(ASSET_PREFIX)) {
            String assetName = uriString.substring(ASSET_PREFIX.length());
            try {
                fileLength = this.context.getAssets().openFd(assetName).getLength();
            } catch (Exception e3) {
            }
            decoder = BitmapRegionDecoder.newInstance(this.context.getAssets().open(assetName, 1), false);
        } else if (uriString.startsWith(FILE_PREFIX)) {
            decoder = BitmapRegionDecoder.newInstance(uriString.substring(FILE_PREFIX.length()), false);
            try {
                File file = new File(uriString);
                if (file.exists()) {
                    fileLength = file.length();
                }
            } catch (Exception e4) {
            }
        } else {
            InputStream inputStream = null;
            try {
                ContentResolver contentResolver = this.context.getContentResolver();
                inputStream = contentResolver.openInputStream(this.uri);
                decoder = BitmapRegionDecoder.newInstance(inputStream, false);
                try {
                    AssetFileDescriptor descriptor = contentResolver.openAssetFileDescriptor(this.uri, "r");
                    if (descriptor != null) {
                        fileLength = descriptor.getLength();
                    }
                } catch (Exception e5) {
                }
            } finally {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e6) {
                    }
                }
            }
        }
        this.fileLength = fileLength;
        this.imageDimensions.set(decoder.getWidth(), decoder.getHeight());
        this.decoderLock.writeLock().lock();
        try {
            if (this.decoderPool != null) {
                this.decoderPool.add(decoder);
            }
        } finally {
            this.decoderLock.writeLock().unlock();
        }
    }

    @Override // com.davemorrissey.labs.subscaleview.decoder.ImageRegionDecoder
    public Bitmap decodeRegion(Rect sRect, int sampleSize) {
        debug("Decode region " + sRect + " on thread " + Thread.currentThread().getName());
        if (sRect.width() < this.imageDimensions.x || sRect.height() < this.imageDimensions.y) {
            lazyInit();
        }
        this.decoderLock.readLock().lock();
        try {
            if (this.decoderPool != null) {
                BitmapRegionDecoder decoder = this.decoderPool.acquire();
                if (decoder != null && !decoder.isRecycled()) {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inSampleSize = sampleSize;
                    options.inPreferredConfig = this.bitmapConfig;
                    Bitmap bitmap = decoder.decodeRegion(sRect, options);
                    if (bitmap == null) {
                        throw new RuntimeException("Skia image decoder returned null bitmap - image format may not be supported");
                    }
                    if (decoder != null) {
                        this.decoderPool.release(decoder);
                    }
                    return bitmap;
                } else if (decoder != null) {
                    this.decoderPool.release(decoder);
                }
            }
            throw new IllegalStateException("Cannot decode region after decoder has been recycled");
        } finally {
            this.decoderLock.readLock().unlock();
        }
    }

    @Override // com.davemorrissey.labs.subscaleview.decoder.ImageRegionDecoder
    public synchronized boolean isReady() {
        boolean z;
        if (this.decoderPool != null) {
            if (!this.decoderPool.isEmpty()) {
                z = true;
            }
        }
        z = false;
        return z;
    }

    @Override // com.davemorrissey.labs.subscaleview.decoder.ImageRegionDecoder
    public synchronized void recycle() {
        this.decoderLock.writeLock().lock();
        if (this.decoderPool != null) {
            this.decoderPool.recycle();
            this.decoderPool = null;
            this.context = null;
            this.uri = null;
        }
        this.decoderLock.writeLock().unlock();
    }

    protected boolean allowAdditionalDecoder(int numberOfDecoders, long fileLength) {
        if (numberOfDecoders >= 4) {
            debug("No additional decoders allowed, reached hard limit (4)");
            return false;
        } else if (numberOfDecoders * fileLength > 20971520) {
            debug("No additional encoders allowed, reached hard memory limit (20Mb)");
            return false;
        } else if (numberOfDecoders >= getNumberOfCores()) {
            debug("No additional encoders allowed, limited by CPU cores (" + getNumberOfCores() + ")");
            return false;
        } else if (isLowMemory()) {
            debug("No additional encoders allowed, memory is low");
            return false;
        } else {
            debug("Additional decoder allowed, current count is " + numberOfDecoders + ", estimated native memory " + ((numberOfDecoders * fileLength) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) + "Mb");
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DecoderPool {
        private final Semaphore available;
        private Map<BitmapRegionDecoder, Boolean> decoders;

        private DecoderPool() {
            this.available = new Semaphore(0, true);
            this.decoders = new ConcurrentHashMap();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized boolean isEmpty() {
            return this.decoders.isEmpty();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized int size() {
            return this.decoders.size();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public BitmapRegionDecoder acquire() {
            this.available.acquireUninterruptibly();
            return getNextAvailable();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void release(BitmapRegionDecoder decoder) {
            if (markAsUnused(decoder)) {
                this.available.release();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void add(BitmapRegionDecoder decoder) {
            this.decoders.put(decoder, false);
            this.available.release();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void recycle() {
            while (!this.decoders.isEmpty()) {
                BitmapRegionDecoder decoder = acquire();
                decoder.recycle();
                this.decoders.remove(decoder);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
            r0.setValue(true);
            r1 = r0.getKey();
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private synchronized BitmapRegionDecoder getNextAvailable() {
            BitmapRegionDecoder bitmapRegionDecoder;
            Iterator<Map.Entry<BitmapRegionDecoder, Boolean>> it = this.decoders.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    bitmapRegionDecoder = null;
                    break;
                }
                Map.Entry<BitmapRegionDecoder, Boolean> entry = it.next();
                if (!entry.getValue().booleanValue()) {
                    break;
                }
            }
            return bitmapRegionDecoder;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
            if (r0.getValue().booleanValue() == false) goto L18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
            r0.setValue(false);
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
            r1 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0035, code lost:
            r1 = false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private synchronized boolean markAsUnused(BitmapRegionDecoder decoder) {
            boolean z;
            Iterator<Map.Entry<BitmapRegionDecoder, Boolean>> it = this.decoders.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                Map.Entry<BitmapRegionDecoder, Boolean> entry = it.next();
                if (decoder == entry.getKey()) {
                    break;
                }
            }
            return z;
        }
    }

    private int getNumberOfCores() {
        return Build.VERSION.SDK_INT >= 17 ? Runtime.getRuntime().availableProcessors() : getNumCoresOldPhones();
    }

    private int getNumCoresOldPhones() {
        try {
            File dir = new File("/sys/devices/system/cpu/");
            File[] files = dir.listFiles(new FileFilter() { // from class: com.davemorrissey.labs.subscaleview.decoder.SkiaPooledImageRegionDecoder.1CpuFilter
                @Override // java.io.FileFilter
                public boolean accept(File pathname) {
                    return Pattern.matches("cpu[0-9]+", pathname.getName());
                }
            });
            return files.length;
        } catch (Exception e) {
            return 1;
        }
    }

    private boolean isLowMemory() {
        ActivityManager activityManager = (ActivityManager) this.context.getSystemService("activity");
        if (activityManager != null) {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.lowMemory;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void debug(String message) {
        if (debug) {
            Log.d(TAG, message);
        }
    }
}
