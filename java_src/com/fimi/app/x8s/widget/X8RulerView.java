package com.fimi.app.x8s.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import com.fimi.app.x8s.C0885R;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.mina.proxy.handlers.http.ntlm.NTLMConstants;
/* loaded from: classes.dex */
public class X8RulerView extends View {
    private Bitmap endBmp;
    private float fixScale;
    private int height;
    float lastMoveX;
    private int mMaximumVelocity;
    private VelocityTracker mVelocityTracker;
    private Bitmap maxRuler;
    private float max_ruler_len;
    private Bitmap minRuler;
    private float min_ruler_len;
    float moveX;
    private Paint paint;
    float preTime;
    private Bitmap resultBmp;
    RulerListener rulerListener;
    float tempX;
    private ValueAnimator valueAnimator;
    private int width;
    int xVelocity;
    private int rulerHeight = 50;
    private int rulerTopGap = this.rulerHeight / 4;
    private int scaleGap = 14;
    private int scaleNum = 60;
    private boolean firstInit = true;
    private float curScaleValue = 0.0f;
    private ArrayList<Float> points = new ArrayList<>();
    private Map<Float, Float> pointMap = new HashMap();
    private boolean isEnable = true;

    /* loaded from: classes.dex */
    public interface RulerListener {
        void updateRuler(float f);
    }

    public X8RulerView(Context context) {
        super(context);
        init(context);
    }

    public X8RulerView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public X8RulerView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawBitmap(this.resultBmp, (this.width - this.resultBmp.getWidth()) / 2, 0.0f, this.paint);
        if (this.lastMoveX == 0.0f) {
            this.lastMoveX = this.fixScale;
        }
        canvas.translate(this.lastMoveX, 0.0f);
        for (int i = 0; i <= 6; i++) {
            if (i < 6) {
                canvas.drawBitmap(this.minRuler, (i * 2 * this.min_ruler_len) + (i * this.max_ruler_len), (this.height - this.rulerHeight) / 2, this.paint);
                canvas.drawBitmap(this.maxRuler, (((i * 2) + 1) * this.min_ruler_len) + (i * this.max_ruler_len), (this.height - this.rulerHeight) / 2, this.paint);
                canvas.drawBitmap(this.minRuler, (((i * 2) + 1) * this.min_ruler_len) + ((i + 1) * this.max_ruler_len), (this.height - this.rulerHeight) / 2, this.paint);
            } else if (i == 6) {
                canvas.drawBitmap(this.endBmp, (i * 2 * this.min_ruler_len) + (i * this.max_ruler_len), (this.height - this.rulerHeight) / 2, this.paint);
            }
        }
        canvas.save();
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int heightModule = View.MeasureSpec.getMode(heightMeasureSpec);
        int heightSize = View.MeasureSpec.getSize(heightMeasureSpec);
        int widthSize = View.MeasureSpec.getSize(widthMeasureSpec);
        switch (heightModule) {
            case Integer.MIN_VALUE:
                this.height = this.rulerHeight + (this.rulerTopGap * 2) + getPaddingTop() + getPaddingBottom();
                break;
            case 0:
            case NTLMConstants.FLAG_NEGOTIATE_KEY_EXCHANGE /* 1073741824 */:
                this.height = getPaddingTop() + heightSize + getPaddingBottom();
                break;
        }
        this.width = getPaddingLeft() + widthSize + getPaddingRight();
        this.fixScale = (this.width - (this.scaleGap * this.scaleNum)) / 2;
        if (this.pointMap.size() <= 0) {
            for (int i = 0; i <= 6; i++) {
                if (i < 6) {
                    float value = keep2point((((i * 2) * 0.3f) + (i * 0.4f)) - 3.0f);
                    float key = (((this.scaleGap * this.scaleNum) / 2) + this.fixScale) - (((i * 2) * this.min_ruler_len) + (i * this.max_ruler_len));
                    this.pointMap.put(Float.valueOf(key), Float.valueOf(value));
                    float value3 = keep2point(((((i * 2) + 1) * 0.3f) - 3.0f) + (i * 0.4f));
                    float key3 = (((this.scaleGap * this.scaleNum) / 2) + this.fixScale) - ((((i * 2) + 1) * this.min_ruler_len) + (i * this.max_ruler_len));
                    this.pointMap.put(Float.valueOf(key3), Float.valueOf(value3));
                    float value4 = keep2point(((((i * 2) + 1) * 0.3f) - 3.0f) + ((i + 1) * 0.4f));
                    float key4 = (((this.scaleGap * this.scaleNum) / 2) + this.fixScale) - ((((i * 2) + 1) * this.min_ruler_len) + ((i + 1) * this.max_ruler_len));
                    this.pointMap.put(Float.valueOf(key4), Float.valueOf(value4));
                    this.points.add(Float.valueOf(key));
                    this.points.add(Float.valueOf(key3));
                    this.points.add(Float.valueOf(key4));
                } else if (i == 6) {
                    float value5 = keep2point((((i * 2) * 0.3f) - 3.0f) + (i * 0.4f));
                    float key5 = (((this.scaleGap * this.scaleNum) / 2) + this.fixScale) - (((i * 2) * this.min_ruler_len) + (i * this.max_ruler_len));
                    this.pointMap.put(Float.valueOf(key5), Float.valueOf(value5));
                    this.points.add(Float.valueOf(key5));
                }
            }
        }
        setMeasuredDimension(this.width, this.height);
        if (this.firstInit) {
            this.firstInit = false;
            setCurScaleValue(this.curScaleValue);
        }
    }

    private float keep2point(float value) {
        BigDecimal b = new BigDecimal(value);
        return b.setScale(2, 4).floatValue();
    }

    private void init(Context context) {
        this.maxRuler = BitmapFactory.decodeResource(context.getResources(), C0885R.C0888drawable.x8_ev_max_value);
        this.minRuler = BitmapFactory.decodeResource(context.getResources(), C0885R.C0888drawable.x8_ev_min_value);
        this.resultBmp = BitmapFactory.decodeResource(context.getResources(), C0885R.C0888drawable.x8_ev_result_value);
        this.endBmp = BitmapFactory.decodeResource(context.getResources(), C0885R.C0888drawable.x8_ev_end_icon);
        this.paint = new Paint(-1);
        this.min_ruler_len = this.minRuler.getWidth();
        this.max_ruler_len = this.maxRuler.getWidth();
        this.rulerHeight = this.maxRuler.getHeight();
        ViewConfiguration configuration = ViewConfiguration.get(context);
        this.mMaximumVelocity = configuration.getScaledMaximumFlingVelocity();
        this.valueAnimator = new ValueAnimator();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (this.isEnable) {
            obtainVelocityTracker(event);
            switch (event.getAction()) {
                case 0:
                    if (this.valueAnimator != null && this.valueAnimator.isRunning()) {
                        this.valueAnimator.end();
                        this.valueAnimator.cancel();
                    }
                    this.tempX = event.getX();
                    break;
                case 1:
                    checkRulerValue();
                    break;
                case 2:
                    this.lastMoveX += (event.getX() - this.tempX) / 30.0f;
                    if (this.lastMoveX >= this.width / 2) {
                        this.lastMoveX = this.width / 2;
                    } else if (this.lastMoveX < (-this.width) + this.fixScale) {
                        this.lastMoveX = (-this.width) + this.fixScale;
                    }
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    velocityTracker.computeCurrentVelocity(500, this.mMaximumVelocity);
                    this.xVelocity = (int) velocityTracker.getXVelocity();
                    autoVelocityScroll(this.xVelocity);
                    invalidate();
                    break;
            }
        }
        return true;
    }

    private VelocityTracker obtainVelocityTracker(MotionEvent event) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            this.mVelocityTracker.clear();
        }
        this.mVelocityTracker.addMovement(event);
        return this.mVelocityTracker;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recycleVelocity() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.clear();
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void autoVelocityScroll(final int xVelocity) {
        if (Math.abs(xVelocity) >= 1500 && !this.valueAnimator.isRunning()) {
            this.valueAnimator = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(Math.abs((int) XiaomiOAuthConstants.SCOPE_MI_CLOUD_CONTACT));
            this.valueAnimator.setInterpolator(new DecelerateInterpolator());
            this.valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.fimi.app.x8s.widget.X8RulerView.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    float t = ((Float) X8RulerView.this.valueAnimator.getAnimatedValue()).floatValue();
                    X8RulerView.this.moveX = (t - X8RulerView.this.preTime) * xVelocity;
                    if (t != X8RulerView.this.preTime) {
                        X8RulerView.this.preTime = t;
                    }
                    if (X8RulerView.this.preTime != 0.0f) {
                        X8RulerView.this.lastMoveX += X8RulerView.this.moveX;
                        if (X8RulerView.this.lastMoveX < X8RulerView.this.width / 2) {
                            if (X8RulerView.this.lastMoveX < (-X8RulerView.this.width) + X8RulerView.this.fixScale) {
                                X8RulerView.this.lastMoveX = (-X8RulerView.this.width) + X8RulerView.this.fixScale;
                            }
                        } else {
                            X8RulerView.this.lastMoveX = X8RulerView.this.width / 2;
                        }
                        X8RulerView.this.invalidate();
                    }
                }
            });
            this.valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.fimi.app.x8s.widget.X8RulerView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    X8RulerView.this.checkRulerValue();
                    X8RulerView.this.recycleVelocity();
                }
            });
            this.valueAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkRulerValue() {
        int len = this.points.size();
        int j = 0;
        while (true) {
            if (j >= len) {
                break;
            } else if (j < len - 1) {
                float preValue = this.points.get(j).floatValue();
                float nextValue = this.points.get(j + 1).floatValue();
                float maxValue = preValue > nextValue ? preValue : nextValue;
                float minValue = preValue < nextValue ? preValue : nextValue;
                if (this.lastMoveX >= minValue && this.lastMoveX <= maxValue) {
                    if (Math.abs(preValue - this.lastMoveX) < Math.abs(nextValue - this.lastMoveX)) {
                        this.lastMoveX = preValue;
                    } else {
                        this.lastMoveX = nextValue;
                    }
                    this.curScaleValue = this.pointMap.get(Float.valueOf(this.lastMoveX)).floatValue();
                    if (this.rulerListener != null) {
                        this.rulerListener.updateRuler(this.curScaleValue);
                    }
                }
                j++;
            } else if (j != len - 1) {
                j++;
            } else {
                this.lastMoveX = this.points.get(len - 1).floatValue();
                this.curScaleValue = this.pointMap.get(Float.valueOf(this.lastMoveX)).floatValue();
                if (this.rulerListener != null) {
                    this.rulerListener.updateRuler(this.curScaleValue);
                }
            }
        }
        invalidate();
    }

    public void setCurScaleValue(float curScaleValue) {
        this.curScaleValue = curScaleValue;
        if (this.pointMap.size() > 0) {
            for (Map.Entry<Float, Float> entry : this.pointMap.entrySet()) {
                float value = entry.getValue().floatValue();
                float key = entry.getKey().floatValue();
                if (value == curScaleValue) {
                    this.lastMoveX = key;
                    invalidate();
                    return;
                }
            }
        }
    }

    public void setRulerListener(RulerListener rulerListener) {
        this.rulerListener = rulerListener;
    }

    public void setEnable(boolean enable) {
        this.isEnable = enable;
        if (this.paint != null) {
            if (!enable) {
                this.paint.setColor(getResources().getColor(C0885R.C0887color.white_30));
            } else {
                this.paint.setColor(getResources().getColor(C0885R.C0887color.white_100));
            }
        }
        invalidate();
    }
}
