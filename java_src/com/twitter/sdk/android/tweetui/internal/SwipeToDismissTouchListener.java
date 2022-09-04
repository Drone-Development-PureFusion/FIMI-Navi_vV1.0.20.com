package com.twitter.sdk.android.tweetui.internal;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
/* loaded from: classes2.dex */
public class SwipeToDismissTouchListener implements View.OnTouchListener {
    private Callback callback;
    private final float closeThreshold;
    private float initialY;
    private boolean isMoving;
    private float lastX;
    private float lastY;
    private final float maxTranslate;
    private int pointerIndex;
    private int touchSlop;

    /* loaded from: classes2.dex */
    public interface Callback {
        void onDismiss();

        void onMove(float f);
    }

    /* loaded from: classes2.dex */
    public interface SwipeableViewProvider {
        boolean canBeSwiped();
    }

    public static SwipeToDismissTouchListener createFromView(View view, Callback listener) {
        return new SwipeToDismissTouchListener(listener, ViewConfiguration.get(view.getContext()).getScaledTouchSlop(), view.getContext().getResources().getDisplayMetrics().heightPixels * 0.5f);
    }

    SwipeToDismissTouchListener(Callback listener, int touchSlop, float maxTranslate) {
        this(listener, touchSlop, maxTranslate, 0.2f * maxTranslate);
    }

    SwipeToDismissTouchListener(Callback listener, int touchSlop, float maxTranslate, float closeThreshold) {
        setCallback(listener);
        this.touchSlop = touchSlop;
        this.maxTranslate = maxTranslate;
        this.closeThreshold = closeThreshold;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View v, MotionEvent event) {
        boolean viewClosed = false;
        if (!(v instanceof SwipeableViewProvider) || ((SwipeableViewProvider) v).canBeSwiped() || isMoving()) {
            viewClosed = handleTouchEvent(v, event);
        }
        return viewClosed || v.onTouchEvent(event);
    }

    boolean handleTouchEvent(View swipeableView, MotionEvent event) {
        boolean viewClosed = false;
        switch (event.getActionMasked()) {
            case 0:
                this.lastX = event.getRawX();
                float rawY = event.getRawY();
                this.lastY = rawY;
                this.initialY = rawY;
                this.isMoving = false;
                this.pointerIndex = event.getPointerId(event.getPointerCount() - 1);
                break;
            case 1:
            case 3:
                if (isValidPointer(event) && this.isMoving) {
                    viewClosed = settleOrCloseView(swipeableView);
                }
                this.isMoving = false;
                break;
            case 2:
                float currentX = event.getRawX();
                float currentY = event.getRawY();
                float initialDeltaY = currentY - this.initialY;
                float deltaX = currentX - this.lastX;
                float deltaY = currentY - this.lastY;
                this.lastX = currentX;
                this.lastY = currentY;
                if (isValidPointer(event) && (this.isMoving || (hasMovedEnoughInProperYDirection(initialDeltaY) && hasMovedMoreInYDirectionThanX(deltaX, deltaY)))) {
                    this.isMoving = true;
                    moveView(swipeableView, deltaY);
                    break;
                }
                break;
            case 5:
                settleView(swipeableView);
                this.isMoving = false;
                this.pointerIndex = -1;
                break;
        }
        return viewClosed;
    }

    boolean hasMovedEnoughInProperYDirection(float initialDeltaY) {
        return Math.abs(initialDeltaY) > ((float) this.touchSlop);
    }

    boolean hasMovedMoreInYDirectionThanX(float deltaX, float deltaY) {
        return Math.abs(deltaY) > Math.abs(deltaX);
    }

    boolean isMoving() {
        return this.isMoving;
    }

    boolean isValidPointer(MotionEvent event) {
        return this.pointerIndex >= 0 && event.getPointerCount() == 1;
    }

    boolean settleOrCloseView(View swipeableView) {
        float currentY = swipeableView.getTranslationY();
        if (currentY > this.closeThreshold || currentY < (-this.closeThreshold)) {
            if (this.callback != null) {
                this.callback.onDismiss();
            }
            return true;
        }
        settleView(swipeableView);
        return false;
    }

    void settleView(View swipeableView) {
        if (swipeableView.getTranslationY() != 0.0f) {
            ObjectAnimator animator = ObjectAnimator.ofFloat(swipeableView, View.TRANSLATION_Y, 0.0f).setDuration(100L);
            animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.twitter.sdk.android.tweetui.internal.SwipeToDismissTouchListener.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    float targetY = ((Float) animation.getAnimatedValue()).floatValue();
                    if (SwipeToDismissTouchListener.this.callback != null) {
                        SwipeToDismissTouchListener.this.callback.onMove(targetY);
                    }
                }
            });
            animator.start();
        }
    }

    void moveView(View swipeableView, float deltaY) {
        float currentY = swipeableView.getTranslationY();
        float deltaWithTension = (float) (deltaY * calculateTension(currentY));
        float targetY = bound(currentY + deltaWithTension);
        swipeableView.setTranslationY(targetY);
        if (this.callback != null) {
            this.callback.onMove(targetY);
        }
    }

    double calculateTension(float targetY) {
        float distance = Math.abs(targetY);
        float maxDistance = this.closeThreshold * 2.0f;
        double tension = Math.pow(distance, 2.0d);
        double maxTension = Math.pow(maxDistance, 2.0d);
        double tensionCoeff = 1.0d - (tension / maxTension);
        return tensionCoeff;
    }

    float bound(float y) {
        if (y < (-this.maxTranslate)) {
            return -this.maxTranslate;
        }
        if (y > this.maxTranslate) {
            return this.maxTranslate;
        }
        return y;
    }

    public void setCallback(Callback listener) {
        this.callback = listener;
    }
}
