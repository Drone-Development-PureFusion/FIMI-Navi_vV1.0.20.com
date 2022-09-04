package com.github.moduth.blockcanary.p016ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
/* renamed from: com.github.moduth.blockcanary.ui.MoreDetailsView */
/* loaded from: classes2.dex */
public final class MoreDetailsView extends View {
    private final Paint mIconPaint = new Paint(1);
    private boolean mFolding = true;

    public MoreDetailsView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mIconPaint.setStrokeWidth(BlockCanaryUi.dpToPixel(2.0f, getResources()));
        this.mIconPaint.setColor(-8083771);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        int halfHeight = height / 2;
        int halfWidth = width / 2;
        canvas.drawLine(0.0f, halfHeight, width, halfHeight, this.mIconPaint);
        if (this.mFolding) {
            canvas.drawLine(halfWidth, 0.0f, halfWidth, height, this.mIconPaint);
        }
    }

    public void setFolding(boolean folding) {
        if (folding != this.mFolding) {
            this.mFolding = folding;
            invalidate();
        }
    }
}
