package com.fimi.app.x8s.controls.aifly;

import android.view.View;
import android.view.ViewGroup;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.controls.aifly.X8AiGravitationExcuteController;
import com.fimi.app.x8s.controls.aifly.X8AiScrewExcuteController;
import com.fimi.app.x8s.enums.X8AiAutoPhotoState;
import com.fimi.app.x8s.enums.X8AiFollowState;
import com.fimi.app.x8s.enums.X8AiLineState;
import com.fimi.app.x8s.enums.X8AiPointState;
import com.fimi.app.x8s.enums.X8AiSuroundState;
import com.fimi.app.x8s.interfaces.IX8AerialGraphListener;
import com.fimi.app.x8s.interfaces.IX8AiAutoPhotoExcuteControllerListener;
import com.fimi.app.x8s.interfaces.IX8AiFixedwingListener;
import com.fimi.app.x8s.interfaces.IX8AiFollowExcuteListener;
import com.fimi.app.x8s.interfaces.IX8AiGravitationExcuteControllerListener;
import com.fimi.app.x8s.interfaces.IX8AiHeadLockListener;
import com.fimi.app.x8s.interfaces.IX8AiLineExcuteControllerListener;
import com.fimi.app.x8s.interfaces.IX8AiSarListener;
import com.fimi.app.x8s.interfaces.IX8AiSurroundExcuteControllerListener;
import com.fimi.app.x8s.interfaces.IX8AiTripodListener;
import com.fimi.app.x8s.interfaces.IX8Point2PointExcuteConttrollerListener;
import com.fimi.app.x8s.interfaces.IX8ScrewListener;
import com.fimi.app.x8s.interfaces.IX8TLRListener;
import com.fimi.app.x8s.p011ui.activity.X8sMainActivity;
import com.fimi.kernel.store.shared.SPStoreManager;
import com.fimi.x8sdk.controller.CameraManager;
import com.fimi.x8sdk.controller.FcCtrlManager;
import com.fimi.x8sdk.controller.FcManager;
import com.fimi.x8sdk.dataparser.AutoFcSportState;
import com.fimi.x8sdk.listener.IX8AiStateListener;
import com.fimi.x8sdk.modulestate.StateManager;
/* loaded from: classes.dex */
public class X8AiTaskManager {
    private X8sMainActivity activity;
    private View aiExcuteView;
    private X8AiAerialPhotographExcuteController mAiAerailShot;
    private X8AiAutoPhototExcuteController mAiAutoPhoto;
    private X8AiFixedwingExcuteController mAiFixedwing;
    private X8AiFollowExcuteController mAiFollow;
    private X8AiGravitationExcuteController mAiGravitation;
    private X8AiHeadLockExcuteController mAiHeadlock;
    private X8AiLineExcuteController mAiLine;
    private X8AiD2PExcuteController mAiPoint2Point;
    private X8AiSarExcuteController mAiSar;
    private X8AiScrewExcuteController mAiScrew;
    private X8AiSurroundExcuteController mAiSurround;
    private X8AiTakeoffLandingReturnHomeExcuteController mAiTLRController;
    private X8AiTripodExcuteController mAiTripod;
    private CameraManager mCameraManager;
    private FcCtrlManager mFcCtrlManager;
    private FcManager mFcManager;
    private IX8AiStateListener mIX8AiStateListener;
    private int lastMode = 1;
    public IX8AiFixedwingListener mIX8AiFixedwingListener = new IX8AiFixedwingListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTaskManager.1
        @Override // com.fimi.app.x8s.interfaces.IX8AiFixedwingListener
        public void onFixedwingBackClick() {
            X8AiTaskManager.this.mAiFixedwing = null;
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFixedwingListener
        public void onFixedwingRunning() {
            X8AiTaskManager.this.activity.runFixedwing();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFixedwingListener
        public void onFixedwingComplete(boolean showText) {
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.activity.onTaskComplete(showText, X8AiTaskManager.this.activity.getString(C0885R.string.x8_ai_fixedwing_complete));
        }
    };
    public IX8AiHeadLockListener mIX8AiHeadLockListener = new IX8AiHeadLockListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTaskManager.2
        @Override // com.fimi.app.x8s.interfaces.IX8AiHeadLockListener
        public void onAiHeadLockBackClick() {
            X8AiTaskManager.this.mAiHeadlock = null;
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiHeadLockListener
        public void onAiHeadLockRunning() {
            X8AiTaskManager.this.activity.runFixedwing();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiHeadLockListener
        public void onAiHeadLockComplete(boolean showText) {
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.activity.onTaskComplete(showText, X8AiTaskManager.this.activity.getString(C0885R.string.x8_ai_heading_lock_complete));
        }
    };
    public IX8AiTripodListener mIX8AiTripodListener = new IX8AiTripodListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTaskManager.3
        @Override // com.fimi.app.x8s.interfaces.IX8AiTripodListener
        public void onAiTripodBackClick() {
            X8AiTaskManager.this.mAiTripod = null;
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiTripodListener
        public void onAiTripodRunning() {
            X8AiTaskManager.this.activity.runFixedwing();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiTripodListener
        public void onAiTripodComplete(boolean showText) {
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.activity.onTaskComplete(showText, X8AiTaskManager.this.activity.getString(C0885R.string.x8_ai_tripod_complete));
        }
    };
    public IX8AerialGraphListener mIX8AerialGraphListener = new IX8AerialGraphListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTaskManager.4
        @Override // com.fimi.app.x8s.interfaces.IX8AerialGraphListener
        public void onAerialGraphBackClick() {
            X8AiTaskManager.this.mAiAerailShot = null;
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AerialGraphListener
        public void onAerialGraphRunning() {
            X8AiTaskManager.this.activity.runFixedwing();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AerialGraphListener
        public void onAerialGraphComplete(boolean showText) {
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.activity.onTaskComplete(showText, X8AiTaskManager.this.activity.getString(C0885R.string.x8_ai_aerail_graph_complete));
        }
    };
    public IX8ScrewListener mIX8ScrewListener = new IX8ScrewListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTaskManager.5
        @Override // com.fimi.app.x8s.interfaces.IX8ScrewListener
        public void onAiScrewBackClick() {
            X8AiTaskManager.this.activity.onTaskBack();
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.mAiScrew = null;
        }

        @Override // com.fimi.app.x8s.interfaces.IX8ScrewListener
        public void onAiScrewRunning() {
            X8AiTaskManager.this.activity.onTaskRunning();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8ScrewListener
        public void onAiScrewComplete(boolean showText) {
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.activity.onTaskComplete(showText, X8AiTaskManager.this.activity.getString(C0885R.string.x8_ai_fly_screw_complete));
            X8AiTaskManager.this.mAiScrew = null;
        }
    };
    private IX8AiGravitationExcuteControllerListener mIX8AiGravitationExcuteControllerListener = new IX8AiGravitationExcuteControllerListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTaskManager.6
        @Override // com.fimi.app.x8s.interfaces.IX8AiGravitationExcuteControllerListener
        public void onAiGravitationBackClick() {
            X8AiTaskManager.this.activity.onTaskBack();
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.mAiGravitation = null;
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiGravitationExcuteControllerListener
        public void onAiGravitationComplete(boolean showText) {
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.activity.onTaskComplete(showText, X8AiTaskManager.this.activity.getString(C0885R.string.x8_ai_fly_gravitation_complete));
            X8AiTaskManager.this.mAiGravitation = null;
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiGravitationExcuteControllerListener
        public void onAiGravitaionRunning() {
            X8AiTaskManager.this.activity.onTaskRunning();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiGravitationExcuteControllerListener
        public void onAiGravitationInterrupt() {
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.activity.onTaskComplete(true, X8AiTaskManager.this.activity.getString(C0885R.string.x8_ai_fly_gravitation_interrupt));
            X8AiTaskManager.this.mAiGravitation = null;
        }
    };
    private IX8AiSarListener mIX8AiSarListener = new IX8AiSarListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTaskManager.7
        @Override // com.fimi.app.x8s.interfaces.IX8AiSarListener
        public void onAiSarBackClick() {
            X8AiTaskManager.this.mAiSar = null;
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiSarListener
        public void onAiSarRunning() {
            X8AiTaskManager.this.activity.runFixedwing();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiSarListener
        public void onAiSarComplete(boolean showText) {
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.activity.onTaskComplete(showText, X8AiTaskManager.this.activity.getString(C0885R.string.x8_ai_fly_sar_complete_tip));
        }
    };
    public IX8AiLineExcuteControllerListener mIX8AiLineExcuteControllerListener = new IX8AiLineExcuteControllerListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTaskManager.9
        @Override // com.fimi.app.x8s.interfaces.IX8AiLineExcuteControllerListener
        public void onLineBackClick() {
            X8AiTaskManager.this.activity.onTaskBack();
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.mAiLine = null;
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiLineExcuteControllerListener
        public void onLineRunning() {
            X8AiTaskManager.this.activity.onTaskRunning();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiLineExcuteControllerListener
        public void onLineComplete(boolean showText) {
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.activity.onTaskComplete(showText, X8AiTaskManager.this.activity.getString(C0885R.string.x8_ai_fly_line_compelete_tip));
            X8AiTaskManager.this.mAiLine = null;
        }
    };
    private IX8TLRListener mX8TLRListener = new IX8TLRListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTaskManager.10
        @Override // com.fimi.app.x8s.interfaces.IX8TLRListener
        public void onRunning() {
            X8AiTaskManager.this.activity.onTaskRunning();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8TLRListener
        public void onComplete(String s, boolean showText) {
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.activity.onTaskComplete(showText, s);
            X8AiTaskManager.this.mAiTLRController = null;
        }
    };
    public IX8Point2PointExcuteConttrollerListener mIX8Point2PointExcuteConttrollerListener = new IX8Point2PointExcuteConttrollerListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTaskManager.11
        @Override // com.fimi.app.x8s.interfaces.IX8Point2PointExcuteConttrollerListener
        public void onPoint2PointBackClick() {
            X8AiTaskManager.this.activity.onTaskBack();
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.mAiPoint2Point = null;
        }

        @Override // com.fimi.app.x8s.interfaces.IX8Point2PointExcuteConttrollerListener
        public void onPoint2PointRunning() {
            X8AiTaskManager.this.activity.onTaskRunning();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8Point2PointExcuteConttrollerListener
        public void onPoint2PointComplete(boolean showText) {
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.activity.onTaskComplete(showText, X8AiTaskManager.this.activity.getString(C0885R.string.x8_ai_fly_follow_point_to_point_complete));
            X8AiTaskManager.this.mAiPoint2Point = null;
        }
    };
    public IX8AiSurroundExcuteControllerListener mIX8AiSurroundExcuteControllerListener = new IX8AiSurroundExcuteControllerListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTaskManager.12
        @Override // com.fimi.app.x8s.interfaces.IX8AiSurroundExcuteControllerListener
        public void onSurroundBackClick() {
            X8AiTaskManager.this.activity.onTaskBack();
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.mAiSurround = null;
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiSurroundExcuteControllerListener
        public void onSurroundRunning() {
            X8AiTaskManager.this.activity.onTaskRunning();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiSurroundExcuteControllerListener
        public void onSurroundComplete(boolean showText) {
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.activity.onTaskComplete(showText, X8AiTaskManager.this.activity.getString(C0885R.string.x8_ai_fly_follow_surround_compelete_tip));
            X8AiTaskManager.this.mAiSurround = null;
        }
    };
    public IX8AiAutoPhotoExcuteControllerListener mX8AiAutoPhotoExcuteControllerListener = new IX8AiAutoPhotoExcuteControllerListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTaskManager.13
        @Override // com.fimi.app.x8s.interfaces.IX8AiAutoPhotoExcuteControllerListener
        public void onAutoPhotoBackClick() {
            X8AiTaskManager.this.activity.onTaskBack();
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.mAiAutoPhoto = null;
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiAutoPhotoExcuteControllerListener
        public void onAutoPhotoRunning() {
            X8AiTaskManager.this.activity.onTaskRunning();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiAutoPhotoExcuteControllerListener
        public void onAutoPhotoComplete(boolean showText) {
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.activity.onTaskComplete(showText, X8AiTaskManager.this.activity.getString(C0885R.string.x8_ai_auto_photo_compelete_tip));
            X8AiTaskManager.this.mAiAutoPhoto = null;
        }
    };
    public IX8AiFollowExcuteListener mX8AiFollowExcuteListener = new IX8AiFollowExcuteListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTaskManager.14
        @Override // com.fimi.app.x8s.interfaces.IX8AiFollowExcuteListener
        public void onAiFollowRunning() {
            X8AiTaskManager.this.activity.onTaskRunning();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFollowExcuteListener
        public void onComplete(String s, boolean showText) {
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.activity.onTaskComplete(showText, s);
            X8AiTaskManager.this.mAiFollow = null;
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFollowExcuteListener
        public void onAiFollowExcuteBackClick() {
            X8AiTaskManager.this.activity.onTaskBack();
            X8AiTaskManager.this.removeAlls();
            X8AiTaskManager.this.mAiFollow = null;
        }
    };

    public X8AiTaskManager(View aiExcuteView, X8sMainActivity activity) {
        this.aiExcuteView = aiExcuteView;
        this.activity = activity;
    }

    public boolean isTaskRunning() {
        boolean ret = false;
        if (StateManager.getInstance().getX8Drone().getCtrlMode() != 1) {
            ret = true;
        } else if (this.mAiSar != null) {
            return true;
        } else {
            if (this.mAiLine != null || this.mAiHeadlock != null || this.mAiTripod != null || this.mAiAerailShot != null || this.mAiScrew != null || this.mAiSurround != null || this.mAiAutoPhoto != null || this.mAiFollow != null) {
                ret = true;
            }
        }
        return ret;
    }

    public boolean isTaskCanChangeBottom() {
        if (StateManager.getInstance().getX8Drone().getCtrlMode() != 1) {
            return true;
        }
        if (this.mAiLine == null && this.mAiSurround == null && this.mAiAutoPhoto == null && this.mAiFollow == null && this.mAiScrew == null) {
            return true;
        }
        return false;
    }

    public void showAiView() {
        int currentMode = StateManager.getInstance().getX8Drone().getCtrlMode();
        if (currentMode != this.lastMode && this.lastMode != 1) {
            cancleLastMode(this.lastMode, currentMode);
            cancleByModeChange(currentMode);
            removeAlls();
        }
        if (currentMode != 1 && this.mAiSar != null) {
            this.mAiSar.cancleByModeChange();
            this.mAiSar = null;
        }
        if (this.lastMode == 1) {
            if (currentMode == 7 || currentMode == 8 || currentMode == 9) {
                cancleByModeChange(currentMode);
            } else if (currentMode == 3) {
                cancleByModeChange(currentMode);
            }
        }
        this.lastMode = currentMode;
        doCurrentMode(currentMode);
    }

    public void doCurrentMode(int mode) {
        switch (mode) {
            case 2:
                initAiTLRController(2);
                setX8AiState(true);
                return;
            case 3:
                initAiTLRController(3);
                setX8AiState(true);
                return;
            case 4:
                intAiD2Point(X8AiPointState.RUNNING);
                this.mAiPoint2Point.showAiPointView();
                setX8AiState(true);
                return;
            case 5:
                initAiSurround(X8AiSuroundState.RUNNING);
                setX8AiState(true);
                return;
            case 6:
                initAiLine(X8AiLineState.RUNNING, -1, -1L);
                this.mAiLine.showAiPointView();
                setX8AiState(true);
                return;
            case 7:
                initAiTLRController(7);
                setX8AiState(true);
                return;
            case 8:
                initAiTLRController(8);
                setX8AiState(true);
                return;
            case 9:
                initAiTLRController(9);
                setX8AiState(true);
                return;
            case 10:
                initAiAutoPhoto(X8AiAutoPhotoState.RUNNING, -1);
                setX8AiState(true);
                return;
            case 11:
                initAiFollow(X8AiFollowState.RUNNING, -1);
                setX8AiState(true);
                return;
            case 12:
                if (this.mAiHeadlock == null) {
                    this.mAiHeadlock = new X8AiHeadLockExcuteController(this.activity, this.aiExcuteView);
                    this.mAiHeadlock.setListener(this.mIX8AiHeadLockListener);
                    this.mAiHeadlock.setFcManager(this.mFcCtrlManager);
                    this.mAiHeadlock.openUi();
                }
                setX8AiState(true);
                return;
            case 13:
                if (this.mAiFixedwing == null) {
                    this.mAiFixedwing = new X8AiFixedwingExcuteController(this.activity, this.aiExcuteView);
                    this.mAiFixedwing.setListener(this.mIX8AiFixedwingListener);
                    this.mAiFixedwing.setFcManager(this.mFcCtrlManager);
                    this.mAiFixedwing.openUi();
                }
                setX8AiState(true);
                return;
            case 14:
                initScrewExcuteController(X8AiScrewExcuteController.ScrewState.RUNNING);
                setX8AiState(true);
                return;
            case 15:
                if (this.mAiTripod == null) {
                    this.mAiTripod = new X8AiTripodExcuteController(this.activity, this.aiExcuteView);
                    this.mAiTripod.setListener(this.mIX8AiTripodListener);
                    this.mAiTripod.setFcManager(this.mFcCtrlManager);
                    this.mAiTripod.openUi();
                }
                setX8AiState(true);
                return;
            case 16:
                if (this.mAiAerailShot == null) {
                    this.mAiAerailShot = new X8AiAerialPhotographExcuteController(this.activity, this.aiExcuteView);
                    this.mAiAerailShot.setListener(this.mIX8AerialGraphListener);
                    this.mAiAerailShot.setFcManager(this.mFcCtrlManager);
                    this.mAiAerailShot.openUi();
                }
                setX8AiState(true);
                return;
            case 17:
            default:
                return;
            case 18:
                if (this.mAiGravitation == null) {
                    this.mAiGravitation = new X8AiGravitationExcuteController(this.activity, this.aiExcuteView, X8AiGravitationExcuteController.X8GravitationState.RUNNING);
                    this.mAiGravitation.setListener(this.mIX8AiGravitationExcuteControllerListener);
                    this.mAiGravitation.setFcManager(this.mFcManager);
                    this.mAiGravitation.setCameraManager(this.mCameraManager);
                    this.mAiGravitation.openUi();
                }
                setX8AiState(true);
                return;
        }
    }

    public void cancleLastMode(int mode, int currentMode) {
        switch (mode) {
            case 2:
                if (this.mAiTLRController != null) {
                    this.mAiTLRController.cancleByModeChange(currentMode);
                }
                setX8AiState(false);
                return;
            case 3:
                if (this.mAiTLRController != null) {
                    this.mAiTLRController.cancleByModeChange(currentMode);
                }
                setX8AiState(false);
                return;
            case 4:
                if (this.mAiPoint2Point != null) {
                    this.mAiPoint2Point.cancleByModeChange(currentMode);
                }
                setX8AiState(false);
                return;
            case 5:
                if (this.mAiSurround != null) {
                    this.mAiSurround.cancleByModeChange();
                }
                setX8AiState(false);
                return;
            case 6:
                if (this.mAiLine != null) {
                    this.mAiLine.cancleByModeChange(currentMode);
                }
                setX8AiState(false);
                return;
            case 7:
                if (this.mAiTLRController != null) {
                    this.mAiTLRController.cancleByModeChange(currentMode);
                }
                setX8AiState(false);
                return;
            case 8:
                if (this.mAiTLRController != null) {
                    this.mAiTLRController.cancleByModeChange(currentMode);
                }
                setX8AiState(false);
                return;
            case 9:
                if (this.mAiTLRController != null) {
                    this.mAiTLRController.cancleByModeChange(currentMode);
                }
                setX8AiState(false);
                return;
            case 10:
                if (this.mAiAutoPhoto != null) {
                    this.mAiAutoPhoto.cancleByModeChange(currentMode);
                }
                setX8AiState(false);
                return;
            case 11:
                if (this.mAiFollow != null) {
                    this.mAiFollow.cancleByModeChange(currentMode);
                }
                setX8AiState(false);
                return;
            case 12:
            case 14:
            case 15:
            case 17:
            default:
                setX8AiState(false);
                return;
            case 13:
                if (this.mAiFixedwing != null) {
                    this.mAiFixedwing.cancleByModeChange();
                }
                setX8AiState(false);
                return;
            case 16:
                setX8AiState(false);
                return;
            case 18:
                if (this.mAiGravitation != null) {
                    this.mAiGravitation.cancleByModeChange(currentMode);
                }
                setX8AiState(false);
                return;
        }
    }

    public void removeAlls() {
        ((ViewGroup) this.aiExcuteView).removeAllViews();
    }

    public void cancleByModeChange(int mode) {
        if (this.mAiFixedwing != null) {
            this.mAiFixedwing.closeUi();
            if (mode == 1) {
                this.activity.onShowAiFlyIcon();
            }
            this.mAiFixedwing = null;
        }
        if (this.mAiHeadlock != null) {
            this.mAiHeadlock.closeUi();
            if (mode == 1) {
                this.activity.onShowAiFlyIcon();
            }
            this.mAiHeadlock = null;
        }
        if (this.mAiTripod != null) {
            this.mAiTripod.closeUi();
            if (mode == 1) {
                this.activity.onShowAiFlyIcon();
            }
            this.mAiTripod = null;
        }
        if (this.mAiAerailShot != null) {
            this.mAiAerailShot.closeUi();
            if (mode == 1) {
                this.activity.onShowAiFlyIcon();
            }
            this.mAiAerailShot = null;
        }
        if (this.mAiGravitation != null) {
            this.mAiGravitation.cancleByModeChange(mode);
            this.mAiGravitation = null;
        }
        if (this.mAiScrew != null) {
            this.mAiScrew.cancleByModeChange(mode);
            this.mAiScrew = null;
        }
        if (this.mAiSurround != null) {
            this.mAiSurround.cancleByModeChange(mode);
            this.mAiSurround = null;
        }
        if (this.mAiLine != null) {
            this.mAiLine.cancleByModeChange(mode);
            this.mAiLine = null;
        }
        if (this.mAiFollow != null) {
            this.mAiFollow.cancleByModeChange(mode);
            this.mAiFollow = null;
        }
        if (this.mAiAutoPhoto != null) {
            this.mAiAutoPhoto.cancleByModeChange(mode);
            this.mAiAutoPhoto = null;
        }
        if (this.mAiPoint2Point != null) {
            this.mAiPoint2Point.cancleByModeChange(mode);
            this.mAiPoint2Point = null;
        }
    }

    public void showSportState(AutoFcSportState state) {
        if (this.mAiHeadlock != null) {
            this.mAiHeadlock.showSportState(state);
        } else if (this.mAiAerailShot != null) {
            this.mAiAerailShot.showSportState(state);
        } else if (this.mAiScrew != null) {
            this.mAiScrew.showSportState(state);
        } else if (this.mAiSurround != null) {
            this.mAiSurround.showSportState(state);
        } else if (this.mAiGravitation != null) {
            this.mAiGravitation.showSportState(state);
        }
    }

    public void onDroneConnected(boolean b) {
        if (this.mAiFixedwing != null) {
            this.mAiFixedwing.onDroneConnected(b);
        }
        if (this.mAiHeadlock != null) {
            this.mAiHeadlock.onDroneConnected(b);
        }
        if (this.mAiTripod != null) {
            this.mAiTripod.onDroneConnected(b);
        }
        if (this.mAiAerailShot != null) {
            this.mAiAerailShot.onDroneConnected(b);
        }
        if (this.mAiScrew != null) {
            this.mAiScrew.onDroneConnected(b);
        }
        if (this.mAiSurround != null) {
            this.mAiSurround.onDroneConnected(b);
        }
        if (this.mAiSar != null) {
            this.mAiSar.onDroneConnected(b);
        }
        if (this.mAiLine != null) {
            this.mAiLine.onDroneConnected(b);
        }
        if (this.mAiFollow != null) {
            this.mAiFollow.onDroneConnected(b);
        }
        if (this.mAiAutoPhoto != null) {
            this.mAiAutoPhoto.onDroneConnected(b);
        }
        if (this.mAiTLRController != null) {
            this.mAiTLRController.onDroneConnected(b);
        }
        if (this.mAiPoint2Point != null) {
            this.mAiPoint2Point.onDroneConnected(b);
        }
        if (this.mAiGravitation != null) {
            this.mAiGravitation.onDroneConnected(b);
        }
        if (!b) {
            this.lastMode = 1;
        }
    }

    public void switchUnityEvent() {
        if (this.mAiSurround != null) {
            this.mAiSurround.switchUnityEvent();
        }
        if (this.mAiFollow != null) {
            this.mAiFollow.switchUnityEvent();
        }
    }

    public void switchMapVideo(boolean isVideo) {
        if (this.mAiGravitation != null) {
            this.mAiGravitation.switchMapVideo(isVideo);
        }
        if (this.mAiScrew != null) {
            this.mAiScrew.switchMapVideo(isVideo);
        }
        if (this.mAiSar != null) {
            this.mAiSar.switchMapVideo(isVideo);
        } else if (this.mAiLine != null) {
            this.mAiLine.switchMapVideo(isVideo);
        } else if (this.mAiAutoPhoto != null) {
            this.mAiAutoPhoto.switchMapVideo(isVideo);
        } else if (this.mAiSurround != null) {
            this.mAiSurround.switchMapVideo(isVideo);
        } else if (this.mAiPoint2Point != null) {
            this.mAiPoint2Point.switchMapVideo(isVideo);
        }
    }

    public void setManager(FcManager mFcManager, FcCtrlManager mFcCtrlManager) {
        this.mFcCtrlManager = mFcCtrlManager;
        this.mFcManager = mFcManager;
    }

    public void setCameraManager(CameraManager cameraManager) {
        this.mCameraManager = cameraManager;
    }

    public void initScrewExcuteController() {
        initScrewExcuteController(X8AiScrewExcuteController.ScrewState.IDLE);
    }

    public void initScrewExcuteController(X8AiScrewExcuteController.ScrewState state) {
        if (this.mAiScrew == null) {
            this.mAiScrew = new X8AiScrewExcuteController(this.activity, this.aiExcuteView, state);
            this.mAiScrew.setListener(this.mIX8ScrewListener);
            this.mAiScrew.setFcManager(this.mFcCtrlManager, this.mFcManager);
            this.mAiScrew.openUi();
        }
    }

    public void openAiGravitation() {
        initAiGravitation(X8AiGravitationExcuteController.X8GravitationState.IDLE);
    }

    private void initAiGravitation(X8AiGravitationExcuteController.X8GravitationState state) {
        if (this.mAiGravitation == null) {
            this.mAiGravitation = new X8AiGravitationExcuteController(this.activity, this.aiExcuteView, state);
        }
        this.mAiGravitation.setListener(this.mIX8AiGravitationExcuteControllerListener);
        this.mAiGravitation.setFcManager(this.mFcManager);
        this.mAiGravitation.setCameraManager(this.mCameraManager);
        this.mAiGravitation.openUi();
    }

    public void changeSarProceess(boolean b) {
        if (this.mAiSar != null) {
            this.mAiSar.changeProcessByRc(b);
        }
    }

    public boolean isInSARMode() {
        return this.mAiSar != null;
    }

    public void openAiSarUi() {
        if (this.mAiSar == null) {
            this.mAiSar = new X8AiSarExcuteController(this.activity, this.aiExcuteView);
            this.mAiSar.setListener(this.mIX8AiSarListener);
            this.mAiSar.setFcManager(this.mFcCtrlManager);
            this.mAiSar.openUi();
        }
    }

    public void updateSarValue() {
        if (this.mAiSar != null) {
            this.aiExcuteView.postDelayed(new Runnable() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTaskManager.8
                @Override // java.lang.Runnable
                public void run() {
                    X8AiTaskManager.this.mAiSar.setProgress();
                }
            }, 500L);
        }
    }

    public void openAiLine(int mode, long lineId) {
        initAiLine(X8AiLineState.IDLE, mode, lineId);
        if (mode == 3) {
            SPStoreManager.getInstance().saveBoolean("isExecuteCurveProcess", true);
        } else {
            SPStoreManager.getInstance().saveBoolean("isExecuteCurveProcess", false);
        }
    }

    public void initAiLine(X8AiLineState state, int mode, long lineId) {
        if (this.mAiLine == null) {
            this.mAiLine = new X8AiLineExcuteController(this.activity, this.aiExcuteView, state, mode, lineId);
            this.mAiLine.setListener(this.mIX8AiLineExcuteControllerListener);
            this.mAiLine.setFcManager(this.mFcManager);
            this.mAiLine.setCameraManager(this.mCameraManager);
            this.mAiLine.openUi();
        }
    }

    public void switchLine(long lineId, int type) {
        if (this.mAiLine != null) {
            this.mAiLine.switchLine(lineId, type);
        }
    }

    public void initAiTLRController(int type) {
        if (this.mAiTLRController == null) {
            this.mAiTLRController = new X8AiTakeoffLandingReturnHomeExcuteController(this.activity, this.aiExcuteView, type);
            this.mAiTLRController.setListener(this.mX8TLRListener);
            this.mAiTLRController.setFcManager(this.mFcManager);
            this.mAiTLRController.openUi();
        }
    }

    public void openAiD2Point() {
        intAiD2Point(X8AiPointState.IDLE);
    }

    private void intAiD2Point(X8AiPointState state) {
        if (this.mAiPoint2Point == null) {
            this.mAiPoint2Point = new X8AiD2PExcuteController(this.activity, this.aiExcuteView, state);
            this.mAiPoint2Point.setListener(this.mIX8Point2PointExcuteConttrollerListener);
            this.mAiPoint2Point.setMapVideoController(this.activity.getmMapVideoController());
            this.mAiPoint2Point.openUi();
        }
    }

    public void openAiSurround() {
        initAiSurround(X8AiSuroundState.IDLE);
    }

    public void initAiSurround(X8AiSuroundState state) {
        if (this.mAiSurround == null) {
            this.mAiSurround = new X8AiSurroundExcuteController(this.activity, this.aiExcuteView, state);
            this.mAiSurround.setListener(this.mIX8AiSurroundExcuteControllerListener);
            this.mAiSurround.setFcManager(this.mFcManager);
            this.mAiSurround.openUi();
        }
    }

    public void openAiAutoPhoto(int type) {
        initAiAutoPhoto(X8AiAutoPhotoState.IDLE, type);
    }

    private void initAiAutoPhoto(X8AiAutoPhotoState state, int type) {
        if (this.mAiAutoPhoto == null) {
            this.mAiAutoPhoto = new X8AiAutoPhototExcuteController(this.activity, this.aiExcuteView, state, type);
            this.mAiAutoPhoto.setListener(this.mX8AiAutoPhotoExcuteControllerListener);
            this.mAiAutoPhoto.openUi();
        }
    }

    public void openAiFollow(int type) {
        initAiFollow(X8AiFollowState.IDLE, type);
    }

    public void initAiFollow(X8AiFollowState state, int type) {
        if (this.mAiFollow == null) {
            this.mAiFollow = new X8AiFollowExcuteController(this.activity, this.aiExcuteView, state, type);
            this.mAiFollow.setX8AiFollowExcuteListener(this.mX8AiFollowExcuteListener);
            this.mAiFollow.openUi();
        }
    }

    public void setIX8AiStateListener(IX8AiStateListener IX8AiStateListener) {
        this.mIX8AiStateListener = IX8AiStateListener;
    }

    public void setX8AiState(boolean aiRunning) {
        if (this.mIX8AiStateListener != null) {
            this.mIX8AiStateListener.aiState(aiRunning);
        }
    }
}
