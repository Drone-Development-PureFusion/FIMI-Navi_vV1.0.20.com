package com.fimi.app.x8s.controls;

import android.content.DialogInterface;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.tools.X8NumberUtil;
import com.fimi.app.x8s.widget.X8DoubleCustomDialog;
import com.fimi.app.x8s.widget.X8TLRDialog;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.x8sdk.dataparser.AutoFcSportState;
import com.fimi.x8sdk.modulestate.StateManager;
/* loaded from: classes.dex */
public class X8TLRDialogManager {
    private X8TLRDialog mX8LandingDialog;
    private X8TLRDialog mX8ReturnDialog;
    private X8TLRDialog mX8TakeOffDialog;
    private X8RightIconForMapController x8RightIconForMapController;

    public X8TLRDialogManager(X8RightIconForMapController x8RightIconForMapController) {
        this.x8RightIconForMapController = x8RightIconForMapController;
    }

    public void onDroneConnected(boolean b) {
        if (!b) {
            if (this.mX8ReturnDialog != null && this.mX8ReturnDialog.isShowing()) {
                this.mX8ReturnDialog.dismiss();
            }
            if (this.mX8TakeOffDialog != null && this.mX8TakeOffDialog.isShowing()) {
                this.mX8TakeOffDialog.dismiss();
            }
            if (this.mX8LandingDialog != null && this.mX8LandingDialog.isShowing()) {
                this.mX8LandingDialog.dismiss();
            }
        }
    }

    public void showReturnDialog() {
        this.mX8ReturnDialog = new X8TLRDialog(this.x8RightIconForMapController.getActivity(), this.x8RightIconForMapController.getString(C0885R.string.x8_ai_fly_return_home_title), "", true, 0, new X8DoubleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.X8TLRDialogManager.1
            @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
            public void onLeft() {
            }

            @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
            public void onRight() {
                X8TLRDialogManager.this.onRetureHomeClick();
            }
        });
        this.mX8ReturnDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.fimi.app.x8s.controls.X8TLRDialogManager.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialog) {
                X8TLRDialogManager.this.mX8ReturnDialog = null;
            }
        });
        this.mX8ReturnDialog.setCanceledOnTouchOutside(false);
        this.mX8ReturnDialog.show();
    }

    public void showTakeOffDialog(boolean isVPUMode) {
        String number;
        if (isVPUMode) {
            number = X8NumberUtil.getDistanceNumberString(1.2f, 1, false);
        } else {
            number = X8NumberUtil.getDistanceNumberString(4.0f, 1, false);
        }
        this.mX8TakeOffDialog = new X8TLRDialog(this.x8RightIconForMapController.getActivity(), this.x8RightIconForMapController.getString(C0885R.string.x8_ai_fly_take_off_title), String.format(this.x8RightIconForMapController.getString(C0885R.string.x8_ai_fly_take_off_tip), number), false, C0885R.C0888drawable.x8_img_take_off_flag, new X8DoubleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.X8TLRDialogManager.3
            @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
            public void onLeft() {
            }

            @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
            public void onRight() {
                X8TLRDialogManager.this.onTakeOffClick();
            }
        });
        this.mX8TakeOffDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.fimi.app.x8s.controls.X8TLRDialogManager.4
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialog) {
                X8TLRDialogManager.this.mX8TakeOffDialog = null;
            }
        });
        this.mX8TakeOffDialog.setCanceledOnTouchOutside(false);
        this.mX8TakeOffDialog.show();
    }

    public void showLandingDialog() {
        this.mX8LandingDialog = new X8TLRDialog(this.x8RightIconForMapController.getActivity(), this.x8RightIconForMapController.getString(C0885R.string.x8_ai_fly_land_title), this.x8RightIconForMapController.getString(C0885R.string.x8_ai_fly_land_tip), false, C0885R.C0888drawable.x8_img_landing_flag, new X8DoubleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.X8TLRDialogManager.5
            @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
            public void onLeft() {
            }

            @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
            public void onRight() {
                X8TLRDialogManager.this.onLandingClick();
            }
        });
        this.mX8LandingDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.fimi.app.x8s.controls.X8TLRDialogManager.6
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialog) {
                X8TLRDialogManager.this.mX8LandingDialog = null;
            }
        });
        this.mX8LandingDialog.setCanceledOnTouchOutside(false);
        this.mX8LandingDialog.show();
    }

    public void showSportState(AutoFcSportState state) {
        if (this.mX8ReturnDialog != null) {
            this.mX8ReturnDialog.showSportState(state);
            if (StateManager.getInstance().getX8Drone().getCtrlMode() != 1 || StateManager.getInstance().getX8Drone().isOnGround()) {
                this.mX8ReturnDialog.dismiss();
            }
        }
        if (this.mX8TakeOffDialog != null && (StateManager.getInstance().getX8Drone().getCtrlMode() != 1 || StateManager.getInstance().getX8Drone().isInSky())) {
            this.mX8TakeOffDialog.dismiss();
        }
        if (this.mX8LandingDialog != null) {
            if (StateManager.getInstance().getX8Drone().getCtrlMode() != 1 || StateManager.getInstance().getX8Drone().isOnGround()) {
                this.mX8LandingDialog.dismiss();
            }
        }
    }

    public void onRetureHomeClick() {
        this.x8RightIconForMapController.getActivity().getFcManager().setAiRetureHome(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.X8TLRDialogManager.7
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                }
            }
        });
    }

    public void onTakeOffClick() {
        this.x8RightIconForMapController.getActivity().getFcManager().takeOff(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.X8TLRDialogManager.8
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                }
            }
        });
    }

    public void onLandingClick() {
        this.x8RightIconForMapController.getActivity().getFcManager().land(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.X8TLRDialogManager.9
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                }
            }
        });
    }
}
