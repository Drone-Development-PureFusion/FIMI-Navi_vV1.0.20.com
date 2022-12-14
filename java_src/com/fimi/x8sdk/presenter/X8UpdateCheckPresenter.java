package com.fimi.x8sdk.presenter;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.fimi.host.HostConstants;
import com.fimi.kernel.connect.BaseCommand;
import com.fimi.kernel.dataparser.ILinkMessage;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.kernel.store.shared.SPStoreManager;
import com.fimi.x8sdk.C1846R;
import com.fimi.x8sdk.command.FcCollection;
import com.fimi.x8sdk.command.FwUpdateCollection;
import com.fimi.x8sdk.common.BasePresenter;
import com.fimi.x8sdk.dataparser.AckUpdateRequest;
import com.fimi.x8sdk.dataparser.AckUpdateSystemStatus;
import com.fimi.x8sdk.dataparser.AutoCameraStateADV;
import com.fimi.x8sdk.ivew.IUpdateCheckAction;
import com.fimi.x8sdk.modulestate.StateManager;
import com.fimi.x8sdk.update.UpdateUtil;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2.dex */
public class X8UpdateCheckPresenter extends BasePresenter {
    private static final int CHECK_UPDATE = 1;
    private static final int CHECK_UPDATE_ERR = 2;
    private AckUpdateRequest ackUpdateRequest;
    private AckUpdateSystemStatus ackUpdateSystemStatus;
    private Context context;
    private IUpdateCheckAction iUpdateCheckAction;
    private boolean haveLockMotor = false;
    private Timer checkTimer = new Timer();
    private UpdateCheckState updateCheckState = UpdateCheckState.updateInit;
    private byte[] updateStates = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};
    Handler handler = new Handler() { // from class: com.fimi.x8sdk.presenter.X8UpdateCheckPresenter.3
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            boolean z = true;
            if (msg.what == 2) {
                IUpdateCheckAction iUpdateCheckAction = X8UpdateCheckPresenter.this.iUpdateCheckAction;
                if (msg.arg1 != 0) {
                    z = false;
                }
                iUpdateCheckAction.showIsUpdate(z, msg.arg1);
            } else if (msg.what == 1) {
                X8UpdateCheckPresenter.this.iUpdateCheckAction.checkUpdate();
            }
            super.handleMessage(msg);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum UpdateCheckState {
        updateInit,
        readyUpgrade,
        updating,
        upgradeEnd,
        notUpgrade
    }

    public X8UpdateCheckPresenter() {
        addNoticeListener();
        intCheckUpdateStatus();
    }

    public void setIUpdateCheckAction(Context context, IUpdateCheckAction iUpdateCheckAction) {
        this.context = context;
        this.iUpdateCheckAction = iUpdateCheckAction;
    }

    public void intCheckUpdateStatus() {
        if (this.checkTimer == null) {
            this.checkTimer = new Timer();
        }
        this.checkTimer.schedule(new TimerTask() { // from class: com.fimi.x8sdk.presenter.X8UpdateCheckPresenter.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (X8UpdateCheckPresenter.this.updateCheckState != UpdateCheckState.updating) {
                    X8UpdateCheckPresenter.this.queryCurSystemStatus();
                    X8UpdateCheckPresenter.this.checkUpdateVersion();
                }
            }
        }, 0L, 2000L);
    }

    @Override // com.fimi.x8sdk.common.BasePresenter, com.fimi.kernel.connect.interfaces.IDataCallBack
    public void onDataCallBack(int groupId, int msgId, ILinkMessage packet) {
        reponseCmd(true, groupId, msgId, packet, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.x8sdk.common.BasePresenter
    public void reponseCmd(boolean isAck, int group, int msgId, ILinkMessage packet, BaseCommand bcd) {
        super.reponseCmd(isAck, group, msgId, packet, bcd);
        if (group == 16) {
            if (msgId == 5) {
                if (this.updateCheckState == UpdateCheckState.updateInit) {
                    this.ackUpdateSystemStatus = (AckUpdateSystemStatus) packet;
                    checkCameraState();
                }
            } else if (msgId == 2) {
                this.ackUpdateRequest = (AckUpdateRequest) packet;
                if (this.ackUpdateRequest != null) {
                    int isCheckUpdate = SPStoreManager.getInstance().getInt(HostConstants.SP_KEY_UPDATE_CHECK, 2);
                    if (isCheckUpdate == 2 || UpdateUtil.isForceUpdate()) {
                        this.handler.sendEmptyMessage(1);
                    }
                }
            }
        }
    }

    private void checkCameraState() {
        int status = this.ackUpdateSystemStatus.getStatus();
        if (status == 0) {
            if (this.haveLockMotor) {
                setPresenterLockMotor(0);
            }
            this.updateCheckState = UpdateCheckState.readyUpgrade;
            requestStartUpdate(null);
        } else if (checkUpdatingState(status)) {
            if (!this.haveLockMotor) {
                setPresenterLockMotor(1);
            }
            this.updateCheckState = UpdateCheckState.updating;
        } else {
            this.updateCheckState = UpdateCheckState.upgradeEnd;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUpdateVersion() {
        AutoCameraStateADV stateADV = StateManager.getInstance().getCamera().getAutoCameraStateADV();
        int resId = 0;
        if (!StateManager.getInstance().getX8Drone().isConnect()) {
            resId = C1846R.string.x8_update_err_connect;
        } else if (StateManager.getInstance().getX8Drone().isInSky()) {
            resId = C1846R.string.x8_update_err_insky;
        } else if (StateManager.getInstance().getCamera().getToken() <= 0) {
            resId = C1846R.string.x8_update_err_a12ununited;
        } else if (this.updateCheckState == UpdateCheckState.updating) {
            resId = C1846R.string.x8_update_err_updating;
            this.updateCheckState = UpdateCheckState.upgradeEnd;
        } else if (stateADV != null && stateADV.getInfo() == 3) {
            resId = C1846R.string.x8_error_code_update_3;
        } else if (this.ackUpdateRequest != null && !this.ackUpdateRequest.isResultSucceed()) {
            resId = UpdateUtil.getErrorCodeString(this.context, this.ackUpdateRequest.getMsgRpt());
        }
        Message msg = new Message();
        msg.what = 2;
        msg.arg1 = resId;
        this.handler.sendMessage(msg);
    }

    public void requestStartUpdate(UiCallBackListener callBackListener) {
        FwUpdateCollection fwUpdateCollection = new FwUpdateCollection(this, callBackListener);
        BaseCommand cmd = fwUpdateCollection.requestStartUpdate();
        sendCmd(cmd);
    }

    public void queryCurSystemStatus() {
        this.updateCheckState = UpdateCheckState.updateInit;
        BaseCommand command = new FwUpdateCollection().queryCurSystemStatus();
        sendCmd(command);
    }

    public void setPresenterLockMotor(final int lock) {
        FcCollection fcCollection = new FcCollection(this, new UiCallBackListener() { // from class: com.fimi.x8sdk.presenter.X8UpdateCheckPresenter.2
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                    if (lock == 0) {
                        X8UpdateCheckPresenter.this.haveLockMotor = false;
                    } else {
                        X8UpdateCheckPresenter.this.haveLockMotor = true;
                    }
                }
            }
        });
        BaseCommand baseCommand = fcCollection.setLockMotor(lock);
        sendCmd(baseCommand);
    }

    private boolean checkUpdatingState(int updateState) {
        boolean isUpdateState = false;
        for (int i = 0; i < this.updateStates.length; i++) {
            if (updateState == this.updateStates[i]) {
                return true;
            }
            isUpdateState = false;
        }
        return isUpdateState;
    }
}
