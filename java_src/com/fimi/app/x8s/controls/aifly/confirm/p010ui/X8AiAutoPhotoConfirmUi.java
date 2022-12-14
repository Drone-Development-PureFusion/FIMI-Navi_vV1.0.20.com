package com.fimi.app.x8s.controls.aifly.confirm.p010ui;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.config.X8AiConfig;
import com.fimi.app.x8s.controls.X8MainAiFlyController;
import com.fimi.app.x8s.tools.ImageUtils;
/* renamed from: com.fimi.app.x8s.controls.aifly.confirm.ui.X8AiAutoPhotoConfirmUi */
/* loaded from: classes.dex */
public class X8AiAutoPhotoConfirmUi implements View.OnClickListener {
    private View btnOk;
    private CheckBox cbTip;
    private View contentView;
    private ImageView imgFlag;
    private View imgReturn;
    private X8MainAiFlyController listener;
    private X8MainAiFlyController mX8MainAiFlyController;
    private int menuIndex;
    private ScrollView svTips;
    private TextView tvContentTip1;
    private View tvPhoto1;
    private View tvPhoto2;
    private TextView tvTitle;
    private View vConfirm;
    private View vItem1;
    private View vItem2;
    private View vItemSelect;

    public X8AiAutoPhotoConfirmUi(Activity activity, View parent) {
        this.contentView = activity.getLayoutInflater().inflate(C0885R.layout.x8_ai_auto_photo_confirm_layout, (ViewGroup) parent, true);
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
        this.svTips = (ScrollView) rootView.findViewById(C0885R.C0889id.sv_ai_items);
        this.vItemSelect = rootView.findViewById(C0885R.C0889id.ll_ai_autophoto_item);
        this.vConfirm = rootView.findViewById(C0885R.C0889id.rl_ai_autophoto_confirm);
        this.tvTitle = (TextView) rootView.findViewById(C0885R.C0889id.tv_ai_follow_title);
        this.tvContentTip1 = (TextView) rootView.findViewById(C0885R.C0889id.tv_ai_follow_confirm_title1);
        this.vItem1 = rootView.findViewById(C0885R.C0889id.rl_ai_photo1);
        this.vItem2 = rootView.findViewById(C0885R.C0889id.rl_ai_photo2);
        this.tvPhoto1 = rootView.findViewById(C0885R.C0889id.tv_ai_photo1);
        this.tvPhoto2 = rootView.findViewById(C0885R.C0889id.tv_ai_photo2);
        this.vItemSelect.setVisibility(0);
        this.vConfirm.setVisibility(8);
        this.tvTitle.setText(this.contentView.getContext().getString(C0885R.string.x8_ai_fly_auto_photo));
        this.imgFlag = (ImageView) rootView.findViewById(C0885R.C0889id.img_auto_photo_flag);
    }

    public void initActions() {
        this.imgReturn.setOnClickListener(this);
        this.btnOk.setOnClickListener(this);
        this.vItem1.setOnClickListener(this);
        this.vItem2.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == C0885R.C0889id.img_ai_follow_return) {
            if (this.menuIndex == 0) {
                this.mX8MainAiFlyController.onCloseConfirmUi();
                return;
            }
            this.menuIndex = 0;
            this.svTips.fullScroll(33);
            this.vItemSelect.setVisibility(0);
            this.vConfirm.setVisibility(8);
            this.tvTitle.setText(this.contentView.getContext().getString(C0885R.string.x8_ai_fly_auto_photo));
        } else if (id == C0885R.C0889id.btn_ai_follow_confirm_ok) {
            if (this.menuIndex == 1) {
                if (this.cbTip.isChecked()) {
                    X8AiConfig.getInstance().setAiAutoPhotoCustomCourse(false);
                } else {
                    X8AiConfig.getInstance().setAiAutoPhotoCustomCourse(true);
                }
            } else if (this.menuIndex == 2) {
                if (this.cbTip.isChecked()) {
                    X8AiConfig.getInstance().setAiAutoPhotoVerticalCourse(false);
                } else {
                    X8AiConfig.getInstance().setAiAutoPhotoVerticalCourse(true);
                }
            }
            this.mX8MainAiFlyController.onAutoPhotoConfirmOk(this.menuIndex - 1);
        } else if (id == C0885R.C0889id.rl_ai_photo1) {
            this.menuIndex = 1;
            if (!X8AiConfig.getInstance().isAiAutoPhotoCustomCourse()) {
                this.mX8MainAiFlyController.onAutoPhotoConfirmOk(this.menuIndex - 1);
                return;
            }
            String title = this.contentView.getContext().getString(C0885R.string.x8_ai_auto_photo_title);
            String content = this.contentView.getContext().getString(C0885R.string.x8_ai_auto_photo_tip1);
            int res = C0885R.C0888drawable.x8_img_auto_photo_h_flag;
            onSelectItem(title, content, res);
        } else if (id == C0885R.C0889id.rl_ai_photo2) {
            this.menuIndex = 2;
            if (!X8AiConfig.getInstance().isAiAutoPhotoVerticalCourse()) {
                this.mX8MainAiFlyController.onAutoPhotoConfirmOk(this.menuIndex - 1);
                return;
            }
            String title2 = this.contentView.getContext().getString(C0885R.string.x8_ai_auto_photo_vertical_title);
            String content2 = this.contentView.getContext().getString(C0885R.string.x8_ai_auto_photo_vertical_tip1);
            int res2 = C0885R.C0888drawable.x8_img_auto_photo_vertical_flag;
            onSelectItem(title2, content2, res2);
        }
    }

    public void onSelectItem(String title, String content, int res) {
        this.vItemSelect.setVisibility(8);
        this.vConfirm.setVisibility(0);
        this.tvTitle.setText(title);
        this.tvContentTip1.setText(content);
        this.imgFlag.setImageBitmap(ImageUtils.getBitmapByPath(this.contentView.getContext(), res));
    }

    public void setFcHeart(boolean isInSky, boolean isLowPower) {
        if (isInSky && isLowPower) {
            this.btnOk.setEnabled(true);
        } else {
            this.btnOk.setEnabled(false);
        }
    }
}
