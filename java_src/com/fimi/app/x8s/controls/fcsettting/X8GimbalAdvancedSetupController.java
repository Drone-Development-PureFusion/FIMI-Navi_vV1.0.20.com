package com.fimi.app.x8s.controls.fcsettting;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.interfaces.AbsX8MenuBoxControllers;
import com.fimi.app.x8s.interfaces.IX8GeneraModifyModeControllerListener;
import com.fimi.app.x8s.interfaces.IX8GimbalSettingListener;
import com.fimi.app.x8s.widget.X8ValueSeakBarWithTip;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.x8sdk.controller.X8GimbalManager;
import com.fimi.x8sdk.dataparser.AckGetGimbalGain;
import com.fimi.x8sdk.modulestate.StateManager;
/* loaded from: classes.dex */
public class X8GimbalAdvancedSetupController extends AbsX8MenuBoxControllers {
    private ImageView btnReturn;
    private X8GimbalManager gimbalManager;
    private boolean isConnected = false;
    private boolean isRequested = false;
    private IX8GimbalSettingListener ix8GimbalSettingListener;
    private IX8GeneraModifyModeControllerListener modeControllerListener;
    X8ValueSeakBarWithTip vsbGimbalGain;
    private Button x8BtnThreeAxisTuning;

    public X8GimbalAdvancedSetupController(View rootView) {
        super(rootView);
    }

    public void setModeControllerListener(IX8GeneraModifyModeControllerListener modeControllerListener) {
        this.modeControllerListener = modeControllerListener;
    }

    public void setOnGimbalSettingListener(IX8GimbalSettingListener ix8GimbalSettingListener) {
        this.ix8GimbalSettingListener = ix8GimbalSettingListener;
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
        LayoutInflater inflater = LayoutInflater.from(rootView.getContext());
        this.handleView = inflater.inflate(C0885R.layout.x8_main_general_item_advanced_setup_layout, (ViewGroup) rootView, true);
        this.btnReturn = (ImageView) this.handleView.findViewById(C0885R.C0889id.btn_return);
        this.vsbGimbalGain = (X8ValueSeakBarWithTip) this.handleView.findViewById(C0885R.C0889id.vsb_gimbal_gain);
        this.x8BtnThreeAxisTuning = (Button) this.handleView.findViewById(C0885R.C0889id.x8_btn_three_axis_tuning);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
        this.btnReturn.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalAdvancedSetupController.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                X8GimbalAdvancedSetupController.this.handleView.setVisibility(8);
                X8GimbalAdvancedSetupController.this.modeControllerListener.returnBack();
            }
        });
        this.x8BtnThreeAxisTuning.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalAdvancedSetupController.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                X8GimbalAdvancedSetupController.this.gimbalManager.setGcParamsNew(0, 0.0f, 0.0f, 0.0f, new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalAdvancedSetupController.2.1
                    @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                    public void onComplete(CmdResult cmdResult, Object o) {
                        if (cmdResult.isSuccess) {
                            X8GimbalAdvancedSetupController.this.handleView.setVisibility(8);
                            X8GimbalAdvancedSetupController.this.ix8GimbalSettingListener.onGimbalXYZAdjust();
                        }
                    }
                });
            }
        });
        this.vsbGimbalGain.setConfirmListener(new X8ValueSeakBarWithTip.OnProgressConfirmListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalAdvancedSetupController.3
            @Override // com.fimi.app.x8s.widget.X8ValueSeakBarWithTip.OnProgressConfirmListener
            public void onConfirm(float value) {
                if (StateManager.getInstance().getX8Drone().isConnect()) {
                    X8GimbalAdvancedSetupController.this.gimbalManager.setGcGain((int) X8GimbalAdvancedSetupController.this.vsbGimbalGain.getCurrentValue(), new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalAdvancedSetupController.3.1
                        @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                        public void onComplete(CmdResult cmdResult, Object o) {
                            if (cmdResult.isSuccess()) {
                                X8GimbalAdvancedSetupController.this.vsbGimbalGain.setImbConfirmEnable(false);
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void onDroneConnected(boolean b) {
        if (this.isConnected != b) {
            this.isConnected = b;
            if (this.isShow) {
                setViewEnabled(b);
                if (b && !this.isRequested) {
                    requestValue();
                    this.isRequested = true;
                }
            }
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void closeItem() {
        super.closeItem();
        this.isShow = false;
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void showItem() {
        super.showItem();
        this.isShow = true;
        requestValue();
    }

    public void setGimbalManager(X8GimbalManager gimbalManager) {
        this.gimbalManager = gimbalManager;
    }

    public void setViewEnabled(boolean isEnabled) {
        this.vsbGimbalGain.setViewEnable(isEnabled);
        boolean isOngroud = StateManager.getInstance().getX8Drone().isOnGround();
        if (isEnabled && isOngroud) {
            this.x8BtnThreeAxisTuning.setAlpha(1.0f);
            this.x8BtnThreeAxisTuning.setEnabled(true);
            return;
        }
        this.x8BtnThreeAxisTuning.setAlpha(0.4f);
        this.x8BtnThreeAxisTuning.setEnabled(false);
    }

    private void requestValue() {
        boolean isConnect = StateManager.getInstance().getX8Drone().isConnect();
        setViewEnabled(isConnect);
        if (isConnect && this.gimbalManager != null) {
            this.gimbalManager.getGcGain(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalAdvancedSetupController.4
                @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                public void onComplete(CmdResult cmdResult, Object o) {
                    if (cmdResult.isSuccess()) {
                        AckGetGimbalGain ackGetGimbalGain = (AckGetGimbalGain) o;
                        X8GimbalAdvancedSetupController.this.vsbGimbalGain.setProgress(ackGetGimbalGain.getData());
                        X8GimbalAdvancedSetupController.this.vsbGimbalGain.setImbConfirmEnable(false);
                    }
                }
            });
        }
    }
}
