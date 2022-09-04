package com.nostra13.universalimageloader.core.imageaware;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
/* loaded from: classes2.dex */
public interface ImageAware {
    int getHeight();

    int getId();

    ViewScaleType getScaleType();

    int getWidth();

    /* renamed from: getWrappedView */
    View mo1856getWrappedView();

    boolean isCollected();

    boolean setImageBitmap(Bitmap bitmap);

    boolean setImageDrawable(Drawable drawable);
}
