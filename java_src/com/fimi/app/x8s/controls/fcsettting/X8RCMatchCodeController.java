package com.fimi.app.x8s.controls.fcsettting;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.interfaces.AbsX8MenuBoxControllers;
import com.fimi.app.x8s.interfaces.IX8CalibrationListener;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.x8sdk.controller.FcCtrlManager;
import com.fimi.x8sdk.dataparser.AckRcMatchCodeState;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
public class X8RCMatchCodeController extends AbsX8MenuBoxControllers implements View.OnClickListener {
    private Button btnStart;
    MatchProgressListener checkLisenter;
    private CheckTask checkTask;
    private TextView checkTip;
    private View checkView;
    private Context context;
    private FcCtrlManager fcCtrlManager;
    private View idealView;
    private ImageView imgAnimation;
    private ImageView imgResult;
    private ImageView imgReturn;
    private IX8CalibrationListener ix8CalibrationListener;
    private ProgressBar matchBar;
    private Button rtBtn;
    private View rtView;
    private Timer timer;
    private TextView tvRt;
    private TextView tvRtTip;
    private TextView tv_progress;
    private TextView tv_subTip;
    private TextView tv_tip;
    private final int startDone = 1;
    private final int cancelDoing = 3;
    private MatchStatus matchStatus = MatchStatus.ideal;

    /* loaded from: classes.dex */
    public enum MatchStatus {
        ideal,
        doing
    }

    public void setFcCtrlManager(FcCtrlManager fcCtrlManager) {
        this.fcCtrlManager = fcCtrlManager;
    }

    public void setIx8CalibrationListener(IX8CalibrationListener ix8CalibrationListener) {
        this.ix8CalibrationListener = ix8CalibrationListener;
    }

    public X8RCMatchCodeController(View rootView) {
        super(rootView);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int i = v.getId();
        if (i == C0885R.C0889id.btn_start_match) {
            startRcMatchCode();
        } else if (i == C0885R.C0889id.btn_rt_confirm) {
            if (this.ix8CalibrationListener != null) {
                this.ix8CalibrationListener.onCalibrationReturn();
                closeUi();
            }
        } else if (i == C0885R.C0889id.img_return && this.ix8CalibrationListener != null) {
            this.ix8CalibrationListener.onCalibrationReturn();
            cancelRcMatchCode();
            closeUi();
        }
    }

    private void startRcMatchCode() {
        if (this.fcCtrlManager != null && this.matchStatus == MatchStatus.ideal) {
            this.fcCtrlManager.rcMatchCodeOrNot(1);
            this.matchStatus = MatchStatus.doing;
        }
    }

    private void cancelRcMatchCode() {
        if (this.fcCtrlManager != null && this.matchStatus == MatchStatus.doing) {
            this.fcCtrlManager.rcMatchCodeOrNot(3);
            this.matchStatus = MatchStatus.ideal;
        }
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
        this.context = rootView.getContext();
        LayoutInflater inflater = LayoutInflater.from(rootView.getContext());
        this.handleView = inflater.inflate(C0885R.layout.x8_rc_match_code_layout, (ViewGroup) rootView, true);
        this.imgReturn = (ImageView) this.handleView.findViewById(C0885R.C0889id.img_return);
        this.btnStart = (Button) this.handleView.findViewById(C0885R.C0889id.btn_start_match);
        this.tv_tip = (TextView) this.handleView.findViewById(C0885R.C0889id.tv_tip);
        this.tv_subTip = (TextView) this.handleView.findViewById(C0885R.C0889id.tv_tip1);
        this.imgAnimation = (ImageView) this.handleView.findViewById(C0885R.C0889id.img_animation);
        this.imgAnimation.setBackgroundResource(C0885R.C0888drawable.x8_calibration_animation);
        AnimationDrawable ad = (AnimationDrawable) this.imgAnimation.getBackground();
        ad.start();
        this.idealView = this.handleView.findViewById(C0885R.C0889id.rc_match_code_content);
        this.checkView = this.handleView.findViewById(C0885R.C0889id.rc_match_progress_layout);
        this.rtView = this.handleView.findViewById(C0885R.C0889id.rc_match_code_result);
        this.matchBar = (ProgressBar) this.handleView.findViewById(C0885R.C0889id.calibration_bar);
        this.tv_progress = (TextView) this.handleView.findViewById(C0885R.C0889id.tv_progress);
        this.checkTip = (TextView) this.handleView.findViewById(C0885R.C0889id.tv_check_tip);
        this.rtBtn = (Button) this.handleView.findViewById(C0885R.C0889id.btn_rt_confirm);
        this.rtBtn.setOnClickListener(this);
        this.tvRtTip = (TextView) this.handleView.findViewById(C0885R.C0889id.tv_result_tip2);
        this.tvRt = (TextView) this.handleView.findViewById(C0885R.C0889id.tv_result_tip);
        this.imgResult = (ImageView) this.handleView.findViewById(C0885R.C0889id.img_result);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
        this.imgReturn.setOnClickListener(this);
        this.btnStart.setOnClickListener(this);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class CheckTask extends TimerTask {
        CheckTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (X8RCMatchCodeController.this.fcCtrlManager != null) {
                if (X8RCMatchCodeController.this.checkLisenter == null) {
                    X8RCMatchCodeController.this.checkLisenter = new MatchProgressListener();
                }
                X8RCMatchCodeController.this.fcCtrlManager.checkRcMactchProgress(X8RCMatchCodeController.this.checkLisenter);
            }
        }
    }

    /* loaded from: classes.dex */
    private class MatchProgressListener implements UiCallBackListener {
        private MatchProgressListener() {
        }

        @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
        @SuppressLint({"StringFormatInvalid"})
        public void onComplete(CmdResult cmdResult, Object o) {
            if (cmdResult.isSuccess() && o != null) {
                AckRcMatchCodeState caliState = (AckRcMatchCodeState) o;
                int progress = caliState.getProgress();
                if (progress > 0 && progress < 100) {
                    X8RCMatchCodeController.this.matchBar.setProgress(progress);
                    X8RCMatchCodeController.this.tv_progress.setText(String.format(X8RCMatchCodeController.this.context.getResources().getString(C0885R.string.x8_calibration_progress), String.valueOf(progress) + "%"));
                    if (progress == 100) {
                        X8RCMatchCodeController.this.matchStatus = MatchStatus.ideal;
                        X8RCMatchCodeController.this.checkView.setVisibility(8);
                        X8RCMatchCodeController.this.idealView.setVisibility(8);
                        X8RCMatchCodeController.this.imgResult.setImageDrawable(X8RCMatchCodeController.this.context.getResources().getDrawable(C0885R.C0888drawable.x8_calibration_success_icon));
                        X8RCMatchCodeController.this.tvRt.setText(X8RCMatchCodeController.this.context.getResources().getString(C0885R.string.x8_rc_match_code_success));
                        X8RCMatchCodeController.this.tvRtTip.setVisibility(8);
                        X8RCMatchCodeController.this.rtView.setVisibility(0);
                        X8RCMatchCodeController.this.rtBtn.setText(X8RCMatchCodeController.this.context.getResources().getString(C0885R.string.x8_compass_reuslt_success_confirm));
                        X8RCMatchCodeController.this.cancelCheck();
                    }
                }
            }
        }
    }

    private void startCheck() {
        cancelCheck();
        this.timer = new Timer();
        this.checkTask = new CheckTask();
        this.timer.schedule(this.checkTask, 0L, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelCheck() {
        if (this.checkTask != null) {
            this.checkTask.cancel();
            this.checkTask = null;
        }
        if (this.timer != null) {
            this.timer.cancel();
            this.timer = null;
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers, com.fimi.app.x8s.interfaces.IControllers
    public void openUi() {
        super.openUi();
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers, com.fimi.app.x8s.interfaces.IControllers
    public void closeUi() {
        super.closeUi();
        if (this.matchStatus == MatchStatus.ideal) {
            this.matchStatus = MatchStatus.ideal;
            this.idealView.setVisibility(0);
            this.checkView.setVisibility(8);
            this.rtView.setVisibility(8);
        }
    }

    public void checkRcConnect(boolean isConnect) {
        if (!isConnect) {
            if (this.btnStart.isEnabled()) {
                this.btnStart.setEnabled(false);
            }
            if (this.matchStatus == MatchStatus.doing) {
                if (this.checkTip != null) {
                    this.checkTip.setText(this.context.getResources().getString(C0885R.string.x8_rc_match_disconnect));
                }
            } else {
                this.tv_tip.setText(this.context.getResources().getString(C0885R.string.x8_rc_match_disconnect));
            }
            cancelCheck();
            return;
        }
        startCheck();
        if (this.matchStatus == MatchStatus.doing) {
            if (this.checkTip != null) {
                this.checkTip.setText(this.context.getResources().getString(C0885R.string.x8_rc_match_code_tip));
            }
        } else if (this.matchStatus == MatchStatus.ideal) {
            this.tv_tip.setText(this.context.getResources().getString(C0885R.string.x8_rc_match_code_tip));
        }
        if (!this.btnStart.isEnabled()) {
            this.btnStart.setEnabled(true);
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8MenuBoxControllers, com.fimi.app.x8s.interfaces.IControllers
    public boolean onClickBackKey() {
        return false;
    }

    public boolean isCalibrationing() {
        if (this.matchStatus != MatchStatus.ideal) {
            return true;
        }
        return false;
    }
}
