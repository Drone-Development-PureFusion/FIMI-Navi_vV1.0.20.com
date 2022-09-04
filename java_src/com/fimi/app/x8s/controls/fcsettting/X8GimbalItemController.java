package com.fimi.app.x8s.controls.fcsettting;

import android.content.Context;
import android.view.View;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.interfaces.AbsX8Controllers;
import com.fimi.app.x8s.interfaces.IX8GimbalSettingListener;
import com.fimi.app.x8s.widget.X8DoubleCustomDialog;
import com.fimi.app.x8s.widget.X8ValueSeakBarView;
import com.fimi.host.HostConstants;
import com.fimi.kernel.dataparser.ILinkMessage;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.kernel.store.shared.SPStoreManager;
import com.fimi.widget.X8ToastUtil;
import com.fimi.x8sdk.controller.FcCtrlManager;
import com.fimi.x8sdk.controller.X8GimbalManager;
import com.fimi.x8sdk.dataparser.AckGetPitchSpeed;
import com.fimi.x8sdk.modulestate.StateManager;
/* loaded from: classes.dex */
public class X8GimbalItemController extends AbsX8Controllers implements View.OnClickListener {
    private Button btnGimbalCalibration;
    private Button btnHorizontalTrim;
    Button btnRestParams;
    private FcCtrlManager fcCtrlManager;
    private X8GimbalManager gimbalManager;
    private IX8GimbalSettingListener listener;
    private Context mContext;
    ProgressBar pbRestsystemLoading;
    private View rlFcItem;
    private X8ValueSeakBarView sbPitchSpeed;
    private ViewStub stubFcItem;
    X8DoubleCustomDialog x8DoubleCustomDialog;
    LinearLayout x8LlAdvancedSetting;
    private boolean isRequested = false;
    private boolean isConnected = false;

    public X8GimbalItemController(View rootView) {
        super(rootView);
        this.mContext = rootView.getContext();
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
        this.stubFcItem = (ViewStub) rootView.findViewById(C0885R.C0889id.stub_gimbal_item);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
        if (this.gimbalManager != null && this.sbPitchSpeed != null) {
            this.sbPitchSpeed.setConfirmListener(new X8ValueSeakBarView.OnProgressConfirmListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalItemController.1
                @Override // com.fimi.app.x8s.widget.X8ValueSeakBarView.OnProgressConfirmListener
                public void onConfirm(float value) {
                    if (X8GimbalItemController.this.gimbalManager != null && StateManager.getInstance().getX8Drone().isConnect()) {
                        X8GimbalItemController.this.gimbalManager.setPitchSpeed((int) X8GimbalItemController.this.sbPitchSpeed.getCurrentValue(), new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalItemController.1.1
                            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                            public void onComplete(CmdResult cmdResult, Object o) {
                                ILinkMessage packet;
                                if (o != null && (packet = (ILinkMessage) o) != null && packet.getMsgRpt() != 16) {
                                    X8GimbalItemController.this.sbPitchSpeed.setImbConfirmEnable(false);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void onDroneConnected(boolean b) {
        if (this.isConnected != b) {
            this.isConnected = b;
            if (this.isShow && this.rlFcItem != null) {
                setViewEnabled(b);
                if (b && !this.isRequested) {
                    requestValue();
                    this.isRequested = true;
                }
            }
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void showItem() {
        if (this.rlFcItem == null) {
            View view = this.stubFcItem.inflate();
            this.rlFcItem = view.findViewById(C0885R.C0889id.x8_rl_main_gimbal_item);
            this.btnGimbalCalibration = (Button) view.findViewById(C0885R.C0889id.btn_gimbal_calibration);
            this.btnHorizontalTrim = (Button) view.findViewById(C0885R.C0889id.btn_horizontal_trim);
            this.sbPitchSpeed = (X8ValueSeakBarView) view.findViewById(C0885R.C0889id.vsb_pitching_speed_limit);
            this.btnRestParams = (Button) view.findViewById(C0885R.C0889id.btn_rest_params);
            this.pbRestsystemLoading = (ProgressBar) view.findViewById(C0885R.C0889id.pb_restsystem_loading);
            this.x8LlAdvancedSetting = (LinearLayout) view.findViewById(C0885R.C0889id.x8_ll_advanced_setting);
            this.btnRestParams.setOnClickListener(this);
            this.btnGimbalCalibration.setOnClickListener(this);
            this.btnHorizontalTrim.setOnClickListener(this);
            this.x8LlAdvancedSetting.setOnClickListener(this);
            requestValue();
            initActions();
        }
        this.rlFcItem.setVisibility(0);
        this.isShow = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestValue() {
        boolean isConnect = StateManager.getInstance().getX8Drone().isConnect();
        setViewEnabled(isConnect);
        if (isConnect && this.gimbalManager != null) {
            this.gimbalManager.getPitchSpeed(new UiCallBackListener<AckGetPitchSpeed>() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalItemController.2
                @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                public void onComplete(CmdResult cmdResult, AckGetPitchSpeed obj) {
                    if (cmdResult.isSuccess()) {
                        X8GimbalItemController.this.sbPitchSpeed.setProgress(obj.getSpeed());
                        X8GimbalItemController.this.sbPitchSpeed.setImbConfirmEnable(false);
                    }
                }
            });
        }
    }

    public void setViewEnabled(boolean isEnabled) {
        if (this.rlFcItem != null) {
            this.btnHorizontalTrim.setEnabled(isEnabled);
            this.sbPitchSpeed.setViewEnable(isEnabled);
            boolean isOngroud = StateManager.getInstance().getX8Drone().isOnGround();
            this.btnRestParams.setEnabled(isOngroud && isEnabled);
            this.btnRestParams.setAlpha((!isOngroud || !isEnabled) ? 0.4f : 1.0f);
            if (isEnabled) {
                this.btnHorizontalTrim.setAlpha(1.0f);
            } else {
                this.btnHorizontalTrim.setAlpha(0.4f);
            }
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void closeItem() {
        if (this.rlFcItem != null) {
            this.rlFcItem.setVisibility(8);
            this.isShow = false;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int i = v.getId();
        if (i == C0885R.C0889id.btn_gimbal_calibration) {
            if (this.listener != null) {
                this.listener.onGimbalCalibrationClick();
            }
        } else if (i == C0885R.C0889id.btn_horizontal_trim) {
            if (this.listener != null) {
                this.listener.onHorizontalTrimClick();
            }
        } else if (i == C0885R.C0889id.btn_rest_params) {
            showRestParamDialog();
        } else if (i == C0885R.C0889id.x8_ll_advanced_setting) {
            this.listener.onAdvancedSetup();
        }
    }

    public void setListener(IX8GimbalSettingListener listener) {
        this.listener = listener;
    }

    public void setFcCtrlManager(FcCtrlManager fcCtrlManager) {
        this.fcCtrlManager = fcCtrlManager;
    }

    public void setGimbalManager(X8GimbalManager gimbalManager) {
        this.gimbalManager = gimbalManager;
    }

    public void showRestParamDialog() {
        if (this.x8DoubleCustomDialog == null) {
            this.x8DoubleCustomDialog = new X8DoubleCustomDialog(this.mContext, this.mContext.getString(C0885R.string.x8_gimbal_setting_gimbal_reset_params), this.mContext.getString(C0885R.string.x8_gimbale_settting_rest_params_content), this.mContext.getString(C0885R.string.x8_general_rest), new X8DoubleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalItemController.3
                @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                public void onLeft() {
                }

                @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                public void onRight() {
                    X8GimbalItemController.this.resetGimbalSystemParams();
                    SPStoreManager.getInstance().saveObject(HostConstants.SP_KEY_NOT_TIPS, false);
                }
            });
        }
        this.x8DoubleCustomDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetGimbalSystemParams() {
        this.gimbalManager.resetGCParams(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalItemController.4
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                    X8ToastUtil.showToast(X8GimbalItemController.this.mContext, X8GimbalItemController.this.getString(C0885R.string.x8_gimbale_settting_rest_params_result_success), 0);
                } else {
                    X8ToastUtil.showToast(X8GimbalItemController.this.mContext, X8GimbalItemController.this.getString(C0885R.string.x8_gimbale_settting_rest_params_result_failed), 0);
                }
                X8GimbalItemController.this.requestValue();
            }
        });
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public boolean onClickBackKey() {
        return false;
    }
}
