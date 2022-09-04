package com.fimi.app.x8s.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.fimi.app.x8s.C0885R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class X8CustomChartView extends View {
    private Bitmap backgroundBitmap;
    private Paint bitmapPaint;
    private GestureDetector gestureDetector;
    private boolean isEnable;
    private float lastData;
    private OnSeekChangedListener listener;
    private Paint paintCurve;
    private int xPoint;
    private int xScale;
    private int yPoint;
    private int yScale;
    final String TAG = "DDLog";
    private int[] label = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
    private List<Integer> dataList = new ArrayList();
    private int verticalMinDistance = 10;
    private double curValue = 10.0d;
    private double MAX_VALUE = 100.0d;
    private double MIN_VALUE = 10.0d;
    private boolean isValueChanged = false;
    GestureDetector.OnGestureListener onGestureListener = new GestureDetector.OnGestureListener() { // from class: com.fimi.app.x8s.widget.X8CustomChartView.1
        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent e) {
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent e) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent e) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            if (X8CustomChartView.this.isEnable) {
                if (distanceX < (-X8CustomChartView.this.verticalMinDistance)) {
                    if (X8CustomChartView.this.curValue < X8CustomChartView.this.MAX_VALUE) {
                        X8CustomChartView.this.curValue += 5.0d;
                        X8CustomChartView.this.refreshView(true);
                        X8CustomChartView.this.invalidate();
                    }
                } else if (distanceX > X8CustomChartView.this.verticalMinDistance) {
                    if (X8CustomChartView.this.curValue > X8CustomChartView.this.MIN_VALUE) {
                        X8CustomChartView.this.curValue -= 5.0d;
                        X8CustomChartView.this.refreshView(true);
                        X8CustomChartView.this.invalidate();
                    }
                } else if (distanceY < (-X8CustomChartView.this.verticalMinDistance)) {
                    if (X8CustomChartView.this.curValue > X8CustomChartView.this.MIN_VALUE) {
                        X8CustomChartView.this.curValue -= 5.0d;
                        X8CustomChartView.this.refreshView(true);
                        X8CustomChartView.this.invalidate();
                    }
                } else if (distanceY > X8CustomChartView.this.verticalMinDistance && X8CustomChartView.this.curValue < X8CustomChartView.this.MAX_VALUE) {
                    X8CustomChartView.this.curValue += 5.0d;
                    X8CustomChartView.this.refreshView(true);
                    X8CustomChartView.this.invalidate();
                }
            }
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent e) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
            return true;
        }
    };

    /* loaded from: classes.dex */
    public interface OnSeekChangedListener {
        void onFingerUp(int i, double d);

        void onSeekChanged(int i, double d);
    }

    public X8CustomChartView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        initData(context);
    }

    public X8CustomChartView(Context context) {
        super(context);
        initData(context);
    }

    private void initData(Context context) {
        refreshView(true);
        this.gestureDetector = new GestureDetector(context, this.onGestureListener);
        this.bitmapPaint = new Paint();
        this.paintCurve = new Paint();
        this.paintCurve.setStyle(Paint.Style.STROKE);
        this.paintCurve.setDither(true);
        this.paintCurve.setAntiAlias(true);
        this.paintCurve.setStrokeWidth(3.0f);
        this.paintCurve.setColor(context.getResources().getColor(C0885R.C0887color.x8_fc_all_setting_blue));
        PathEffect pathEffect = new CornerPathEffect(25.0f);
        this.paintCurve.setPathEffect(pathEffect);
        this.backgroundBitmap = BitmapFactory.decodeResource(getResources(), C0885R.C0888drawable.x8_img_exp_setting);
    }

    public void setOnSeekChangeListener(OnSeekChangedListener listener) {
        this.listener = listener;
    }

    public void setCurValue(double curValue) {
        this.curValue = curValue;
    }

    public double getCurValue() {
        return this.curValue;
    }

    public void refreshView(boolean needResponse) {
        int[] iArr;
        if (this.curValue > this.MAX_VALUE) {
            this.curValue = this.MAX_VALUE;
        }
        if (this.curValue < this.MIN_VALUE) {
            this.curValue = this.MIN_VALUE;
        }
        double value = 2.0d + ((this.curValue / (this.MAX_VALUE - this.MIN_VALUE)) * 3.0d);
        this.dataList.clear();
        for (int x : this.label) {
            this.dataList.add(Integer.valueOf((int) Math.pow(x, value)));
        }
        this.lastData = this.dataList.get(this.dataList.size() - 1).intValue();
        invalidate();
        if (needResponse && this.listener != null) {
            this.isValueChanged = true;
            this.listener.onSeekChanged(getId(), this.curValue);
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.xPoint = getWidth() / 2;
        this.yPoint = getHeight() / 2;
        this.xScale = (getWidth() / 2) / (this.label.length - 1);
        this.yScale = (getHeight() / 2) / (this.label.length - 1);
        this.backgroundBitmap = Bitmap.createScaledBitmap(this.backgroundBitmap, getWidth(), getHeight(), true);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        drawCurveTop(canvas, this.paintCurve);
        drawCurveBottom(canvas, this.paintCurve);
        canvas.drawBitmap(this.backgroundBitmap, 0.0f, 0.0f, this.bitmapPaint);
    }

    private void drawCurveTop(Canvas canvas, Paint paint) {
        Path path = new Path();
        for (int i = 0; i <= this.label.length - 1; i++) {
            if (i == 0) {
                path.moveTo(this.xPoint, getTopY(this.dataList.get(0).intValue()));
            } else {
                path.lineTo(this.xPoint + (this.xScale * i), getTopY(this.dataList.get(i).intValue()));
            }
            if (i == this.label.length - 1) {
                path.lineTo(this.xPoint + (this.xScale * i), getTopY(this.dataList.get(i).intValue()));
            }
        }
        canvas.drawPath(path, paint);
    }

    private void drawCurveBottom(Canvas canvas, Paint paint) {
        Path path = new Path();
        for (int i = 0; i <= this.label.length - 1; i++) {
            if (i == 0) {
                path.moveTo(this.xPoint, getBottomY(this.dataList.get(0).intValue()));
            } else {
                path.lineTo(this.xPoint - (this.xScale * i), getBottomY(this.dataList.get(i).intValue()));
            }
            if (i == this.label.length - 1) {
                path.lineTo(this.xPoint - (this.xScale * i), getBottomY(this.dataList.get(i).intValue()));
            }
        }
        canvas.drawPath(path, paint);
    }

    private float getTopY(int num) {
        float a = (num / this.lastData) * (this.label.length - 1);
        return this.yPoint - (this.yScale * a);
    }

    private float getBottomY(int num) {
        float a = (num / this.lastData) * (this.label.length - 1);
        return this.yPoint + (this.yScale * a);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        this.gestureDetector.onTouchEvent(event);
        if (this.listener != null && this.isValueChanged && event.getAction() == 1) {
            this.listener.onFingerUp(getId(), this.curValue);
            this.isValueChanged = false;
        }
        return true;
    }

    public boolean isEnable() {
        return this.isEnable;
    }

    public void setEnable(boolean enable) {
        this.isEnable = enable;
    }
}
