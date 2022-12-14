package com.fimi.app.x8s.controls;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.KeyEvent;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.p011ui.activity.update.X8UpdateDetailActivity;
import com.fimi.app.x8s.widget.X8DoubleCustomDialog;
import com.fimi.host.HostConstants;
import com.fimi.kernel.store.shared.SPStoreManager;
import com.fimi.network.entity.UpfirewareDto;
import com.fimi.x8sdk.controller.X8UpdateCheckManager;
import com.fimi.x8sdk.ivew.IUpdateCheckAction;
import com.fimi.x8sdk.modulestate.StateManager;
import com.fimi.x8sdk.update.UpdateUtil;
import java.util.List;
/* loaded from: classes.dex */
public class X8UpdateHintController {
    private Activity context;
    private X8DoubleCustomDialog dialogManagerUpdate;
    private IUpdateCheckAction iUpdateCheckAction = new IUpdateCheckAction() { // from class: com.fimi.app.x8s.controls.X8UpdateHintController.4
        @Override // com.fimi.x8sdk.ivew.IUpdateCheckAction
        public void showIsUpdate(boolean isUpdate, int reason) {
        }

        @Override // com.fimi.x8sdk.ivew.IUpdateCheckAction
        public void checkUpdate() {
            X8UpdateHintController.this.showUpdateDialog();
        }
    };

    public X8UpdateHintController(Activity context) {
        this.context = context;
    }

    public void showUpdateDialog() {
        if (StateManager.getInstance().getX8Drone().isOnGround()) {
            List<UpfirewareDto> upfirewareDtos = UpdateUtil.getUpfireDtos();
            if (upfirewareDtos.size() > 0) {
                SPStoreManager.getInstance().saveInt(HostConstants.SP_KEY_UPDATE_CHECK, 1);
                if (UpdateUtil.isForceUpdate()) {
                    if (this.dialogManagerUpdate == null || !this.dialogManagerUpdate.isShowing()) {
                        this.dialogManagerUpdate = new X8DoubleCustomDialog(this.context, this.context.getString(C0885R.string.x8_update_fw_title), this.context.getString(C0885R.string.x8_update_tip), this.context.getString(C0885R.string.fimi_sdk_update_now), this.context.getString(C0885R.string.fimi_sdk_update_return), new X8DoubleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.X8UpdateHintController.1
                            @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                            public void onLeft() {
                                X8UpdateHintController.this.dialogManagerUpdate.dismiss();
                                Intent intent = new Intent(X8UpdateHintController.this.context, X8UpdateDetailActivity.class);
                                X8UpdateHintController.this.context.startActivity(intent);
                            }

                            @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                            public void onRight() {
                                X8UpdateHintController.this.context.finish();
                            }
                        });
                        this.dialogManagerUpdate.setCanceledOnTouchOutside(false);
                        this.dialogManagerUpdate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.fimi.app.x8s.controls.X8UpdateHintController.2
                            @Override // android.content.DialogInterface.OnKeyListener
                            public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
                                if (keyCode != 4 || event.getRepeatCount() == 0) {
                                }
                                return true;
                            }
                        });
                        if (!this.context.isFinishing()) {
                            this.dialogManagerUpdate.show();
                            return;
                        }
                        return;
                    }
                    return;
                }
                this.dialogManagerUpdate = new X8DoubleCustomDialog(this.context, this.context.getString(C0885R.string.x8_update_fw_title), this.context.getString(C0885R.string.x8_update_tip), this.context.getString(C0885R.string.fimi_sdk_update_ignore), this.context.getString(C0885R.string.fimi_sdk_update_now), new X8DoubleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.X8UpdateHintController.3
                    @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                    public void onLeft() {
                        X8UpdateHintController.this.dialogManagerUpdate.dismiss();
                    }

                    @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                    public void onRight() {
                        X8UpdateHintController.this.dialogManagerUpdate.dismiss();
                        Intent intent = new Intent(X8UpdateHintController.this.context, X8UpdateDetailActivity.class);
                        X8UpdateHintController.this.context.startActivity(intent);
                    }
                });
                this.dialogManagerUpdate.setCanceledOnTouchOutside(false);
                if (!this.context.isFinishing()) {
                    this.dialogManagerUpdate.show();
                }
            }
        }
    }

    public void queryCurSystemStatus() {
        X8UpdateCheckManager.getInstance().setOnIUpdateCheckAction(this.context, this.iUpdateCheckAction);
        X8UpdateCheckManager.getInstance().queryCurSystemStatus();
    }

    public void setPresenterLockMotor() {
        if (StateManager.getInstance().getX8Drone().getAutoFcHeart().getTakeOffCap() == -14) {
            X8UpdateCheckManager.getInstance().setPresenterLockMotor(0);
        }
    }
}
