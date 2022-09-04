package com.fimi.app.x8s.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.fimi.app.x8s.C0885R;
import com.fimi.kernel.utils.DensityUtil;
import org.apache.mina.proxy.handlers.http.ntlm.NTLMConstants;
/* loaded from: classes.dex */
public class X8SeekBarView extends View {
    private int bgColor;
    private float cicleR;
    private float cicleX;
    private float cicleY;
    private float downX;
    private float downY;
    private float endX;
    private float endY;
    private boolean isInnerClick;
    private int lineH;
    private SlideChangeListener listener;
    private float locationX;
    private Paint mPaint;
    private float maginW;
    private int progress;
    private int progressColor;
    private float startX;
    private float startY;
    private int maxProgress = 100;

    /* renamed from: w */
    private int f164w = 0;

    /* renamed from: h */
    private int f162h = 0;
    private float dph = 40.0f;
    private float dpMaginW = 30.0f;
    private float dpThumpW = 15.33f;
    private float dpLineH = 1.33f;
    private float dpR = 0.667f;

    /* renamed from: r */
    private float f163r = 1.33f;

    /* loaded from: classes.dex */
    public interface SlideChangeListener {
        void onProgress(X8SeekBarView x8SeekBarView, int i);

        void onStart(X8SeekBarView x8SeekBarView, int i);

        void onStop(X8SeekBarView x8SeekBarView, int i);
    }

    public int getMaxProgress() {
        return this.maxProgress;
    }

    public X8SeekBarView(Context context) {
        super(context);
    }

    public int getProgress() {
        return this.progress;
    }

    public void setProgress(int progress) {
        this.progress = progress;
        if (this.listener != null) {
            this.listener.onProgress(this, progress);
        }
        invalidate();
    }

    public X8SeekBarView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public X8SeekBarView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    public void init() {
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.bgColor = getContext().getResources().getColor(C0885R.C0887color.white_15);
        this.progressColor = getContext().getResources().getColor(C0885R.C0887color.white_60);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f164w == 0) {
            this.f164w = getMeasuredWidth();
        }
        if (this.f162h != 0) {
            this.mPaint.setColor(this.bgColor);
            this.startX = this.maginW / 2.0f;
            this.endX = this.f164w - (this.maginW / 2.0f);
            this.startY = (this.f162h / 2.0f) - (this.lineH / 2.0f);
            this.endY = (this.f162h / 2.0f) + (this.lineH / 2.0f);
            RectF rf = new RectF(this.startX, this.startY, this.endX, this.endY);
            canvas.drawRoundRect(rf, this.f163r, this.f163r, this.mPaint);
            float x = this.startX + (((this.f164w - this.maginW) * this.progress) / this.maxProgress);
            this.cicleX = x;
            this.cicleY = (int) (this.f162h / 2.0f);
            this.mPaint.setColor(this.progressColor);
            RectF rf1 = new RectF(this.startX, this.startY, this.cicleX, this.endY);
            canvas.drawRoundRect(rf1, this.f163r, this.f163r, this.mPaint);
            this.mPaint.setColor(-1);
            canvas.drawCircle(this.cicleX, this.cicleY, this.cicleR, this.mPaint);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        this.f162h = DensityUtil.dip2px(getContext(), this.dph);
        this.maginW = DensityUtil.dip2px(getContext(), this.dpMaginW);
        this.lineH = DensityUtil.dip2px(getContext(), this.dpLineH);
        this.f163r = DensityUtil.dip2px(getContext(), this.dpR);
        this.cicleR = DensityUtil.dip2px(getContext(), this.dpThumpW) / 2.0f;
        setMeasuredDimension(getDefaultSize(getSuggestedMinimumWidth(), widthMeasureSpec), this.f162h);
    }

    public static int getDefaultSize(int size, int measureSpec) {
        int specMode = View.MeasureSpec.getMode(measureSpec);
        int specSize = View.MeasureSpec.getSize(measureSpec);
        switch (specMode) {
            case Integer.MIN_VALUE:
            case NTLMConstants.FLAG_NEGOTIATE_KEY_EXCHANGE /* 1073741824 */:
                return specSize;
            case 0:
                return size;
            default:
                return size;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (!isEnabled()) {
            return false;
        }
        switch (event.getAction()) {
            case 0:
                getParent().requestDisallowInterceptTouchEvent(true);
                this.isInnerClick = isInnerMthum(event);
                if (this.isInnerClick && this.listener != null) {
                    this.listener.onStart(this, this.progress);
                }
                this.downX = event.getX();
                this.downY = event.getY();
                break;
            case 1:
                getParent().requestDisallowInterceptTouchEvent(false);
                if (this.isInnerClick && this.listener != null) {
                    this.listener.onStop(this, this.progress);
                    break;
                }
                break;
            case 2:
                if (this.isInnerClick) {
                    this.locationX = event.getX();
                    fixLocationX();
                    float p = ((this.locationX - this.startX) / (this.f164w - this.maginW)) * this.maxProgress;
                    this.progress = Math.round(p);
                    if (this.listener != null) {
                        this.listener.onProgress(this, this.progress);
                    }
                    this.downY = event.getY();
                    this.downX = event.getX();
                    invalidate();
                    break;
                }
                break;
        }
        return true;
    }

    private boolean isInnerMthum(MotionEvent event) {
        if (event.getX() < 0.0f || event.getX() > this.f164w || event.getY() < 0.0f || event.getY() > this.f162h) {
            return false;
        }
        return true;
    }

    private void fixLocationX() {
        if (this.locationX < this.startX) {
            this.locationX = this.startX;
        } else if (this.locationX > this.endX) {
            this.locationX = this.endX;
        }
    }

    public void setMaxProgress(int maxProgress) {
        this.maxProgress = maxProgress;
    }

    public void setOnSlideChangeListener(SlideChangeListener l) {
        this.listener = l;
    }
}
