package com.nostra13.universalimageloader.core.display;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
/* loaded from: classes2.dex */
public class CircleBitmapDisplayer implements BitmapDisplayer {
    protected final Integer strokeColor;
    protected final float strokeWidth;

    public CircleBitmapDisplayer() {
        this(null);
    }

    public CircleBitmapDisplayer(Integer strokeColor) {
        this(strokeColor, 0.0f);
    }

    public CircleBitmapDisplayer(Integer strokeColor, float strokeWidth) {
        this.strokeColor = strokeColor;
        this.strokeWidth = strokeWidth;
    }

    @Override // com.nostra13.universalimageloader.core.display.BitmapDisplayer
    public void display(Bitmap bitmap, ImageAware imageAware, LoadedFrom loadedFrom) {
        if (!(imageAware instanceof ImageViewAware)) {
            throw new IllegalArgumentException("ImageAware should wrap ImageView. ImageViewAware is expected.");
        }
        imageAware.setImageDrawable(new CircleDrawable(bitmap, this.strokeColor, this.strokeWidth));
    }

    /* loaded from: classes2.dex */
    public static class CircleDrawable extends Drawable {
        protected final BitmapShader bitmapShader;
        protected final RectF mBitmapRect;
        protected final RectF mRect = new RectF();
        protected final Paint paint = new Paint();
        protected float radius;
        protected final Paint strokePaint;
        protected float strokeRadius;
        protected final float strokeWidth;

        public CircleDrawable(Bitmap bitmap, Integer strokeColor, float strokeWidth) {
            this.radius = Math.min(bitmap.getWidth(), bitmap.getHeight()) / 2;
            this.bitmapShader = new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
            this.mBitmapRect = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
            this.paint.setAntiAlias(true);
            this.paint.setShader(this.bitmapShader);
            this.paint.setFilterBitmap(true);
            this.paint.setDither(true);
            if (strokeColor == null) {
                this.strokePaint = null;
            } else {
                this.strokePaint = new Paint();
                this.strokePaint.setStyle(Paint.Style.STROKE);
                this.strokePaint.setColor(strokeColor.intValue());
                this.strokePaint.setStrokeWidth(strokeWidth);
                this.strokePaint.setAntiAlias(true);
            }
            this.strokeWidth = strokeWidth;
            this.strokeRadius = this.radius - (strokeWidth / 2.0f);
        }

        @Override // android.graphics.drawable.Drawable
        protected void onBoundsChange(Rect bounds) {
            super.onBoundsChange(bounds);
            this.mRect.set(0.0f, 0.0f, bounds.width(), bounds.height());
            this.radius = Math.min(bounds.width(), bounds.height()) / 2;
            this.strokeRadius = this.radius - (this.strokeWidth / 2.0f);
            Matrix shaderMatrix = new Matrix();
            shaderMatrix.setRectToRect(this.mBitmapRect, this.mRect, Matrix.ScaleToFit.FILL);
            this.bitmapShader.setLocalMatrix(shaderMatrix);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.drawCircle(this.radius, this.radius, this.radius, this.paint);
            if (this.strokePaint != null) {
                canvas.drawCircle(this.radius, this.radius, this.strokeRadius, this.strokePaint);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int alpha) {
            this.paint.setAlpha(alpha);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter cf) {
            this.paint.setColorFilter(cf);
        }
    }
}
