package com.fimi.app.x8s.controls.aifly;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.X8Application;
import com.fimi.app.x8s.controls.X8AiTrackController;
import com.fimi.app.x8s.controls.aifly.confirm.module.X8AiSurroundToPointExcuteConfirmModule;
import com.fimi.app.x8s.enums.X8AiMapItem;
import com.fimi.app.x8s.enums.X8AiSuroundState;
import com.fimi.app.x8s.interfaces.AbsX8AiController;
import com.fimi.app.x8s.interfaces.IX8AiItemMapListener;
import com.fimi.app.x8s.interfaces.IX8AiSurroundExcuteControllerListener;
import com.fimi.app.x8s.interfaces.IX8NextViewListener;
import com.fimi.app.x8s.p011ui.activity.X8sMainActivity;
import com.fimi.app.x8s.tools.X8NumberUtil;
import com.fimi.app.x8s.widget.X8AiTipWithCloseView;
import com.fimi.app.x8s.widget.X8DoubleCustomDialog;
import com.fimi.app.x8s.widget.X8FollowSpeedContainerView;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.widget.X8ToastUtil;
import com.fimi.x8sdk.cmdsenum.X8Task;
import com.fimi.x8sdk.controller.FcManager;
import com.fimi.x8sdk.dataparser.AckAiSurrounds;
import com.fimi.x8sdk.dataparser.AckGetAiSurroundPoint;
import com.fimi.x8sdk.dataparser.AckNormalCmds;
import com.fimi.x8sdk.dataparser.AutoAiSurroundState;
import com.fimi.x8sdk.dataparser.AutoFcSportState;
import com.fimi.x8sdk.modulestate.StateManager;
/* loaded from: classes.dex */
public class X8AiSurroundExcuteController extends AbsX8AiController implements View.OnClickListener, X8DoubleCustomDialog.onDialogButtonClickListener, X8AiTrackController.OnAiTrackControllerListener, X8FollowSpeedContainerView.OnSendSpeedListener {
    private static int MIN = 0;
    protected int MAX_WIDTH;
    private X8sMainActivity activity;
    private View blank;
    private X8DoubleCustomDialog dialog;
    private FcManager fcManager;
    private View flagSmall;
    private ImageView imgBack;
    private ImageView imgSuroundBg;
    private ImageView imgVcToggle;
    private boolean isChangRadius;
    private boolean isDraw;
    private boolean isGetPoint;
    private boolean isGetSpeed;
    protected boolean isNextShow;
    private boolean isSetCircle;
    private double lastLat;
    private double lastLog;
    private double lat;
    private double lat1;
    private IX8AiSurroundExcuteControllerListener listener;
    private double log;
    private double log1;
    private TextView mTvRadius;
    private X8AiSuroundState mX8AiSuroundState;
    private X8AiSurroundToPointExcuteConfirmModule mX8AiSurroundToPointExcuteConfirmModule;
    private View nextRootView;

    /* renamed from: r */
    private float f104r;
    private int speed;
    private TextView tvP2PTip;
    private TextView tvPoint;
    private X8AiTipWithCloseView tvTip;
    private View vRadiusBg;
    private X8FollowSpeedContainerView vSpeed;
    private float radius = 50.0f;
    protected int width = X8Application.ANIMATION_WIDTH;
    private int timeSend = 0;
    private IX8NextViewListener mIX8NextViewListener = new IX8NextViewListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiSurroundExcuteController.4
        @Override // com.fimi.app.x8s.interfaces.IX8NextViewListener
        public void onBackClick() {
            X8AiSurroundExcuteController.this.closeNextUiFromNext(true);
        }

        @Override // com.fimi.app.x8s.interfaces.IX8NextViewListener
        public void onExcuteClick() {
            X8AiSurroundExcuteController.this.closeNextUi(false);
            X8AiSurroundExcuteController.this.lat = X8AiSurroundExcuteController.this.lastLat;
            X8AiSurroundExcuteController.this.log = X8AiSurroundExcuteController.this.lastLog;
            X8AiSurroundExcuteController.this.isDraw = true;
            X8AiSurroundExcuteController.this.isGetPoint = true;
            X8AiSurroundExcuteController.this.isGetSpeed = true;
            X8AiSurroundExcuteController.this.imgSuroundBg.setVisibility(8);
            X8AiSurroundExcuteController.this.mX8AiSuroundState = X8AiSuroundState.RUNNING;
            X8AiSurroundExcuteController.this.tvTip.setVisibility(8);
            X8AiSurroundExcuteController.this.vSpeed.setVisibility(0);
            X8AiSurroundExcuteController.this.setAiVcOpen();
            X8AiSurroundExcuteController.this.openVcToggle();
            X8AiSurroundExcuteController.this.activity.getmMapVideoController().getFimiMap().getAiSurroundManager().setAiSurroundCircle(X8AiSurroundExcuteController.this.lastLat, X8AiSurroundExcuteController.this.lastLog, X8AiSurroundExcuteController.this.radius);
            X8AiSurroundExcuteController.this.listener.onSurroundRunning();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8NextViewListener
        public void onSaveClick() {
        }
    };

    public X8AiSurroundExcuteController(X8sMainActivity activity, View rootView, X8AiSuroundState state) {
        super(rootView);
        this.mX8AiSuroundState = X8AiSuroundState.IDLE;
        this.activity = activity;
        this.mX8AiSuroundState = state;
    }

    public void setListener(IX8AiSurroundExcuteControllerListener listener) {
        this.listener = listener;
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
    }

    public void initViewStubViews(View view) {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
        if (this.handleView != null) {
            this.tvPoint.setOnClickListener(this);
            this.imgBack.setOnClickListener(this);
            this.blank.setOnClickListener(this);
            this.imgVcToggle.setOnClickListener(this);
        }
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    public void showExitDialog() {
        if (this.dialog == null) {
            String t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_surround_to_point);
            String m = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_surround_eixte);
            this.dialog = new X8DoubleCustomDialog(this.rootView.getContext(), t, m, this);
        }
        this.dialog.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == C0885R.C0889id.img_ai_follow_back) {
            if (this.mX8AiSuroundState == X8AiSuroundState.RUNNING) {
                showExitDialog();
            } else {
                closeSurround();
            }
        } else if (id == C0885R.C0889id.img_ai_set_dot) {
            if (this.mX8AiSuroundState == X8AiSuroundState.IDLE) {
                setCirclePoint();
            } else if (this.mX8AiSuroundState == X8AiSuroundState.SET_CIRCLE_POINT) {
                if (this.radius > 500.0f) {
                    String s = X8NumberUtil.getDistanceNumberString(500.0f, 0, true);
                    String t = String.format(this.activity.getString(C0885R.string.x8_ai_surround_radius_tip2), s);
                    X8ToastUtil.showToast(this.activity, t, 0);
                } else if (this.radius < 5.0f) {
                    String s2 = X8NumberUtil.getDistanceNumberString(5.0f, 0, true);
                    String t2 = String.format(this.activity.getString(C0885R.string.x8_ai_surround_radius_tip1), s2);
                    X8ToastUtil.showToast(this.activity, t2, 0);
                } else {
                    setTakeOffPoint();
                }
            } else if (this.mX8AiSuroundState != X8AiSuroundState.SET_TAKE_OFF_POINT && this.mX8AiSuroundState == X8AiSuroundState.SET_PARAMETER) {
                openNextUi();
                this.vRadiusBg.setVisibility(8);
            }
        } else if (id == C0885R.C0889id.x8_main_ai_ai_surround_next_blank) {
            closeNextUiFromNext(true);
        } else if (id == C0885R.C0889id.img_vc_targgle) {
            if (!this.imgVcToggle.isSelected()) {
                setAiVcOpen();
            } else {
                setAiVcClose();
            }
        } else if (id == C0885R.C0889id.rl_flag_small) {
            if (this.tvP2PTip.getVisibility() == 0) {
                this.tvP2PTip.setVisibility(8);
            } else {
                this.tvP2PTip.setVisibility(0);
            }
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8AiController, com.fimi.app.x8s.interfaces.AbsX8Controllers, com.fimi.app.x8s.interfaces.IControllers
    public void openUi() {
        this.isShow = true;
        LayoutInflater inflater = LayoutInflater.from(this.rootView.getContext());
        this.handleView = inflater.inflate(C0885R.layout.x8_ai_surround_layout, (ViewGroup) this.rootView, true);
        this.tvPoint = (TextView) this.handleView.findViewById(C0885R.C0889id.img_ai_set_dot);
        this.imgBack = (ImageView) this.handleView.findViewById(C0885R.C0889id.img_ai_follow_back);
        this.tvP2PTip = (TextView) this.handleView.findViewById(C0885R.C0889id.img_ai_p2p_tip);
        this.mTvRadius = (TextView) this.handleView.findViewById(C0885R.C0889id.tv_ai_radius);
        this.imgSuroundBg = (ImageView) this.handleView.findViewById(C0885R.C0889id.img_ai_suround_bg);
        this.vRadiusBg = this.handleView.findViewById(C0885R.C0889id.rl_x8_ai_surround_radius);
        this.imgVcToggle = (ImageView) this.handleView.findViewById(C0885R.C0889id.img_vc_targgle);
        this.imgVcToggle.setSelected(true);
        this.tvTip = (X8AiTipWithCloseView) this.handleView.findViewById(C0885R.C0889id.v_content_tip);
        this.tvTip.setTipText(this.handleView.getContext().getString(C0885R.string.x8_ai_surround_select_point));
        this.vSpeed = (X8FollowSpeedContainerView) this.handleView.findViewById(C0885R.C0889id.v_surround_speed);
        this.vSpeed.setMaxMin(100, MIN, 1);
        this.vSpeed.setOnSendSpeedListener(this);
        this.flagSmall = this.handleView.findViewById(C0885R.C0889id.rl_flag_small);
        this.flagSmall.setOnClickListener(this);
        this.nextRootView = this.rootView.findViewById(C0885R.C0889id.x8_main_ai_surround_next_content);
        this.blank = this.rootView.findViewById(C0885R.C0889id.x8_main_ai_ai_surround_next_blank);
        this.mX8AiSurroundToPointExcuteConfirmModule = new X8AiSurroundToPointExcuteConfirmModule();
        initActions();
        this.activity.getmX8AiTrackController().setOnAiTrackControllerListener(this);
        this.activity.getmMapVideoController().getFimiMap().setmX8AiItemMapListener(new IX8AiItemMapListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiSurroundExcuteController.1
            @Override // com.fimi.app.x8s.interfaces.IX8AiItemMapListener
            public X8AiMapItem getCurrentItem() {
                return X8AiMapItem.AI_SURROUND;
            }
        });
        if (this.mX8AiSuroundState != X8AiSuroundState.IDLE) {
            this.isDraw = false;
            this.imgSuroundBg.setVisibility(8);
            this.tvPoint.setVisibility(8);
            this.mTvRadius.setVisibility(8);
            this.tvTip.setVisibility(8);
        } else {
            this.vRadiusBg.setVisibility(8);
            this.tvTip.showTip();
            this.isDraw = true;
        }
        if (this.mX8AiSuroundState == X8AiSuroundState.RUNNING) {
            setAiVcOpen();
            openVcToggle();
            this.listener.onSurroundRunning();
        }
        super.openUi();
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8AiController, com.fimi.app.x8s.interfaces.AbsX8Controllers, com.fimi.app.x8s.interfaces.IControllers
    public void closeUi() {
        this.mX8AiSuroundState = X8AiSuroundState.IDLE;
        this.isShow = false;
        this.activity.getmX8AiTrackController().closeUi();
        this.activity.getmMapVideoController().getFimiMap().setmX8AiItemMapListener(null);
        this.activity.getmMapVideoController().getFimiMap().getAiSurroundManager().clearSurroundMarker();
        this.activity.getmMapVideoController().getFimiMap().getAiSurroundManager().resetMapEvent();
        setAiVcClose();
        super.closeUi();
    }

    public void openNextUi() {
        this.nextRootView.setVisibility(0);
        this.blank.setVisibility(0);
        closeIconByNextUi();
        this.mX8AiSurroundToPointExcuteConfirmModule.init(this.activity, this.nextRootView, this.radius);
        if (this.mX8AiSurroundToPointExcuteConfirmModule != null) {
            this.mX8AiSurroundToPointExcuteConfirmModule.setListener(this.mIX8NextViewListener, this.fcManager, this);
        }
        if (!this.isNextShow) {
            this.isNextShow = true;
            this.width = X8Application.ANIMATION_WIDTH;
            ObjectAnimator animatorY = ObjectAnimator.ofFloat(this.nextRootView, "translationX", this.width, 0.0f);
            animatorY.setDuration(300L);
            animatorY.start();
        }
    }

    public void closeNextUi(final boolean b) {
        this.blank.setVisibility(8);
        if (this.isNextShow) {
            this.isNextShow = false;
            ObjectAnimator translationRight = ObjectAnimator.ofFloat(this.nextRootView, "translationX", 0.0f, this.width);
            translationRight.setDuration(300L);
            translationRight.start();
            translationRight.addListener(new AnimatorListenerAdapter() { // from class: com.fimi.app.x8s.controls.aifly.X8AiSurroundExcuteController.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    super.onAnimationEnd(animation);
                    X8AiSurroundExcuteController.this.nextRootView.setVisibility(8);
                    ((ViewGroup) X8AiSurroundExcuteController.this.nextRootView).removeAllViews();
                    X8AiSurroundExcuteController.this.imgBack.setVisibility(0);
                    X8AiSurroundExcuteController.this.flagSmall.setVisibility(0);
                    if (b) {
                        X8AiSurroundExcuteController.this.tvPoint.setVisibility(0);
                    }
                }
            });
        }
    }

    public void setFcManager(FcManager fcManager) {
        this.fcManager = fcManager;
    }

    public void setCirclePoint() {
        this.lastLog = StateManager.getInstance().getX8Drone().getLongitude();
        this.lastLat = StateManager.getInstance().getX8Drone().getLatitude();
        StateManager.getInstance().getX8Drone().getHeight();
        this.tvPoint.setText(this.activity.getString(C0885R.string.x8_ai_fly_follow_surround_set_takeoff_point));
        this.tvTip.setTipText(this.activity.getString(C0885R.string.x8_ai_surround_select_point2));
        this.mTvRadius.setText(String.format(this.activity.getString(C0885R.string.x8_ai_surround_radius), X8NumberUtil.getDistanceNumberString(0.0f, 0, true)));
        this.vRadiusBg.setVisibility(0);
        this.mX8AiSuroundState = X8AiSuroundState.SET_CIRCLE_POINT;
        this.activity.getmMapVideoController().getFimiMap().getAiSurroundManager().setAiSurroundMark(this.lastLat, this.lastLog);
    }

    private void setTakeOffPoint() {
        if (this.isSetCircle) {
            this.vRadiusBg.setVisibility(8);
            this.tvPoint.setVisibility(8);
            this.imgBack.setVisibility(8);
            openNextUi();
            return;
        }
        double log = StateManager.getInstance().getX8Drone().getLongitude();
        double lat = StateManager.getInstance().getX8Drone().getLatitude();
        float alt = StateManager.getInstance().getX8Drone().getHeight();
        if (alt < 5.0f) {
            String tip = String.format(this.activity.getString(C0885R.string.height_tip), X8NumberUtil.getDistanceNumberString(5.0f, 0, true));
            X8ToastUtil.showToast(this.activity, tip, 0);
            return;
        }
        this.mX8AiSuroundState = X8AiSuroundState.SET_TAKE_OFF_POINT;
        this.fcManager.setAiSurroundCiclePoint(this.lastLog, this.lastLat, alt, log, lat, alt, 1, new UiCallBackListener<AckNormalCmds>() { // from class: com.fimi.app.x8s.controls.aifly.X8AiSurroundExcuteController.3
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, AckNormalCmds o) {
                if (cmdResult.isSuccess()) {
                    X8AiSurroundExcuteController.this.activity.getmMapVideoController().getFimiMap().getAiSurroundManager().setAiSurroundCircle(X8AiSurroundExcuteController.this.lastLat, X8AiSurroundExcuteController.this.lastLog, X8AiSurroundExcuteController.this.radius);
                    X8AiSurroundExcuteController.this.openNextUi();
                    X8AiSurroundExcuteController.this.vRadiusBg.setVisibility(8);
                    X8AiSurroundExcuteController.this.tvPoint.setVisibility(8);
                    X8AiSurroundExcuteController.this.imgBack.setVisibility(8);
                    X8AiSurroundExcuteController.this.isSetCircle = true;
                    return;
                }
                X8AiSurroundExcuteController.this.mX8AiSuroundState = X8AiSuroundState.SET_CIRCLE_POINT;
            }
        });
    }

    public float getCurrentDistance() {
        double currentLng = StateManager.getInstance().getX8Drone().getLongitude();
        double currentLat = StateManager.getInstance().getX8Drone().getLatitude();
        float r = this.activity.getmMapVideoController().getFimiMap().getAiSurroundManager().getSurroundRadius(this.lastLog, this.lastLat, currentLng, currentLat);
        return r;
    }

    public void setDeviceRadius() {
        this.radius = getCurrentDistance();
        int r = Math.round(this.radius);
        this.mTvRadius.setText(String.format(this.activity.getString(C0885R.string.x8_ai_surround_radius), X8NumberUtil.getDistanceNumberString(r, 0, true)));
    }

    public void cancleByModeChange(int mode) {
        boolean z = true;
        if (mode != 1) {
            z = false;
        }
        onTaskComplete(z);
    }

    public void onTaskComplete(boolean showText) {
        closeSurround();
        if (this.listener != null) {
            this.listener.onSurroundComplete(showText);
        }
    }

    public void ononDroneDisconnectedTaskComplete() {
        closeSurround();
        if (this.listener != null) {
            this.listener.onSurroundComplete(false);
        }
    }

    public void taskExit() {
        onTaskComplete(false);
    }

    public void sendExiteCmd() {
        this.fcManager.setAiSurroundExite(new UiCallBackListener<AckNormalCmds>() { // from class: com.fimi.app.x8s.controls.aifly.X8AiSurroundExcuteController.5
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, AckNormalCmds o) {
                if (cmdResult.isSuccess()) {
                    X8AiSurroundExcuteController.this.taskExit();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeNextUiFromNext(boolean b) {
        closeNextUi(b);
        this.vRadiusBg.setVisibility(0);
        this.tvPoint.setText(this.activity.getString(C0885R.string.x8_ai_fly_follow_surround_mext));
        this.mX8AiSuroundState = X8AiSuroundState.SET_PARAMETER;
    }

    private void closeSurround() {
        closeUi();
        if (this.listener != null) {
            this.listener.onSurroundBackClick();
        }
    }

    public void getPoint() {
        this.fcManager.getAiSurroundCiclePoint(new UiCallBackListener<AckGetAiSurroundPoint>() { // from class: com.fimi.app.x8s.controls.aifly.X8AiSurroundExcuteController.6
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, AckGetAiSurroundPoint ackGetAiSurroundPoint) {
                if (!cmdResult.isSuccess()) {
                    X8AiSurroundExcuteController.this.isGetPoint = false;
                    return;
                }
                X8AiSurroundExcuteController.this.lat = ackGetAiSurroundPoint.getDeviceLatitude();
                X8AiSurroundExcuteController.this.log = ackGetAiSurroundPoint.getDeviceLongitude();
                X8AiSurroundExcuteController.this.lat1 = ackGetAiSurroundPoint.getDeviceLatitudeTakeoff();
                X8AiSurroundExcuteController.this.log1 = ackGetAiSurroundPoint.getDeviceLongitudeTakeoff();
                AutoAiSurroundState runState = StateManager.getInstance().getX8Drone().getAiSurroundState();
                X8AiSurroundExcuteController.this.f104r = runState.getRadius() / 10.0f;
                if (X8AiSurroundExcuteController.this.f104r == 0.0f) {
                }
                int max = (int) (Math.sqrt(Math.round(X8AiSurroundExcuteController.this.f104r) * 1.5d) * 10.0d);
                if (max > 100) {
                    max = 100;
                }
                X8AiSurroundExcuteController.this.vSpeed.setMaxMin(max, X8AiSurroundExcuteController.MIN, 1);
                X8AiSurroundExcuteController.this.isGetPoint = true;
            }
        });
    }

    public void switchMapVideo(boolean sightFlag) {
        if (this.handleView != null && this.isShow) {
            if (this.mX8AiSuroundState != X8AiSuroundState.RUNNING) {
                this.imgSuroundBg.setVisibility(sightFlag ? 8 : 0);
            } else {
                this.imgSuroundBg.setVisibility(8);
            }
            if (this.mX8AiSuroundState == X8AiSuroundState.RUNNING) {
                if (sightFlag) {
                    this.imgVcToggle.setVisibility(8);
                } else {
                    this.imgVcToggle.setVisibility(0);
                }
            }
        }
    }

    @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
    public void onLeft() {
    }

    @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
    public void onRight() {
        if (this.mX8AiSuroundState == X8AiSuroundState.RUNNING) {
            sendExiteCmd();
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void onDroneConnected(boolean b) {
        if (this.isShow) {
            if (!b) {
                ononDroneDisconnectedTaskComplete();
            } else {
                sysAiVcCtrlMode();
            }
        }
    }

    public void setAiVcNotityFc() {
        this.fcManager.setAiVcNotityFc(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiSurroundExcuteController.7
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                }
            }
        });
    }

    public void setAiVcOpen() {
        this.fcManager.setAiVcOpen(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiSurroundExcuteController.8
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                    X8AiSurroundExcuteController.this.imgVcToggle.setSelected(true);
                    X8AiSurroundExcuteController.this.activity.getmX8AiTrackController().openUi();
                }
            }
        });
    }

    public void setAiVcClose() {
        this.fcManager.setAiVcClose(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiSurroundExcuteController.9
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                    X8AiSurroundExcuteController.this.imgVcToggle.setSelected(false);
                    X8AiSurroundExcuteController.this.activity.getmX8AiTrackController().closeUi();
                }
            }
        });
    }

    @Override // com.fimi.app.x8s.controls.X8AiTrackController.OnAiTrackControllerListener
    public void onChangeGoLocation(float left, float right, float top, float bottom, int w, int h) {
    }

    @Override // com.fimi.app.x8s.controls.X8AiTrackController.OnAiTrackControllerListener
    public void setGoEnabled(boolean b) {
        if (b) {
            setAiVcNotityFc();
        }
    }

    @Override // com.fimi.app.x8s.controls.X8AiTrackController.OnAiTrackControllerListener
    public void onTouchActionDown() {
    }

    @Override // com.fimi.app.x8s.controls.X8AiTrackController.OnAiTrackControllerListener
    public void onTouchActionUp() {
    }

    @Override // com.fimi.app.x8s.controls.X8AiTrackController.OnAiTrackControllerListener
    public void onTracking() {
        this.imgVcToggle.setEnabled(true);
    }

    public void setSpeed(int speed) {
        this.speed = speed;
        this.vSpeed.setSpeed2(speed);
    }

    public void getSpeed() {
        this.fcManager.getAiSurroundSpeed(new UiCallBackListener<AckAiSurrounds>() { // from class: com.fimi.app.x8s.controls.aifly.X8AiSurroundExcuteController.10
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, AckAiSurrounds o) {
                if (!cmdResult.isSuccess()) {
                    X8AiSurroundExcuteController.this.isGetSpeed = false;
                    return;
                }
                X8AiSurroundExcuteController.this.speed = o.getSpeed();
                X8AiSurroundExcuteController.this.vSpeed.setSpeed2(X8AiSurroundExcuteController.this.speed);
                X8AiSurroundExcuteController.this.isGetSpeed = true;
            }
        });
    }

    @Override // com.fimi.app.x8s.widget.X8FollowSpeedContainerView.OnSendSpeedListener
    public void onSendSpeed(int speed) {
        this.fcManager.setAiSurroundSpeed(speed, new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiSurroundExcuteController.11
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                }
            }
        });
    }

    public void switchUnityEvent() {
        if (this.isShow) {
            this.vSpeed.switchUnity();
        }
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public boolean onClickBackKey() {
        return false;
    }

    public void setSpeedMax(int speedMax) {
        this.vSpeed.setMaxMin(speedMax, MIN, 1);
    }

    public void showSportState(AutoFcSportState state) {
        AutoAiSurroundState runState;
        if (this.mX8AiSuroundState != X8AiSuroundState.RUNNING) {
            setDeviceRadius();
        } else if (!this.isDraw && this.mX8AiSuroundState == X8AiSuroundState.RUNNING) {
            if (!this.isGetPoint) {
                getPoint();
            }
            if (!this.isGetSpeed) {
                getSpeed();
            }
            if (this.isGetPoint && this.isGetSpeed) {
                this.isDraw = true;
                this.activity.getmMapVideoController().getFimiMap().getAiSurroundManager().setAiSurroundMark(this.lat, this.log);
                this.activity.getmMapVideoController().getFimiMap().getAiSurroundManager().setAiSurroundCircle(this.lat, this.log, this.f104r);
                this.vSpeed.setVisibility(0);
            }
        } else if (this.isDraw && this.isGetPoint && this.isGetSpeed && this.mX8AiSuroundState == X8AiSuroundState.RUNNING && (runState = StateManager.getInstance().getX8Drone().getAiSurroundState()) != null) {
            if (runState.getStates() != 0) {
                this.isChangRadius = true;
                this.speed = runState.getSpeed();
                this.f104r = runState.getRadius() / 10.0f;
            } else if (this.isChangRadius) {
                this.isChangRadius = false;
                this.speed = runState.getSpeed();
                this.f104r = runState.getRadius() / 10.0f;
                this.activity.getmMapVideoController().getFimiMap().getAiSurroundManager().reSetAiSurroundCircle(this.lat, this.log, this.f104r);
                int max = (int) (Math.sqrt(Math.round(this.f104r) * 1.5d) * 10.0d);
                if (max > 100) {
                    max = 100;
                }
                this.vSpeed.setMaxMin(max, MIN, 1);
                if (max < Math.abs(this.speed)) {
                    if (this.speed > 0) {
                        this.speed = max;
                    } else {
                        this.speed = -max;
                    }
                }
                this.vSpeed.setSpeed2(this.speed);
            }
        }
    }

    public void openVcToggle() {
        if (this.activity.getmMapVideoController().isFullVideo()) {
            this.imgVcToggle.setVisibility(0);
        } else {
            this.imgVcToggle.setVisibility(8);
        }
    }

    public void closeIconByNextUi() {
        this.tvPoint.setVisibility(8);
        this.imgBack.setVisibility(8);
        this.flagSmall.setVisibility(8);
    }

    public void sysAiVcCtrlMode() {
        if (this.mX8AiSuroundState == X8AiSuroundState.IDLE || this.mX8AiSuroundState == X8AiSuroundState.SET_CIRCLE_POINT || this.mX8AiSuroundState == X8AiSuroundState.SET_TAKE_OFF_POINT || this.mX8AiSuroundState == X8AiSuroundState.SET_PARAMETER) {
            if (this.timeSend == 0) {
                this.timeSend = 1;
                this.activity.getFcManager().sysCtrlMode2AiVc(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiSurroundExcuteController.12
                    @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                    public void onComplete(CmdResult cmdResult, Object o) {
                    }
                }, X8Task.VCM_INTEREST_POINT.ordinal());
                return;
            }
            this.timeSend = 0;
        }
    }
}
