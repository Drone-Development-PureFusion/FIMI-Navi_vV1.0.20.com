package com.fimi.app.x8s.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes.dex */
public class X8FrequencyPoint extends View {
    int colorG;
    int colorR;
    int colorW;
    int colorY;
    private Paint dashPaint;
    int lineW;
    private Paint mPaint;

    /* renamed from: pW */
    int f160pW;
    private int[] pencent;

    public X8FrequencyPoint(Context context) {
        super(context);
        this.colorR = -909023;
        this.colorY = -17920;
        this.colorG = -13959424;
        this.colorW = -2130706433;
        this.f160pW = 0;
        this.lineW = 0;
        this.pencent = new int[]{90, 50, 20, 50, 90};
    }

    public X8FrequencyPoint(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.colorR = -909023;
        this.colorY = -17920;
        this.colorG = -13959424;
        this.colorW = -2130706433;
        this.f160pW = 0;
        this.lineW = 0;
        this.pencent = new int[]{90, 50, 20, 50, 90};
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.lineW = dip2px(getContext(), 1.0f);
        this.mPaint.setStrokeWidth(this.lineW);
        this.dashPaint = new Paint();
        this.dashPaint.setStyle(Paint.Style.STROKE);
        this.dashPaint.setAntiAlias(true);
        this.dashPaint.setStrokeWidth(1.0f);
        this.dashPaint.setColor(this.colorW);
        this.f160pW = dip2px(getContext(), 4.0f);
    }

    public X8FrequencyPoint(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.colorR = -909023;
        this.colorY = -17920;
        this.colorG = -13959424;
        this.colorW = -2130706433;
        this.f160pW = 0;
        this.lineW = 0;
        this.pencent = new int[]{90, 50, 20, 50, 90};
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mPaint.setColor(this.colorW);
        this.mPaint.setStyle(Paint.Style.STROKE);
        canvas.drawRect(new Rect(0, 0, getWidth(), getHeight()), this.mPaint);
        setLayerType(1, null);
        this.dashPaint.setPathEffect(new DashPathEffect(new float[]{10.0f, 5.0f}, 0.0f));
        canvas.drawLine(this.lineW + 0, getHeight() / 3.0f, getWidth() - this.lineW, getHeight() / 3.0f, this.dashPaint);
        canvas.drawLine(this.lineW + 0, (getHeight() * 2) / 3.0f, getWidth() - this.lineW, (getHeight() * 2) / 3.0f, this.dashPaint);
        int w = getWidth() - (this.lineW * 2);
        int h = getHeight() - (this.lineW * 2);
        for (int i = 1; i < 6; i++) {
            float l = ((w * i) / 6.0f) - (this.f160pW * 0.5f);
            float r = ((w * i) / 6.0f) + (this.f160pW * 0.5f);
            float t = ((this.pencent[i - 1] * h) / 100.0f) + this.lineW;
            float b = getHeight() - this.lineW;
            this.mPaint.setStyle(Paint.Style.FILL);
            if (this.pencent[i - 1] >= 66) {
                this.mPaint.setColor(this.colorG);
            } else if (this.pencent[i - 1] >= 33) {
                this.mPaint.setColor(this.colorY);
            } else {
                this.mPaint.setColor(this.colorR);
            }
            canvas.drawRect(new RectF(l, t, r, b), this.mPaint);
        }
    }

    public static int dip2px(Context context, float dp) {
        float density = context.getResources().getDisplayMetrics().density;
        return (int) ((dp * density) + 0.5d);
    }

    public void setPercent(int p) {
        int p2 = 100 - p;
        for (int i = 0; i < this.pencent.length; i++) {
            this.pencent[i] = p2;
        }
        postInvalidate();
    }
}
