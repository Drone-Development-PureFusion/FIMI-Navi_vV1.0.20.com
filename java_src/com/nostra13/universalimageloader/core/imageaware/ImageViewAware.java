package com.nostra13.universalimageloader.core.imageaware;

import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.utils.C2073L;
import java.lang.reflect.Field;
/* loaded from: classes2.dex */
public class ImageViewAware extends ViewAware {
    public ImageViewAware(ImageView imageView) {
        super(imageView);
    }

    public ImageViewAware(ImageView imageView, boolean checkActualViewSize) {
        super(imageView, checkActualViewSize);
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware, com.nostra13.universalimageloader.core.imageaware.ImageAware
    public int getWidth() {
        ImageView imageView;
        int width = super.getWidth();
        if (width <= 0 && (imageView = (ImageView) this.viewRef.get()) != null) {
            return getImageViewFieldValue(imageView, "mMaxWidth");
        }
        return width;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware, com.nostra13.universalimageloader.core.imageaware.ImageAware
    public int getHeight() {
        ImageView imageView;
        int height = super.getHeight();
        if (height <= 0 && (imageView = (ImageView) this.viewRef.get()) != null) {
            return getImageViewFieldValue(imageView, "mMaxHeight");
        }
        return height;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware, com.nostra13.universalimageloader.core.imageaware.ImageAware
    public ViewScaleType getScaleType() {
        ImageView imageView = (ImageView) this.viewRef.get();
        return imageView != null ? ViewScaleType.fromImageView(imageView) : super.getScaleType();
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware, com.nostra13.universalimageloader.core.imageaware.ImageAware
    /* renamed from: getWrappedView  reason: collision with other method in class */
    public ImageView mo1856getWrappedView() {
        return (ImageView) super.mo1856getWrappedView();
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware
    protected void setImageDrawableInto(Drawable drawable, View view) {
        ((ImageView) view).setImageDrawable(drawable);
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable) drawable).start();
        }
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ViewAware
    protected void setImageBitmapInto(Bitmap bitmap, View view) {
        ((ImageView) view).setImageBitmap(bitmap);
    }

    private static int getImageViewFieldValue(Object object, String fieldName) {
        try {
            Field field = ImageView.class.getDeclaredField(fieldName);
            field.setAccessible(true);
            int fieldValue = ((Integer) field.get(object)).intValue();
            if (fieldValue <= 0 || fieldValue >= Integer.MAX_VALUE) {
                return 0;
            }
            return fieldValue;
        } catch (Exception e) {
            C2073L.m1297e(e);
            return 0;
        }
    }
}
