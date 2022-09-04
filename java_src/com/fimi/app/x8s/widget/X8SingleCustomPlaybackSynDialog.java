package com.fimi.app.x8s.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
/* loaded from: classes.dex */
public class X8SingleCustomPlaybackSynDialog extends X8sBaseDialog {
    private ProgressBar x8PbPlaybackPlan = (ProgressBar) findViewById(C0885R.C0889id.x8_pb_playback_plan);
    private TextView x8TvPlaybackProgress = (TextView) findViewById(C0885R.C0889id.x8_tv_playback_progress);

    /* loaded from: classes.dex */
    public interface onDialogButtonClickListener {
        void onSingleButtonClick();
    }

    public X8SingleCustomPlaybackSynDialog(@NonNull Context context, @Nullable String title, @NonNull final onDialogButtonClickListener listener) {
        super(context, C0885R.style.fimisdk_custom_dialog);
        setContentView(C0885R.layout.x8_view_custom_playback_syn_dialog);
        ImageView x8IvPlaybackAnimation = (ImageView) findViewById(C0885R.C0889id.x8_iv_playback_animation);
        x8IvPlaybackAnimation.setBackgroundResource(C0885R.C0888drawable.x8_calibration_animation);
        AnimationDrawable animationDrawable = (AnimationDrawable) x8IvPlaybackAnimation.getBackground();
        animationDrawable.start();
        if (title != null) {
            TextView tvTitle = (TextView) findViewById(C0885R.C0889id.tv_title);
            tvTitle.setText(title);
        }
        Button tvSure = (Button) findViewById(C0885R.C0889id.tv_sure);
        tvSure.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8SingleCustomPlaybackSynDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                X8SingleCustomPlaybackSynDialog.this.dismiss();
                if (listener != null) {
                    listener.onSingleButtonClick();
                }
            }
        });
    }

    @SuppressLint({"SetTextI18n"})
    public void setX8PbPlaybackPlanValue(int plan) {
        this.x8PbPlaybackPlan.setProgress(plan);
        this.x8TvPlaybackProgress.setText(plan + "%");
    }
}
