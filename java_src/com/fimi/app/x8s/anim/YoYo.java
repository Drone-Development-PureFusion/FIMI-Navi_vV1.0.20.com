package com.fimi.app.x8s.anim;

import android.animation.Animator;
import android.support.p001v4.view.ViewCompat;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class YoYo {
    public static final float CENTER_PIVOT = Float.MAX_VALUE;
    private static final long DURATION = 1000;
    public static final int INFINITE = -1;
    private static final long NO_DELAY = 0;
    private BaseViewAnimator animator;
    private List<Animator.AnimatorListener> callbacks;
    private long delay;
    private long duration;
    private Interpolator interpolator;
    private float pivotX;
    private float pivotY;
    private boolean repeat;
    private int repeatMode;
    private int repeatTimes;
    private View target;

    /* loaded from: classes.dex */
    public interface AnimatorCallback {
        void call(Animator animator);
    }

    private YoYo(AnimationComposer animationComposer) {
        this.animator = animationComposer.animator;
        this.duration = animationComposer.duration;
        this.delay = animationComposer.delay;
        this.repeat = animationComposer.repeat;
        this.repeatTimes = animationComposer.repeatTimes;
        this.repeatMode = animationComposer.repeatMode;
        this.interpolator = animationComposer.interpolator;
        this.pivotX = animationComposer.pivotX;
        this.pivotY = animationComposer.pivotY;
        this.callbacks = animationComposer.callbacks;
        this.target = animationComposer.target;
    }

    public static AnimationComposer with(BaseViewAnimator animator) {
        return new AnimationComposer(animator);
    }

    /* loaded from: classes.dex */
    private static class EmptyAnimatorListener implements Animator.AnimatorListener {
        private EmptyAnimatorListener() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
        }
    }

    /* loaded from: classes.dex */
    public static final class AnimationComposer {
        private BaseViewAnimator animator;
        private Interpolator interpolator;
        private View target;
        private List<Animator.AnimatorListener> callbacks = new ArrayList();
        private long duration = 1000;
        private long delay = 0;
        private boolean repeat = false;
        private int repeatTimes = 0;
        private int repeatMode = 1;
        private float pivotX = Float.MAX_VALUE;
        private float pivotY = Float.MAX_VALUE;

        public AnimationComposer(BaseViewAnimator animator) {
            this.animator = animator;
        }

        public AnimationComposer duration(long duration) {
            this.duration = duration;
            return this;
        }

        public AnimationComposer delay(long delay) {
            this.delay = delay;
            return this;
        }

        public AnimationComposer interpolate(Interpolator interpolator) {
            this.interpolator = interpolator;
            return this;
        }

        public AnimationComposer pivot(float pivotX, float pivotY) {
            this.pivotX = pivotX;
            this.pivotY = pivotY;
            return this;
        }

        public AnimationComposer pivotX(float pivotX) {
            this.pivotX = pivotX;
            return this;
        }

        public AnimationComposer pivotY(float pivotY) {
            this.pivotY = pivotY;
            return this;
        }

        public AnimationComposer repeat(int times) {
            if (times < -1) {
                throw new RuntimeException("Can not be less than -1, -1 is infinite loop");
            }
            this.repeat = times != 0;
            this.repeatTimes = times;
            return this;
        }

        public AnimationComposer repeatMode(int mode) {
            this.repeatMode = mode;
            return this;
        }

        public AnimationComposer withListener(Animator.AnimatorListener listener) {
            this.callbacks.add(listener);
            return this;
        }

        public AnimationComposer onStart(final AnimatorCallback callback) {
            this.callbacks.add(new EmptyAnimatorListener() { // from class: com.fimi.app.x8s.anim.YoYo.AnimationComposer.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.fimi.app.x8s.anim.YoYo.EmptyAnimatorListener, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                    callback.call(animation);
                }
            });
            return this;
        }

        public AnimationComposer onEnd(final AnimatorCallback callback) {
            this.callbacks.add(new EmptyAnimatorListener() { // from class: com.fimi.app.x8s.anim.YoYo.AnimationComposer.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.fimi.app.x8s.anim.YoYo.EmptyAnimatorListener, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    callback.call(animation);
                }
            });
            return this;
        }

        public AnimationComposer onCancel(final AnimatorCallback callback) {
            this.callbacks.add(new EmptyAnimatorListener() { // from class: com.fimi.app.x8s.anim.YoYo.AnimationComposer.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.fimi.app.x8s.anim.YoYo.EmptyAnimatorListener, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animation) {
                    callback.call(animation);
                }
            });
            return this;
        }

        public AnimationComposer onRepeat(final AnimatorCallback callback) {
            this.callbacks.add(new EmptyAnimatorListener() { // from class: com.fimi.app.x8s.anim.YoYo.AnimationComposer.4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.fimi.app.x8s.anim.YoYo.EmptyAnimatorListener, android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animation) {
                    callback.call(animation);
                }
            });
            return this;
        }

        public YoYoString playOn(View target) {
            this.target = target;
            return new YoYoString(new YoYo(this).play(), this.target);
        }
    }

    /* loaded from: classes.dex */
    public static final class YoYoString {
        private BaseViewAnimator animator;
        private View target;

        private YoYoString(BaseViewAnimator animator, View target) {
            this.target = target;
            this.animator = animator;
        }

        public boolean isStarted() {
            return this.animator.isStarted();
        }

        public boolean isRunning() {
            return this.animator.isRunning();
        }

        public void stop() {
            stop(true);
        }

        public void stop(boolean reset) {
            this.animator.cancel();
            if (reset) {
                this.animator.reset(this.target);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BaseViewAnimator play() {
        this.animator.setTarget(this.target);
        if (this.pivotX == Float.MAX_VALUE) {
            ViewCompat.setPivotX(this.target, this.target.getMeasuredWidth() / 2.0f);
        } else {
            this.target.setPivotX(this.pivotX);
        }
        if (this.pivotY == Float.MAX_VALUE) {
            ViewCompat.setPivotY(this.target, this.target.getMeasuredHeight() / 2.0f);
        } else {
            this.target.setPivotY(this.pivotY);
        }
        this.animator.setDuration(this.duration).setRepeatTimes(this.repeatTimes).setRepeatMode(this.repeatMode).setInterpolator(this.interpolator).setStartDelay(this.delay);
        if (this.callbacks.size() > 0) {
            for (Animator.AnimatorListener callback : this.callbacks) {
                this.animator.addAnimatorListener(callback);
            }
        }
        this.animator.animate();
        return this.animator;
    }
}
