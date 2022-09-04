package com.fimi.app.x8s.controls.aifly.confirm.p010ui;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.config.X8AiConfig;
import com.fimi.app.x8s.controls.X8MainAiFlyController;
import com.fimi.app.x8s.interfaces.AbsX8BaseConnectView;
import com.fimi.app.x8s.p011ui.activity.X8AiLineHistoryActivity;
import com.fimi.app.x8s.p011ui.activity.X8sMainActivity;
import com.fimi.app.x8s.tools.ImageUtils;
import com.fimi.app.x8s.tools.X8NumberUtil;
/* renamed from: com.fimi.app.x8s.controls.aifly.confirm.ui.X8AiLinesConfirmUi */
/* loaded from: classes.dex */
public class X8AiLinesConfirmUi extends AbsX8BaseConnectView implements View.OnClickListener {
    private Activity activity;
    private View btnOk;
    private CheckBox cbTip;
    private View contentView;
    private ImageView imgFlag;
    private View imgReturn;
    private X8MainAiFlyController listener;
    private ImageView mCurveSettingPonit;
    private ImageView mFlyPoint;
    private ImageView mHistory;
    private LinearLayout mLlSecondItemSelect;
    private ImageView mStraightSettingPonit;
    private TextView mTvCurveSettingPoint;
    private TextView mTvFlyPoint;
    private TextView mTvHistory;
    private TextView mTvStraightSettingPonit;
    private X8MainAiFlyController mX8MainAiFlyController;
    private int menuIndex;
    private ScrollView svTips;
    private TextView tvContentTip1;
    private TextView tvTip1;
    private TextView tvTip2;
    private TextView tvTip3;
    private TextView tvTip4;
    private TextView tvTitle;
    private View vConfirm;
    private View vItemSelect;

    public X8AiLinesConfirmUi(Activity activity, View parent) {
        super(activity, parent);
        this.activity = activity;
        this.contentView = activity.getLayoutInflater().inflate(C0885R.layout.x8_ai_lines_confirm_layout, (ViewGroup) parent, true);
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
        this.vConfirm = rootView.findViewById(C0885R.C0889id.rl_ai_confirm);
        this.tvTitle = (TextView) rootView.findViewById(C0885R.C0889id.tv_ai_follow_title);
        this.tvContentTip1 = (TextView) rootView.findViewById(C0885R.C0889id.tv_ai_follow_confirm_title1);
        this.mStraightSettingPonit = (ImageView) rootView.findViewById(C0885R.C0889id.img_ai_straight_line_setting_point);
        this.mCurveSettingPonit = (ImageView) rootView.findViewById(C0885R.C0889id.img_ai_curve_setting_point);
        this.mFlyPoint = (ImageView) rootView.findViewById(C0885R.C0889id.img_ai_fly_point);
        this.mHistory = (ImageView) rootView.findViewById(C0885R.C0889id.img_ai_line_history);
        this.vItemSelect = rootView.findViewById(C0885R.C0889id.ll_ai_line_item);
        this.svTips = (ScrollView) rootView.findViewById(C0885R.C0889id.sv_ai_items);
        this.imgFlag = (ImageView) rootView.findViewById(C0885R.C0889id.img_ai_line_flag);
        this.mTvStraightSettingPonit = (TextView) rootView.findViewById(C0885R.C0889id.tv_ai_straight_line_setting_point);
        this.mTvCurveSettingPoint = (TextView) rootView.findViewById(C0885R.C0889id.tv_ai_curve_setting_point);
        this.mTvFlyPoint = (TextView) rootView.findViewById(C0885R.C0889id.tv_ai_fly_point);
        this.mTvHistory = (TextView) rootView.findViewById(C0885R.C0889id.tv_ai_line_history);
        this.vItemSelect.setVisibility(0);
        this.vConfirm.setVisibility(8);
        this.tvTitle.setText(this.contentView.getContext().getString(C0885R.string.x8_ai_fly_route));
        if (this.isConect) {
            setFcHeart(this.isInSky, this.isLowpower);
        } else {
            this.mStraightSettingPonit.setEnabled(false);
            this.mCurveSettingPonit.setEnabled(false);
            this.mFlyPoint.setEnabled(false);
            this.mHistory.setEnabled(false);
            this.mTvStraightSettingPonit.setEnabled(false);
            this.mTvCurveSettingPoint.setEnabled(false);
            this.mTvFlyPoint.setEnabled(false);
            this.mTvHistory.setEnabled(false);
        }
        this.tvTip1 = (TextView) rootView.findViewById(C0885R.C0889id.tv_ai_follow_confirm_title1);
        this.tvTip2 = (TextView) rootView.findViewById(C0885R.C0889id.tv_ai_follow_confirm_title2);
        this.tvTip3 = (TextView) rootView.findViewById(C0885R.C0889id.tv_ai_follow_confirm_title3);
        this.tvTip4 = (TextView) rootView.findViewById(C0885R.C0889id.tv_ai_follow_confirm_title4);
    }

    public void initActions() {
        this.imgReturn.setOnClickListener(this);
        this.btnOk.setOnClickListener(this);
        this.mStraightSettingPonit.setOnClickListener(this);
        this.mCurveSettingPonit.setOnClickListener(this);
        this.mFlyPoint.setOnClickListener(this);
        this.mHistory.setOnClickListener(this);
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
            this.tvTitle.setText(this.contentView.getContext().getString(C0885R.string.x8_ai_fly_route));
        } else if (id == C0885R.C0889id.btn_ai_follow_confirm_ok) {
            if (this.menuIndex == 1) {
                if (this.cbTip.isChecked()) {
                    X8AiConfig.getInstance().setAiLineCourse(false);
                } else {
                    X8AiConfig.getInstance().setAiLineCourse(true);
                }
                this.mX8MainAiFlyController.onLinesConfirmOkClick(this.menuIndex - 1);
            } else if (this.menuIndex == 2) {
                if (this.cbTip.isChecked()) {
                    X8AiConfig.getInstance().setAiLineCourseFpv(false);
                } else {
                    X8AiConfig.getInstance().setAiLineCourseFpv(true);
                }
                this.mX8MainAiFlyController.onLinesConfirmOkClick(this.menuIndex - 1);
            } else if (this.menuIndex == 3) {
                if (this.cbTip.isChecked()) {
                    X8AiConfig.getInstance().setAiLineCourseHistory(false);
                } else {
                    X8AiConfig.getInstance().setAiLineCourseHistory(true);
                }
                Intent intent = new Intent(this.activity, X8AiLineHistoryActivity.class);
                this.activity.startActivityForResult(intent, X8sMainActivity.X8GETAILINEID);
            } else if (this.menuIndex == 4) {
                if (this.cbTip.isChecked()) {
                    X8AiConfig.getInstance().setAiLineCurve(false);
                } else {
                    X8AiConfig.getInstance().setAiLineCurve(true);
                }
                this.mX8MainAiFlyController.onLinesConfirmOkClick(this.menuIndex - 1);
            }
        } else if (id == C0885R.C0889id.img_ai_straight_line_setting_point) {
            this.menuIndex = 1;
            if (!X8AiConfig.getInstance().isAiLineCourse()) {
                this.mX8MainAiFlyController.onLinesConfirmOkClick(this.menuIndex - 1);
            } else {
                String title = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_setting_point_model);
                String s = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_tip11);
                String content1 = String.format(s, X8NumberUtil.getDistanceNumberString(1000.0f, 0, true));
                String content2 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_tip12);
                String content3 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_tip13);
                String content4 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_tip14);
                int res = C0885R.C0888drawable.x8_img_ai_line_map;
                onSelectItem(title, content1, content2, content3, content4, res);
            }
            this.btnOk.setEnabled(true);
        } else if (id == C0885R.C0889id.img_ai_fly_point) {
            this.menuIndex = 2;
            if (!X8AiConfig.getInstance().isAiLineCourseFpv()) {
                this.mX8MainAiFlyController.onLinesConfirmOkClick(this.menuIndex - 1);
                return;
            }
            String title2 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_vedio_model);
            String content12 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_tip21);
            String content22 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_tip12);
            String content32 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_tip13);
            String content42 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_tip14);
            int res2 = C0885R.C0888drawable.x8_img_ai_line_fpv;
            onSelectItem(title2, content12, content22, content32, content42, res2);
        } else if (id == C0885R.C0889id.img_ai_line_history) {
            this.menuIndex = 3;
            if (!X8AiConfig.getInstance().isAiLineCourseHistory()) {
                Intent intent2 = new Intent(this.activity, X8AiLineHistoryActivity.class);
                this.activity.startActivityForResult(intent2, X8sMainActivity.X8GETAILINEID);
                return;
            }
            String title3 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_line_history);
            String content13 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_tip31);
            String content23 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_tip32);
            String content33 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_tip33);
            String content43 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_tip34);
            int res3 = C0885R.C0888drawable.x8_img_ai_line_history;
            onSelectItem(title3, content13, content23, content33, content43, res3);
        } else if (id == C0885R.C0889id.img_ai_curve_setting_point) {
            this.menuIndex = 4;
            if (!X8AiConfig.getInstance().isAiLineCurve()) {
                this.mX8MainAiFlyController.onLinesConfirmOkClick(this.menuIndex - 1);
            } else {
                String title4 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_setting_curve_model);
                String content14 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_setting_curve_tip1);
                String content24 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_setting_curve_tip2);
                String content34 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_setting_curve_tip3);
                String content44 = this.contentView.getContext().getString(C0885R.string.x8_ai_fly_lines_setting_curve_tip4);
                int res4 = C0885R.C0888drawable.x8_img_ai_line_curve_map;
                onSelectItem(title4, content14, content24, content34, content44, res4);
            }
            this.btnOk.setEnabled(true);
        }
    }

    public void onSelectItem(String title, String content1, String content2, String content3, String content4, int res) {
        this.vItemSelect.setVisibility(8);
        this.vConfirm.setVisibility(0);
        this.tvTitle.setText(title);
        this.imgFlag.setImageBitmap(ImageUtils.getBitmapByPath(this.contentView.getContext(), res));
        this.tvTip1.setText(content1);
        this.tvTip2.setText(content2);
        this.tvTip3.setText(content3);
        this.tvTip4.setText(content4);
    }

    public void setFcHeart(boolean inSky, boolean isLowPower) {
        this.mStraightSettingPonit.setEnabled(true);
        this.mCurveSettingPonit.setEnabled(true);
        this.mHistory.setEnabled(inSky);
        this.mFlyPoint.setEnabled(inSky);
        this.mTvStraightSettingPonit.setEnabled(true);
        this.mTvCurveSettingPoint.setEnabled(true);
        this.mTvHistory.setEnabled(inSky);
        this.mTvFlyPoint.setEnabled(inSky);
        if ((this.menuIndex == 1) | (this.menuIndex == 4)) {
            if (isLowPower) {
                this.btnOk.setEnabled(true);
            } else {
                this.btnOk.setEnabled(false);
            }
        } else if (inSky && isLowPower) {
            this.btnOk.setEnabled(true);
        } else {
            this.btnOk.setEnabled(false);
        }
    }
}
