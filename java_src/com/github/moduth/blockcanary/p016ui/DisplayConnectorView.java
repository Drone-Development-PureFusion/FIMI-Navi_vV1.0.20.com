package com.github.moduth.blockcanary.p016ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
/* renamed from: com.github.moduth.blockcanary.ui.DisplayConnectorView */
/* loaded from: classes2.dex */
public final class DisplayConnectorView extends View {
    private Bitmap cache;
    private Type type = Type.NODE;
    private static final Paint iconPaint = new Paint(1);
    private static final Paint rootPaint = new Paint(1);
    private static final Paint leakPaint = new Paint(1);
    private static final Paint clearPaint = new Paint(1);

    /* renamed from: com.github.moduth.blockcanary.ui.DisplayConnectorView$Type */
    /* loaded from: classes2.dex */
    public enum Type {
        START,
        NODE,
        END
    }

    static {
        iconPaint.setColor(-4539718);
        rootPaint.setColor(-8083771);
        leakPaint.setColor(-5155506);
        clearPaint.setColor(0);
        clearPaint.setXfermode(BlockCanaryUi.CLEAR_XFER_MODE);
    }

    public DisplayConnectorView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        if (this.cache != null && (this.cache.getWidth() != width || this.cache.getHeight() != height)) {
            this.cache.recycle();
            this.cache = null;
        }
        if (this.cache == null) {
            this.cache = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Canvas cacheCanvas = new Canvas(this.cache);
            float halfWidth = width / 2.0f;
            float halfHeight = height / 2.0f;
            float thirdWidth = width / 3.0f;
            float strokeSize = BlockCanaryUi.dpToPixel(4.0f, getResources());
            iconPaint.setStrokeWidth(strokeSize);
            rootPaint.setStrokeWidth(strokeSize);
            switch (this.type) {
                case NODE:
                    cacheCanvas.drawLine(halfWidth, 0.0f, halfWidth, height, iconPaint);
                    cacheCanvas.drawCircle(halfWidth, halfHeight, halfWidth, iconPaint);
                    cacheCanvas.drawCircle(halfWidth, halfHeight, thirdWidth, clearPaint);
                    break;
                case START:
                    float radiusClear = halfWidth - (strokeSize / 2.0f);
                    cacheCanvas.drawRect(0.0f, 0.0f, width, radiusClear, rootPaint);
                    cacheCanvas.drawCircle(0.0f, radiusClear, radiusClear, clearPaint);
                    cacheCanvas.drawCircle(width, radiusClear, radiusClear, clearPaint);
                    cacheCanvas.drawLine(halfWidth, 0.0f, halfWidth, halfHeight, rootPaint);
                    cacheCanvas.drawLine(halfWidth, halfHeight, halfWidth, height, iconPaint);
                    cacheCanvas.drawCircle(halfWidth, halfHeight, halfWidth, iconPaint);
                    cacheCanvas.drawCircle(halfWidth, halfHeight, thirdWidth, clearPaint);
                    break;
                default:
                    cacheCanvas.drawLine(halfWidth, 0.0f, halfWidth, halfHeight, iconPaint);
                    cacheCanvas.drawCircle(halfWidth, halfHeight, thirdWidth, leakPaint);
                    break;
            }
        }
        canvas.drawBitmap(this.cache, 0.0f, 0.0f, (Paint) null);
    }

    public void setType(Type type) {
        if (type != this.type) {
            this.type = type;
            if (this.cache != null) {
                this.cache.recycle();
                this.cache = null;
            }
            invalidate();
        }
    }
}
