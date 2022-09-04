package com.fimi.app.x8s.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.fimi.app.x8s.C0885R;
/* loaded from: classes.dex */
public class X8VerticalSeekBar extends View {
    private Context context;
    private float downX;
    private float downY;
    private int height;
    private int intrinsicHeight;
    private int intrinsicWidth;
    private boolean isInnerClick;
    private SlideChangeListener listener;
    private int locationX;
    private RectF mDestRect;
    private int mInnerProgressWidthPx;
    protected Bitmap mThumb;
    private int orientation;
    private Paint paint;
    private int tvHeight;
    private int vHeight;
    private int width;
    private int maxProgress = 100;
    private int progress = 50;
    private int locationY = -1;
    private int mInnerProgressWidth = 4;
    private int unSelectColor = -856953877;
    private int selectColor = -1;

    /* loaded from: classes.dex */
    public interface SlideChangeListener {
        void onProgress(X8VerticalSeekBar x8VerticalSeekBar, int i);

        void onStart(X8VerticalSeekBar x8VerticalSeekBar, int i);

        void onStop(X8VerticalSeekBar x8VerticalSeekBar, int i);
    }

    public void setUnSelectColor(int uNSelectColor) {
        this.unSelectColor = uNSelectColor;
    }

    public void setOrientation(int orientation) {
        this.orientation = orientation;
        invalidate();
    }

    public void setSelectColor(int selectColor) {
        this.selectColor = selectColor;
    }

    public void setmInnerProgressWidthPx(int mInnerProgressWidthPx) {
        this.mInnerProgressWidthPx = mInnerProgressWidthPx;
    }

    public void setmInnerProgressWidth(int mInnerProgressWidth) {
        this.mInnerProgressWidth = mInnerProgressWidth;
        this.mInnerProgressWidthPx = dip2px(this.context, mInnerProgressWidth);
    }

    public void setThumb(int id) {
        this.mThumb = BitmapFactory.decodeResource(getResources(), id);
        this.intrinsicHeight = this.mThumb.getHeight();
        this.intrinsicWidth = this.mThumb.getWidth();
        this.mDestRect.set(0.0f, 0.0f, this.intrinsicWidth, this.intrinsicHeight);
        invalidate();
    }

    public void setThumbSize(int width, int height) {
        setThumbSizePx(dip2px(this.context, width), dip2px(this.context, height));
    }

    public void setThumbSizePx(int width, int height) {
        this.intrinsicHeight = width;
        this.intrinsicWidth = height;
        this.mDestRect.set(0.0f, 0.0f, width, height);
        invalidate();
    }

    public X8VerticalSeekBar(Context context) {
        super(context);
        init(context, null, 0);
    }

    public X8VerticalSeekBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context, attrs, 0);
    }

    public X8VerticalSeekBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs, defStyleAttr);
    }

    private void init(Context context, AttributeSet attrs, int defStyleAttr) {
        this.context = context;
        this.paint = new Paint();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        this.mThumb = BitmapFactory.decodeResource(getResources(), C0885R.C0888drawable.x8_img_custom_thum);
        this.intrinsicHeight = this.mThumb.getHeight();
        this.intrinsicWidth = this.mThumb.getWidth();
        this.mDestRect = new RectF(0.0f, 0.0f, this.intrinsicWidth, this.intrinsicHeight);
        this.mInnerProgressWidthPx = dip2px(context, this.mInnerProgressWidth);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.height = getMeasuredHeight();
        this.width = getMeasuredWidth();
        if (this.locationY == -1) {
            this.locationX = this.width / 2;
            this.locationY = this.height / 2;
            Log.i("xiaozhu", this.locationY + ":" + this.height);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case 0:
                this.isInnerClick = isInnerMthum(event);
                if (this.isInnerClick && this.listener != null) {
                    this.listener.onStart(this, this.progress);
                }
                this.downX = event.getX();
                this.downY = event.getY();
                break;
            case 1:
                if (this.isInnerClick && this.listener != null) {
                    this.listener.onStop(this, this.progress);
                    break;
                }
                break;
            case 2:
                if (this.isInnerClick) {
                    this.locationY = (int) event.getY();
                    fixLocationY();
                    this.progress = (int) (this.maxProgress - (((this.locationY - (this.intrinsicHeight * 0.5d)) / (this.height - this.intrinsicHeight)) * this.maxProgress));
                    if (this.orientation == 1) {
                        this.progress = this.maxProgress - this.progress;
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

    private void fixLocationY() {
        if (this.locationY <= this.intrinsicHeight / 2) {
            this.locationY = this.intrinsicHeight / 2;
        } else if (this.locationY >= this.height - (this.intrinsicHeight / 2)) {
            this.locationY = this.height - (this.intrinsicHeight / 2);
        }
    }

    private boolean isInnerMthum(MotionEvent event) {
        return event.getX() >= ((float) ((this.width / 2) - this.intrinsicWidth)) && event.getX() <= ((float) ((this.width / 2) + this.intrinsicWidth)) && event.getY() >= ((float) (this.locationY - this.intrinsicHeight)) && event.getY() <= ((float) (this.locationY + this.intrinsicHeight));
    }

    @Override // android.view.View
    @TargetApi(21)
    protected void onDraw(Canvas canvas) {
        if (this.orientation == 0) {
            this.locationY = (int) ((this.intrinsicHeight * 0.5f) + (((this.maxProgress - this.progress) * (this.height - this.intrinsicHeight)) / this.maxProgress));
        } else {
            this.locationY = (int) ((this.intrinsicHeight * 0.5f) + ((this.progress * (this.height - this.intrinsicHeight)) / this.maxProgress));
        }
        this.paint.setColor(this.orientation == 0 ? this.unSelectColor : this.selectColor);
        int r = dip2px(this.context, 1.0f);
        canvas.drawRoundRect((this.width / 2) - (this.mInnerProgressWidthPx / 2), this.mDestRect.height() / 2.0f, (this.width / 2) + (this.mInnerProgressWidthPx / 2), this.locationY, r, r, this.paint);
        this.paint.setColor(this.orientation == 0 ? this.selectColor : this.unSelectColor);
        canvas.drawRoundRect((this.width / 2) - (this.mInnerProgressWidthPx / 2), this.locationY, (this.width / 2) + (this.mInnerProgressWidthPx / 2), this.height - (this.mDestRect.height() / 2.0f), r, r, this.paint);
        canvas.save();
        canvas.translate((this.width / 2) - (this.mDestRect.width() / 2.0f), this.locationY - (this.mDestRect.height() / 2.0f));
        canvas.drawBitmap(this.mThumb, (Rect) null, this.mDestRect, new Paint());
        canvas.restore();
        if (this.listener != null) {
            this.listener.onProgress(this, this.progress);
        }
        super.onDraw(canvas);
    }

    public void setProgress(int progress) {
        if (this.height == 0) {
            this.height = getMeasuredHeight();
        }
        this.progress = progress;
        invalidate();
    }

    public int getProgress() {
        return this.progress;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        if (this.mThumb != null) {
            this.mThumb.recycle();
        }
        super.onDetachedFromWindow();
    }

    public void setMaxProgress(int maxProgress) {
        this.maxProgress = maxProgress;
    }

    public int getMaxProgress() {
        return this.maxProgress;
    }

    public void setOnSlideChangeListener(SlideChangeListener l) {
        this.listener = l;
    }

    public void setTextHeight(int vHeight, int tvHeight) {
        this.vHeight = vHeight;
        this.tvHeight = tvHeight;
    }

    public int dip2px(Context activity, float dpValue) {
        DisplayMetrics metrics = new DisplayMetrics();
        WindowManager wm = (WindowManager) activity.getSystemService("window");
        wm.getDefaultDisplay().getMetrics(metrics);
        float scale = metrics.density;
        return (int) ((dpValue * scale) + 0.5f);
    }

    public int getDestX() {
        return getMeasuredWidth();
    }

    public int getDestY() {
        int t = (int) (((this.vHeight - getMeasuredHeight()) / 2.0f) - (this.tvHeight / 2.0f));
        int b = this.locationY;
        int y = t + b;
        Log.i("zdy", "" + t + " " + b + " " + this.vHeight + " " + this.tvHeight + " " + getMeasuredHeight() + this.locationY);
        return y;
    }

    public int getProcess() {
        return this.progress;
    }
}
