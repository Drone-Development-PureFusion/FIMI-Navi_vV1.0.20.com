package com.fimi.app.x8s.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.RelativeLayout;
import com.fimi.app.x8s.X8Application;
import com.fimi.app.x8s.media.FimiH264Video;
/* loaded from: classes.dex */
public class X8MapVideoCardView extends ViewGroup {
    private static final String TAG = "MapVideoCardView";
    int MAX_HEIGHT;
    int MAX_WIDTH;
    int MIN_HEIGHT;
    int MIN_WIDTH;
    private View[] indexs;
    private Context mContext;
    int padingBottom;
    int padingLeft;
    private int state;
    boolean switchDrawingOrder;

    public X8MapVideoCardView(Context context) {
        this(context, null);
    }

    public X8MapVideoCardView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public X8MapVideoCardView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.state = 0;
        this.indexs = new View[2];
        this.switchDrawingOrder = false;
        init(context, attrs, defStyleAttr);
    }

    private void init(Context context, AttributeSet attrs, int defStyleAttr) {
        this.mContext = context;
        setChildrenDrawingOrderEnabled(true);
        setClipChildren(false);
        setClipToPadding(false);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int w_size = View.MeasureSpec.getSize(widthMeasureSpec);
        int h_size = View.MeasureSpec.getSize(heightMeasureSpec);
        measureChildren(widthMeasureSpec, heightMeasureSpec);
        setMeasuredDimension(w_size, h_size);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childView = getChildAt(i);
            int measureHeight = childView.getMeasuredHeight();
            int measuredWidth = childView.getMeasuredWidth();
            if (childView == this.indexs[1]) {
                if (this.state == 1) {
                    childView.layout(0, b - measureHeight, measuredWidth, b);
                } else {
                    childView.layout(this.padingLeft, (b - measureHeight) - this.padingBottom, this.padingLeft + measuredWidth, b - this.padingBottom);
                }
            } else {
                childView.layout(0, 0, measuredWidth, measureHeight);
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int childCount, int i) {
        int i2;
        if (!this.switchDrawingOrder) {
            return super.getChildDrawingOrder(childCount, i);
        }
        if (i == 0) {
            i2 = childCount - 1;
        } else {
            i2 = (childCount - 1) - 1;
        }
        return i2;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.indexs[0] = getChildAt(0);
        this.indexs[1] = getChildAt(1);
    }

    public void switchDrawingOrder(View view) {
        if (this.state == 0) {
            this.state = 1;
            performAnim(this.indexs[1], this.indexs[0], view);
        }
    }

    public void changeOrderFlag() {
        if (!this.switchDrawingOrder) {
            this.switchDrawingOrder = true;
        } else {
            this.switchDrawingOrder = false;
        }
        View view = this.indexs[0];
        this.indexs[0] = this.indexs[1];
        this.indexs[1] = view;
        this.state = 0;
    }

    private void performAnim(final View viewAnim, final View scaleView, View mapView) {
        if (((RelativeLayout) this.indexs[0]).getChildAt(0) instanceof FimiH264Video) {
            ((RelativeLayout) this.indexs[0]).setBackgroundColor(Color.parseColor("#000000"));
            changSize(viewAnim, this.MAX_WIDTH, this.MAX_HEIGHT);
            AnimatorSet bouncer = new AnimatorSet();
            bouncer.setInterpolator(new AccelerateDecelerateInterpolator());
            mapView.setPivotX(0.0f);
            mapView.setPivotY(this.MAX_HEIGHT);
            ObjectAnimator xScaleAnimator = ObjectAnimator.ofFloat(mapView, "scaleX", ((this.MIN_WIDTH + this.padingLeft) * 1.0f) / this.MAX_WIDTH, 1.0f);
            xScaleAnimator.addListener(new Animator.AnimatorListener() { // from class: com.fimi.app.x8s.widget.X8MapVideoCardView.1
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    X8MapVideoCardView.this.changeOrderFlag();
                    ((RelativeLayout) X8MapVideoCardView.this.indexs[0]).setBackgroundColor(Color.parseColor("#00000000"));
                    X8MapVideoCardView.this.changSize(scaleView, X8MapVideoCardView.this.MIN_WIDTH, X8MapVideoCardView.this.MIN_HEIGHT);
                    ((FimiH264Video) ((RelativeLayout) X8MapVideoCardView.this.indexs[1]).getChildAt(0)).change9GridSize(X8MapVideoCardView.this.MIN_WIDTH, X8MapVideoCardView.this.MIN_HEIGHT);
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animation) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animation) {
                }
            });
            ObjectAnimator yScaleAnimator = ObjectAnimator.ofFloat(mapView, "scaleY", ((this.MIN_HEIGHT + this.padingLeft) * 1.0f) / this.MAX_HEIGHT, 1.0f);
            Animator[] mAnimators = {xScaleAnimator, yScaleAnimator};
            bouncer.setDuration(500);
            bouncer.playTogether(mAnimators);
            bouncer.start();
            return;
        }
        ValueAnimator va = ValueAnimator.ofInt(this.MIN_HEIGHT + this.padingLeft, this.MAX_HEIGHT);
        va.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.fimi.app.x8s.widget.X8MapVideoCardView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                int width = (X8MapVideoCardView.this.MAX_WIDTH * height) / X8MapVideoCardView.this.MAX_HEIGHT;
                X8MapVideoCardView.this.changSize(viewAnim, width, height);
                ((FimiH264Video) ((RelativeLayout) X8MapVideoCardView.this.indexs[1]).getChildAt(0)).change9GridSize(width, height);
                if (height == X8MapVideoCardView.this.MAX_HEIGHT) {
                    X8MapVideoCardView.this.changeOrderFlag();
                    X8MapVideoCardView.this.changSize(scaleView, X8MapVideoCardView.this.MIN_WIDTH, X8MapVideoCardView.this.MIN_HEIGHT);
                }
            }
        });
        va.setDuration(500L);
        va.start();
    }

    public void changSize(View view, int width, int height) {
        ViewGroup.LayoutParams lp = view.getLayoutParams();
        lp.width = width;
        lp.height = height;
        view.setLayoutParams(lp);
    }

    public void setSmallDefaultSize() {
        changSize(this.indexs[1], this.MIN_WIDTH, this.MIN_HEIGHT);
    }

    public void switchDrawingOrderForAiFollow() {
        if (!(((RelativeLayout) this.indexs[0]).getChildAt(0) instanceof FimiH264Video)) {
            changSize(this.indexs[1], this.MAX_WIDTH, this.MAX_HEIGHT);
            ((FimiH264Video) ((RelativeLayout) this.indexs[1]).getChildAt(0)).change9GridSize(this.MAX_WIDTH, this.MAX_HEIGHT);
            changeOrderFlag();
            changSize(this.indexs[1], this.MIN_WIDTH, this.MIN_HEIGHT);
        }
        disShowSmall();
    }

    public void resetShow() {
        this.indexs[1].setVisibility(0);
    }

    public void disShowSmall() {
        this.indexs[1].setVisibility(4);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        changeSmallSize(w, h, oldw, oldh);
    }

    public void changeSmallSize(int w, int h, int oldw, int oldh) {
        boolean b = false;
        if (this.indexs[1].getMeasuredHeight() == 0) {
            b = true;
        } else if ((w != oldw || h != oldh) && this.state == 0) {
            b = true;
        }
        if (b) {
            X8Application.ANIMATION_WIDTH = w / 2;
            X8Application.SCREEN_WIDTH = w;
            X8Application.SCREEN_HEIGHT = h;
            this.MAX_WIDTH = w;
            this.MAX_HEIGHT = h;
            int i = (this.MAX_WIDTH * 9) / 1920;
            this.padingBottom = i;
            this.padingLeft = i;
            this.MIN_WIDTH = (this.MAX_WIDTH * 336) / 1920;
            this.MIN_HEIGHT = (this.MAX_HEIGHT * 189) / 1080;
        }
    }

    public void changeSmallSize() {
        if (this.indexs[1].getMeasuredHeight() == 0) {
            setSmallDefaultSize();
        }
    }

    public boolean isFullVideo() {
        if (!(((RelativeLayout) this.indexs[0]).getChildAt(0) instanceof FimiH264Video)) {
            return false;
        }
        return true;
    }

    public void switchDrawingOrderForPoint2Point() {
        if (((RelativeLayout) this.indexs[0]).getChildAt(0) instanceof FimiH264Video) {
            changSize(this.indexs[1], this.MAX_WIDTH, this.MAX_HEIGHT);
            changeOrderFlag();
            changSize(this.indexs[1], this.MIN_WIDTH, this.MIN_HEIGHT);
            ((FimiH264Video) ((RelativeLayout) this.indexs[1]).getChildAt(0)).change9GridSize(this.MIN_WIDTH, this.MIN_HEIGHT);
        }
    }

    public void switchDrawingOrderForAiLineVideo() {
        if (!(((RelativeLayout) this.indexs[0]).getChildAt(0) instanceof FimiH264Video)) {
            changSize(this.indexs[1], this.MAX_WIDTH, this.MAX_HEIGHT);
            changeOrderFlag();
            changSize(this.indexs[1], this.MIN_WIDTH, this.MIN_HEIGHT);
            ((FimiH264Video) ((RelativeLayout) this.indexs[0]).getChildAt(0)).change9GridSize(this.MAX_WIDTH, this.MAX_HEIGHT);
        }
    }

    public void switchDrawingOrderForGimbal() {
        if (!(((RelativeLayout) this.indexs[0]).getChildAt(0) instanceof FimiH264Video)) {
            this.indexs[1].setVisibility(0);
            changSize(this.indexs[1], this.MAX_WIDTH, this.MAX_HEIGHT);
            ((FimiH264Video) ((RelativeLayout) this.indexs[1]).getChildAt(0)).change9GridSize(this.MAX_WIDTH, this.MAX_HEIGHT);
            changeOrderFlag();
            changSize(this.indexs[1], this.MIN_WIDTH, this.MIN_HEIGHT);
            this.indexs[1].setVisibility(4);
        }
    }
}
