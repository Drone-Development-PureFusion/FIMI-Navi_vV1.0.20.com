package com.fimi.app.x8s.entity;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.Vibrator;
import com.fimi.TcpClient;
import com.fimi.app.x8s.controls.X8ErrorCodeController;
import com.fimi.app.x8s.enums.X8ErrorCodeEnum;
import com.fimi.app.x8s.interfaces.IX8ErrorTextIsFinishShow;
import com.fimi.app.x8s.manager.X8ErrerCodeSpeakFlashManager;
import com.fimi.x8sdk.entity.ErrorCodeBean;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class X8ShowErrorCodeTask {
    private Context context;
    private X8ErrorCodeController errorCodeController;
    private X8ErrerCodeSpeakFlashManager flashManager;
    private boolean isShowTex;
    private ErrorCodeBean.ActionBean lastActionBean;
    private long lastTime;
    private volatile long startTime;
    private X8ErrorCodeEnum type;
    private Vibrator vibrator;
    private long speekId = 0;
    private long[] pattern = {50, 200, 50, 200, 50, 200};
    private List<ErrorCodeBean.ActionBean> speakList = new ArrayList();
    private List<ErrorCodeBean.ActionBean> vibrateLList = new ArrayList();
    private int state = 0;
    private Handler mHandler = new Handler() { // from class: com.fimi.app.x8s.entity.X8ShowErrorCodeTask.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 0:
                    X8ShowErrorCodeTask.this.isShowTex = false;
                    X8ShowErrorCodeTask.this.flashManager.nextRun(X8ShowErrorCodeTask.this.type);
                    return;
                default:
                    return;
            }
        }
    };

    public int getState() {
        return this.state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public X8ShowErrorCodeTask(Context context, X8ErrorCodeController errorCodeController, X8ErrorCodeEnum type, X8ErrerCodeSpeakFlashManager x8ErrerCodeSpeakFlashManager) {
        this.context = context;
        this.errorCodeController = errorCodeController;
        this.type = type;
        this.flashManager = x8ErrerCodeSpeakFlashManager;
        this.vibrator = (Vibrator) context.getSystemService("vibrator");
    }

    public void showText(List<X8ErrorCode> codeList) {
        this.isShowTex = true;
        this.errorCodeController.showTextByCode(codeList, new IX8ErrorTextIsFinishShow() { // from class: com.fimi.app.x8s.entity.X8ShowErrorCodeTask.2
            @Override // com.fimi.app.x8s.interfaces.IX8ErrorTextIsFinishShow
            public void isFinish() {
                X8ShowErrorCodeTask.this.flashManager.setStart(false);
            }
        });
        this.mHandler.sendEmptyMessageDelayed(0, 3000L);
    }

    public boolean isSpeaking(ErrorCodeBean.ActionBean bean) {
        return this.speakList.contains(bean);
    }

    public boolean isVibrating(ErrorCodeBean.ActionBean bean) {
        return this.vibrateLList.contains(bean);
    }

    public long getSpeekId() {
        return this.speekId;
    }

    public void setSpeekId(long speekId) {
        this.speekId = speekId;
    }

    public void nextRun() {
        String text;
        if (!this.isShowTex) {
            if (hasErrorCode()) {
                List<ErrorCodeBean.ActionBean> actionBeans = getAcitonBean();
                List<X8ErrorCode> x8ErrorCodeList = new ArrayList<>();
                x8ErrorCodeList.clear();
                for (ErrorCodeBean.ActionBean actionBean : actionBeans) {
                    if (actionBean != null) {
                        this.state = 1;
                        X8ErrorCode code = new X8ErrorCode();
                        code.setLevel(actionBean.getSeverity() == 2 ? X8ErrorCodeEnum.serious : X8ErrorCodeEnum.medium);
                        code.setTitle(this.errorCodeController.getErrorCodeString(actionBean.getText()));
                        code.setSpeakStr(this.errorCodeController.getErrorCodeString(actionBean.getSpeak()));
                        code.setShow(true);
                        if (actionBean.isVibrate() && this.vibrator != null && !this.flashManager.isSpeek() && !isVibrating(actionBean)) {
                            this.vibrateLList.add(actionBean);
                            TcpClient.getIntance().sendLog("isVibrating");
                            this.vibrator.vibrate(this.pattern, -1);
                        }
                        if (actionBean.getSpeak() != 0 && !isSpeaking(actionBean) && (text = code.getSpeakStr()) != null && !text.equals("") && !this.flashManager.isSpeek()) {
                            this.speakList.add(actionBean);
                            this.speekId = System.currentTimeMillis();
                            this.flashManager.speekText(text, this.speekId);
                        }
                        if (this.lastActionBean != null && actionBean.getLabel() == this.lastActionBean.getLabel() && this.errorCodeController.currentMap.size() == 1 && actionBean.getInhibition() > 0) {
                            if (this.startTime == 0) {
                                this.startTime = System.currentTimeMillis();
                            }
                            this.lastTime = System.currentTimeMillis();
                            if (this.lastTime - this.startTime >= actionBean.getInhibition() * 1000) {
                                code.setShow(true);
                                this.startTime = 0L;
                            } else {
                                code.setShow(false);
                            }
                        }
                        this.lastActionBean = actionBean;
                        x8ErrorCodeList.add(code);
                    }
                }
                showText(x8ErrorCodeList);
                return;
            }
            this.state = 0;
            clearList();
            this.flashManager.runEnd(this.type);
        }
    }

    public boolean hasErrorCode() {
        boolean ret;
        if (this.type == X8ErrorCodeEnum.serious) {
            ret = this.errorCodeController.hasSeriousCode();
        } else {
            ret = this.errorCodeController.hasMediumCode();
        }
        TcpClient.getIntance().sendLog("" + this.type + " " + ret);
        return ret;
    }

    public List<ErrorCodeBean.ActionBean> getAcitonBean() {
        if (this.type == X8ErrorCodeEnum.serious) {
            List<ErrorCodeBean.ActionBean> actionBean = this.errorCodeController.getSeriousCode();
            return actionBean;
        }
        List<ErrorCodeBean.ActionBean> actionBean2 = this.errorCodeController.getMediumCode();
        return actionBean2;
    }

    public boolean isShow() {
        return this.isShowTex;
    }

    public void disconnect() {
        if (this.vibrator != null) {
            this.vibrator.cancel();
        }
        clearList();
    }

    public void clearList() {
        if (this.speakList.size() > 0) {
            for (ErrorCodeBean.ActionBean actionBean : this.speakList) {
                actionBean.setSpeaking(false);
            }
            this.speakList.clear();
        }
        if (this.vibrateLList.size() > 0) {
            for (ErrorCodeBean.ActionBean actionBean2 : this.vibrateLList) {
                actionBean2.setVibrating(false);
            }
            this.vibrateLList.clear();
        }
    }

    public void remove(ErrorCodeBean.ActionBean actionBean) {
        if (this.speakList != null && this.speakList.size() > 0) {
            this.speakList.remove(actionBean);
        }
        if (this.vibrateLList != null && this.vibrateLList.size() > 0) {
            this.vibrateLList.remove(actionBean);
        }
    }
}
