package com.google.android.gms.common.images;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.p001v4.util.LruCache;
import android.util.Log;
import android.widget.ImageView;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgk;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public final class ImageManager {
    private static final Object zzgdb = new Object();
    private static HashSet<Uri> zzgdc = new HashSet<>();
    private static ImageManager zzgdd;
    private final Context mContext;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final ExecutorService zzgde = Executors.newFixedThreadPool(4);
    private final zza zzgdf = null;
    private final zzbgk zzgdg = new zzbgk();
    private final Map<com.google.android.gms.common.images.zza, ImageReceiver> zzgdh = new HashMap();
    private final Map<Uri, ImageReceiver> zzgdi = new HashMap();
    private final Map<Uri, Long> zzgdj = new HashMap();

    @KeepName
    /* loaded from: classes2.dex */
    final class ImageReceiver extends ResultReceiver {
        private final Uri mUri;
        private final ArrayList<com.google.android.gms.common.images.zza> zzgdk = new ArrayList<>();

        ImageReceiver(Uri uri) {
            super(new Handler(Looper.getMainLooper()));
            this.mUri = uri;
        }

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.zzgde.execute(new zzb(this.mUri, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }

        public final void zzalm() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.putExtra("com.google.android.gms.extras.uri", this.mUri);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            ImageManager.this.mContext.sendBroadcast(intent);
        }

        public final void zzb(com.google.android.gms.common.images.zza zzaVar) {
            com.google.android.gms.common.internal.zzc.zzgn("ImageReceiver.addImageRequest() must be called in the main thread");
            this.zzgdk.add(zzaVar);
        }

        public final void zzc(com.google.android.gms.common.images.zza zzaVar) {
            com.google.android.gms.common.internal.zzc.zzgn("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.zzgdk.remove(zzaVar);
        }
    }

    /* loaded from: classes2.dex */
    public interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zza extends LruCache<com.google.android.gms.common.images.zzb, Bitmap> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.p001v4.util.LruCache
        public final /* synthetic */ void entryRemoved(boolean z, com.google.android.gms.common.images.zzb zzbVar, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z, zzbVar, bitmap, bitmap2);
        }

        @Override // android.support.p001v4.util.LruCache
        protected final /* synthetic */ int sizeOf(com.google.android.gms.common.images.zzb zzbVar, Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            return bitmap2.getHeight() * bitmap2.getRowBytes();
        }
    }

    /* loaded from: classes2.dex */
    final class zzb implements Runnable {
        private final Uri mUri;
        private final ParcelFileDescriptor zzgdm;

        public zzb(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.mUri = uri;
            this.zzgdm = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                String valueOf = String.valueOf(Thread.currentThread());
                String valueOf2 = String.valueOf(Looper.getMainLooper().getThread());
                Log.e("Asserts", new StringBuilder(String.valueOf(valueOf).length() + 56 + String.valueOf(valueOf2).length()).append("checkNotMainThread: current thread ").append(valueOf).append(" IS the main thread ").append(valueOf2).append("!").toString());
                throw new IllegalStateException("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            }
            boolean z = false;
            Bitmap bitmap = null;
            if (this.zzgdm != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(this.zzgdm.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    String valueOf3 = String.valueOf(this.mUri);
                    Log.e("ImageManager", new StringBuilder(String.valueOf(valueOf3).length() + 34).append("OOM while loading bitmap for uri: ").append(valueOf3).toString(), e);
                    z = true;
                }
                try {
                    this.zzgdm.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.mHandler.post(new zzd(this.mUri, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                String valueOf4 = String.valueOf(this.mUri);
                Log.w("ImageManager", new StringBuilder(String.valueOf(valueOf4).length() + 32).append("Latch interrupted while posting ").append(valueOf4).toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class zzc implements Runnable {
        private final com.google.android.gms.common.images.zza zzgdn;

        public zzc(com.google.android.gms.common.images.zza zzaVar) {
            this.zzgdn = zzaVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.google.android.gms.common.internal.zzc.zzgn("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.zzgdh.get(this.zzgdn);
            if (imageReceiver != null) {
                ImageManager.this.zzgdh.remove(this.zzgdn);
                imageReceiver.zzc(this.zzgdn);
            }
            com.google.android.gms.common.images.zzb zzbVar = this.zzgdn.zzgdp;
            if (zzbVar.uri == null) {
                this.zzgdn.zza(ImageManager.this.mContext, ImageManager.this.zzgdg, true);
                return;
            }
            Bitmap zza = ImageManager.this.zza(zzbVar);
            if (zza != null) {
                this.zzgdn.zza(ImageManager.this.mContext, zza, true);
                return;
            }
            Long l = (Long) ImageManager.this.zzgdj.get(zzbVar.uri);
            if (l != null) {
                if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                    this.zzgdn.zza(ImageManager.this.mContext, ImageManager.this.zzgdg, true);
                    return;
                }
                ImageManager.this.zzgdj.remove(zzbVar.uri);
            }
            this.zzgdn.zza(ImageManager.this.mContext, ImageManager.this.zzgdg);
            ImageReceiver imageReceiver2 = (ImageReceiver) ImageManager.this.zzgdi.get(zzbVar.uri);
            if (imageReceiver2 == null) {
                imageReceiver2 = new ImageReceiver(zzbVar.uri);
                ImageManager.this.zzgdi.put(zzbVar.uri, imageReceiver2);
            }
            imageReceiver2.zzb(this.zzgdn);
            if (!(this.zzgdn instanceof com.google.android.gms.common.images.zzd)) {
                ImageManager.this.zzgdh.put(this.zzgdn, imageReceiver2);
            }
            synchronized (ImageManager.zzgdb) {
                if (!ImageManager.zzgdc.contains(zzbVar.uri)) {
                    ImageManager.zzgdc.add(zzbVar.uri);
                    imageReceiver2.zzalm();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    final class zzd implements Runnable {
        private final Bitmap mBitmap;
        private final Uri mUri;
        private final CountDownLatch zzapc;
        private boolean zzgdo;

        public zzd(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.mUri = uri;
            this.mBitmap = bitmap;
            this.zzgdo = z;
            this.zzapc = countDownLatch;
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.google.android.gms.common.internal.zzc.zzgn("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.mBitmap != null;
            if (ImageManager.this.zzgdf != null) {
                if (this.zzgdo) {
                    ImageManager.this.zzgdf.evictAll();
                    System.gc();
                    this.zzgdo = false;
                    ImageManager.this.mHandler.post(this);
                    return;
                } else if (z) {
                    ImageManager.this.zzgdf.put(new com.google.android.gms.common.images.zzb(this.mUri), this.mBitmap);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.zzgdi.remove(this.mUri);
            if (imageReceiver != null) {
                ArrayList arrayList = imageReceiver.zzgdk;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    com.google.android.gms.common.images.zza zzaVar = (com.google.android.gms.common.images.zza) arrayList.get(i);
                    if (z) {
                        zzaVar.zza(ImageManager.this.mContext, this.mBitmap, false);
                    } else {
                        ImageManager.this.zzgdj.put(this.mUri, Long.valueOf(SystemClock.elapsedRealtime()));
                        zzaVar.zza(ImageManager.this.mContext, ImageManager.this.zzgdg, false);
                    }
                    if (!(zzaVar instanceof com.google.android.gms.common.images.zzd)) {
                        ImageManager.this.zzgdh.remove(zzaVar);
                    }
                }
            }
            this.zzapc.countDown();
            synchronized (ImageManager.zzgdb) {
                ImageManager.zzgdc.remove(this.mUri);
            }
        }
    }

    private ImageManager(Context context, boolean z) {
        this.mContext = context.getApplicationContext();
    }

    public static ImageManager create(Context context) {
        if (zzgdd == null) {
            zzgdd = new ImageManager(context, false);
        }
        return zzgdd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Bitmap zza(com.google.android.gms.common.images.zzb zzbVar) {
        if (this.zzgdf == null) {
            return null;
        }
        return this.zzgdf.get(zzbVar);
    }

    @Hide
    private final void zza(com.google.android.gms.common.images.zza zzaVar) {
        com.google.android.gms.common.internal.zzc.zzgn("ImageManager.loadImage() must be called in the main thread");
        new zzc(zzaVar).run();
    }

    public final void loadImage(ImageView imageView, int i) {
        zza(new com.google.android.gms.common.images.zzc(imageView, i));
    }

    public final void loadImage(ImageView imageView, Uri uri) {
        zza(new com.google.android.gms.common.images.zzc(imageView, uri));
    }

    public final void loadImage(ImageView imageView, Uri uri, int i) {
        com.google.android.gms.common.images.zzc zzcVar = new com.google.android.gms.common.images.zzc(imageView, uri);
        zzcVar.zzgdr = i;
        zza(zzcVar);
    }

    public final void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        zza(new com.google.android.gms.common.images.zzd(onImageLoadedListener, uri));
    }

    public final void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i) {
        com.google.android.gms.common.images.zzd zzdVar = new com.google.android.gms.common.images.zzd(onImageLoadedListener, uri);
        zzdVar.zzgdr = i;
        zza(zzdVar);
    }
}
