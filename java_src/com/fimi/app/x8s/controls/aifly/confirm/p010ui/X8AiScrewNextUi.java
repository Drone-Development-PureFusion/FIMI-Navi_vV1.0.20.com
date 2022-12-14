package com.fimi.app.x8s.controls.aifly.confirm.p010ui;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.controls.aifly.X8AiScrewExcuteController;
import com.fimi.app.x8s.interfaces.IX8NextViewListener;
import com.fimi.app.x8s.tools.X8NumberUtil;
import com.fimi.app.x8s.widget.X8PlusMinusSeekBar2;
import com.fimi.app.x8s.widget.X8TabHost;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.widget.SwitchButton;
import com.fimi.x8sdk.controller.FcManager;
import com.fimi.x8sdk.dataparser.AckAiScrewPrameter;
import com.fimi.x8sdk.dataparser.AckNormalCmds;
import com.fimi.x8sdk.dataparser.AutoFcSportState;
/* renamed from: com.fimi.app.x8s.controls.aifly.confirm.ui.X8AiScrewNextUi */
/* loaded from: classes.dex */
public class X8AiScrewNextUi implements View.OnClickListener, X8TabHost.OnSelectListener, X8PlusMinusSeekBar2.onSeekValueSetListener {
    private View btnOk;
    private final View contentView;
    private int currentRadius;
    private FcManager fcManager;
    private float height;
    private IX8NextViewListener mIX8NextViewListener;
    private int radius;
    private X8TabHost rorate;
    private X8PlusMinusSeekBar2 sbDistance;
    private SwitchButton swAutoReturn;
    private TextView tvDistance;
    private TextView tvHeight;
    private TextView tvMaxDistance;
    private TextView tvTip;
    private X8AiScrewExcuteController x8AiScrewExcuteController;

    public X8AiScrewNextUi(Activity activity, View parent) {
        this.contentView = activity.getLayoutInflater().inflate(C0885R.layout.x8_ai_screw_next_layout, (ViewGroup) parent, true);
        initViews(this.contentView);
        initActions();
    }

    public void initViews(View rootView) {
        this.tvHeight = (TextView) rootView.findViewById(C0885R.C0889id.tv_height_value);
        this.tvDistance = (TextView) rootView.findViewById(C0885R.C0889id.tv_distance_value);
        this.tvTip = (TextView) rootView.findViewById(C0885R.C0889id.tv_tip);
        this.tvMaxDistance = (TextView) rootView.findViewById(C0885R.C0889id.tv_max_distance_value);
        this.sbDistance = (X8PlusMinusSeekBar2) rootView.findViewById(C0885R.C0889id.sb_max_distance);
        this.swAutoReturn = (SwitchButton) rootView.findViewById(C0885R.C0889id.sb_ai_auto_return);
        this.btnOk = rootView.findViewById(C0885R.C0889id.btn_ai_ok);
        String prex = rootView.getContext().getString(C0885R.string.x8_ai_fly_screw_tip4);
        String str1 = X8NumberUtil.getDistanceNumberString(3.0f, 1, false);
        String str2 = X8NumberUtil.getDistanceNumberString(5.0f, 1, false);
        String str3 = X8NumberUtil.getDistanceNumberString(200.0f, 1, false);
        this.tvTip.setText(String.format(prex, str1, str2, str3));
        this.rorate = (X8TabHost) rootView.findViewById(C0885R.C0889id.x8_ai_screw_rorate);
        this.sbDistance.setListener(this);
        this.rorate.setOnSelectListener(this);
    }

    public void initActions() {
        this.btnOk.setOnClickListener(this);
        this.btnOk.setOnClickListener(this);
        this.swAutoReturn.setOnSwitchListener(new SwitchButton.OnSwitchListener() { // from class: com.fimi.app.x8s.controls.aifly.confirm.ui.X8AiScrewNextUi.1
            @Override // com.fimi.widget.SwitchButton.OnSwitchListener
            public void onSwitch(View view, boolean on) {
                X8AiScrewNextUi.this.swAutoReturn.setSwitchState(!on);
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == C0885R.C0889id.btn_ai_ok) {
            setSpeed();
        }
    }

    @Override // com.fimi.app.x8s.widget.X8PlusMinusSeekBar2.onSeekValueSetListener
    public void onStart(int id, int progress) {
    }

    @Override // com.fimi.app.x8s.widget.X8PlusMinusSeekBar2.onSeekValueSetListener
    public void onStop(int id, int progress) {
        this.x8AiScrewExcuteController.drawScrew(this.rorate.getSelectIndex() == 0, this.radius, this.sbDistance.getProgress());
    }

    @Override // com.fimi.app.x8s.widget.X8PlusMinusSeekBar2.onSeekValueSetListener
    public void onSeekValueSet(int viewId, int value) {
        if (viewId == C0885R.C0889id.sb_max_distance) {
            String str1 = X8NumberUtil.getDistanceNumberString(value, 1, false);
            this.tvMaxDistance.setText(str1);
        }
    }

    public void showSportState(AutoFcSportState state) {
        this.height = state.getHeight();
        this.tvHeight.setText(X8NumberUtil.getDistanceNumberString(this.height, 1, false));
        if (this.x8AiScrewExcuteController != null) {
            float r = this.x8AiScrewExcuteController.getCurrentDistance();
            int tempR = Math.round(r);
            this.tvDistance.setText(X8NumberUtil.getDistanceNumberString(r, 1, false));
            if (this.height < 5.0f || 5 >= tempR || this.radius > tempR || tempR >= 200 || this.radius >= this.sbDistance.getProgress()) {
            }
            if (this.height < 3.0f) {
                this.tvHeight.setTextColor(this.contentView.getContext().getResources().getColor(C0885R.C0887color.x8_ai_line_runing));
            } else {
                this.tvHeight.setTextColor(this.contentView.getContext().getResources().getColor(C0885R.C0887color.white_100));
            }
            if (this.currentRadius < 5) {
                this.tvDistance.setTextColor(this.contentView.getContext().getResources().getColor(C0885R.C0887color.x8_ai_line_runing));
            } else {
                this.tvDistance.setTextColor(this.contentView.getContext().getResources().getColor(C0885R.C0887color.white_100));
            }
        }
    }

    public void setListener(IX8NextViewListener mIX8NextViewListener, FcManager fcManager, X8AiScrewExcuteController x8AiScrewExcuteController, float radius, float height) {
        int intD = Math.round(radius);
        this.x8AiScrewExcuteController = x8AiScrewExcuteController;
        this.mIX8NextViewListener = mIX8NextViewListener;
        this.tvMaxDistance.setText(X8NumberUtil.getDistanceNumberString(intD, 1, false));
        this.tvDistance.setText(X8NumberUtil.getDistanceNumberString(height, 1, false));
        this.sbDistance.initData(intD, 200);
        this.height = height;
        this.fcManager = fcManager;
        this.radius = intD;
        this.currentRadius = intD;
        int v = intD + 10;
        if (v >= 200) {
            v = 200;
        }
        this.sbDistance.setProgress(v);
        if (height < 5.0f) {
            this.tvHeight.setTextColor(this.contentView.getContext().getResources().getColor(C0885R.C0887color.x8_ai_line_runing));
        } else {
            this.tvHeight.setTextColor(this.contentView.getContext().getResources().getColor(C0885R.C0887color.white_100));
        }
        if (this.currentRadius < 5) {
            this.tvDistance.setTextColor(this.contentView.getContext().getResources().getColor(C0885R.C0887color.x8_ai_line_runing));
        } else {
            this.tvDistance.setTextColor(this.contentView.getContext().getResources().getColor(C0885R.C0887color.white_100));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDistance() {
        AckAiScrewPrameter sp = new AckAiScrewPrameter();
        sp.setDistance(this.sbDistance.getProgress() * 10);
        int period = (int) Math.round(((this.radius * 2) * 3.141592653589793d) / 10.0d);
        if (period < 50) {
            period = 50;
        } else if (period > 180) {
            period = 180;
        }
        sp.setCiclePeriod(period);
        sp.setRTHTostart(this.swAutoReturn.getToggleOn() ? 1 : 0);
        sp.setVertSpeed(3);
        this.fcManager.setScrewPrameter(sp, new UiCallBackListener<AckNormalCmds>() { // from class: com.fimi.app.x8s.controls.aifly.confirm.ui.X8AiScrewNextUi.2
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, AckNormalCmds o) {
                if (cmdResult.isSuccess()) {
                    X8AiScrewNextUi.this.startExcute();
                }
            }
        });
    }

    public void setSpeed() {
        int s = 30;
        if (this.rorate.getSelectIndex() != 0 && this.rorate.getSelectIndex() == 1) {
            s = -30;
        }
        this.fcManager.setAiSurroundSpeed(s, new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.confirm.ui.X8AiScrewNextUi.3
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                    X8AiScrewNextUi.this.setDistance();
                }
            }
        });
    }

    public void startExcute() {
        this.fcManager.setScrewStart(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.confirm.ui.X8AiScrewNextUi.4
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                    X8AiScrewNextUi.this.mIX8NextViewListener.onExcuteClick();
                }
            }
        });
    }

    @Override // com.fimi.app.x8s.widget.X8TabHost.OnSelectListener
    public void onSelect(int index, String text, int last) {
        this.x8AiScrewExcuteController.drawScrew(this.rorate.getSelectIndex() == 0, this.radius, this.sbDistance.getProgress());
    }
}
