package com.fimi.app.x8s.controls.fcsettting;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.interfaces.AbsX8MenuBoxControllers;
import com.fimi.app.x8s.interfaces.IX8GimbalXYZAdjustListener;
import com.fimi.app.x8s.interfaces.IX8MainTopBarListener;
import com.fimi.app.x8s.p011ui.activity.X8sMainActivity;
import com.fimi.app.x8s.widget.X8AiTipWithCloseView;
import com.fimi.app.x8s.widget.X8DoubleCustomDialog;
import com.fimi.app.x8s.widget.X8GimbalXYZAdjustRelayout;
import com.fimi.app.x8s.widget.X8SingleCustomDialog;
import com.fimi.host.HostConstants;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.kernel.store.shared.SPStoreManager;
import com.fimi.kernel.utils.NumberUtil;
import com.fimi.widget.X8ToastUtil;
import com.fimi.x8sdk.controller.X8GimbalManager;
import com.fimi.x8sdk.dataparser.AckCloudParamsNew;
/* loaded from: classes.dex */
public class X8GimbalXYZAdjustController extends AbsX8MenuBoxControllers implements View.OnClickListener {
    private final X8sMainActivity activity;
    Button btnCalibrate;
    private Button btnGet;
    private Button btnSave;
    private IX8MainTopBarListener ix8MainTopBarListener;
    private IX8GimbalXYZAdjustListener listener;
    private Context mContext;
    private X8GimbalManager mX8GimbalManager;
    Button x8BtnXyzAdjustExit;
    Button x8BtnXyzAdjustSave;
    private X8DoubleCustomDialog x8DoubleCustomDialog;
    private X8AiTipWithCloseView x8GimbalXYZAdiustTip;
    private X8SingleCustomDialog x8SingleCustomDialog;
    private X8GimbalXYZAdjustRelayout x8ViewGimbalP;
    private X8GimbalXYZAdjustRelayout x8ViewGimbalR;
    private X8GimbalXYZAdjustRelayout x8ViewGimbalY;
    private float[] xyzValue;
    private String defaultUnit = "";
    private float valueOnFoot = 0.2f;
    private float minDefaultAdjustValue = -10.0f;
    private float maxDefaultAdjustValue = 10.0f;

    public X8GimbalXYZAdjustController(View rootView, X8sMainActivity activity) {
        super(rootView);
        this.activity = activity;
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers, com.fimi.app.x8s.interfaces.IControllers
    public void openUi() {
        this.isShow = true;
        LayoutInflater layoutInflater = LayoutInflater.from(this.rootView.getContext());
        this.handleView = layoutInflater.inflate(C0885R.layout.x8_gimbal_xyz_adjust_layout, (ViewGroup) this.rootView, true);
        this.mContext = this.handleView.getContext();
        this.x8GimbalXYZAdiustTip = (X8AiTipWithCloseView) this.handleView.findViewById(C0885R.C0889id.x8_gimbal_xyz_adiust_tip);
        this.x8GimbalXYZAdiustTip.setTipText(getString(C0885R.string.x8_gimbal_xyz_adjust_hint));
        this.x8BtnXyzAdjustExit = (Button) this.handleView.findViewById(C0885R.C0889id.x8_btn_xyz_adjust_exit);
        this.x8BtnXyzAdjustSave = (Button) this.handleView.findViewById(C0885R.C0889id.x8_btn_xyz_adjust_save);
        this.x8ViewGimbalP = (X8GimbalXYZAdjustRelayout) this.handleView.findViewById(C0885R.C0889id.x8_view_gimbal_p);
        this.x8ViewGimbalR = (X8GimbalXYZAdjustRelayout) this.handleView.findViewById(C0885R.C0889id.x8_view_gimbal_r);
        this.x8ViewGimbalY = (X8GimbalXYZAdjustRelayout) this.handleView.findViewById(C0885R.C0889id.x8_view_gimbal_y);
        this.x8ViewGimbalR.getTvGimbalXyzName().setText(getString(C0885R.string.x8_gimbal_xyz_adjust_r));
        this.x8ViewGimbalP.getTvGimbalXyzName().setText(getString(C0885R.string.x8_gimbal_xyz_adjust_p));
        this.x8ViewGimbalY.getTvGimbalXyzName().setText(getString(C0885R.string.x8_gimbal_xyz_adjust_y));
        initClickAction();
        super.openUi();
    }

    public void setListener(IX8GimbalXYZAdjustListener listener, IX8MainTopBarListener ix8MainTopBarListener) {
        this.listener = listener;
        this.ix8MainTopBarListener = ix8MainTopBarListener;
    }

    private void initClickAction() {
        this.x8BtnXyzAdjustExit.setOnClickListener(this);
        this.x8BtnXyzAdjustSave.setOnClickListener(this);
        this.mX8GimbalManager.getGcParamsNew(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.1
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                    AckCloudParamsNew params = (AckCloudParamsNew) o;
                    if (params != null) {
                        X8GimbalXYZAdjustController.this.x8ViewGimbalR.getTvGimbalXyzValue().setText(params.getParam1() + X8GimbalXYZAdjustController.this.defaultUnit);
                        X8GimbalXYZAdjustController.this.x8ViewGimbalP.getTvGimbalXyzValue().setText(params.getParam2() + X8GimbalXYZAdjustController.this.defaultUnit);
                        X8GimbalXYZAdjustController.this.x8ViewGimbalY.getTvGimbalXyzValue().setText(params.getParam3() + X8GimbalXYZAdjustController.this.defaultUnit);
                        return;
                    }
                    X8ToastUtil.showToast(X8GimbalXYZAdjustController.this.mContext, "????????????????????????", 0);
                }
            }
        });
        this.x8ViewGimbalR.getBtnGimbalXyzAdd().setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                X8GimbalXYZAdjustController.this.xyzValue = X8GimbalXYZAdjustController.this.getTxtValue();
                final float newValue = X8GimbalXYZAdjustController.this.xyzValue[0] + X8GimbalXYZAdjustController.this.valueOnFoot;
                if (X8GimbalXYZAdjustController.this.gimbalXyzAdjustMaxHint(newValue)) {
                    X8ToastUtil.showToast(X8GimbalXYZAdjustController.this.mContext, X8GimbalXYZAdjustController.this.getString(C0885R.string.x8_gimbal_xyz_adjust_max_hint), 1);
                } else {
                    X8GimbalXYZAdjustController.this.mX8GimbalManager.setGcParamsNew(2, newValue, X8GimbalXYZAdjustController.this.xyzValue[1], X8GimbalXYZAdjustController.this.xyzValue[2], new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.2.1
                        @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                        public void onComplete(CmdResult cmdResult, Object o) {
                            if (cmdResult.isSuccess()) {
                                X8GimbalXYZAdjustController.this.x8ViewGimbalR.getTvGimbalXyzValue().setText(NumberUtil.decimalPointStr(newValue, 1));
                            } else {
                                X8ToastUtil.showToast(X8GimbalXYZAdjustController.this.mContext, "????????????????????????", 0);
                            }
                        }
                    });
                }
            }
        });
        this.x8ViewGimbalR.getBtnGimbalXyzSubtract().setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                X8GimbalXYZAdjustController.this.xyzValue = X8GimbalXYZAdjustController.this.getTxtValue();
                final float newValue = X8GimbalXYZAdjustController.this.xyzValue[0] - X8GimbalXYZAdjustController.this.valueOnFoot;
                if (X8GimbalXYZAdjustController.this.gimbalXyzAdjustMaxHint(newValue)) {
                    X8ToastUtil.showToast(X8GimbalXYZAdjustController.this.mContext, X8GimbalXYZAdjustController.this.getString(C0885R.string.x8_gimbal_xyz_adjust_max_hint), 1);
                } else {
                    X8GimbalXYZAdjustController.this.mX8GimbalManager.setGcParamsNew(2, newValue, X8GimbalXYZAdjustController.this.xyzValue[1], X8GimbalXYZAdjustController.this.xyzValue[2], new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.3.1
                        @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                        public void onComplete(CmdResult cmdResult, Object o) {
                            if (cmdResult.isSuccess()) {
                                X8GimbalXYZAdjustController.this.x8ViewGimbalR.getTvGimbalXyzValue().setText(NumberUtil.decimalPointStr(newValue, 1));
                            } else {
                                X8ToastUtil.showToast(X8GimbalXYZAdjustController.this.mContext, "????????????????????????", 0);
                            }
                        }
                    });
                }
            }
        });
        this.x8ViewGimbalP.getBtnGimbalXyzAdd().setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                X8GimbalXYZAdjustController.this.xyzValue = X8GimbalXYZAdjustController.this.getTxtValue();
                final float newValue = X8GimbalXYZAdjustController.this.xyzValue[1] + X8GimbalXYZAdjustController.this.valueOnFoot;
                if (X8GimbalXYZAdjustController.this.gimbalXyzAdjustMaxHint(newValue)) {
                    X8ToastUtil.showToast(X8GimbalXYZAdjustController.this.mContext, X8GimbalXYZAdjustController.this.getString(C0885R.string.x8_gimbal_xyz_adjust_max_hint), 1);
                } else {
                    X8GimbalXYZAdjustController.this.mX8GimbalManager.setGcParamsNew(2, X8GimbalXYZAdjustController.this.xyzValue[0], newValue, X8GimbalXYZAdjustController.this.xyzValue[2], new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.4.1
                        @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                        public void onComplete(CmdResult cmdResult, Object o) {
                            if (cmdResult.isSuccess()) {
                                X8GimbalXYZAdjustController.this.x8ViewGimbalP.getTvGimbalXyzValue().setText(NumberUtil.decimalPointStr(newValue, 1) + X8GimbalXYZAdjustController.this.defaultUnit);
                            } else {
                                X8ToastUtil.showToast(X8GimbalXYZAdjustController.this.mContext, "????????????????????????", 0);
                            }
                        }
                    });
                }
            }
        });
        this.x8ViewGimbalP.getBtnGimbalXyzSubtract().setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                X8GimbalXYZAdjustController.this.xyzValue = X8GimbalXYZAdjustController.this.getTxtValue();
                final float newValue = X8GimbalXYZAdjustController.this.xyzValue[1] - X8GimbalXYZAdjustController.this.valueOnFoot;
                if (X8GimbalXYZAdjustController.this.gimbalXyzAdjustMaxHint(newValue)) {
                    X8ToastUtil.showToast(X8GimbalXYZAdjustController.this.mContext, X8GimbalXYZAdjustController.this.getString(C0885R.string.x8_gimbal_xyz_adjust_max_hint), 1);
                } else {
                    X8GimbalXYZAdjustController.this.mX8GimbalManager.setGcParamsNew(2, X8GimbalXYZAdjustController.this.xyzValue[0], newValue, X8GimbalXYZAdjustController.this.xyzValue[2], new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.5.1
                        @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                        public void onComplete(CmdResult cmdResult, Object o) {
                            if (cmdResult.isSuccess()) {
                                X8GimbalXYZAdjustController.this.x8ViewGimbalP.getTvGimbalXyzValue().setText(NumberUtil.decimalPointStr(newValue, 1) + X8GimbalXYZAdjustController.this.defaultUnit);
                            } else {
                                X8ToastUtil.showToast(X8GimbalXYZAdjustController.this.mContext, "????????????????????????", 0);
                            }
                        }
                    });
                }
            }
        });
        this.x8ViewGimbalY.getBtnGimbalXyzAdd().setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                X8GimbalXYZAdjustController.this.xyzValue = X8GimbalXYZAdjustController.this.getTxtValue();
                final float newValue = X8GimbalXYZAdjustController.this.xyzValue[2] + X8GimbalXYZAdjustController.this.valueOnFoot;
                if (X8GimbalXYZAdjustController.this.gimbalXyzAdjustMaxHint(newValue)) {
                    X8ToastUtil.showToast(X8GimbalXYZAdjustController.this.mContext, X8GimbalXYZAdjustController.this.getString(C0885R.string.x8_gimbal_xyz_adjust_max_hint), 1);
                } else {
                    X8GimbalXYZAdjustController.this.mX8GimbalManager.setGcParamsNew(2, X8GimbalXYZAdjustController.this.xyzValue[0], X8GimbalXYZAdjustController.this.xyzValue[1], newValue, new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.6.1
                        @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                        public void onComplete(CmdResult cmdResult, Object o) {
                            if (cmdResult.isSuccess()) {
                                X8GimbalXYZAdjustController.this.x8ViewGimbalY.getTvGimbalXyzValue().setText(NumberUtil.decimalPointStr(newValue, 1));
                            } else {
                                X8ToastUtil.showToast(X8GimbalXYZAdjustController.this.mContext, "????????????????????????", 0);
                            }
                        }
                    });
                }
            }
        });
        this.x8ViewGimbalY.getBtnGimbalXyzSubtract().setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                X8GimbalXYZAdjustController.this.xyzValue = X8GimbalXYZAdjustController.this.getTxtValue();
                final float newValue = X8GimbalXYZAdjustController.this.xyzValue[2] - X8GimbalXYZAdjustController.this.valueOnFoot;
                if (X8GimbalXYZAdjustController.this.gimbalXyzAdjustMaxHint(newValue)) {
                    X8ToastUtil.showToast(X8GimbalXYZAdjustController.this.mContext, X8GimbalXYZAdjustController.this.getString(C0885R.string.x8_gimbal_xyz_adjust_max_hint), 1);
                } else {
                    X8GimbalXYZAdjustController.this.mX8GimbalManager.setGcParamsNew(2, X8GimbalXYZAdjustController.this.xyzValue[0], X8GimbalXYZAdjustController.this.xyzValue[1], newValue, new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.7.1
                        @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                        public void onComplete(CmdResult cmdResult, Object o) {
                            if (cmdResult.isSuccess()) {
                                X8GimbalXYZAdjustController.this.x8ViewGimbalY.getTvGimbalXyzValue().setText(NumberUtil.decimalPointStr(newValue, 1));
                            } else {
                                X8ToastUtil.showToast(X8GimbalXYZAdjustController.this.mContext, "????????????????????????", 0);
                            }
                        }
                    });
                }
            }
        });
    }

    public void setX8GimbalManager(X8GimbalManager mX8GimbalManager) {
        this.mX8GimbalManager = mX8GimbalManager;
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float[] getTxtValue() {
        float[] xyzValue = {NumberUtil.convertToFloat(this.x8ViewGimbalR.getTvGimbalXyzValue().getText().toString(), 0), NumberUtil.convertToFloat(this.x8ViewGimbalP.getTvGimbalXyzValue().getText().toString(), 0), NumberUtil.convertToFloat(this.x8ViewGimbalY.getTvGimbalXyzValue().getText().toString(), 0)};
        return xyzValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean gimbalXyzAdjustMaxHint(float currentValue) {
        return currentValue > this.maxDefaultAdjustValue || currentValue < this.minDefaultAdjustValue;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int vid = view.getId();
        if (vid == C0885R.C0889id.x8_btn_xyz_adjust_exit) {
            this.x8DoubleCustomDialog = new X8DoubleCustomDialog(this.handleView.getContext(), getString(C0885R.string.x8_gimbal_xyz_adjust_signout), getString(C0885R.string.x8_gimbal_xyz_adjust_exit_hint), new X8DoubleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.8
                @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                public void onLeft() {
                    X8GimbalXYZAdjustController.this.x8DoubleCustomDialog.dismiss();
                }

                @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                public void onRight() {
                    X8GimbalXYZAdjustController.this.mX8GimbalManager.setGcParamsNew(1, 0.0f, 0.0f, 0.0f, new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.8.1
                        @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                        public void onComplete(CmdResult cmdResult, Object o) {
                        }
                    });
                    X8GimbalXYZAdjustController.this.x8DoubleCustomDialog.dismiss();
                    X8GimbalXYZAdjustController.this.listener.gimbalXYZAdjustExit();
                }
            });
            this.x8DoubleCustomDialog.show();
        } else if (vid == C0885R.C0889id.x8_btn_xyz_adjust_save) {
            if (SPStoreManager.getInstance().getBoolean(HostConstants.SP_KEY_NOT_TIPS, false)) {
                if (this.listener != null) {
                    this.mX8GimbalManager.setGcParamsNew(3, 0.0f, 0.0f, 0.0f, new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.9
                        @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                        public void onComplete(CmdResult cmdResult, Object o) {
                            X8GimbalXYZAdjustController.this.ix8MainTopBarListener.onGcClick();
                        }
                    });
                    return;
                }
                return;
            }
            this.x8SingleCustomDialog = new X8SingleCustomDialog(this.handleView.getContext(), getString(C0885R.string.x8_save), getString(C0885R.string.x8_gimbal_xyz_adjust_save_hint), getString(C0885R.string.x8_gimbal_xyz_adjust_promptly), true, new X8SingleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.10
                @Override // com.fimi.app.x8s.widget.X8SingleCustomDialog.onDialogButtonClickListener
                public void onSingleButtonClick() {
                    X8GimbalXYZAdjustController.this.x8SingleCustomDialog.dismiss();
                    if (X8GimbalXYZAdjustController.this.listener != null) {
                        X8GimbalXYZAdjustController.this.mX8GimbalManager.setGcParamsNew(3, 0.0f, 0.0f, 0.0f, new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GimbalXYZAdjustController.10.1
                            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                            public void onComplete(CmdResult cmdResult, Object o) {
                                X8GimbalXYZAdjustController.this.ix8MainTopBarListener.onGcClick();
                            }
                        });
                    }
                }
            });
            this.x8SingleCustomDialog.show();
        }
    }
}
