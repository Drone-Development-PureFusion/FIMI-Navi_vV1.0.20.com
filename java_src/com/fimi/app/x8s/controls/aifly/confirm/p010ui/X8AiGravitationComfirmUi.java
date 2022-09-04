package com.fimi.app.x8s.controls.aifly.confirm.p010ui;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.config.X8AiConfig;
import com.fimi.app.x8s.controls.X8MainAiFlyController;
import com.fimi.app.x8s.tools.ImageUtils;
/* renamed from: com.fimi.app.x8s.controls.aifly.confirm.ui.X8AiGravitationComfirmUi */
/* loaded from: classes.dex */
public class X8AiGravitationComfirmUi implements View.OnClickListener {
    private View contentView;
    private View mBtnOk;
    private CheckBox mCbTip;
    private ImageView mImGravitationFlag;
    private View mImgReturn;
    private X8MainAiFlyController mX8MainAiFlyController;

    public X8AiGravitationComfirmUi(Activity activity, View parent) {
        this.contentView = activity.getLayoutInflater().inflate(C0885R.layout.x8_ai_gravitation_comfirm_layout, (ViewGroup) parent, true);
        initViews(this.contentView);
        initActions();
    }

    private void initActions() {
        this.mImgReturn.setOnClickListener(this);
        this.mBtnOk.setOnClickListener(this);
    }

    private void initViews(View contentView) {
        this.mImgReturn = contentView.findViewById(C0885R.C0889id.img_ai_fly_gravitation_return);
        this.mBtnOk = contentView.findViewById(C0885R.C0889id.btn_ai_gravitation_confirm_ok);
        this.mCbTip = (CheckBox) contentView.findViewById(C0885R.C0889id.cb_ai_gravitation_confirm_ok);
        this.mImGravitationFlag = (ImageView) contentView.findViewById(C0885R.C0889id.img_gravitation_flag);
        this.mImGravitationFlag.setImageBitmap(ImageUtils.getBitmapByPath(contentView.getContext(), C0885R.C0888drawable.x8_img_ai_gravitation_flag));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i = view.getId();
        if (i == C0885R.C0889id.img_ai_fly_gravitation_return) {
            this.mX8MainAiFlyController.onCloseConfirmUi();
        } else if (i == C0885R.C0889id.btn_ai_gravitation_confirm_ok) {
            if (this.mCbTip.isChecked()) {
                X8AiConfig.getInstance().setAiFlyGravitation(false);
            } else {
                X8AiConfig.getInstance().setAiFlyGravitation(true);
            }
            this.mX8MainAiFlyController.onGravitationConfirmOkClick();
        }
    }

    public void setFcHeart(boolean isInSky, boolean isLowPower) {
    }

    public void setX8MainAiFlyController(X8MainAiFlyController x8MainAiFlyController) {
        this.mX8MainAiFlyController = x8MainAiFlyController;
    }
}
