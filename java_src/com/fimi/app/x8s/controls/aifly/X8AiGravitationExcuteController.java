package com.fimi.app.x8s.controls.aifly;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.fimi.TcpClient;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.X8Application;
import com.fimi.app.x8s.controls.X8AiTrackController;
import com.fimi.app.x8s.controls.aifly.confirm.module.X8AiGravitationExcuteConfirmModule;
import com.fimi.app.x8s.interfaces.AbsX8AiController;
import com.fimi.app.x8s.interfaces.IX8AiGravitationExcuteControllerListener;
import com.fimi.app.x8s.interfaces.IX8NextViewListener;
import com.fimi.app.x8s.p011ui.activity.X8sMainActivity;
import com.fimi.app.x8s.widget.X8AiTipWithCloseView;
import com.fimi.app.x8s.widget.X8DoubleCustomDialog;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.widget.X8ToastUtil;
import com.fimi.x8sdk.controller.CameraManager;
import com.fimi.x8sdk.controller.FcManager;
import com.fimi.x8sdk.dataparser.AckAiGetGravitationPrameter;
import com.fimi.x8sdk.dataparser.AutoFcSportState;
import com.fimi.x8sdk.modulestate.StateManager;
/* loaded from: classes.dex */
public class X8AiGravitationExcuteController extends AbsX8AiController implements View.OnClickListener, X8DoubleCustomDialog.onDialogButtonClickListener, X8AiTrackController.OnAiTrackControllerListener {
    private final X8sMainActivity activity;
    private X8DoubleCustomDialog dialog;
    private ImageView imgBack;
    private ImageView imgNext;
    protected boolean isNextShow;
    private AckAiGetGravitationPrameter mAckAiGetGravitationPrameter;
    private CameraManager mCameraManager;
    private double mCurrentLatitude;
    private double mCurrentLongitude;
    private X8AiGravitationExcuteConfirmModule mExcuteConfirmModule;
    private FcManager mFcManager;
    private View mFlagBottom;
    private X8GravitationState mGravitationState;
    private IX8AiGravitationExcuteControllerListener mIX8AiGravitationExcuteControllerListener;
    private IX8NextViewListener mIX8NextViewListener = new IX8NextViewListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiGravitationExcuteController.6
        @Override // com.fimi.app.x8s.interfaces.IX8NextViewListener
        public void onBackClick() {
            X8AiGravitationExcuteController.this.closeNextUi(true);
            if (X8AiGravitationExcuteController.this.activity.getmMapVideoController().isFullVideo()) {
                X8AiGravitationExcuteController.this.mImSuroundBg.setVisibility(0);
            } else {
                X8AiGravitationExcuteController.this.mImSuroundBg.setVisibility(8);
            }
        }

        @Override // com.fimi.app.x8s.interfaces.IX8NextViewListener
        public void onExcuteClick() {
            X8AiGravitationExcuteController.this.closeNextUi(false);
            if (X8AiGravitationExcuteController.this.activity.getmMapVideoController().isFullVideo()) {
                X8AiGravitationExcuteController.this.mImSuroundBg.setVisibility(0);
            } else {
                X8AiGravitationExcuteController.this.mImSuroundBg.setVisibility(8);
            }
            X8AiGravitationExcuteController.this.imgNext.setVisibility(8);
            X8AiGravitationExcuteController.this.mGravitationState = X8GravitationState.RUNNING;
            X8AiGravitationExcuteController.this.tvTip.setVisibility(8);
            X8AiGravitationExcuteController.this.mIX8AiGravitationExcuteControllerListener.onAiGravitaionRunning();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8NextViewListener
        public void onSaveClick() {
        }
    };
    private ImageView mImSuroundBg;
    private View mNextBlank;
    private View mNextContent;
    private X8AiTipWithCloseView tvTip;
    private int width;

    /* loaded from: classes.dex */
    public enum X8GravitationState {
        IDLE,
        RUNNING,
        RUNNING_DISCONNECT
    }

    public X8AiGravitationExcuteController(X8sMainActivity activity, View rootView, X8GravitationState state) {
        super(rootView);
        this.mGravitationState = X8GravitationState.IDLE;
        this.activity = activity;
        this.mGravitationState = state;
    }

    public void setCameraManager(CameraManager cameraManager) {
        this.mCameraManager = cameraManager;
    }

    public void setFcManager(FcManager mFcManager) {
        this.mFcManager = mFcManager;
    }

    public void setListener(IX8AiGravitationExcuteControllerListener listener) {
        this.mIX8AiGravitationExcuteControllerListener = listener;
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
        if (this.handleView != null) {
            this.imgBack.setOnClickListener(this);
            this.imgNext.setOnClickListener(this);
            this.mNextBlank.setOnClickListener(this);
        }
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public boolean onClickBackKey() {
        return false;
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8AiController, com.fimi.app.x8s.interfaces.AbsX8Controllers, com.fimi.app.x8s.interfaces.IControllers
    public void openUi() {
        LayoutInflater inflater = LayoutInflater.from(this.rootView.getContext());
        this.handleView = inflater.inflate(C0885R.layout.x8_ai_gravitation_layout, (ViewGroup) this.rootView, true);
        this.imgNext = (ImageView) this.handleView.findViewById(C0885R.C0889id.img_ai_gravitation_follow_next);
        this.imgBack = (ImageView) this.handleView.findViewById(C0885R.C0889id.img_ai_gravitation_follow_back);
        this.tvTip = (X8AiTipWithCloseView) this.handleView.findViewById(C0885R.C0889id.v_gravitation_content_tip);
        this.mNextBlank = this.handleView.findViewById(C0885R.C0889id.x8_main_ai_gravitation_next_blank);
        this.mNextContent = this.handleView.findViewById(C0885R.C0889id.x8_main_ai_gravitation_next_content);
        this.mFlagBottom = this.handleView.findViewById(C0885R.C0889id.rl_flag_gravitation_bottom);
        this.mImSuroundBg = (ImageView) this.handleView.findViewById(C0885R.C0889id.img_ai_gravitation_suround_bg);
        this.tvTip.setTipText(this.rootView.getContext().getString(C0885R.string.x8_ai_fly_gravitation_tip4));
        this.imgNext.setEnabled(false);
        this.mExcuteConfirmModule = new X8AiGravitationExcuteConfirmModule();
        if (this.activity.getmMapVideoController().isFullVideo()) {
            this.mImSuroundBg.setVisibility(0);
        } else {
            this.mImSuroundBg.setVisibility(8);
        }
        this.activity.getmMapVideoController().getFimiMap().onLocationGravitTrailEvent();
        this.activity.getmX8AiTrackController().setOnAiTrackControllerListener(this);
        this.activity.getmX8AiTrackController().openUi();
        if (this.mGravitationState == X8GravitationState.RUNNING) {
            this.imgNext.setVisibility(8);
            this.tvTip.setVisibility(8);
            this.mIX8AiGravitationExcuteControllerListener.onAiGravitaionRunning();
            getRunningParmeter();
        } else if (this.mGravitationState == X8GravitationState.IDLE) {
            this.imgNext.setVisibility(0);
            this.tvTip.setVisibility(0);
        }
        initActions();
        super.openUi();
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8AiController, com.fimi.app.x8s.interfaces.AbsX8Controllers, com.fimi.app.x8s.interfaces.IControllers
    public void closeUi() {
        super.closeUi();
        this.activity.getmX8AiTrackController().closeUi();
        this.activity.getmMapVideoController().getFimiMap().getAiSurroundManager().clearSurroundMarker();
        this.activity.getmMapVideoController().getFimiMap().getAiSurroundManager().resetMapEvent();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == C0885R.C0889id.img_ai_gravitation_follow_next) {
            openNextUi();
        } else if (id == C0885R.C0889id.img_ai_gravitation_follow_back) {
            if (this.mGravitationState == X8GravitationState.RUNNING) {
                showExitDialog();
            } else {
                closeGravitationing();
            }
        } else if (id == C0885R.C0889id.x8_main_ai_gravitation_next_blank) {
            closeNextUi(true);
            this.mImSuroundBg.setVisibility(0);
        }
    }

    public void showSportState(AutoFcSportState state) {
        if (this.mGravitationState == X8GravitationState.IDLE && this.mCurrentLongitude != state.getLongitude() && this.mCurrentLatitude != state.getLatitude()) {
            this.mCurrentLatitude = state.getLatitude();
            this.mCurrentLongitude = state.getLongitude();
            getIdleParmeter();
        }
        if (this.mGravitationState == X8GravitationState.RUNNING_DISCONNECT) {
            getRunningDisconnectParmeter();
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void onDroneConnected(boolean b) {
        super.onDroneConnected(b);
        if (!b) {
            this.mGravitationState = X8GravitationState.RUNNING_DISCONNECT;
            closeUi();
        }
    }

    private void getRunningParmeter() {
        this.mFcManager.getGravitationPrameter(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiGravitationExcuteController.1
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess) {
                    X8AiGravitationExcuteController.this.drawEllipse((AckAiGetGravitationPrameter) o);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawEllipse(AckAiGetGravitationPrameter prameter) {
        this.activity.getmMapVideoController().getFimiMap().getAiSurroundManager().addEllipse(prameter.getStartLat(), prameter.getStartLng(), prameter.getHorizontalDistance(), 90.0f + prameter.getStartNosePoint());
    }

    private void getRunningDisconnectParmeter() {
        this.mFcManager.getGravitationPrameter(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiGravitationExcuteController.2
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess) {
                    X8AiGravitationExcuteController.this.mGravitationState = X8GravitationState.RUNNING;
                    X8AiGravitationExcuteController.this.drawEllipse((AckAiGetGravitationPrameter) o);
                }
            }
        });
    }

    private void getIdleParmeter() {
        this.mFcManager.getGravitationPrameter(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiGravitationExcuteController.3
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess) {
                    X8AiGravitationExcuteController.this.mAckAiGetGravitationPrameter = (AckAiGetGravitationPrameter) o;
                    X8AiGravitationExcuteController.this.drawIdleEllipse();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawIdleEllipse() {
        this.activity.getmMapVideoController().getFimiMap().getAiSurroundManager().addEllipse(StateManager.getInstance().getX8Drone().getLatitude(), StateManager.getInstance().getX8Drone().getLongitude(), this.mAckAiGetGravitationPrameter.getHorizontalDistance(), 90.0f + StateManager.getInstance().getX8Drone().getDeviceAngle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeNextUi(final boolean isImgNextShow) {
        if (this.isNextShow) {
            this.isNextShow = false;
            ObjectAnimator translationRight = ObjectAnimator.ofFloat(this.mNextContent, "translationX", 0.0f, this.width);
            translationRight.setDuration(300L);
            translationRight.start();
            translationRight.addListener(new AnimatorListenerAdapter() { // from class: com.fimi.app.x8s.controls.aifly.X8AiGravitationExcuteController.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    super.onAnimationEnd(animation);
                    X8AiGravitationExcuteController.this.mNextContent.setVisibility(8);
                    X8AiGravitationExcuteController.this.mNextBlank.setVisibility(8);
                    ((ViewGroup) X8AiGravitationExcuteController.this.mNextContent).removeAllViews();
                    X8AiGravitationExcuteController.this.imgBack.setVisibility(0);
                    X8AiGravitationExcuteController.this.mFlagBottom.setVisibility(0);
                    if (isImgNextShow) {
                        X8AiGravitationExcuteController.this.imgNext.setVisibility(0);
                        X8AiGravitationExcuteController.this.tvTip.setVisibility(0);
                        return;
                    }
                    X8AiGravitationExcuteController.this.imgNext.setVisibility(8);
                    X8AiGravitationExcuteController.this.tvTip.setVisibility(8);
                }
            });
        }
    }

    private void openNextUi() {
        this.mNextBlank.setVisibility(0);
        this.mNextContent.setVisibility(0);
        this.tvTip.setVisibility(8);
        this.mFlagBottom.setVisibility(8);
        this.imgNext.setVisibility(8);
        this.mImSuroundBg.setVisibility(8);
        this.mExcuteConfirmModule.init(this.activity, this.mNextContent, this.mCameraManager);
        this.mExcuteConfirmModule.setsetListener(this.mIX8NextViewListener, this.mFcManager);
        if (!this.isNextShow) {
            this.isNextShow = true;
            this.width = X8Application.ANIMATION_WIDTH;
            ObjectAnimator animatorY = ObjectAnimator.ofFloat(this.mNextContent, "translationX", this.width, 0.0f);
            animatorY.setDuration(300L);
            animatorY.start();
        }
    }

    public void showExitDialog() {
        if (this.dialog == null) {
            String t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_gravitation_dialog_title);
            String m = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_gravitation_dialog_tip);
            this.dialog = new X8DoubleCustomDialog(this.rootView.getContext(), t, m, this);
        }
        this.dialog.show();
    }

    public void switchMapVideo(boolean sightFlag) {
        if (this.handleView != null) {
            this.mImSuroundBg.setVisibility(sightFlag ? 8 : 0);
        }
    }

    public void cancleByModeChange(int mode) {
        closeGravitationing();
        if (mode == 1) {
            onTaskComplete(true);
        } else if (this.mIX8AiGravitationExcuteControllerListener != null) {
            this.mIX8AiGravitationExcuteControllerListener.onAiGravitationInterrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTaskComplete(boolean showText) {
        closeGravitationing();
        if (this.mIX8AiGravitationExcuteControllerListener != null) {
            this.mIX8AiGravitationExcuteControllerListener.onAiGravitationComplete(showText);
        }
    }

    private void closeGravitationing() {
        this.mFcManager.setAiVcClose(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiGravitationExcuteController.5
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                    X8AiGravitationExcuteController.this.closeUi();
                    X8AiGravitationExcuteController.this.mGravitationState = X8GravitationState.IDLE;
                    if (X8AiGravitationExcuteController.this.mIX8AiGravitationExcuteControllerListener != null) {
                        X8AiGravitationExcuteController.this.mIX8AiGravitationExcuteControllerListener.onAiGravitationBackClick();
                        return;
                    }
                    return;
                }
                TcpClient.getIntance().sendLog("setAiVcClose error" + cmdResult.getErrDes());
            }
        });
    }

    @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
    public void onLeft() {
    }

    @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
    public void onRight() {
        this.mFcManager.setAiVcClose(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiGravitationExcuteController.7
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                    if (X8AiGravitationExcuteController.this.mGravitationState == X8GravitationState.RUNNING) {
                        X8AiGravitationExcuteController.this.exitGravitation();
                        return;
                    }
                    return;
                }
                TcpClient.getIntance().sendLog("setAiVcClose error" + cmdResult.getErrDes());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exitGravitation() {
        this.mFcManager.setGravitationExite(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiGravitationExcuteController.8
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (!cmdResult.isSuccess) {
                    X8ToastUtil.showToast(X8AiGravitationExcuteController.this.handleView.getContext(), cmdResult.getErrDes(), 0);
                } else {
                    X8AiGravitationExcuteController.this.mGravitationState = X8GravitationState.IDLE;
                }
                X8AiGravitationExcuteController.this.onTaskComplete(false);
            }
        });
    }

    @Override // com.fimi.app.x8s.controls.X8AiTrackController.OnAiTrackControllerListener
    public void onChangeGoLocation(float left, float right, float top, float bottom, int w, int h) {
    }

    @Override // com.fimi.app.x8s.controls.X8AiTrackController.OnAiTrackControllerListener
    public void setGoEnabled(boolean b) {
    }

    @Override // com.fimi.app.x8s.controls.X8AiTrackController.OnAiTrackControllerListener
    public void onTouchActionDown() {
    }

    @Override // com.fimi.app.x8s.controls.X8AiTrackController.OnAiTrackControllerListener
    public void onTouchActionUp() {
        this.imgNext.setEnabled(true);
        setAiVcOpen();
    }

    @Override // com.fimi.app.x8s.controls.X8AiTrackController.OnAiTrackControllerListener
    public void onTracking() {
    }

    public void setAiVcOpen() {
        this.mFcManager.setAiVcOpen(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiGravitationExcuteController.9
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                }
            }
        });
    }
}
