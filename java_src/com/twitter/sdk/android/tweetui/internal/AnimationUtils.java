package com.twitter.sdk.android.tweetui.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* loaded from: classes2.dex */
class AnimationUtils {
    AnimationUtils() {
    }

    public static ViewPropertyAnimator fadeOut(final View from, int duration) {
        if (from.getVisibility() == 0) {
            from.clearAnimation();
            ViewPropertyAnimator animator = from.animate();
            animator.alpha(0.0f).setDuration(duration).setListener(new AnimatorListenerAdapter() { // from class: com.twitter.sdk.android.tweetui.internal.AnimationUtils.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    from.setVisibility(4);
                    from.setAlpha(1.0f);
                }
            });
            return animator;
        }
        return null;
    }

    public static ViewPropertyAnimator fadeIn(View to, int duration) {
        if (to.getVisibility() != 0) {
            to.setAlpha(0.0f);
            to.setVisibility(0);
        }
        to.clearAnimation();
        ViewPropertyAnimator animator = to.animate();
        animator.alpha(1.0f).setDuration(duration).setListener(null);
        return animator;
    }
}
