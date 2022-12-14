package com.fimi.app.x8s.controls.aifly.confirm.p010ui;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.config.X8AiConfig;
import com.fimi.app.x8s.controls.X8MainAiFlyController;
import com.fimi.app.x8s.tools.ImageUtils;
import com.fimi.app.x8s.tools.X8NumberUtil;
/* renamed from: com.fimi.app.x8s.controls.aifly.confirm.ui.X8AiFixedwingConfirmUi */
/* loaded from: classes.dex */
public class X8AiFixedwingConfirmUi implements View.OnClickListener {
    private View btnOk;
    private CheckBox cbTip;
    private View contentView;
    private ImageView imgFlag;
    private View imgReturn;
    private X8MainAiFlyController listener;
    private X8MainAiFlyController mX8MainAiFlyController;
    private TextView tvFixedWing;

    public X8AiFixedwingConfirmUi(Activity activity, View parent) {
        this.contentView = activity.getLayoutInflater().inflate(C0885R.layout.x8_ai_fixedwing_confirm_layout, (ViewGroup) parent, true);
        initViews(this.contentView);
        initActions();
    }

    public void setX8MainAiFlyController(X8MainAiFlyController mX8MainAiFlyController) {
        this.mX8MainAiFlyController = mX8MainAiFlyController;
    }

    public void initViews(View rootView) {
        this.imgReturn = rootView.findViewById(C0885R.C0889id.img_ai_follow_return);
        this.btnOk = rootView.findViewById(C0885R.C0889id.btn_ai_follow_confirm_ok);
        this.cbTip = (CheckBox) rootView.findViewById(C0885R.C0889id.cb_ai_follow_confirm_ok);
        this.imgFlag = (ImageView) rootView.findViewById(C0885R.C0889id.img_fixedwing);
        this.imgFlag.setImageBitmap(ImageUtils.getBitmapByPath(rootView.getContext(), C0885R.C0888drawable.x8_img_fixedwing));
        this.tvFixedWing = (TextView) rootView.findViewById(C0885R.C0889id.tv_ai_follow_confirm_title1);
        String prx = rootView.getContext().getString(C0885R.string.x8_ai_fixed_wing_tip1);
        String s = String.format(prx, X8NumberUtil.getSpeedNumberString(3.0f, 1, false), X8NumberUtil.getDistanceNumberString(5.0f, 1, false));
        this.tvFixedWing.setText(s);
    }

    public void initActions() {
        this.imgReturn.setOnClickListener(this);
        this.btnOk.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == C0885R.C0889id.img_ai_follow_return) {
            this.mX8MainAiFlyController.onCloseConfirmUi();
        } else if (id == C0885R.C0889id.btn_ai_follow_confirm_ok) {
            if (this.cbTip.isChecked()) {
                X8AiConfig.getInstance().setAiFixedwingCourse(false);
            } else {
                X8AiConfig.getInstance().setAiFixedwingCourse(true);
            }
            this.mX8MainAiFlyController.onFixedwingConfirmOkClick();
        }
    }

    public void setFcHeart(boolean isInSky, boolean isLowPower) {
        if (isInSky && isLowPower) {
            this.btnOk.setEnabled(true);
        } else {
            this.btnOk.setEnabled(false);
        }
    }
}
