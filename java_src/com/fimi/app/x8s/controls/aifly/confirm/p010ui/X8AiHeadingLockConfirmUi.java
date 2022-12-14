package com.fimi.app.x8s.controls.aifly.confirm.p010ui;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.config.X8AiConfig;
import com.fimi.app.x8s.controls.X8MainAiFlyController;
import com.fimi.app.x8s.tools.ImageUtils;
import com.fimi.x8sdk.dataparser.AutoFcSportState;
import com.fimi.x8sdk.modulestate.StateManager;
/* renamed from: com.fimi.app.x8s.controls.aifly.confirm.ui.X8AiHeadingLockConfirmUi */
/* loaded from: classes.dex */
public class X8AiHeadingLockConfirmUi implements View.OnClickListener {
    private Button btnOk;
    private CheckBox cbTip;
    private View contentView;
    private ImageView imgFlag;
    private ImageView imgLockAngle;
    private ImageView imgLockBg;
    private View imgReturn;
    private int index = 0;
    private boolean isCourse;
    private X8MainAiFlyController listener;
    private X8MainAiFlyController mX8MainAiFlyController;
    private String prex;
    private TextView tvAngle;
    private View vAngle;
    private View vCourse;

    public X8AiHeadingLockConfirmUi(Activity activity, View parent) {
        this.contentView = activity.getLayoutInflater().inflate(C0885R.layout.x8_ai_heading_lock_confirm_layout, (ViewGroup) parent, true);
        initViews(this.contentView);
        initActions();
    }

    public void setX8MainAiFlyController(X8MainAiFlyController mX8MainAiFlyController) {
        this.mX8MainAiFlyController = mX8MainAiFlyController;
    }

    public void initViews(View rootView) {
        this.imgReturn = rootView.findViewById(C0885R.C0889id.img_ai_follow_return);
        this.btnOk = (Button) rootView.findViewById(C0885R.C0889id.btn_ai_follow_confirm_ok);
        this.isCourse = X8AiConfig.getInstance().isAiHeadingLock();
        this.vCourse = rootView.findViewById(C0885R.C0889id.rl_head_lock_course);
        this.vAngle = rootView.findViewById(C0885R.C0889id.rl_head_lock_setangle);
        this.tvAngle = (TextView) rootView.findViewById(C0885R.C0889id.tv_lock_angle);
        this.prex = rootView.getContext().getString(C0885R.string.x8_ai_heading_lock_tip3);
        this.imgFlag = (ImageView) rootView.findViewById(C0885R.C0889id.img_heading_lock_flag);
        this.imgLockBg = (ImageView) rootView.findViewById(C0885R.C0889id.img_lock_bg);
        this.imgLockAngle = (ImageView) rootView.findViewById(C0885R.C0889id.img_lock_angle);
        this.imgLockBg.setImageBitmap(ImageUtils.getBitmapByPath(rootView.getContext(), C0885R.C0888drawable.x8_img_head_lock_bg));
        this.imgLockAngle.setImageBitmap(ImageUtils.getBitmapByPath(rootView.getContext(), C0885R.C0888drawable.x8_img_head_lock_arrow));
        if (this.isCourse) {
            this.vCourse.setVisibility(0);
            this.vAngle.setVisibility(8);
            this.btnOk.setText(rootView.getContext().getString(C0885R.string.x8_ai_fly_follow_ok));
            this.cbTip = (CheckBox) rootView.findViewById(C0885R.C0889id.cb_ai_follow_confirm_ok);
            this.imgFlag.setImageBitmap(ImageUtils.getBitmapByPath(rootView.getContext(), C0885R.C0888drawable.x8_img_heading_lock_flag));
            return;
        }
        this.vCourse.setVisibility(8);
        this.vAngle.setVisibility(0);
        this.btnOk.setText(rootView.getContext().getString(C0885R.string.x8_ai_fly_follow_go));
        float angle = StateManager.getInstance().getX8Drone().getFcSportState().getDeviceAngle();
        this.tvAngle.setText(String.format(this.prex, Float.valueOf(angle)));
        this.imgLockAngle.setRotation(angle);
    }

    public void initActions() {
        this.imgReturn.setOnClickListener(this);
        this.btnOk.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == C0885R.C0889id.img_ai_follow_return) {
            if (this.index == 0) {
                this.mX8MainAiFlyController.onCloseConfirmUi();
            } else if (this.index == 1) {
                if (this.isCourse) {
                    this.vCourse.setVisibility(0);
                    this.vAngle.setVisibility(8);
                    this.btnOk.setText(this.contentView.getContext().getString(C0885R.string.x8_ai_fly_follow_ok));
                    this.index = 0;
                    return;
                }
                this.mX8MainAiFlyController.onCloseConfirmUi();
            }
        } else if (id == C0885R.C0889id.btn_ai_follow_confirm_ok) {
            if (this.isCourse) {
                if (this.index == 0) {
                    if (this.cbTip.isChecked()) {
                        X8AiConfig.getInstance().setAiHeadingLock(false);
                        this.isCourse = false;
                    } else {
                        X8AiConfig.getInstance().setAiHeadingLock(true);
                    }
                    this.vCourse.setVisibility(8);
                    this.vAngle.setVisibility(0);
                    this.btnOk.setText(this.contentView.getContext().getString(C0885R.string.x8_ai_fly_follow_go));
                    this.index = 1;
                    return;
                }
                this.mX8MainAiFlyController.onHeadingLockConfirmOkClick();
                return;
            }
            this.mX8MainAiFlyController.onHeadingLockConfirmOkClick();
        }
    }

    public void setFcHeart(boolean isInSky, boolean isLowPower) {
        if (isInSky && isLowPower) {
            this.btnOk.setEnabled(true);
        } else {
            this.btnOk.setEnabled(false);
        }
    }

    public void showSportState(AutoFcSportState state) {
        float angle = state.getDeviceAngle();
        this.tvAngle.setText(String.format(this.prex, Float.valueOf(angle)));
        this.imgLockAngle.setRotation(angle);
    }
}
