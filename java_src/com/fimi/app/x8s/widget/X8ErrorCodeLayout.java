package com.fimi.app.x8s.widget;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import ch.qos.logback.core.net.SyslogConstants;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.anim.FlashAnimator;
import com.fimi.app.x8s.anim.YoYo;
import com.fimi.app.x8s.entity.X8ErrorCode;
import com.fimi.app.x8s.enums.X8ErrorCodeEnum;
import com.fimi.app.x8s.interfaces.IX8ErrorTextIsFinishShow;
import com.fimi.app.x8s.interfaces.IX8ErrorTextSwitchView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class X8ErrorCodeLayout extends ViewGroup {
    private X8ErrorCode level0 = null;
    private X8ErrorCode level1 = null;

    public X8ErrorCodeLayout(Context context) {
        super(context);
    }

    public X8ErrorCodeLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public X8ErrorCodeLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @SuppressLint({"NewApi"})
    public X8ErrorCodeLayout(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        View childView = getChildAt(0);
        childView.layout(0, 10, childView.getMeasuredWidth(), childView.getMeasuredHeight() + 10);
        View childView2 = getChildAt(1);
        int measureHeight = childView2.getMeasuredHeight();
        int measuredWidth = childView2.getMeasuredWidth();
        if (this.level1 == null) {
            childView2.layout(0, 10, measuredWidth, measureHeight + 10);
        } else {
            childView2.layout(0, measureHeight + 30, measuredWidth, measureHeight + 30 + measureHeight);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int w_size = View.MeasureSpec.getSize(widthMeasureSpec);
        int h_size = View.MeasureSpec.getSize(heightMeasureSpec);
        measureChildren(widthMeasureSpec, heightMeasureSpec);
        setMeasuredDimension(w_size, h_size);
    }

    public synchronized void addErrorCode(List<X8ErrorCode> code, final IX8ErrorTextIsFinishShow isFinishShow) {
        View view;
        boolean isAnimation = false;
        if (code.get(0).getLevel() == X8ErrorCodeEnum.medium) {
            if (((ViewGroup) getChildAt(1)).getChildCount() == 0) {
                view = getErrorCodeView();
                ((ViewGroup) getChildAt(1)).addView(view);
                isAnimation = true;
            } else {
                view = getChildAt(1);
            }
            X8ErrorTextSwitchView textView = (X8ErrorTextSwitchView) view.findViewById(C0885R.C0889id.tv_title);
            List<String> stringList = new ArrayList<>();
            stringList.clear();
            for (int i = 0; i < code.size(); i++) {
                stringList.add(code.get(i).getTitle());
            }
            view.setVisibility(0);
            textView.setResources(stringList, new IX8ErrorTextSwitchView() { // from class: com.fimi.app.x8s.widget.X8ErrorCodeLayout.1
                @Override // com.fimi.app.x8s.interfaces.IX8ErrorTextSwitchView
                public void isRotationFinish() {
                    X8ErrorCodeLayout.this.getChildAt(1).setVisibility(8);
                    if (isFinishShow != null) {
                        isFinishShow.isFinish();
                    }
                }
            });
        } else {
            if (((ViewGroup) getChildAt(0)).getChildCount() == 0) {
                view = getErrorCodeView();
                ((ViewGroup) getChildAt(0)).addView(view);
                isAnimation = true;
            } else {
                view = getChildAt(0);
            }
            X8ErrorTextSwitchView1 textView2 = (X8ErrorTextSwitchView1) view.findViewById(C0885R.C0889id.tv_title1);
            List<String> stringList2 = new ArrayList<>();
            stringList2.clear();
            for (int i2 = 0; i2 < code.size(); i2++) {
                stringList2.add(code.get(i2).getTitle());
            }
            view.setVisibility(0);
            textView2.setResources(stringList2, new IX8ErrorTextSwitchView() { // from class: com.fimi.app.x8s.widget.X8ErrorCodeLayout.2
                @Override // com.fimi.app.x8s.interfaces.IX8ErrorTextSwitchView
                public void isRotationFinish() {
                    X8ErrorCodeLayout.this.getChildAt(0).setVisibility(8);
                    if (isFinishShow != null) {
                        isFinishShow.isFinish();
                    }
                }
            });
        }
        ImageView imgBg = (ImageView) view.findViewById(C0885R.C0889id.img_bg);
        ImageView imgArrow = (ImageView) view.findViewById(C0885R.C0889id.iv_arrow1);
        if (code.get(0).getLevel() == X8ErrorCodeEnum.medium) {
            this.level0 = code.get(0);
        } else {
            this.level1 = code.get(0);
            imgBg.setBackgroundResource(C0885R.C0888drawable.x8_error_code_type4);
            imgArrow.setBackgroundResource(C0885R.C0888drawable.x8_error_code_type1_icon);
        }
        if (isAnimation) {
            Animation giftInAnim = getInAnimation(getContext());
            view.startAnimation(giftInAnim);
            if (code.get(0).getLevel() != X8ErrorCodeEnum.medium) {
                setFlashAnimator(imgBg);
            }
        }
    }

    private View getErrorCodeView() {
        View v = LayoutInflater.from(getContext()).inflate(C0885R.layout.x8_error_code_item_view, (ViewGroup) this, false);
        ViewGroup.LayoutParams lp = v.getLayoutParams();
        lp.width = getWidth() / 2;
        lp.height = SyslogConstants.LOG_CLOCK;
        v.setLayoutParams(lp);
        return v;
    }

    public static Animation getInAnimation(Context context) {
        return (TranslateAnimation) AnimationUtils.loadAnimation(context, C0885R.C0886anim.gift_in);
    }

    public void cleanAll() {
        cleanLevel0();
        cleanLevel1();
    }

    public void cleanLevel0() {
        ((ViewGroup) getChildAt(1)).removeAllViews();
        this.level0 = null;
    }

    public void cleanLevel1() {
        ((ViewGroup) getChildAt(0)).removeAllViews();
        this.level1 = null;
    }

    private void setFlashAnimator(View view) {
        FlashAnimator flashAnimator = new FlashAnimator();
        YoYo.with(flashAnimator).duration(1200L).repeat(1).pivot(Float.MAX_VALUE, Float.MAX_VALUE).interpolate(new AccelerateDecelerateInterpolator()).withListener(new Animator.AnimatorListener() { // from class: com.fimi.app.x8s.widget.X8ErrorCodeLayout.3
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
        }).playOn(view);
    }
}
