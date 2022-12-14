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
import com.fimi.app.x8s.tools.ImageUtils;
import com.fimi.app.x8s.widget.X8DoubleCustomDialog;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.x8sdk.controller.FcCtrlManager;
import com.fimi.x8sdk.dataparser.AckCloudCaliState;
import com.fimi.x8sdk.modulestate.StateManager;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
public class X8CloudCalibrationController extends AbsX8MenuBoxControllers implements View.OnClickListener {
    private Button btnStart;
    private ProgressBar calibrationBar;
    CalibrationProgressListener checkLisenter;
    private CheckTask checkTask;
    private TextView checkTip;
    private View checkView;
    private ImageView cloudView;
    private Context context;
    private X8DoubleCustomDialog dialog;
    private FcCtrlManager fcCtrlManager;
    private View idealView;
    private ImageView imgAnimation;
    private ImageView imgResult;
    private ImageView imgReturn;
    private IX8CalibrationListener ix8CalibrationListener;
    private Button rtBtn;
    private View rtView;
    private Timer timer;
    private TextView tvRt;
    private TextView tvRtTip;
    private TextView tv_progress;
    private TextView tv_subTip;
    private TextView tv_tip;
    private final int startDone = 0;
    private final int endDone = 1;
    private GimbalStatus gimbalStatus = GimbalStatus.ideal;
    private final int finishDone = 8;
    private final int calibrationError = 9;
    private GimbalStatus curStatus = null;

    /* loaded from: classes.dex */
    public enum GimbalStatus {
        ideal,
        doing,
        fail,
        conBroken,
        finish
    }

    public void setFcCtrlManager(FcCtrlManager fcCtrlManager) {
        this.fcCtrlManager = fcCtrlManager;
    }

    public void setIx8CalibrationListener(IX8CalibrationListener ix8CalibrationListener) {
        this.ix8CalibrationListener = ix8CalibrationListener;
    }

    public X8CloudCalibrationController(View rootView) {
        super(rootView);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int i = v.getId();
        if (i == C0885R.C0889id.btn_start_calibration) {
            startCalibration();
        } else if (i == C0885R.C0889id.btn_rt_confirm) {
            if (this.gimbalStatus == GimbalStatus.fail) {
                this.gimbalStatus = GimbalStatus.ideal;
                showStatusView(this.gimbalStatus);
            } else if (this.gimbalStatus == GimbalStatus.finish) {
                if (this.ix8CalibrationListener != null) {
                    this.ix8CalibrationListener.onCalibrationReturn();
                    closeUi();
                }
            } else if (this.gimbalStatus == GimbalStatus.conBroken) {
                this.gimbalStatus = GimbalStatus.ideal;
                showStatusView(this.gimbalStatus);
            }
        } else if (i == C0885R.C0889id.img_return) {
            breakOutDone();
        }
    }

    private void breakOutDone() {
        if (this.gimbalStatus == GimbalStatus.doing) {
            this.dialog = new X8DoubleCustomDialog(this.context, this.context.getString(C0885R.string.x8_cloud_gimbal_break_out_title), this.context.getString(C0885R.string.x8_cloud_gimbal_break_out_tip), new X8DoubleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8CloudCalibrationController.1
                @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                public void onLeft() {
                    X8CloudCalibrationController.this.dialog.dismiss();
                }

                @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                public void onRight() {
                    if (X8CloudCalibrationController.this.fcCtrlManager != null) {
                        X8CloudCalibrationController.this.fcCtrlManager.cloudCalibration(1, new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8CloudCalibrationController.1.1
                            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                            public void onComplete(CmdResult cmdResult, Object o) {
                                if (X8CloudCalibrationController.this.ix8CalibrationListener != null) {
                                    X8CloudCalibrationController.this.ix8CalibrationListener.onCalibrationReturn();
                                    X8CloudCalibrationController.this.closeUi();
                                }
                            }
                        });
                    }
                    X8CloudCalibrationController.this.dialog.dismiss();
                }
            });
            if (this.gimbalStatus == GimbalStatus.doing) {
                this.dialog.show();
            }
        } else if (this.ix8CalibrationListener != null) {
            this.ix8CalibrationListener.onCalibrationReturn();
            closeUi();
        }
    }

    public void startCalibration() {
        if (this.fcCtrlManager != null && this.gimbalStatus == GimbalStatus.ideal) {
            this.fcCtrlManager.cloudCalibration(0, new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8CloudCalibrationController.2
                @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                public void onComplete(CmdResult cmdResult, Object o) {
                    if (cmdResult.isSuccess()) {
                        X8CloudCalibrationController.this.gimbalStatus = GimbalStatus.doing;
                        X8CloudCalibrationController.this.showStatusView(X8CloudCalibrationController.this.gimbalStatus);
                        X8CloudCalibrationController.this.startCheck();
                    }
                }
            });
        }
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
        this.context = rootView.getContext();
        LayoutInflater inflater = LayoutInflater.from(rootView.getContext());
        this.handleView = inflater.inflate(C0885R.layout.x8_main_camera_item_cloud_calibration, (ViewGroup) rootView, true);
        this.cloudView = (ImageView) this.handleView.findViewById(C0885R.C0889id.cloud_v);
        this.imgReturn = (ImageView) this.handleView.findViewById(C0885R.C0889id.img_return);
        this.btnStart = (Button) this.handleView.findViewById(C0885R.C0889id.btn_start_calibration);
        this.tv_tip = (TextView) this.handleView.findViewById(C0885R.C0889id.tv_tip);
        this.tv_subTip = (TextView) this.handleView.findViewById(C0885R.C0889id.tv_tip1);
        this.imgAnimation = (ImageView) this.handleView.findViewById(C0885R.C0889id.img_animation);
        this.imgAnimation.setBackgroundResource(C0885R.C0888drawable.x8_calibration_animation);
        AnimationDrawable ad = (AnimationDrawable) this.imgAnimation.getBackground();
        ad.start();
        this.idealView = this.handleView.findViewById(C0885R.C0889id.rl_cloud_calibration_content);
        this.checkView = this.handleView.findViewById(C0885R.C0889id.rl_calibration_progress_layout);
        this.rtView = this.handleView.findViewById(C0885R.C0889id.rl_cloud_calibration_result);
        this.calibrationBar = (ProgressBar) this.handleView.findViewById(C0885R.C0889id.calibration_bar);
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

    @Override // com.fimi.app.x8s.interfaces.AbsX8MenuBoxControllers
    public void unMountError(boolean unMount) {
        super.unMountError(unMount);
        if (this.isShow && unMount) {
            this.tv_tip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_error_2));
            this.btnStart.setEnabled(false);
            this.cloudView.setImageBitmap(ImageUtils.getBitmapByPath(this.rootView.getContext(), C0885R.C0888drawable.x8_cloud_no_exits_icon));
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void onDroneConnected(boolean b) {
        super.onDroneConnected(b);
        if (this.isShow) {
            if (StateManager.getInstance().getX8Drone().isInSky() && this.gimbalStatus == GimbalStatus.ideal) {
                if (this.btnStart.isEnabled()) {
                    this.tv_tip.setText(getString(C0885R.string.x8_cloud_gimbal_error_3));
                    this.btnStart.setEnabled(false);
                    this.cloudView.setImageBitmap(ImageUtils.getBitmapByPath(this.rootView.getContext(), C0885R.C0888drawable.x8_cloud_unable_icon));
                }
            } else if (!b) {
                cancelCheck();
                if (this.btnStart.isEnabled()) {
                    this.btnStart.setEnabled(false);
                }
                if (this.gimbalStatus == GimbalStatus.ideal) {
                    this.cloudView.setImageBitmap(ImageUtils.getBitmapByPath(this.rootView.getContext(), C0885R.C0888drawable.x8_cloud_unable_icon));
                    if (this.checkTip != null) {
                        this.tv_tip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_error_1));
                    }
                } else if (this.gimbalStatus == GimbalStatus.doing) {
                    this.gimbalStatus = GimbalStatus.conBroken;
                    showStatusView(this.gimbalStatus);
                }
            } else if (this.gimbalStatus == GimbalStatus.ideal) {
                this.tv_tip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_tip));
                this.cloudView.setImageBitmap(ImageUtils.getBitmapByPath(this.rootView.getContext(), C0885R.C0888drawable.x8_cloud_normal));
                if (!this.btnStart.isEnabled()) {
                    this.btnStart.setEnabled(true);
                    this.btnStart.setAlpha(1.0f);
                }
            } else if (this.gimbalStatus != GimbalStatus.doing && this.gimbalStatus == GimbalStatus.conBroken) {
                this.gimbalStatus = GimbalStatus.ideal;
                showStatusView(this.gimbalStatus);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class CheckTask extends TimerTask {
        CheckTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (X8CloudCalibrationController.this.fcCtrlManager != null) {
                if (X8CloudCalibrationController.this.checkLisenter == null) {
                    X8CloudCalibrationController.this.checkLisenter = new CalibrationProgressListener();
                }
                X8CloudCalibrationController.this.fcCtrlManager.checkCloudCalibrationProgress(X8CloudCalibrationController.this.checkLisenter);
            }
        }
    }

    private void setCheckTip(int color, int text) {
        this.checkTip.setTextColor(this.rootView.getResources().getColor(color));
        this.checkTip.setText(this.context.getResources().getString(text));
    }

    /* loaded from: classes.dex */
    private class CalibrationProgressListener implements UiCallBackListener {
        private CalibrationProgressListener() {
        }

        @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
        @SuppressLint({"StringFormatInvalid"})
        public void onComplete(CmdResult cmdResult, Object o) {
            if (cmdResult.isSuccess() && o != null) {
                AckCloudCaliState caliState = (AckCloudCaliState) o;
                if (caliState.getStatus() == 9) {
                    if (X8CloudCalibrationController.this.gimbalStatus == GimbalStatus.doing) {
                        X8CloudCalibrationController.this.gimbalStatus = GimbalStatus.fail;
                        X8CloudCalibrationController.this.showCalibrateFailed(caliState);
                    }
                } else if (caliState.getStatus() != 8) {
                    X8CloudCalibrationController.this.showCalibrateProgress(caliState);
                } else {
                    X8CloudCalibrationController.this.gimbalStatus = GimbalStatus.finish;
                }
                if (X8CloudCalibrationController.this.gimbalStatus != GimbalStatus.fail) {
                    X8CloudCalibrationController.this.showStatusView(X8CloudCalibrationController.this.gimbalStatus);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCalibrateProgress(AckCloudCaliState caliState) {
        int progress = caliState.getProgress();
        if (progress > 0) {
            this.calibrationBar.setProgress(progress);
            this.tv_progress.setText(String.format(this.context.getResources().getString(C0885R.string.x8_calibration_progress), String.valueOf(progress) + "%"));
            this.gimbalStatus = GimbalStatus.doing;
            if (caliState.isTempeOverErr()) {
                setCheckTip(C0885R.C0887color.x8_error_code_type1, C0885R.string.x8_cloud_gimbal_tip_3);
            } else if (caliState.isNeedLeveling123()) {
                setCheckTip(C0885R.C0887color.x8_error_code_type1, C0885R.string.x8_cloud_gimbal_tip_4);
            } else if (caliState.isNeedLeveling4()) {
                setCheckTip(C0885R.C0887color.x8_error_code_type1, C0885R.string.x8_cloud_gimbal_tip_5);
            } else if (caliState.isNeedLeveling5()) {
                setCheckTip(C0885R.C0887color.x8_error_code_type1, C0885R.string.x8_cloud_gimbal_tip_6);
            } else if (caliState.isNeedLeveling10()) {
                setCheckTip(C0885R.C0887color.x8_error_code_type1, C0885R.string.x8_cloud_gimbal_tip_7);
            } else if (caliState.isNeedLeveling11()) {
                setCheckTip(C0885R.C0887color.x8_error_code_type1, C0885R.string.x8_cloud_gimbal_tip_8);
            } else {
                setCheckTip(C0885R.C0887color.white_100, C0885R.string.x8_cloud_gimbal_tip_2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCalibrateFailed(AckCloudCaliState caliState) {
        this.checkView.setVisibility(8);
        this.idealView.setVisibility(8);
        this.rtView.setVisibility(0);
        this.imgResult.setImageBitmap(ImageUtils.getBitmapByPath(this.rootView.getContext(), C0885R.C0888drawable.x8_calibration_fail_icon));
        this.tvRt.setText(this.context.getResources().getString(C0885R.string.x8_compass_result_failed));
        if (caliState.isTempeOverErr()) {
            this.tvRtTip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_tip_18));
        } else if (caliState.isNeedLeveling123()) {
            this.tvRtTip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_tip_13));
        } else if (caliState.isNeedLeveling4()) {
            this.tvRtTip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_tip_14));
        } else if (caliState.isNeedLeveling5()) {
            this.tvRtTip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_tip_15));
        } else if (caliState.isNeedLeveling10()) {
            this.tvRtTip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_tip_16));
        } else if (caliState.isNeedLeveling11()) {
            this.tvRtTip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_tip_17));
        } else if (caliState.isNeedLeveling6()) {
            this.tvRtTip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_tip_9));
        } else if (caliState.isNeedLeveling7()) {
            this.tvRtTip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_tip_10));
        } else if (caliState.isNeedLeveling8()) {
            this.tvRtTip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_tip_11));
        } else if (caliState.isNeedLeveling9()) {
            this.tvRtTip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_tip_12));
        } else {
            this.tvRtTip.setText(this.context.getResources().getString(C0885R.string.x8_compass_result_failed_tip));
        }
        this.tvRtTip.setVisibility(0);
        this.rtBtn.setText(this.context.getResources().getString(C0885R.string.x8_compass_reuslt_failed_confirm));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startCheck() {
        cancelCheck();
        this.timer = new Timer();
        this.checkTask = new CheckTask();
        this.timer.schedule(this.checkTask, 0L, 500L);
    }

    private void cancelCheck() {
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
        this.isShow = true;
        getDroneState();
        if (this.isConect) {
            if (this.gimbalStatus == GimbalStatus.ideal) {
                this.tv_tip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_tip));
                this.cloudView.setImageBitmap(ImageUtils.getBitmapByPath(this.rootView.getContext(), C0885R.C0888drawable.x8_cloud_normal));
            }
            if (!this.btnStart.isEnabled()) {
                this.btnStart.setEnabled(true);
                this.btnStart.setAlpha(1.0f);
                return;
            }
            return;
        }
        if (this.btnStart.isEnabled()) {
            this.btnStart.setEnabled(false);
            this.btnStart.setAlpha(0.6f);
        }
        if (this.gimbalStatus == GimbalStatus.ideal) {
            this.cloudView.setImageBitmap(ImageUtils.getBitmapByPath(this.rootView.getContext(), C0885R.C0888drawable.x8_cloud_unable_icon));
            if (this.checkTip != null) {
                this.tv_tip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_error_1));
            }
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers, com.fimi.app.x8s.interfaces.IControllers
    public void closeUi() {
        super.closeUi();
        this.isShow = false;
        this.gimbalStatus = GimbalStatus.ideal;
        showStatusView(this.gimbalStatus);
        cancelCheck();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showStatusView(GimbalStatus status) {
        if (status != this.curStatus) {
            this.curStatus = status;
            this.idealView.setVisibility(0);
            this.checkView.setVisibility(8);
            this.rtView.setVisibility(8);
            if (status == GimbalStatus.ideal) {
                this.tv_tip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_error_1));
                this.cloudView.setImageBitmap(ImageUtils.getBitmapByPath(this.rootView.getContext(), C0885R.C0888drawable.x8_cloud_unable_icon));
                this.btnStart.setEnabled(false);
                this.btnStart.setAlpha(0.6f);
            } else if (status != GimbalStatus.fail) {
                if (status == GimbalStatus.finish) {
                    this.idealView.setVisibility(8);
                    this.rtView.setVisibility(0);
                    this.imgResult.setImageBitmap(ImageUtils.getBitmapByPath(this.rootView.getContext(), C0885R.C0888drawable.x8_calibration_success_icon));
                    this.tvRt.setText(this.context.getResources().getString(C0885R.string.x8_compass_result_success));
                    this.tvRtTip.setVisibility(8);
                    this.rtBtn.setText(this.context.getResources().getString(C0885R.string.x8_compass_reuslt_success_confirm));
                } else if (status == GimbalStatus.doing) {
                    this.checkView.setVisibility(0);
                    this.idealView.setVisibility(8);
                    this.checkTip.setTextColor(this.rootView.getResources().getColor(C0885R.C0887color.white_100));
                    this.checkTip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_tip_2));
                } else if (status == GimbalStatus.conBroken) {
                    this.idealView.setVisibility(8);
                    this.rtView.setVisibility(0);
                    this.imgResult.setImageDrawable(this.context.getResources().getDrawable(C0885R.C0888drawable.x8_calibration_fail_icon));
                    this.tvRt.setText(this.context.getResources().getString(C0885R.string.x8_compass_result_failed));
                    this.tvRtTip.setVisibility(0);
                    this.tvRtTip.setText(this.context.getResources().getString(C0885R.string.x8_cloud_gimbal_error_4));
                    this.rtBtn.setText(this.context.getResources().getString(C0885R.string.x8_compass_reuslt_failed_confirm));
                }
            }
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8MenuBoxControllers, com.fimi.app.x8s.interfaces.IControllers
    public boolean onClickBackKey() {
        breakOutDone();
        return true;
    }

    public boolean isCalibrationing() {
        if (this.gimbalStatus == GimbalStatus.ideal || this.gimbalStatus == GimbalStatus.fail || this.gimbalStatus == GimbalStatus.finish) {
            return false;
        }
        breakOutDone();
        return true;
    }
}
