package com.nostra13.universalimageloader.core.imageaware;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.utils.C2073L;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public abstract class ViewAware implements ImageAware {
    public static final String WARN_CANT_SET_BITMAP = "Can't set a bitmap into view. You should call ImageLoader on UI thread for it.";
    public static final String WARN_CANT_SET_DRAWABLE = "Can't set a drawable into view. You should call ImageLoader on UI thread for it.";
    protected boolean checkActualViewSize;
    protected Reference<View> viewRef;

    protected abstract void setImageBitmapInto(Bitmap bitmap, View view);

    protected abstract void setImageDrawableInto(Drawable drawable, View view);

    public ViewAware(View view) {
        this(view, true);
    }

    public ViewAware(View view, boolean checkActualViewSize) {
        if (view == null) {
            throw new IllegalArgumentException("view must not be null");
        }
        this.viewRef = new WeakReference(view);
        this.checkActualViewSize = checkActualViewSize;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public int getWidth() {
        View view = this.viewRef.get();
        if (view != null) {
            ViewGroup.LayoutParams params = view.getLayoutParams();
            int width = 0;
            if (this.checkActualViewSize && params != null && params.width != -2) {
                width = view.getWidth();
            }
            return (width > 0 || params == null) ? width : params.width;
        }
        return 0;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public int getHeight() {
        View view = this.viewRef.get();
        if (view != null) {
            ViewGroup.LayoutParams params = view.getLayoutParams();
            int height = 0;
            if (this.checkActualViewSize && params != null && params.height != -2) {
                height = view.getHeight();
            }
            return (height > 0 || params == null) ? height : params.height;
        }
        return 0;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public ViewScaleType getScaleType() {
        return ViewScaleType.CROP;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    /* renamed from: getWrappedView */
    public View mo1856getWrappedView() {
        return this.viewRef.get();
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public boolean isCollected() {
        return this.viewRef.get() == null;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public int getId() {
        View view = this.viewRef.get();
        return view == null ? super.hashCode() : view.hashCode();
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public boolean setImageDrawable(Drawable drawable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            View view = this.viewRef.get();
            if (view == null) {
                return false;
            }
            setImageDrawableInto(drawable, view);
            return true;
        }
        C2073L.m1294w(WARN_CANT_SET_DRAWABLE, new Object[0]);
        return false;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public boolean setImageBitmap(Bitmap bitmap) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            View view = this.viewRef.get();
            if (view == null) {
                return false;
            }
            setImageBitmapInto(bitmap, view);
            return true;
        }
        C2073L.m1294w(WARN_CANT_SET_BITMAP, new Object[0]);
        return false;
    }
}
