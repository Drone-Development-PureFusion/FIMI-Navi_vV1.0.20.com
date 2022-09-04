package com.fimi.app.x8s.controls;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.interfaces.AbsX8Controllers;
import com.fimi.app.x8s.interfaces.IX8MainTopBarListener;
import com.fimi.app.x8s.p011ui.activity.X8sMainActivity;
import com.fimi.app.x8s.tools.TimeFormateUtil;
import com.fimi.app.x8s.tools.X8NumberUtil;
import com.fimi.app.x8s.widget.X8BatteryReturnLandingView;
import com.fimi.app.x8s.widget.X8MainElectricView;
import com.fimi.app.x8s.widget.X8MainPowerView;
import com.fimi.app.x8s.widget.X8MainReturnTimeTextView;
import com.fimi.app.x8s.widget.X8MainTopRightView;
import com.fimi.app.x8s.widget.X8SingleCustomDialog;
import com.fimi.widget.X8ToastUtil;
import com.fimi.x8sdk.X8FcLogManager;
import com.fimi.x8sdk.dataparser.AutoCameraStateADV;
import com.fimi.x8sdk.dataparser.AutoFcBattery;
import com.fimi.x8sdk.dataparser.AutoFcHeart;
import com.fimi.x8sdk.dataparser.AutoFcSignalState;
import com.fimi.x8sdk.dataparser.AutoFcSportState;
import com.fimi.x8sdk.dataparser.AutoRelayHeart;
import com.fimi.x8sdk.entity.ConectState;
import com.fimi.x8sdk.modulestate.DroneState;
import com.fimi.x8sdk.modulestate.StateManager;
/* loaded from: classes.dex */
public class X8MainTopBarController extends AbsX8Controllers implements View.OnClickListener {
    private ImageButton ibtnReturn;
    private ImageButton ibtnSetting;
    private boolean isReadyGo;
    private boolean isStartFlick;
    private IX8MainTopBarListener listener;
    private double mCurrentLat;
    private double mCurrentLng;
    private ImageView mIvCenterHighightHelp;
    private View mIvCenterHighightHelpInfo;
    private ImageView mIvCenterHighightView;
    private ImageView mIvDistance;
    private ImageView mIvFlyState;
    private ImageView mIvHight;
    private ImageView mIvTopCenterMode;
    private ImageView mIvTopCenterModeHelp;
    private TextView mTvDisconnectLatlng;
    private TextView mTvDistance;
    private TextView mTvDistanceUnit;
    private TextView mTvHight;
    private TextView mTvHightUnit;
    private TextView mTvHs;
    private TextView mTvSpeedUnit;
    private TextView mTvVs;
    private X8MainElectricView mX8MainElectricView;
    private X8MainPowerView mX8MainPowerView;
    private X8MainReturnTimeTextView mX8MainReturnTimeTextView;
    private X8MainTopRightView mX8MainTopCenterView;
    private X8sMainActivity mX8sMainActivity;
    private TextView tvConnectState;
    private View vDroneInfoState;
    private X8BatteryReturnLandingView vLandingReturnView;
    private X8SingleCustomDialog x8SingleCustomDialog;
    private AutoFcSportState lastState = null;
    private boolean isShowDisconnectLatlng = false;
    private int ctrlType = 0;

    public X8MainTopBarController(View rootView) {
        super(rootView);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
        this.handleView = rootView.findViewById(C0885R.C0889id.main_top_bars);
        this.mX8MainReturnTimeTextView = (X8MainReturnTimeTextView) rootView.findViewById(C0885R.C0889id.x8_return_time_text_view);
        this.mX8MainElectricView = (X8MainElectricView) rootView.findViewById(C0885R.C0889id.electric_view);
        this.mX8MainPowerView = (X8MainPowerView) rootView.findViewById(C0885R.C0889id.power_view);
        this.ibtnSetting = (ImageButton) rootView.findViewById(C0885R.C0889id.x8_ibtn_setting);
        this.ibtnReturn = (ImageButton) rootView.findViewById(C0885R.C0889id.x8_ibtn_return);
        this.mTvHight = (TextView) rootView.findViewById(C0885R.C0889id.tv_hight);
        this.mIvHight = (ImageView) rootView.findViewById(C0885R.C0889id.iv_fly_hight);
        this.mTvDistance = (TextView) rootView.findViewById(C0885R.C0889id.tv_distance);
        this.mIvDistance = (ImageView) rootView.findViewById(C0885R.C0889id.iv_fly_distance);
        this.mTvVs = (TextView) rootView.findViewById(C0885R.C0889id.tv_vs);
        this.mTvHs = (TextView) rootView.findViewById(C0885R.C0889id.tv_hs);
        this.tvConnectState = (TextView) rootView.findViewById(C0885R.C0889id.tv_connect_state);
        this.mIvFlyState = (ImageView) rootView.findViewById(C0885R.C0889id.iv_fly_state);
        this.mX8MainTopCenterView = (X8MainTopRightView) rootView.findViewById(C0885R.C0889id.x8main_top_center_view);
        this.mTvHightUnit = (TextView) rootView.findViewById(C0885R.C0889id.tv_height_lable);
        this.mTvDistanceUnit = (TextView) rootView.findViewById(C0885R.C0889id.tv_distance_lable);
        this.mTvSpeedUnit = (TextView) rootView.findViewById(C0885R.C0889id.tv_vs_unit);
        this.vDroneInfoState = rootView.findViewById(C0885R.C0889id.x8_drone_info_state);
        this.vLandingReturnView = (X8BatteryReturnLandingView) rootView.findViewById(C0885R.C0889id.v_landing_return_view);
        this.mTvDisconnectLatlng = (TextView) rootView.findViewById(C0885R.C0889id.tv_top_disconnect_latlng);
        this.mIvCenterHighightView = (ImageView) rootView.findViewById(C0885R.C0889id.iv_top_center_highight_view);
        this.mIvCenterHighightHelp = (ImageView) rootView.findViewById(C0885R.C0889id.iv_top_center_highight_help);
        this.mIvCenterHighightHelpInfo = rootView.findViewById(C0885R.C0889id.iv_top_center_highight_help_info);
        this.mIvTopCenterModeHelp = (ImageView) rootView.findViewById(C0885R.C0889id.iv_top_center_mode_help);
        this.mIvTopCenterMode = (ImageView) rootView.findViewById(C0885R.C0889id.iv_top_center_mode);
    }

    public void setX8sMainActivity(X8sMainActivity activity) {
        this.vLandingReturnView.setX8sMainActivity(activity);
        this.mX8sMainActivity = activity;
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
        this.ibtnSetting.setOnClickListener(this);
        this.ibtnReturn.setOnClickListener(this);
        this.vDroneInfoState.setOnClickListener(this);
        this.mTvDisconnectLatlng.setOnClickListener(this);
        this.mIvCenterHighightHelpInfo.setOnClickListener(this);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
        if (this.isShowDisconnectLatlng) {
            this.mTvDisconnectLatlng.setText(this.mCurrentLat + "," + this.mCurrentLng);
            this.mTvDisconnectLatlng.setVisibility(0);
        }
        this.mX8MainTopCenterView.defaultVal();
        this.mX8MainElectricView.setPercent(0);
        this.vLandingReturnView.resetByDidconnect();
        this.mTvDistance.setText(C0885R.string.x8_na);
        this.mTvHight.setText(C0885R.string.x8_na);
        this.mIvDistance.setBackgroundResource(C0885R.C0888drawable.x8_main_fly_distance_unconnect);
        this.mIvHight.setBackgroundResource(C0885R.C0888drawable.x8_main_fly_hight_unconnect);
        this.mTvVs.setText(C0885R.string.x8_na);
        this.mTvHs.setText(C0885R.string.x8_na);
        this.tvConnectState.setVisibility(0);
        this.tvConnectState.setText(C0885R.string.x8_fly_status_unconnect);
        this.mX8MainPowerView.setPercent(0);
        this.mIvFlyState.setBackgroundResource(C0885R.C0888drawable.x8_main_fly_state_unconnect);
        this.mIvTopCenterModeHelp.setVisibility(8);
        this.mIvTopCenterMode.setVisibility(8);
        this.mIvCenterHighightView.setVisibility(8);
        this.mIvCenterHighightHelp.setVisibility(8);
        this.mIvCenterHighightHelpInfo.setVisibility(8);
        stopFlick(this.mIvCenterHighightView);
        this.mX8MainReturnTimeTextView.setStrTime(getString(C0885R.string.x8_na));
        this.mTvHightUnit.setText("");
        this.mTvDistanceUnit.setText("");
        this.mTvSpeedUnit.setText("");
        this.ctrlType = 0;
    }

    public void onDisconnectDroneVal() {
        this.mX8MainTopCenterView.onDisconnectDroneVal();
        this.mX8MainElectricView.setPercent(0);
        this.vLandingReturnView.resetByDidconnect();
        this.mTvDistance.setText(C0885R.string.x8_na);
        this.mTvHight.setText(C0885R.string.x8_na);
        this.mIvDistance.setBackgroundResource(C0885R.C0888drawable.x8_main_fly_distance_unconnect);
        this.mIvHight.setBackgroundResource(C0885R.C0888drawable.x8_main_fly_hight_unconnect);
        this.mTvVs.setText(C0885R.string.x8_na);
        this.mTvHs.setText(C0885R.string.x8_na);
        this.tvConnectState.setVisibility(0);
        this.tvConnectState.setText(C0885R.string.x8_fly_status_unconnect);
        this.mX8MainPowerView.setPercent(0);
        this.mIvFlyState.setBackgroundResource(C0885R.C0888drawable.x8_main_fly_state_unconnect);
        this.mIvCenterHighightView.setVisibility(8);
        this.mIvCenterHighightHelp.setVisibility(8);
        this.mIvCenterHighightHelpInfo.setVisibility(8);
        this.mIvTopCenterModeHelp.setVisibility(8);
        this.mIvTopCenterMode.setVisibility(8);
        stopFlick(this.mIvCenterHighightView);
        this.mX8MainReturnTimeTextView.setStrTime(getString(C0885R.string.x8_na));
        this.mTvHightUnit.setText("");
        this.mTvDistanceUnit.setText("");
        this.mTvSpeedUnit.setText("");
        if (this.isShowDisconnectLatlng) {
            this.mTvDisconnectLatlng.setText(this.mCurrentLat + "," + this.mCurrentLng);
            this.mTvDisconnectLatlng.setVisibility(0);
        }
        this.ctrlType = 0;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == C0885R.C0889id.x8_ibtn_setting) {
            this.listener.onSettingClick();
        } else if (id == C0885R.C0889id.x8_ibtn_return) {
            this.listener.onMainReback();
            this.mTvDisconnectLatlng.setVisibility(8);
            this.isShowDisconnectLatlng = false;
        } else if (id == C0885R.C0889id.x8_drone_info_state) {
            this.listener.onDroneInfoStateClick();
        } else if (id == C0885R.C0889id.tv_top_disconnect_latlng) {
            clipbroadLatlng();
        } else if (id == C0885R.C0889id.iv_top_center_highight_help_info) {
            showDiaLog();
        }
    }

    private void clipbroadLatlng() {
        ClipboardManager clipboardManager = (ClipboardManager) this.mX8sMainActivity.getSystemService("clipboard");
        clipboardManager.setPrimaryClip(ClipData.newPlainText(null, this.mTvDisconnectLatlng.getText()));
        X8ToastUtil.showToast(this.mX8sMainActivity, this.mX8sMainActivity.getApplicationContext().getString(C0885R.string.x8_fly_status_disconnect_copy_latlng_of_clip), 0);
    }

    public void setListener(IX8MainTopBarListener listener) {
        this.listener = listener;
        this.mX8MainTopCenterView.setListener(listener);
    }

    public void onFcHeart(AutoFcHeart fcHeart, boolean isLowPower) {
        if (fcHeart.getCtrlType() != this.ctrlType) {
            this.ctrlType = fcHeart.getCtrlType();
            if (this.ctrlType == 1) {
                startFlick(this.mIvCenterHighightView);
            }
        }
        if (fcHeart.getCtrlType() == 1) {
            if (this.isReadyGo) {
                this.mIvTopCenterMode.setBackgroundResource(C0885R.C0888drawable.x8_top_center_highight_atti_big_1);
                this.mIvTopCenterModeHelp.setVisibility(0);
                this.mIvTopCenterMode.setVisibility(0);
                this.tvConnectState.setVisibility(4);
                this.mIvFlyState.setVisibility(4);
                this.mIvCenterHighightHelp.setVisibility(4);
            } else {
                this.mIvTopCenterModeHelp.setVisibility(4);
                this.mIvTopCenterMode.setVisibility(4);
                this.tvConnectState.setVisibility(0);
                this.mIvFlyState.setVisibility(0);
                this.mIvFlyState.setBackgroundResource(C0885R.C0888drawable.x8_main_atti_mode);
                this.mIvCenterHighightHelp.setVisibility(0);
            }
            this.mIvCenterHighightView.setVisibility(0);
            this.mIvCenterHighightHelpInfo.setVisibility(0);
        } else if (fcHeart.getCtrlType() == 2) {
            this.mIvFlyState.setVisibility(0);
            this.mIvFlyState.setBackgroundResource(C0885R.C0888drawable.x8_main_gps_mode);
            this.tvConnectState.setVisibility(0);
            this.mIvTopCenterModeHelp.setVisibility(8);
            this.mIvTopCenterMode.setVisibility(8);
            this.mIvCenterHighightView.setVisibility(8);
            this.mIvCenterHighightHelp.setVisibility(8);
            this.mIvCenterHighightHelpInfo.setVisibility(8);
            stopFlick(this.mIvCenterHighightView);
        } else if (fcHeart.getCtrlType() == 3) {
            if (this.isReadyGo) {
                this.mIvTopCenterMode.setBackgroundResource(C0885R.C0888drawable.x8_top_center_highight_vpu_big_1);
                this.mIvTopCenterModeHelp.setVisibility(0);
                this.mIvTopCenterMode.setVisibility(0);
                this.tvConnectState.setVisibility(4);
                this.mIvFlyState.setVisibility(4);
                this.mIvCenterHighightHelp.setVisibility(4);
            } else {
                this.mIvTopCenterModeHelp.setVisibility(4);
                this.mIvTopCenterMode.setVisibility(4);
                this.tvConnectState.setVisibility(0);
                this.mIvFlyState.setVisibility(0);
                this.mIvFlyState.setBackgroundResource(C0885R.C0888drawable.x8_main_vpu_mode);
                this.mIvCenterHighightHelp.setVisibility(0);
            }
            this.mIvCenterHighightView.setVisibility(0);
            this.mIvCenterHighightHelpInfo.setVisibility(0);
            stopFlick(this.mIvCenterHighightView);
        } else {
            this.tvConnectState.setVisibility(0);
            stopFlick(this.mIvCenterHighightView);
        }
    }

    public void onPowerChange(int percent) {
        this.mX8MainPowerView.setPercent(percent);
    }

    public void onConnectedState(ConectState state) {
        boolean z = false;
        if (state.isConnectDrone()) {
            DroneState droneState = StateManager.getInstance().getX8Drone();
            if (droneState.isOnGround()) {
                if (droneState.isCanFly()) {
                    setTvConnectState(C0885R.string.x8_fly_status_can_fly);
                    this.isReadyGo = true;
                } else {
                    setTvConnectState(C0885R.string.x8_fly_status_cannot_takeoff);
                    this.isReadyGo = false;
                }
                X8FcLogManager.getInstance().onDeviceStateChange(0);
            } else if (droneState.isTakeOffing()) {
                this.isReadyGo = false;
                setTvConnectState(C0885R.string.x8_fly_status_taking);
                X8FcLogManager.getInstance().onDeviceStateChange(1);
            } else if (droneState.isInSky()) {
                this.isReadyGo = false;
                X8FcLogManager.getInstance().onDeviceStateChange(1);
                boolean z2 = StateManager.getInstance().getX8Drone().getCtrlMode() == 7;
                if (StateManager.getInstance().getX8Drone().getCtrlMode() == 8) {
                    z = true;
                }
                if (z2 | z) {
                    setTvConnectState(C0885R.string.x8_fly_status_returning);
                } else if (StateManager.getInstance().getX8Drone().getCtrlMode() == 3) {
                    setTvConnectState(C0885R.string.x8_fly_status_landing);
                } else {
                    setTvConnectState(C0885R.string.x8_fly_status_flying);
                }
            } else if (droneState.isLanding()) {
                this.isReadyGo = false;
                setTvConnectState(C0885R.string.x8_fly_status_landing);
            }
            this.mTvDisconnectLatlng.setVisibility(8);
            this.isShowDisconnectLatlng = true;
            return;
        }
        this.isReadyGo = false;
        setTvConnectState(C0885R.string.x8_fly_status_connectiong);
    }

    public void showCamState(AutoCameraStateADV cameraStateADV) {
    }

    public void setTvConnectState(int resId) {
        this.tvConnectState.setText(resId);
    }

    public void showSingal(AutoFcSignalState signalState) {
        this.mX8MainTopCenterView.setFcSingal(signalState);
    }

    public void onBatteryListener(AutoFcBattery autoFcBattery) {
        this.mX8MainTopCenterView.setFcBattey(autoFcBattery);
        int percent = autoFcBattery.getRemainPercentage();
        this.mX8MainElectricView.setPercent(percent);
        this.mX8MainReturnTimeTextView.setStrTime(TimeFormateUtil.getRecordTime(autoFcBattery.getRemainingTime()));
        this.vLandingReturnView.setPercent(autoFcBattery.getLandingCapacity(), autoFcBattery.getRhtCapacity(), autoFcBattery.getTotalCapacity(), percent);
    }

    public void showSportState(AutoFcSportState state) {
        this.mIvDistance.setBackgroundResource(C0885R.C0888drawable.x8_main_fly_distance);
        this.mIvHight.setBackgroundResource(C0885R.C0888drawable.x8_main_fly_hight);
        this.mTvHight.setText(X8NumberUtil.getDistanceNumberNoPrexString(state.getHeight(), 1));
        this.mTvDistance.setText(X8NumberUtil.getDistanceNumberNoPrexString(state.getHomeDistance(), 1));
        this.mTvHightUnit.setText(X8NumberUtil.getPrexDistance());
        this.mTvDistanceUnit.setText(X8NumberUtil.getPrexDistance());
        this.mTvHs.setText(X8NumberUtil.getSpeedNumberNoPrexString(state.getDownVelocity() / 100.0f, 1));
        this.mTvVs.setText(X8NumberUtil.getSpeedNumberNoPrexString(state.getGroupSpeed() / 100.0f, 1));
        this.mTvSpeedUnit.setText(X8NumberUtil.getPrexSpeed());
        this.lastState = state;
        this.mCurrentLat = state.getDeviceLatitude();
        this.mCurrentLng = state.getDeviceLongitude();
    }

    public void switchUnity() {
        if (this.lastState != null) {
            showSportState(this.lastState);
        }
    }

    public void showRelayHeart(AutoRelayHeart autoRelayHeart) {
        this.mX8MainTopCenterView.setRelayHeart(autoRelayHeart);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public boolean onClickBackKey() {
        return false;
    }

    private void showDiaLog() {
        if (this.ctrlType == 1) {
            this.x8SingleCustomDialog = new X8SingleCustomDialog(this.handleView.getContext(), getString(C0885R.string.x8_fly_status_atti_title), getString(C0885R.string.x8_fly_status_atti_message), getString(C0885R.string.x8_fly_status_atti_comfire), false, new X8SingleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.X8MainTopBarController.1
                @Override // com.fimi.app.x8s.widget.X8SingleCustomDialog.onDialogButtonClickListener
                public void onSingleButtonClick() {
                }
            });
            this.x8SingleCustomDialog.setCanceledOnTouchOutside(false);
            this.x8SingleCustomDialog.show();
        } else if (this.ctrlType == 3) {
            this.x8SingleCustomDialog = new X8SingleCustomDialog(this.handleView.getContext(), getString(C0885R.string.x8_fly_status_vpu_title), getString(C0885R.string.x8_fly_status_vpu_message), getString(C0885R.string.x8_fly_status_vpu_comfire), false, new X8SingleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.X8MainTopBarController.2
                @Override // com.fimi.app.x8s.widget.X8SingleCustomDialog.onDialogButtonClickListener
                public void onSingleButtonClick() {
                    X8MainTopBarController.this.x8SingleCustomDialog.dismiss();
                }
            });
            this.x8SingleCustomDialog.setCanceledOnTouchOutside(false);
            this.x8SingleCustomDialog.show();
        }
    }

    private void startFlick(View view) {
        if (view != null || !this.isStartFlick) {
            Animation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(1000L);
            alphaAnimation.setInterpolator(new LinearInterpolator());
            alphaAnimation.setRepeatCount(-1);
            alphaAnimation.setRepeatMode(2);
            this.isStartFlick = true;
            view.startAnimation(alphaAnimation);
        }
    }

    public void stopFlick(View view) {
        this.isStartFlick = false;
        if (view != null) {
            view.clearAnimation();
        }
    }
}
