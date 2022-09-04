package com.fimi.app.x8s.widget;

import android.animation.ObjectAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.support.annotation.NonNull;
import android.view.KeyEvent;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import com.fimi.app.x8s.C0885R;
/* loaded from: classes.dex */
public class X8IMUCustomCheckingDialog extends Dialog {
    private ObjectAnimator objectAnimator;
    private int state;
    private final int STATE_PLAYING = 1;
    private final int STATE_PAUSE = 2;
    private final int STATE_STOP = 3;
    private DialogInterface.OnKeyListener keyListener = new DialogInterface.OnKeyListener() { // from class: com.fimi.app.x8s.widget.X8IMUCustomCheckingDialog.1
        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            return i == 4 && keyEvent.getRepeatCount() == 0;
        }
    };
    ImageView x8ViewImuCheckingLoading = (ImageView) findViewById(C0885R.C0889id.x8_view_imu_checking_loading);

    public X8IMUCustomCheckingDialog(@NonNull Context context) {
        super(context, C0885R.style.fimisdk_custom_dialog);
        setCanceledOnTouchOutside(false);
        setContentView(C0885R.layout.x8_imu_view_custom_checking_dialog);
        init();
        playLoading();
        setOnKeyListener(this.keyListener);
    }

    private void init() {
        this.state = 3;
        this.objectAnimator = ObjectAnimator.ofFloat(this.x8ViewImuCheckingLoading, "rotation", 0.0f, 360.0f);
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
            this.objectAnimator.pause();
            this.state = 2;
        }
    }

    public void stopLoading() {
        this.objectAnimator.end();
        this.state = 3;
    }
}
