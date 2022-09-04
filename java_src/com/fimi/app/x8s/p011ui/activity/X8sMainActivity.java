package com.fimi.app.x8s.p011ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.RelativeLayout;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import com.alibaba.fastjson.parser.Feature;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.X8Application;
import com.fimi.app.x8s.controls.RightRollerController;
import com.fimi.app.x8s.controls.X8AiTrackController;
import com.fimi.app.x8s.controls.X8MainAiFlyController;
import com.fimi.app.x8s.controls.X8MainBottomParameterController;
import com.fimi.app.x8s.controls.X8MainErrorCodePowerPitchAngleController;
import com.fimi.app.x8s.controls.X8MainRightMenuController;
import com.fimi.app.x8s.controls.X8MainTopBarController;
import com.fimi.app.x8s.controls.X8MapVideoController;
import com.fimi.app.x8s.controls.X8RightIconForMapController;
import com.fimi.app.x8s.controls.X8UpdateHintController;
import com.fimi.app.x8s.controls.aifly.X8AccurateLandingController;
import com.fimi.app.x8s.controls.aifly.X8AiTaskManager;
import com.fimi.app.x8s.controls.aifly.confirm.p010ui.X8MainAiFollowConfirmController;
import com.fimi.app.x8s.controls.camera.CameraParamStatus;
import com.fimi.app.x8s.controls.camera.X8CameraInterestMeteringController;
import com.fimi.app.x8s.controls.camera.X8MainCameraSettingController;
import com.fimi.app.x8s.controls.fcsettting.X8FiveKeyHintController;
import com.fimi.app.x8s.controls.fcsettting.X8MainFcAllSettingControler;
import com.fimi.app.x8s.controls.gimbal.X8GimbalViewManager;
import com.fimi.app.x8s.entity.X8AiModeState;
import com.fimi.app.x8s.enums.X8FcAllSettingMenuEnum;
import com.fimi.app.x8s.enums.X8ScreenEnum;
import com.fimi.app.x8s.interfaces.IRightRollerMoveListener;
import com.fimi.app.x8s.interfaces.IX8AiFlyListener;
import com.fimi.app.x8s.interfaces.IX8CameraMainSetListener;
import com.fimi.app.x8s.interfaces.IX8CameraPersonLacationListener;
import com.fimi.app.x8s.interfaces.IX8FcAllSettingListener;
import com.fimi.app.x8s.interfaces.IX8GeneralItemControllerListerner;
import com.fimi.app.x8s.interfaces.IX8GestureListener;
import com.fimi.app.x8s.interfaces.IX8MainCoverListener;
import com.fimi.app.x8s.interfaces.IX8MainRightMenuListener;
import com.fimi.app.x8s.interfaces.IX8MainTopBarListener;
import com.fimi.app.x8s.interfaces.IX8MapVideoControllerListerner;
import com.fimi.app.x8s.interfaces.IX8Point2PointExcuteListener;
import com.fimi.app.x8s.interfaces.IX8SensorListener;
import com.fimi.app.x8s.manager.X8DroneInfoStatemManager;
import com.fimi.app.x8s.manager.X8FpvManager;
import com.fimi.app.x8s.manager.X8MapGetCityManager;
import com.fimi.app.x8s.manager.X8PressureGpsManger;
import com.fimi.app.x8s.manager.X8SensorManager;
import com.fimi.app.x8s.p011ui.album.x8s.X8MediaActivity;
import com.fimi.kernel.Constants;
import com.fimi.kernel.base.EventMessage;
import com.fimi.kernel.connect.interfaces.IConnectResultListener;
import com.fimi.kernel.connect.session.SessionManager;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.kernel.utils.AbViewUtil;
import com.fimi.widget.X8ToastUtil;
import com.fimi.x8sdk.X8FcLogManager;
import com.fimi.x8sdk.common.GlobalConfig;
import com.fimi.x8sdk.controller.AllSettingManager;
import com.fimi.x8sdk.controller.CameraManager;
import com.fimi.x8sdk.controller.ConnectRcManager;
import com.fimi.x8sdk.controller.FcCtrlManager;
import com.fimi.x8sdk.controller.FcManager;
import com.fimi.x8sdk.controller.FiveKeyDefineManager;
import com.fimi.x8sdk.controller.X8GimbalManager;
import com.fimi.x8sdk.controller.X8VcManager;
import com.fimi.x8sdk.dataparser.AckRightRoller;
import com.fimi.x8sdk.dataparser.AutoCameraStateADV;
import com.fimi.x8sdk.dataparser.AutoFcBattery;
import com.fimi.x8sdk.dataparser.AutoFcHeart;
import com.fimi.x8sdk.dataparser.AutoFcSignalState;
import com.fimi.x8sdk.dataparser.AutoFcSportState;
import com.fimi.x8sdk.dataparser.AutoHomeInfo;
import com.fimi.x8sdk.dataparser.AutoRelayHeart;
import com.fimi.x8sdk.dataparser.AutoVcTracking;
import com.fimi.x8sdk.entity.ConectState;
import com.fimi.x8sdk.entity.X8ErrorCodeInfo;
import com.fimi.x8sdk.jsonResult.CameraCurParamsJson;
import com.fimi.x8sdk.listener.CameraStateListener;
import com.fimi.x8sdk.listener.ConnectListener;
import com.fimi.x8sdk.listener.FcBatteryListener;
import com.fimi.x8sdk.listener.FcHeartListener;
import com.fimi.x8sdk.listener.FcSingalListener;
import com.fimi.x8sdk.listener.FcSportStateListener;
import com.fimi.x8sdk.listener.HomeInfoListener;
import com.fimi.x8sdk.listener.IX8AiStateListener;
import com.fimi.x8sdk.listener.IX8ErrorCodeListener;
import com.fimi.x8sdk.listener.IX8FiveKeyDefine;
import com.fimi.x8sdk.listener.IX8PowerListener;
import com.fimi.x8sdk.listener.IX8VcTrackListener;
import com.fimi.x8sdk.listener.NavigationStateListener;
import com.fimi.x8sdk.listener.RelayHeartListener;
import com.fimi.x8sdk.listener.RightRollerLinstener;
import com.fimi.x8sdk.modulestate.DroneState;
import com.fimi.x8sdk.modulestate.ErrorCodeState;
import com.fimi.x8sdk.modulestate.GimbalState;
import com.fimi.x8sdk.modulestate.StateManager;
import com.fimi.x8sdk.presenter.FiveKeyDefinePresenter;
import com.fimi.x8sdk.process.RelayProcess;
import com.fimi.x8sdk.rtp.X8Rtp;
import com.fimi.x8sdk.util.XPermission;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
/* renamed from: com.fimi.app.x8s.ui.activity.X8sMainActivity */
/* loaded from: classes.dex */
public class X8sMainActivity extends X8BaseActivity implements ConnectListener, FcHeartListener, FcSingalListener, FcBatteryListener, RelayHeartListener, FcSportStateListener, CameraStateListener, IX8SensorListener, HomeInfoListener, IX8VcTrackListener, NavigationStateListener, IX8ErrorCodeListener, IX8PowerListener, RightRollerLinstener, IX8AiStateListener {
    public static final int X8GETAILINEID = 1000001;
    public static final int X8GETAILINEIDBYHISTORY = 1000002;
    boolean activateTTS;
    private CameraManager cameraManager;
    private FcManager fcManager;
    private FiveKeyDefineManager fiveKeyDefineManager;
    private boolean isSendFlightLog;
    private int ivInterestMeteringVisibilityState;
    private X8MapVideoController mMapVideoController;
    private X8AccurateLandingController mX8AccurateLandingController;
    private X8AiTaskManager mX8AiTaskManager;
    private X8AiTrackController mX8AiTrackController;
    private FcCtrlManager mX8FcCtrlManager;
    private X8FiveKeyHintController mX8FiveKeyHintController;
    private X8FpvManager mX8FpvManager;
    private X8GimbalManager mX8GimbalManager;
    private X8GimbalViewManager mX8GimbalViewManager;
    private X8MainAiFlyController mX8MainAiFlyController;
    private X8MainAiFollowConfirmController mX8MainAiFollowConfirmController;
    private X8MainBottomParameterController mX8MainBottomParameterController;
    private X8MainCameraSettingController mX8MainCameraSettingController;
    private X8MainErrorCodePowerPitchAngleController mX8MainErrorCodePowerPitchAngleController;
    private X8MainFcAllSettingControler mX8MainFcAllSettingControler;
    private X8MainRightMenuController mX8MainRightMenuController;
    private X8MainTopBarController mX8MainTopBarController;
    private X8PressureGpsManger mX8PressureGpsManger;
    private X8RightIconForMapController mX8RightIconForMapController;
    private X8SensorManager mX8SensorManager;
    private X8VcManager mX8VcManager;
    private View mainAiExcuteView;
    private View mainRootView;
    private View mainSettingShowView;
    private X8AiModeState modeState;
    RelativeLayout rlCover;
    RightRollerController rollerController;
    private X8CameraInterestMeteringController x8CameraInterestMeteringController;
    private X8UpdateHintController x8UpdateHintController;
    private X8ScreenEnum mAppScreen = X8ScreenEnum.NORMAL;
    public IX8GestureListener mIX8GestureListener = new IX8GestureListener() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.2
        @Override // com.fimi.app.x8s.interfaces.IX8GestureListener
        public void onFlingResult(int index) {
            DroneState drone = StateManager.getInstance().getX8Drone();
            if (drone.isConnect()) {
                if (index == 1) {
                    if (X8sMainActivity.this.mAppScreen == X8ScreenEnum.NORMAL) {
                        X8sMainActivity.this.appFullSceen(true);
                        X8ToastUtil.showToast(X8sMainActivity.this, X8sMainActivity.this.getString(C0885R.string.x8_in_fullscreen), 0);
                        X8sMainActivity.this.mAppScreen = X8ScreenEnum.FULL;
                    }
                } else if (index == 3 && X8sMainActivity.this.mAppScreen == X8ScreenEnum.FULL) {
                    X8sMainActivity.this.appFullSceen(false);
                    X8ToastUtil.showToast(X8sMainActivity.this, X8sMainActivity.this.getString(C0885R.string.x8_out_fullscreen), 0);
                    X8sMainActivity.this.mAppScreen = X8ScreenEnum.NORMAL;
                }
            }
        }

        @Override // com.fimi.app.x8s.interfaces.IX8GestureListener
        public void onInterestMetering(float x, float y) {
            if (!Constants.isFactoryApp()) {
                DroneState drone = StateManager.getInstance().getX8Drone();
                if (drone.isConnect() && x < AbViewUtil.getScreenWidth(X8sMainActivity.this) - X8sMainActivity.this.mX8MainRightMenuController.getHandleViewWidth()) {
                    X8sMainActivity.this.x8CameraInterestMeteringController.setImageViewXY(x, y);
                }
            }
        }
    };
    public IX8CameraPersonLacationListener personLacationListener = new IX8CameraPersonLacationListener() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.3
        @Override // com.fimi.app.x8s.interfaces.IX8CameraPersonLacationListener
        public void showPersonLocation() {
            X8sMainActivity.this.mMapVideoController.getFimiMap().animateCamer();
        }
    };
    public IX8MainRightMenuListener mainRightMenuListener = new IX8MainRightMenuListener() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.4
        @Override // com.fimi.app.x8s.interfaces.IX8MainRightMenuListener
        public void onAiFlyClick() {
            X8sMainActivity.this.mX8MainCameraSettingController.closeAiUi(false);
            X8sMainActivity.this.mX8MainAiFlyController.showAiUi();
            X8sMainActivity.this.mX8MainBottomParameterController.closeUi();
            X8sMainActivity.this.mX8MainTopBarController.closeUi();
            X8sMainActivity.this.mX8MainRightMenuController.closeUi();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8MainRightMenuListener
        public void onCameraSettingClick() {
            if (X8sMainActivity.this.mX8MainCameraSettingController.isShow()) {
                X8sMainActivity.this.mX8MainCameraSettingController.closeAiUi(true);
                X8sMainActivity.this.mX8MainBottomParameterController.openUi();
                X8sMainActivity.this.mX8MainTopBarController.openUi();
                X8sMainActivity.this.mX8MainRightMenuController.setBackGround(X8sMainActivity.this.getResources().getColor(17170445));
                return;
            }
            X8sMainActivity.this.mX8MainBottomParameterController.closeUi();
            X8sMainActivity.this.mX8MainTopBarController.closeUi();
            X8sMainActivity.this.mX8FiveKeyHintController.closeUi();
            X8sMainActivity.this.mX8MainCameraSettingController.showCameraSettingUI();
            X8sMainActivity.this.mX8MainRightMenuController.setBackGround(X8sMainActivity.this.getResources().getColor(C0885R.C0887color.black_80));
        }

        @Override // com.fimi.app.x8s.interfaces.IX8MainRightMenuListener
        public void onCameraShutterClick() {
            X8sMainActivity.this.mX8MainCameraSettingController.closeAiUi(true);
        }

        @Override // com.fimi.app.x8s.interfaces.IX8MainRightMenuListener
        public void onLocationClick() {
            X8sMainActivity.this.mMapVideoController.getFimiMap().onLocationEvnent();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8MainRightMenuListener
        public void turnCameraModel() {
            if (X8sMainActivity.this.mX8MainCameraSettingController != null) {
                X8sMainActivity.this.mX8MainCameraSettingController.defaultVal();
            }
        }

        @Override // com.fimi.app.x8s.interfaces.IX8MainRightMenuListener
        public void onSetHomeClick(int type) {
            X8MapGetCityManager.onSetHomeEvent(X8sMainActivity.this, type);
        }

        @Override // com.fimi.app.x8s.interfaces.IX8MainRightMenuListener
        public void onCameraSwitching() {
            X8sMainActivity.this.mX8MainAiFlyController.getCameraSetting(true);
            X8sMainActivity.this.mX8AiTaskManager.updateSarValue();
        }
    };
    public IX8MainTopBarListener mainTopBarListener = new IX8MainTopBarListener() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.5
        @Override // com.fimi.app.x8s.interfaces.IX8MainTopBarListener
        public void onSettingClick() {
            X8sMainActivity.this.mX8MainFcAllSettingControler.showAllSettingUi(X8FcAllSettingMenuEnum.FC_ITEM);
            X8sMainActivity.this.closeOther2FCAllSetting();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8MainTopBarListener
        public void onGpsClick() {
            X8sMainActivity.this.mX8MainFcAllSettingControler.showAllSettingUi(X8FcAllSettingMenuEnum.FC_ITEM);
            X8sMainActivity.this.closeOther2FCAllSetting();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8MainTopBarListener
        public void onFpvClick() {
            X8sMainActivity.this.mX8MainFcAllSettingControler.showAllSettingUi(X8FcAllSettingMenuEnum.FC_ITEM);
            X8sMainActivity.this.closeOther2FCAllSetting();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8MainTopBarListener
        public void onRcClick() {
            X8sMainActivity.this.mX8MainFcAllSettingControler.showAllSettingUi(X8FcAllSettingMenuEnum.RC_ITEM);
            X8sMainActivity.this.closeOther2FCAllSetting();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8MainTopBarListener
        public void onBatteryClick() {
            X8sMainActivity.this.mX8MainFcAllSettingControler.showAllSettingUi(X8FcAllSettingMenuEnum.BATTERY_ITEM);
            X8sMainActivity.this.closeOther2FCAllSetting();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8MainTopBarListener
        public void onModelClick() {
            X8sMainActivity.this.mX8MainFcAllSettingControler.showAllSettingUi(X8FcAllSettingMenuEnum.FC_ITEM);
            X8sMainActivity.this.closeOther2FCAllSetting();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8MainTopBarListener
        public void onMainReback() {
            X8sMainActivity.this.finish();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8MainTopBarListener
        public void onDroneInfoStateClick() {
            X8sMainActivity.this.mX8MainFcAllSettingControler.showAllSettingUi(X8FcAllSettingMenuEnum.DRONE_STATE);
            X8sMainActivity.this.closeOther2FCAllSetting();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8MainTopBarListener
        public void onGcClick() {
            X8sMainActivity.this.mX8MainFcAllSettingControler.showAllSettingUi(X8FcAllSettingMenuEnum.GIMBAL_ITEM);
            X8sMainActivity.this.closeOther2FCAllSetting();
            X8sMainActivity.this.mX8MainFcAllSettingControler.startGimbalCalibaration();
        }
    };
    IRightRollerMoveListener rightRollerMoveListener = new IRightRollerMoveListener() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.6
        @Override // com.fimi.app.x8s.interfaces.IRightRollerMoveListener
        public void onEvSuccess(String value) {
            X8sMainActivity.this.mX8MainCameraSettingController.setEvParamValue(value);
        }

        @Override // com.fimi.app.x8s.interfaces.IRightRollerMoveListener
        public void onISOSuccess(String value) {
            X8sMainActivity.this.mX8MainCameraSettingController.onISOSuccess(value);
        }
    };
    public IX8MapVideoControllerListerner mIX8MapVideoControllerListerner = new IX8MapVideoControllerListerner() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.7
        @Override // com.fimi.app.x8s.interfaces.IX8MapVideoControllerListerner
        public void switchMapVideo(boolean isVideo) {
            boolean z = true;
            X8sMainActivity.this.mX8MainRightMenuController.showCameraView(!isVideo);
            X8RightIconForMapController x8RightIconForMapController = X8sMainActivity.this.mX8RightIconForMapController;
            if (isVideo) {
                z = false;
            }
            x8RightIconForMapController.switch2Map(z);
            X8sMainActivity.this.mX8AiTaskManager.switchMapVideo(isVideo);
            if (!isVideo) {
                X8sMainActivity.this.x8CameraInterestMeteringController.setIvInterestMeteringVisibility(X8sMainActivity.this.ivInterestMeteringVisibilityState);
                X8sMainActivity.this.mX8MainBottomParameterController.openUiByMapChange();
                return;
            }
            X8sMainActivity.this.ivInterestMeteringVisibilityState = X8sMainActivity.this.x8CameraInterestMeteringController.getIvInterestMeteringVisibility();
            X8sMainActivity.this.x8CameraInterestMeteringController.setIvInterestMeteringVisibility(8);
            X8sMainActivity.this.mX8MainBottomParameterController.closeUi();
        }
    };
    public IX8AiFlyListener mX8AiFlyListener = new IX8AiFlyListener() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.8
        @Override // com.fimi.app.x8s.interfaces.IX8AiFlyListener
        public void onAiFollowConfirmClick(int type) {
            X8sMainActivity.this.showAiFollowView(type);
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFlyListener
        public void onAiPoint2PointConfirmClick() {
            X8sMainActivity.this.showAiPoint2PointView();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFlyListener
        public void onAiSurroundPointConfirmClick() {
            X8sMainActivity.this.showAiSurroundView();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFlyListener
        public void onAiLineConfirmClick(int mode) {
            X8sMainActivity.this.showAiLineView(mode);
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFlyListener
        public void onAiScrewConfimCick() {
            X8sMainActivity.this.showAiScrewView();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFlyListener
        public void onAiSarConfimClick() {
            X8sMainActivity.this.mX8AiTaskManager.openAiSarUi();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFlyListener
        public void onAiGravitationConfimClick() {
            X8sMainActivity.this.showAiGravitationView();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFlyListener
        public void onAiLineConfirmClickByHistory(int mode, long lineId, int type) {
            X8sMainActivity.this.showAiLineView(mode, lineId, type);
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFlyListener
        public void onAiAutoPhotoConfirmClick(int type) {
            X8sMainActivity.this.showAutoPhtoView(type);
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFlyListener
        public void onAiTakeOffConfirmClick() {
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFlyListener
        public void onAiLandingConfirmClick() {
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFlyListener
        public void onCloseAiUi(boolean show, boolean isShowRightIcon) {
            if (show) {
                X8sMainActivity.this.mX8MainTopBarController.openUi();
                X8sMainActivity.this.mX8MainBottomParameterController.openUi();
                X8sMainActivity.this.mX8MainRightMenuController.openUi();
                if (isShowRightIcon) {
                    X8sMainActivity.this.mX8RightIconForMapController.openUiForSetting();
                }
            }
        }

        @Override // com.fimi.app.x8s.interfaces.IX8AiFlyListener
        public void onShowTakeoffLanding() {
            X8sMainActivity.this.mX8RightIconForMapController.showTakeoffLanding();
        }
    };
    private int time = 0;
    public IX8FcAllSettingListener mX8FcAllSettingListener = new IX8FcAllSettingListener() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.10
        @Override // com.fimi.app.x8s.interfaces.IX8FcAllSettingListener
        public void showAllSetting() {
            X8sMainActivity.this.mX8GimbalViewManager.closeHorizontalTrimUi();
            X8sMainActivity.this.mX8GimbalViewManager.closeGimbalXYZAdjustUI();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8FcAllSettingListener
        public void closeAllSetting() {
            X8sMainActivity.this.mX8MainErrorCodePowerPitchAngleController.openUi();
            X8sMainActivity.this.mX8MainTopBarController.openUi();
            X8sMainActivity.this.mX8MainBottomParameterController.openUi();
            X8sMainActivity.this.mX8MainRightMenuController.openUi();
            X8sMainActivity.this.mX8RightIconForMapController.openUiForTaskRunning();
            X8sMainActivity.this.mX8MainRightMenuController.showCameraView(X8sMainActivity.this.mMapVideoController.isFullVideo());
            X8sMainActivity.this.mMapVideoController.resetShow();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8FcAllSettingListener
        public void onGimbalHorizontalTrimClick() {
            X8sMainActivity.this.mX8GimbalViewManager.openHorizontalTrimUi();
            X8sMainActivity.this.mX8MainFcAllSettingControler.closeFcSettingUi(false);
            if (!X8sMainActivity.this.mMapVideoController.isFullVideo()) {
                X8sMainActivity.this.mMapVideoController.switchDrawingOrderForGimbal();
            }
            X8sMainActivity.this.mX8MainRightMenuController.closeUi();
            X8sMainActivity.this.mX8RightIconForMapController.closeUiForSetting();
            X8sMainActivity.this.mX8MainTopBarController.closeUi();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8FcAllSettingListener
        public void onGimbalAdvancedSetup() {
            X8sMainActivity.this.mX8MainFcAllSettingControler.showGimbalAdvancedSetupMode();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8FcAllSettingListener
        public void onGimbalXYZAdjustClick() {
            X8sMainActivity.this.mX8GimbalViewManager.openGimbalXYZAdjustUI();
            X8sMainActivity.this.mX8MainFcAllSettingControler.closeFcSettingUi(false);
            if (!X8sMainActivity.this.mMapVideoController.isFullVideo()) {
                X8sMainActivity.this.mMapVideoController.switchDrawingOrderForGimbal();
            }
            X8sMainActivity.this.mX8MainRightMenuController.closeUi();
            X8sMainActivity.this.mX8RightIconForMapController.closeUiForSetting();
            X8sMainActivity.this.mX8MainTopBarController.closeUi();
        }
    };
    IX8MainCoverListener coverListener = new IX8MainCoverListener() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.11
        @Override // com.fimi.app.x8s.interfaces.IX8MainCoverListener
        public void onCoverListener(int visibility) {
            X8sMainActivity.this.rlCover.setVisibility(visibility);
        }
    };
    public IX8GeneralItemControllerListerner mIX8GeneralItemControllerListerner = new IX8GeneralItemControllerListerner() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.12
        @Override // com.fimi.app.x8s.interfaces.IX8GeneralItemControllerListerner
        public boolean switchMap(boolean isMap) {
            return false;
        }

        @Override // com.fimi.app.x8s.interfaces.IX8GeneralItemControllerListerner
        public void switchMapStyle(int mapStyle) {
            X8sMainActivity.this.mMapVideoController.getFimiMap().switchMapStyle(mapStyle);
        }

        @Override // com.fimi.app.x8s.interfaces.IX8GeneralItemControllerListerner
        public void switchMapRectifyDeviation(boolean isMapRectifyDeviation) {
        }

        @Override // com.fimi.app.x8s.interfaces.IX8GeneralItemControllerListerner
        public void switchUnity(boolean isShowMetric) {
            X8sMainActivity.this.mX8MainTopBarController.switchUnity();
            X8sMainActivity.this.mX8AiTaskManager.switchUnityEvent();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8GeneralItemControllerListerner
        public void showLog(boolean isShowMap) {
        }

        @Override // com.fimi.app.x8s.interfaces.IX8GeneralItemControllerListerner
        public void setGridLine(int type) {
        }

        @Override // com.fimi.app.x8s.interfaces.IX8GeneralItemControllerListerner
        public void setVersion() {
            X8sMainActivity.this.mX8MainFcAllSettingControler.setVersion();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8GeneralItemControllerListerner
        public void modifyMode() {
            X8sMainActivity.this.mX8MainFcAllSettingControler.showModifyMode();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8GeneralItemControllerListerner
        public void frequencyPoint() {
            X8sMainActivity.this.mX8MainFcAllSettingControler.showFrequencyPoint();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8GeneralItemControllerListerner
        public void openFlightlog() {
            X8sMainActivity.this.mX8MainFcAllSettingControler.showFlightlog();
        }
    };
    private IX8Point2PointExcuteListener mIX8Point2PointExcuteListener = new IX8Point2PointExcuteListener() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.14
        @Override // com.fimi.app.x8s.interfaces.IX8Point2PointExcuteListener
        public void onBackClick() {
            X8sMainActivity.this.mX8MainTopBarController.openUi();
            X8sMainActivity.this.mX8MainErrorCodePowerPitchAngleController.openUi();
            X8sMainActivity.this.mX8MainTopBarController.openUi();
            X8sMainActivity.this.mX8MainBottomParameterController.openUi();
            X8sMainActivity.this.mX8MainRightMenuController.openUi();
            X8sMainActivity.this.mMapVideoController.resetShow();
        }

        @Override // com.fimi.app.x8s.interfaces.IX8Point2PointExcuteListener
        public void onExcuteClidk() {
            X8sMainActivity.this.mX8MainAiFollowConfirmController.closeUi();
        }
    };
    public IConnectResultListener mIConnectResultListener = new IConnectResultListener() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.15
        @Override // com.fimi.kernel.connect.interfaces.IConnectResultListener
        public void onConnected(String msg) {
            StateManager.getInstance().startUpdateTimer();
        }

        @Override // com.fimi.kernel.connect.interfaces.IConnectResultListener
        public void onDisconnect(String msg) {
            StateManager.getInstance().getVersionState().clearVersion();
            RelayProcess.getRelayProcess().setShowUpdateView(true);
            X8sMainActivity.this.mX8MainFcAllSettingControler.onVersionChange();
            StateManager.getInstance().stopUpdateTimer();
        }

        @Override // com.fimi.kernel.connect.interfaces.IConnectResultListener
        public void onConnectError(String msg) {
        }

        @Override // com.fimi.kernel.connect.interfaces.IConnectResultListener
        public void onDeviceConnect() {
            X8sMainActivity.this.mX8MainFcAllSettingControler.onVersionChange();
        }

        @Override // com.fimi.kernel.connect.interfaces.IConnectResultListener
        public void onDeviceDisConnnect() {
        }
    };
    private IX8CameraMainSetListener ix8CameraMainSetListener = new IX8CameraMainSetListener() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.16
        @Override // com.fimi.app.x8s.interfaces.IX8CameraMainSetListener
        public void showTopAndBottom(boolean b) {
            if (b) {
                X8sMainActivity.this.mX8MainTopBarController.openUi();
                X8sMainActivity.this.mX8MainBottomParameterController.openUi();
            }
            X8sMainActivity.this.mX8MainRightMenuController.setBackGround(X8sMainActivity.this.getResources().getColor(17170445));
        }

        @Override // com.fimi.app.x8s.interfaces.IX8CameraMainSetListener
        public void initCameraParams(JSONObject rt) {
            CameraCurParamsJson curParamsJson = (CameraCurParamsJson) JSON.parseObject(rt.toString(), new TypeReference<CameraCurParamsJson>() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.16.1
            }, new Feature[0]);
            if (curParamsJson != null && curParamsJson != null) {
                X8sMainActivity.this.mX8MainBottomParameterController.initCameraParam(curParamsJson);
            }
        }

        @Override // com.fimi.app.x8s.interfaces.IX8CameraMainSetListener
        public void onGridLineSelect(int selectIdx) {
            X8sMainActivity.this.mMapVideoController.showGridLine(selectIdx);
        }

        @Override // com.fimi.app.x8s.interfaces.IX8CameraMainSetListener
        public void colorSetting(String color) {
            if (X8sMainActivity.this.mX8MainBottomParameterController != null) {
                X8sMainActivity.this.mX8MainBottomParameterController.updateColoreTextValue(color);
            }
        }

        @Override // com.fimi.app.x8s.interfaces.IX8CameraMainSetListener
        public void awbSetting(String awbValue) {
        }

        @Override // com.fimi.app.x8s.interfaces.IX8CameraMainSetListener
        public void evSetting(String evValue) {
            if (X8sMainActivity.this.mX8MainBottomParameterController != null) {
                X8sMainActivity.this.mX8MainBottomParameterController.updateEvTextValue(evValue);
            }
        }

        @Override // com.fimi.app.x8s.interfaces.IX8CameraMainSetListener
        public void isoSetting(String isoValue) {
            if (X8sMainActivity.this.mX8MainBottomParameterController != null) {
                X8sMainActivity.this.mX8MainBottomParameterController.updateISOTextValue(isoValue);
            }
        }

        @Override // com.fimi.app.x8s.interfaces.IX8CameraMainSetListener
        public void shutterSetting(String shutter) {
            if (shutter != null && X8sMainActivity.this.mX8MainBottomParameterController != null) {
                X8sMainActivity.this.mX8MainBottomParameterController.updateShutter(shutter);
            }
        }

        @Override // com.fimi.app.x8s.interfaces.IX8CameraMainSetListener
        public void initOptionsValue() {
            if (X8sMainActivity.this.mX8MainCameraSettingController != null) {
                X8sMainActivity.this.mX8MainCameraSettingController.initCameraParams();
            }
        }

        @Override // com.fimi.app.x8s.interfaces.IX8CameraMainSetListener
        public void updateResOrSize() {
            if (X8sMainActivity.this.mX8MainBottomParameterController != null) {
                X8sMainActivity.this.mX8MainBottomParameterController.updateCameraModelValue();
            }
        }
    };
    public IX8FiveKeyDefine ix8FiveKeyDefine = new IX8FiveKeyDefine() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.17
        @Override // com.fimi.x8sdk.listener.IX8FiveKeyDefine
        public void mapFPVSwitch(boolean isLongPress) {
            if (!X8sMainActivity.this.fiveKeyDisabled()) {
                X8sMainActivity.this.mMapVideoController.switchMapVideo();
            }
        }

        @Override // com.fimi.x8sdk.listener.IX8FiveKeyDefine
        public void backCenterDownSwitch(boolean isLongPress) {
            if (StateManager.getInstance().getX8Drone().isConnect() && !X8sMainActivity.this.fiveKeyDisabled()) {
                X8sMainActivity.this.mX8FiveKeyHintController.setFiveKeyPitchAngle();
            }
        }

        @Override // com.fimi.x8sdk.listener.IX8FiveKeyDefine
        public void batteryFrame(boolean isLongPress) {
            if (X8sMainActivity.this.activateTTS && !X8sMainActivity.this.mX8AiTaskManager.isTaskRunning() && !X8sMainActivity.this.mX8MainCameraSettingController.isShow() && !X8sMainActivity.this.mX8MainAiFlyController.isShow() && X8sMainActivity.this.mAppScreen != X8ScreenEnum.FULL && !X8sMainActivity.this.mX8FiveKeyHintController.isShow()) {
                X8sMainActivity.this.mX8MainFcAllSettingControler.fiveKeySwitchUI();
                X8sMainActivity.this.closeOther2FCAllSetting();
            }
        }

        @Override // com.fimi.x8sdk.listener.IX8FiveKeyDefine
        public void selfCheckFrame(boolean isLongPress) {
            if (X8sMainActivity.this.activateTTS && !X8sMainActivity.this.mX8AiTaskManager.isTaskRunning() && !X8sMainActivity.this.mX8MainCameraSettingController.isShow() && !X8sMainActivity.this.mX8MainAiFlyController.isShow() && X8sMainActivity.this.mAppScreen != X8ScreenEnum.FULL && !X8sMainActivity.this.mX8FiveKeyHintController.isShow()) {
                X8sMainActivity.this.mX8MainFcAllSettingControler.fiveKeySwitchDronestateUI();
            }
        }

        @Override // com.fimi.x8sdk.listener.IX8FiveKeyDefine
        public void mediaFrame(boolean isLongPress) {
            if (!X8sMainActivity.this.fiveKeyDisabled()) {
                X8sMainActivity.this.startActivity(new Intent(X8sMainActivity.this, X8MediaActivity.class));
            }
        }

        @Override // com.fimi.x8sdk.listener.IX8FiveKeyDefine
        public void setSaturation(boolean isLongPress, boolean isAdd) {
            String saturation;
            if (StateManager.getInstance().getCamera().getToken() > 0 && X8sMainActivity.this.activateTTS && !X8sMainActivity.this.mX8AiTaskManager.isTaskRunning() && !X8sMainActivity.this.mX8MainCameraSettingController.isShow() && !X8sMainActivity.this.mX8MainAiFlyController.isShow() && X8sMainActivity.this.mAppScreen != X8ScreenEnum.FULL && !X8sMainActivity.this.mX8MainFcAllSettingControler.isShow()) {
                if (!X8sMainActivity.this.mX8FiveKeyHintController.isShow()) {
                    saturation = X8sMainActivity.this.mX8MainCameraSettingController.getCurrentSaturation() + "";
                } else {
                    saturation = X8sMainActivity.this.mX8MainCameraSettingController.fiveKeySetSaturation(isAdd ? FiveKeyDefinePresenter.ParameterType.ADD_VALUE : FiveKeyDefinePresenter.ParameterType.DECREASE_VALUE, 0);
                }
                X8sMainActivity.this.mX8FiveKeyHintController.setTvFiveKeyShowType(String.format(X8sMainActivity.this.getString(C0885R.string.x8_rc_setting_five_key_show_type), X8sMainActivity.this.getString(C0885R.string.x8_camera_saturation), saturation));
                X8sMainActivity.this.mX8FiveKeyHintController.setSbarFiveKey(saturation);
                X8sMainActivity.this.mX8FiveKeyHintController.openUi();
            }
        }

        @Override // com.fimi.x8sdk.listener.IX8FiveKeyDefine
        public void setContrastRatio(boolean isLongPress, boolean isAdd) {
            String contrast;
            if (StateManager.getInstance().getCamera().getToken() > 0 && X8sMainActivity.this.activateTTS && !X8sMainActivity.this.mX8AiTaskManager.isTaskRunning() && !X8sMainActivity.this.mX8MainCameraSettingController.isShow() && !X8sMainActivity.this.mX8MainAiFlyController.isShow() && X8sMainActivity.this.mAppScreen != X8ScreenEnum.FULL && !X8sMainActivity.this.mX8MainFcAllSettingControler.isShow()) {
                if (!X8sMainActivity.this.mX8FiveKeyHintController.isShow()) {
                    contrast = X8sMainActivity.this.mX8MainCameraSettingController.getCurrentContrast() + "";
                } else {
                    contrast = X8sMainActivity.this.mX8MainCameraSettingController.fiveKeySetContrast(isAdd ? FiveKeyDefinePresenter.ParameterType.ADD_VALUE : FiveKeyDefinePresenter.ParameterType.DECREASE_VALUE, 0);
                }
                X8sMainActivity.this.mX8FiveKeyHintController.setTvFiveKeyShowType(String.format(X8sMainActivity.this.getString(C0885R.string.x8_rc_setting_five_key_show_type), X8sMainActivity.this.getString(C0885R.string.x8_camera_contrast), contrast));
                X8sMainActivity.this.mX8FiveKeyHintController.setSbarFiveKey(contrast);
                X8sMainActivity.this.mX8FiveKeyHintController.openUi();
            }
        }

        @Override // com.fimi.x8sdk.listener.IX8FiveKeyDefine
        public void shootModeSwitch(boolean isLongPress) {
            if (!X8sMainActivity.this.fiveKeyDisabled()) {
                X8sMainActivity.this.mX8MainCameraSettingController.fiveKeyShootModeSwitch();
            }
        }

        @Override // com.fimi.x8sdk.listener.IX8FiveKeyDefine
        public void meteringSwitch(boolean isLongPress) {
            if (!X8sMainActivity.this.fiveKeyDisabled()) {
                X8sMainActivity.this.mX8MainCameraSettingController.fiveKeySetMetering();
            }
        }

        @Override // com.fimi.x8sdk.listener.IX8FiveKeyDefine
        public void cancelParameterSetting() {
            X8sMainActivity.this.mX8FiveKeyHintController.closeUi();
        }
    };

    public FcManager getFcManager() {
        return this.fcManager;
    }

    public X8GimbalManager getmX8GimbalManager() {
        return this.mX8GimbalManager;
    }

    public X8GimbalManager getGimbalManager() {
        return this.mX8GimbalManager;
    }

    public X8MainFcAllSettingControler getX8MainFcAllSettingControler() {
        return this.mX8MainFcAllSettingControler;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.app.x8s.p011ui.activity.X8BaseActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(128);
        setContentView(C0885R.layout.activity_x8s_main);
        X8Application.isAoaTopActivity = true;
        this.mAppScreen = X8ScreenEnum.NORMAL;
        X8Application.enableGesture = true;
        init(savedInstanceState);
        if (!X8Rtp.simulationTest && ErrorCodeState.appTest) {
            findViewById(C0885R.C0889id.rl_error_codeTest).setVisibility(0);
        }
    }

    public X8AiTrackController getmX8AiTrackController() {
        return this.mX8AiTrackController;
    }

    public void init(Bundle savedInstanceState) {
        this.modeState = new X8AiModeState();
        this.mainRootView = findViewById(C0885R.C0889id.x8s_main_view);
        this.mainAiExcuteView = findViewById(C0885R.C0889id.rl_x8_ai_excute);
        this.mainSettingShowView = findViewById(C0885R.C0889id.rl_x8_setting_show_view);
        this.mMapVideoController = new X8MapVideoController(this.mainRootView, savedInstanceState, this);
        this.mMapVideoController.setListener(this.mIX8MapVideoControllerListerner);
        this.mMapVideoController.setListener(this.mainTopBarListener);
        this.mX8MainTopBarController = new X8MainTopBarController(this.mainRootView);
        this.mX8MainTopBarController.setX8sMainActivity(this);
        this.mX8MainTopBarController.setListener(this.mainTopBarListener);
        this.mX8FiveKeyHintController = new X8FiveKeyHintController(this.mainRootView);
        this.mX8FiveKeyHintController.closeUi();
        this.x8CameraInterestMeteringController = new X8CameraInterestMeteringController(this.mainRootView);
        this.mX8MainBottomParameterController = new X8MainBottomParameterController(this.mainRootView, this);
        this.mX8MainRightMenuController = new X8MainRightMenuController(this.mainRootView, this, this.modeState);
        this.mX8MainRightMenuController.setListener(this.mainRightMenuListener);
        this.mX8MainErrorCodePowerPitchAngleController = new X8MainErrorCodePowerPitchAngleController(this.mainRootView);
        X8DroneInfoStatemManager.setErrorCodeHolder(this.mX8MainErrorCodePowerPitchAngleController);
        this.mX8MainAiFlyController = new X8MainAiFlyController(this.mainRootView);
        this.mX8MainAiFlyController.setX8AiFlyListener(this, this.mX8AiFlyListener);
        this.mX8MainCameraSettingController = new X8MainCameraSettingController(this.mainRootView);
        this.mX8AccurateLandingController = new X8AccurateLandingController(this.mainRootView);
        this.mX8RightIconForMapController = new X8RightIconForMapController(this.mainRootView, this, this.personLacationListener, this.modeState);
        this.mX8MainFcAllSettingControler = new X8MainFcAllSettingControler(this.mainRootView, this);
        this.mX8MainFcAllSettingControler.setListener(this.mX8FcAllSettingListener);
        this.mX8MainAiFollowConfirmController = new X8MainAiFollowConfirmController(this.mainRootView);
        this.mX8MainAiFollowConfirmController.setAcitivity(this);
        this.mX8MainFcAllSettingControler.setX8GeneralItemControllerListerner(this.mIX8GeneralItemControllerListerner);
        this.mX8MainFcAllSettingControler.setMapVideoController(this.mMapVideoController);
        this.mX8SensorManager = new X8SensorManager(this, this);
        this.mX8AiTaskManager = new X8AiTaskManager(this.mainAiExcuteView, this);
        this.mX8AiTaskManager.setIX8AiStateListener(this);
        this.mX8GimbalViewManager = new X8GimbalViewManager(this.mainSettingShowView, this);
        this.mX8AiTrackController = new X8AiTrackController();
        this.mX8AiTrackController.init(this, this.mMapVideoController);
        this.mMapVideoController.setX8GestureListener(this.mIX8GestureListener);
        this.mX8PressureGpsManger = new X8PressureGpsManger();
        StateManager.getInstance().registerConnectListener(this);
        StateManager.getInstance().registerVcTrackListener(this);
        SessionManager.getInstance().add2NoticeList(this.mIConnectResultListener);
        StateManager.getInstance().registerCameraStateListener(this);
        StateManager.getInstance().registerNavigationStateListener(this);
        StateManager.getInstance().registerListener(this);
        StateManager.getInstance().registerRightRollerListener(this);
        StateManager.getInstance().registerFcSingalListener(this);
        StateManager.getInstance().registerFCBattery(this);
        StateManager.getInstance().registerHomeListener(this);
        StateManager.getInstance().registerSportState(this);
        StateManager.getInstance().registerRelayHeartListener(this);
        StateManager.getInstance().registerX8ErrorCodeListener(this);
        StateManager.getInstance().setPowerListener(this);
        StateManager.getInstance().setIx8PanoramicInformationListener(this.mX8MainRightMenuController.ix8PanoramicInformationListener);
        XPermission.requestPermissions(this, 102, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.ACCESS_FINE_LOCATION"}, new XPermission.OnPermissionListener() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.1
            @Override // com.fimi.x8sdk.util.XPermission.OnPermissionListener
            public void onPermissionGranted() {
                X8sMainActivity.this.mMapVideoController.setUpMap();
            }

            @Override // com.fimi.x8sdk.util.XPermission.OnPermissionListener
            public void onPermissionDenied() {
                XPermission.showTipsDialog(X8sMainActivity.this);
            }
        });
        this.mX8MainRightMenuController.setPersonLacationListener(this.personLacationListener);
        this.mMapVideoController.showGridLine(GlobalConfig.getInstance().getGridLine());
        initAllModulManager();
        this.fiveKeyDefineManager = new FiveKeyDefineManager(this.ix8FiveKeyDefine, this.cameraManager);
        this.mX8MainCameraSettingController.setFiveKeyManager(this.fiveKeyDefineManager);
        this.mX8FiveKeyHintController.setX8MainCameraSettingController(this.mX8MainCameraSettingController);
        this.mX8FiveKeyHintController.setFiveKeyDefineManager(this.fiveKeyDefineManager);
        this.x8UpdateHintController = new X8UpdateHintController(this);
        RelayProcess.getRelayProcess().registerListener(this);
        ConnectRcManager.getInstance().connectRC(this);
        this.mX8SensorManager.registerListener();
        StateManager.getInstance().startUpdateTimer();
        this.rlCover = (RelativeLayout) findViewById(C0885R.C0889id.rl_cover);
    }

    public void initAllModulManager() {
        this.fcManager = new FcManager();
        this.fcManager.setContext(this);
        this.mX8PressureGpsManger.setFcManger(this.fcManager);
        this.mX8VcManager = new X8VcManager();
        this.mX8VcManager.setContext(this);
        this.mX8GimbalManager = new X8GimbalManager();
        this.mX8GimbalManager.setContext(this);
        this.cameraManager = CameraManager.getInstansCameraManager();
        this.cameraManager.setContext(this);
        this.x8CameraInterestMeteringController.setCameraManager(this.cameraManager);
        this.mX8FcCtrlManager = new FcCtrlManager();
        this.mX8FcCtrlManager.setContext(this);
        this.mX8MainAiFlyController.setFcManager(this.fcManager, this.mX8FcCtrlManager);
        this.mX8AiTrackController.setVcManager(this.mX8VcManager);
        this.mX8MainFcAllSettingControler.setFcCtrlManager(this.mX8FcCtrlManager);
        this.mX8MainFcAllSettingControler.setFcManager(this.fcManager);
        this.mX8MainRightMenuController.setFcCtrlManager(this.mX8FcCtrlManager);
        this.mX8MainRightMenuController.setCameraManager(this.cameraManager);
        this.mX8MainAiFollowConfirmController.setPoint2PointExcuteListener(this.mIX8Point2PointExcuteListener, this.fcManager);
        this.mX8MainCameraSettingController.setCameraManager(this.cameraManager);
        this.mX8MainCameraSettingController.setCameraMainSetListener(this.ix8CameraMainSetListener);
        AllSettingManager.getInstance().setFcManager(this.fcManager, this.mX8FcCtrlManager, this.cameraManager);
        RelayProcess.getRelayProcess().setFcManager(this.fcManager);
        this.mX8MainFcAllSettingControler.setGimbalManager(this.mX8GimbalManager);
        this.mX8FiveKeyHintController.setFiveKeyDefineGimbalManager(this.mX8GimbalManager);
        this.mX8FpvManager = new X8FpvManager(this.mX8VcManager, this.mMapVideoController);
        this.mX8AiTaskManager.setManager(this.fcManager, this.mX8FcCtrlManager);
        this.mX8AiTaskManager.setCameraManager(this.cameraManager);
        this.mX8MainFcAllSettingControler.setRlCoverListener(this.coverListener);
        this.rollerController = new RightRollerController(this.cameraManager, this.mX8AiTaskManager, this, this.mX8MainBottomParameterController, this.rightRollerMoveListener);
    }

    public CameraManager getCameraManager() {
        return this.cameraManager;
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        XPermission.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.app.x8s.p011ui.activity.X8BaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.mMapVideoController.getFimiMap().onResume();
        this.mMapVideoController.onResume();
        this.x8UpdateHintController.queryCurSystemStatus();
        this.activateTTS = true;
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        X8FcLogManager.getInstance().setOriginalDistance(-1000.0f);
        X8FcLogManager.getInstance().closeFileOutputStream();
        this.activateTTS = false;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mMapVideoController.getFimiMap().onPause();
        this.mMapVideoController.onPause();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        this.mMapVideoController.getFimiMap().onSaveInstanceState(outState);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mMapVideoController.getFimiMap().onDestroy();
        StateManager.getInstance().removeAllListener();
        SessionManager.getInstance().removeNoticeList(this.mIConnectResultListener);
        RelayProcess.getRelayProcess().removeListener(this);
        this.mX8SensorManager.unRegisterListener();
        ConnectRcManager.getInstance().unConnectRC();
        X8Application.isAoaTopActivity = false;
        StateManager.getInstance().getCamera().setToken(-1);
        StateManager.getInstance().stopUpdateTimer();
    }

    public void changeCamera(View view) {
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1000001 && resultCode == -1) {
            long lineId = data.getLongExtra("id", 0L);
            int type = data.getIntExtra("type", 0);
            this.mX8MainAiFlyController.onLinesConfirmOkByHistory(lineId, type);
        }
        if (requestCode == 1000002 && resultCode == -1) {
            long lineId2 = data.getLongExtra("id", 0L);
            int type2 = data.getIntExtra("type", 0);
            this.mX8AiTaskManager.switchLine(lineId2, type2);
        }
    }

    public X8AiTaskManager getTaskManger() {
        return this.mX8AiTaskManager;
    }

    public void appFullSceen(boolean b) {
        if (b) {
            closeByAiFly();
            this.mX8FiveKeyHintController.closeUi();
            this.mMapVideoController.disShowSmall();
            return;
        }
        this.mX8MainTopBarController.openUi();
        this.mX8MainRightMenuController.openUi();
        this.mX8MainErrorCodePowerPitchAngleController.openUi();
        this.mX8MainBottomParameterController.openUi();
        if (!this.mX8AiTaskManager.isTaskRunning()) {
            this.mX8RightIconForMapController.openUiForSetting();
        }
        this.mX8MainRightMenuController.switchByCloseFullScreen(this.mMapVideoController.isFullVideo());
        this.mX8RightIconForMapController.switchByCloseFullScreen(this.mMapVideoController.isFullVideo());
        this.mMapVideoController.resetShow();
    }

    public void taskFullScreen(boolean b) {
        appFullSceen(b);
        if (b) {
            this.mAppScreen = X8ScreenEnum.FULL;
            return;
        }
        this.mAppScreen = X8ScreenEnum.NORMAL;
        this.mX8MainRightMenuController.setAiFly(false);
    }

    public void closeOther2FCAllSetting() {
        this.mX8MainErrorCodePowerPitchAngleController.closeUi();
        this.mX8MainBottomParameterController.closeUi();
        this.mX8MainRightMenuController.closeUi();
        this.mX8RightIconForMapController.closeUiForSetting();
        this.mX8FiveKeyHintController.closeUi();
        this.mX8MainErrorCodePowerPitchAngleController.setErrorViewEnableShow(false);
        this.mMapVideoController.disShowSmall();
    }

    public void closeByAiFly() {
        this.mX8MainTopBarController.closeUi();
        this.mX8MainErrorCodePowerPitchAngleController.closeUi();
        this.mX8MainBottomParameterController.closeUi();
        this.mX8MainRightMenuController.closeUi();
        this.mX8RightIconForMapController.closeUiForSetting();
    }

    public void showAiGravitationView() {
        closeByAiFly();
        this.mX8AiTaskManager.openAiGravitation();
        this.mX8MainRightMenuController.setOtherShow(true);
    }

    public void showAiFollowView(int type) {
        closeByAiFly();
        this.mMapVideoController.switchDrawingOrderForAiFollow();
        this.mX8AiTaskManager.openAiFollow(type);
    }

    public void showAiPoint2PointView() {
        closeByAiFly();
        this.mMapVideoController.switchByPoint2PointMap();
        this.mX8AiTaskManager.openAiD2Point();
        this.mX8MainRightMenuController.setOtherShow(true);
    }

    public void showAiSurroundView() {
        closeByAiFly();
        this.mMapVideoController.switchBySurroundMap();
        this.mX8AiTaskManager.openAiSurround();
        this.mX8MainRightMenuController.setOtherShow(true);
    }

    public void showAiScrewView() {
        closeByAiFly();
        this.mMapVideoController.switchBySurroundMap();
        this.mX8AiTaskManager.initScrewExcuteController();
        this.mX8MainRightMenuController.setOtherShow(true);
    }

    public void showAiLineView(int mode, long lineId, int type) {
        closeByAiFly();
        this.mX8AiTaskManager.openAiLine(mode, lineId);
        this.mX8MainRightMenuController.setOtherShow(true);
    }

    public void showAiLineView(int mode) {
        closeByAiFly();
        this.mX8MainRightMenuController.setOtherShow(true);
        this.mX8AiTaskManager.openAiLine(mode, -1L);
    }

    public void showAutoPhtoView(int type) {
        closeByAiFly();
        this.mMapVideoController.switchByAiLineVideo();
        this.mX8AiTaskManager.openAiAutoPhoto(type);
        this.mX8MainRightMenuController.setOtherShow(true);
    }

    public void resetAppScreenForDisconnect() {
        if (this.mAppScreen == X8ScreenEnum.FULL) {
            appFullSceen(false);
            this.mAppScreen = X8ScreenEnum.NORMAL;
        }
    }

    @Override // com.fimi.x8sdk.listener.ConnectListener
    public void onConnectedState(ConectState state) {
        if (state.isConnectRelay()) {
            if (state.isConnectDrone()) {
                this.mX8MainTopBarController.onConnectedState(state);
                this.mX8MainErrorCodePowerPitchAngleController.onDroneConnected(true);
                this.mX8MainCameraSettingController.onDroneConnected(true);
                this.mX8MainRightMenuController.onDroneConnected(true);
                this.mX8MainFcAllSettingControler.onDroneConnected(true);
                this.mMapVideoController.showVideoBg(true);
                this.mX8GimbalViewManager.onDroneConnected(true);
                this.mX8FpvManager.onDroneConnectState(true);
                this.mX8AiTaskManager.onDroneConnected(true);
                if (this.time == 0) {
                    this.fcManager.syncTime(new UiCallBackListener() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.9
                        @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                        public void onComplete(CmdResult cmdResult, Object o) {
                        }
                    });
                    this.time = 1;
                } else {
                    this.time = 0;
                }
                this.mX8AccurateLandingController.onDroneConnected(true);
                this.mX8RightIconForMapController.onDroneConnected(true);
                this.mX8PressureGpsManger.startTask();
                this.x8UpdateHintController.setPresenterLockMotor();
                if (!this.isSendFlightLog && StateManager.getInstance().getX8Drone().isInSky()) {
                    if (this.mX8FcCtrlManager != null) {
                        this.mX8FcCtrlManager.getRcCtrlMode();
                    }
                    this.isSendFlightLog = true;
                }
                if (StateManager.getInstance().getX8Drone().isOnGround()) {
                    this.isSendFlightLog = false;
                }
            } else {
                this.mX8MainBottomParameterController.defaultVal();
                this.mX8MainRightMenuController.defaultVal();
                this.mX8MainErrorCodePowerPitchAngleController.defaultVal();
                this.mX8MainTopBarController.onDisconnectDroneVal();
                this.mX8MainAiFlyController.defaultVal();
                this.mMapVideoController.defaultVal();
                StateManager.getInstance().getCamera().setToken(-1);
                this.mX8MainFcAllSettingControler.onDroneConnected(false);
                this.mX8MainErrorCodePowerPitchAngleController.onDroneConnected(false);
                this.mX8MainCameraSettingController.onDroneConnected(false);
                this.mX8MainRightMenuController.onDroneConnected(false);
                this.mX8GimbalViewManager.onDroneConnected(false);
                this.mMapVideoController.showVideoBg(false);
                resetAppScreenForDisconnect();
                this.mX8FpvManager.onDroneConnectState(false);
                StateManager.getInstance().getErrorCodeState().reset();
                this.mX8AiTaskManager.onDroneConnected(false);
                this.mX8AccurateLandingController.onDroneConnected(false);
                this.mX8RightIconForMapController.onDroneConnected(false);
                this.mX8PressureGpsManger.stopTask();
                this.isSendFlightLog = false;
            }
            this.mX8MainFcAllSettingControler.onRcConnected(true);
            return;
        }
        StateManager.getInstance().getErrorCodeState().reset();
        this.mX8MainBottomParameterController.defaultVal();
        this.mX8MainRightMenuController.defaultVal();
        this.mX8MainErrorCodePowerPitchAngleController.defaultVal();
        this.mX8MainTopBarController.defaultVal();
        this.mX8MainAiFlyController.defaultVal();
        this.mMapVideoController.defaultVal();
        StateManager.getInstance().getCamera().setToken(-1);
        this.mX8MainFcAllSettingControler.onDroneConnected(false);
        this.mX8MainFcAllSettingControler.defaultVal();
        this.mX8MainErrorCodePowerPitchAngleController.onDroneConnected(false);
        this.mX8MainCameraSettingController.onDroneConnected(false);
        this.mX8MainRightMenuController.onDroneConnected(false);
        this.mMapVideoController.showVideoBg(false);
        this.mX8MainFcAllSettingControler.onRcConnected(false);
        this.mX8GimbalViewManager.onDroneConnected(false);
        resetAppScreenForDisconnect();
        this.mX8FpvManager.onDroneConnectState(false);
        this.mX8AiTaskManager.onDroneConnected(false);
        this.mX8AccurateLandingController.onDroneConnected(false);
        this.mX8RightIconForMapController.onDroneConnected(false);
        this.mX8PressureGpsManger.stopTask();
    }

    @Override // com.fimi.x8sdk.listener.RelayHeartListener
    public void cameraStatusListener(boolean hasToken) {
        if (hasToken && this.mX8MainCameraSettingController != null) {
            this.mX8MainCameraSettingController.defaultVal();
        }
    }

    @Override // com.fimi.x8sdk.listener.FcHeartListener
    public void onFcHeart(AutoFcHeart fcHeart, boolean isLowPower) {
        this.mX8MainAiFlyController.onFcHeart(fcHeart, isLowPower);
        this.mX8MainTopBarController.onFcHeart(fcHeart, isLowPower);
        this.mX8RightIconForMapController.onFcHeart(fcHeart, isLowPower);
    }

    @Override // com.fimi.x8sdk.listener.FcSingalListener
    public void showSingal(AutoFcSignalState signalState) {
        this.mX8MainTopBarController.showSingal(signalState);
    }

    @Override // com.fimi.x8sdk.listener.FcBatteryListener
    public void onBatteryListener(AutoFcBattery autoFcBattery) {
        this.mX8MainTopBarController.onBatteryListener(autoFcBattery);
        this.mX8MainFcAllSettingControler.onBatteryReceiveListener(autoFcBattery);
    }

    @Override // com.fimi.x8sdk.listener.RelayHeartListener
    public void onRelayHeart(AutoRelayHeart autoRelayHeart) {
        this.mX8MainTopBarController.showRelayHeart(autoRelayHeart);
    }

    @Override // com.fimi.x8sdk.listener.FcSportStateListener
    public void showSportState(AutoFcSportState state) {
        this.mX8MainTopBarController.showSportState(state);
        if (this.mMapVideoController.getFimiMap().isMapInit()) {
            this.mMapVideoController.getFimiMap().addDeviceLocation(state.getLatitude(), state.getLongitude());
            this.fcManager.getNoFlyNormal(new UiCallBackListener() { // from class: com.fimi.app.x8s.ui.activity.X8sMainActivity.13
                @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                public void onComplete(CmdResult cmdResult, Object o) {
                }
            });
            this.mMapVideoController.getFimiMap().addFlyPolyline(state.getLatitude(), state.getLongitude());
            this.mMapVideoController.getFimiMap().chaneDeviceAngle(state.getDeviceAngle());
            if (this.mMapVideoController.isFullVideo()) {
                this.mMapVideoController.getFimiMap().moveCameraByDevice();
            }
        }
        this.mX8AiTaskManager.showAiView();
        this.mX8AiTaskManager.showSportState(state);
        this.mX8MainAiFlyController.showSportState(state);
        this.mX8RightIconForMapController.showSportState(state);
    }

    @Override // com.fimi.x8sdk.listener.FcSportStateListener
    public void showGimbalState(GimbalState state) {
        this.mX8MainBottomParameterController.showSportState(state);
        this.mX8FiveKeyHintController.showSportState(state);
    }

    @Override // com.fimi.x8sdk.listener.CameraStateListener
    public void showCamState(AutoCameraStateADV cameraStateADV) {
        boolean z = true;
        if (StateManager.getInstance().getCamera().getToken() > 0) {
            int model = cameraStateADV.getMode();
            if (model == 16 || model == 17 || model == 19 || model == 20) {
                if (CameraParamStatus.modelStatus != CameraParamStatus.CameraModelStatus.takePhoto) {
                    CameraParamStatus.modelStatus = CameraParamStatus.CameraModelStatus.takePhoto;
                }
            } else if ((model == 32 || model == 33 || model == 34 || model == 36) && CameraParamStatus.modelStatus != CameraParamStatus.CameraModelStatus.record) {
                CameraParamStatus.modelStatus = CameraParamStatus.CameraModelStatus.record;
            }
            if (cameraStateADV.getState() == 2) {
                CameraParamStatus.modelStatus = CameraParamStatus.CameraModelStatus.recording;
            }
            this.mX8MainRightMenuController.showCameraState(cameraStateADV);
            this.mX8MainTopBarController.showCamState(cameraStateADV);
            this.mX8MainBottomParameterController.showCameraStatus(cameraStateADV);
            this.mX8MainCameraSettingController.showCameraStatus(cameraStateADV);
            boolean z2 = (cameraStateADV.getInfo() == 3) | (cameraStateADV.getInfo() == 2);
            if (cameraStateADV.getInfo() != 6) {
                z = false;
            }
            if (z2 | z) {
                EventBus.getDefault().post(new EventMessage(Constants.X8_CAMERA_STATE_EVENT_KEY, false));
            }
        }
    }

    @Override // com.fimi.app.x8s.interfaces.IX8SensorListener
    public void onSensorChanged(float degree) {
        if (this.mMapVideoController.getFimiMap().isMapInit()) {
            this.mMapVideoController.getFimiMap().onSensorChanged(degree);
        }
    }

    @Override // com.fimi.x8sdk.listener.HomeInfoListener
    public void showHomeInfo(AutoHomeInfo homeInfo) {
        if (this.mMapVideoController.getFimiMap().isMapInit()) {
            this.mMapVideoController.getFimiMap().setHomeLocation(homeInfo.getFLatLng().latitude, homeInfo.getFLatLng().longitude);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            int visibility = this.rlCover.getVisibility();
            if (this.mX8MainFcAllSettingControler != null && this.mX8MainFcAllSettingControler.isShow()) {
                if (!this.mX8MainFcAllSettingControler.isRunningTask() && visibility != 0) {
                    this.mX8MainFcAllSettingControler.closeFcSettingUi(true);
                }
                return false;
            }
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // com.fimi.x8sdk.listener.IX8VcTrackListener
    public void onTracking(AutoVcTracking tracking) {
        this.mX8AiTrackController.onTracking(tracking);
    }

    @Override // com.fimi.x8sdk.listener.NavigationStateListener
    public void onNavigationState(DroneState droneState) {
    }

    @Override // com.fimi.x8sdk.listener.IX8ErrorCodeListener
    public void onErrorCode(List<X8ErrorCodeInfo> list) {
        if (this.activateTTS) {
            this.mX8MainErrorCodePowerPitchAngleController.onErrorCode(list);
        }
    }

    @Override // com.fimi.x8sdk.listener.IX8ErrorCodeListener
    public void cloudUnMountError(boolean unMount) {
        if (this.mX8MainFcAllSettingControler != null) {
            this.mX8MainFcAllSettingControler.unMountError(unMount);
        }
    }

    public void runFixedwing() {
        this.mX8MainTopBarController.openUi();
        this.mX8MainErrorCodePowerPitchAngleController.openUi();
        this.mX8MainTopBarController.openUi();
        this.mX8MainBottomParameterController.openUi();
        this.mX8MainRightMenuController.openUi();
        this.mX8MainRightMenuController.setOtherStateRunning();
        this.mX8MainRightMenuController.showCameraView(this.mMapVideoController.isFullVideo());
        this.mX8RightIconForMapController.closeUiForTaskRunning();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean fiveKeyDisabled() {
        if (!this.activateTTS || this.mX8AiTaskManager.isTaskRunning() || this.mX8MainCameraSettingController.isShow() || this.mX8MainAiFlyController.isShow() || this.mAppScreen == X8ScreenEnum.FULL || this.mX8MainFcAllSettingControler.isShow() || this.mX8FiveKeyHintController.isShow()) {
            return true;
        }
        return false;
    }

    public void onTaskComplete(boolean showText, String s) {
        this.mX8MainRightMenuController.setOtherShow(false);
        this.mX8RightIconForMapController.openUiForSetting();
        if (showText) {
            X8ToastUtil.showToast(this, s, 0);
        }
    }

    public void onTaskRunning() {
        this.mX8MainTopBarController.openUi();
        this.mX8MainErrorCodePowerPitchAngleController.openUi();
        this.mX8MainTopBarController.openUi();
        this.mX8MainBottomParameterController.openUi();
        this.mX8MainRightMenuController.openUi();
        this.mX8MainRightMenuController.setOtherStateRunning();
        this.mX8MainRightMenuController.showCameraView(this.mMapVideoController.isFullVideo());
        this.mX8RightIconForMapController.closeUiForTaskRunning();
    }

    public X8MapVideoController getmMapVideoController() {
        return this.mMapVideoController;
    }

    public void onTaskBack() {
        this.mX8MainTopBarController.openUi();
        this.mX8MainErrorCodePowerPitchAngleController.openUi();
        this.mX8MainTopBarController.openUi();
        this.mX8MainBottomParameterController.openUi();
        this.mX8MainRightMenuController.openUi();
        this.mX8MainRightMenuController.setOtherShow(false);
        this.mX8MainRightMenuController.showCameraView(this.mMapVideoController.isFullVideo());
        this.mX8RightIconForMapController.openUiForSetting();
        this.mMapVideoController.resetShow();
    }

    public void showTopByGimbalHorizontalTrim() {
        this.mX8MainTopBarController.openUi();
    }

    @Override // com.fimi.x8sdk.listener.IX8PowerListener
    public void onPowerChange(int percent) {
        this.mX8MainTopBarController.onPowerChange(percent);
    }

    @Override // com.fimi.x8sdk.listener.RightRollerLinstener
    public void changeDirection(AckRightRoller ackRightRoller) {
        if (this.rollerController != null) {
            this.rollerController.changeRightRolloer(ackRightRoller);
        }
    }

    public void onShowAiFlyIcon() {
        this.mX8RightIconForMapController.openUiForSetting();
    }

    public void onTestErrorCode(View v) {
        EditText etPow = (EditText) findViewById(C0885R.C0889id.tv_pow);
        String strN = etPow.getText().toString().trim();
        if (strN.equals("")) {
            strN = "0";
        }
        long n = Long.parseLong(strN);
        ErrorCodeState.setErrorCode(n);
    }

    public void onAiFlyClick() {
        this.mX8MainCameraSettingController.closeAiUi(false);
        this.mX8MainAiFlyController.showAiUi();
        this.mX8MainBottomParameterController.closeUi();
        this.mX8MainTopBarController.closeUi();
        this.mX8MainRightMenuController.closeUi();
        this.mX8RightIconForMapController.closeUiForSetting();
    }

    @Override // com.fimi.x8sdk.listener.IX8AiStateListener
    public void aiState(boolean isRunning) {
        this.mX8MainAiFlyController.setAiRunning(isRunning);
        this.mX8RightIconForMapController.setAiRunning(isRunning);
    }
}
