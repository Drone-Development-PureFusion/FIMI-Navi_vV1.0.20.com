package com.fimi.app.x8s.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
/* loaded from: classes.dex */
public class X8AiAutoPhotoLoadingView extends RelativeLayout {
    public static final int STATE_PAUSE = 2;
    public static final int STATE_PLAYING = 1;
    public static final int STATE_STOP = 3;
    private ImageView imgLoading;
    private ObjectAnimator objectAnimator;
    public int state;
    private TextView x8TvLoadingHint;

    public X8AiAutoPhotoLoadingView(Context context) {
        super(context);
        initView();
    }

    public X8AiAutoPhotoLoadingView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initView();
    }

    public X8AiAutoPhotoLoadingView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initView();
    }

    public void initView() {
        LayoutInflater.from(getContext()).inflate(C0885R.layout.x8_ai_auto_photo_loading_layout, (ViewGroup) this, true);
        this.imgLoading = (ImageView) findViewById(C0885R.C0889id.img_loading);
        this.x8TvLoadingHint = (TextView) findViewById(C0885R.C0889id.x8_tv_loading_hint);
        init();
    }

    private void init() {
        this.state = 3;
        this.objectAnimator = ObjectAnimator.ofFloat(this.imgLoading, "rotation", 0.0f, 360.0f);
        this.objectAnimator.setDuration(1500L);
        this.objectAnimator.setInterpolator(new LinearInterpolator());
        this.objectAnimator.setRepeatCount(-1);
        this.objectAnimator.setRepeatMode(1);
    }

    public void playLoading() {
        if (this.state == 3) {
            this.objectAnimator.start();
            this.state = 1;
        } else if (this.state == 2) {
            this.objectAnimator.resume();
            this.state = 1;
        } else if (this.state == 1) {
            this.state = 2;
        }
    }

    public void stopLoading() {
        this.objectAnimator.end();
        this.state = 3;
    }

    public void setX8TvLoadingHint(String text) {
        this.x8TvLoadingHint.setText(text);
    }
}
