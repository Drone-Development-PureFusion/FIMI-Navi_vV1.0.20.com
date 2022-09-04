package com.fimi.app.x8s.controls.fcsettting.flightlog;

import android.app.Activity;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.interfaces.AbsX8Controllers;
import com.fimi.app.x8s.interfaces.IX8FlightLogTopBarListener;
import com.fimi.app.x8s.p011ui.activity.X8sMainActivity;
import com.fimi.app.x8s.tools.TimeFormateUtil;
import com.fimi.app.x8s.tools.X8NumberUtil;
import com.fimi.app.x8s.widget.X8BatteryReturnLandingView;
import com.fimi.app.x8s.widget.X8MainElectricView;
import com.fimi.app.x8s.widget.X8MainPowerView;
import com.fimi.app.x8s.widget.X8MainReturnTimeTextView;
import com.fimi.app.x8s.widget.X8MainTopRightFlightPlaybackView;
import com.fimi.kernel.Constants;
import com.fimi.kernel.base.EventMessage;
import com.fimi.widget.CustomLoadManage;
import com.fimi.widget.X8ToastUtil;
import com.fimi.widget.impl.NoDoubleClickListener;
import com.fimi.x8sdk.dataparser.AutoCameraStateADV;
import com.fimi.x8sdk.dataparser.flightplayback.AutoFcBatteryPlayback;
import com.fimi.x8sdk.dataparser.flightplayback.AutoFcHeartPlayback;
import com.fimi.x8sdk.dataparser.flightplayback.AutoFcSignalStatePlayback;
import com.fimi.x8sdk.dataparser.flightplayback.AutoFcSportStatePlayback;
import com.fimi.x8sdk.dataparser.flightplayback.AutoRelayHeartPlayback;
import com.fimi.x8sdk.modulestate.DroneStateFlightPlayback;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class X8FlightlogTopBarController extends AbsX8Controllers implements View.OnClickListener {
    private ImageButton ibtnReturn;
    private boolean isCollect;
    private AutoFcSportStatePlayback lastState = null;
    private IX8FlightLogTopBarListener listener;
    private Activity mActivity;
    private CustomLoadManage mCustomLoadManage;
    private ImageView mIvDistance;
    private ImageView mIvFlyState;
    private ImageView mIvHight;
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
    private X8MainTopRightFlightPlaybackView mX8MainTopCenterView;
    private TextView tvConnectState;
    private View vDroneInfoState;
    private X8BatteryReturnLandingView vLandingReturnView;
    private ImageButton x8IbtnFlightlogCollect;

    public X8FlightlogTopBarController(View rootView, boolean isCollect, Activity activity) {
        super(rootView);
        this.isCollect = isCollect;
        this.mActivity = activity;
        EventBus.getDefault().register(this);
        if (isCollect) {
            this.x8IbtnFlightlogCollect.setImageResource(C0885R.C0888drawable.x8_selector_flightlog_btn_collect_end);
        } else {
            this.x8IbtnFlightlogCollect.setImageResource(C0885R.C0888drawable.x8_selector_flightlog_btn_collect);
        }
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
        this.handleView = rootView.findViewById(C0885R.C0889id.flight_top_bars);
        this.mX8MainReturnTimeTextView = (X8MainReturnTimeTextView) rootView.findViewById(C0885R.C0889id.x8_return_time_text_view);
        this.mX8MainElectricView = (X8MainElectricView) rootView.findViewById(C0885R.C0889id.electric_view);
        this.mX8MainPowerView = (X8MainPowerView) rootView.findViewById(C0885R.C0889id.power_view);
        this.x8IbtnFlightlogCollect = (ImageButton) rootView.findViewById(C0885R.C0889id.x8_ibtn_flightlog_collect);
        this.ibtnReturn = (ImageButton) rootView.findViewById(C0885R.C0889id.x8_ibtn_return);
        this.mTvHight = (TextView) rootView.findViewById(C0885R.C0889id.tv_hight);
        this.mIvHight = (ImageView) rootView.findViewById(C0885R.C0889id.iv_fly_hight);
        this.mTvDistance = (TextView) rootView.findViewById(C0885R.C0889id.tv_distance);
        this.mIvDistance = (ImageView) rootView.findViewById(C0885R.C0889id.iv_fly_distance);
        this.mTvVs = (TextView) rootView.findViewById(C0885R.C0889id.tv_vs);
        this.mTvHs = (TextView) rootView.findViewById(C0885R.C0889id.tv_hs);
        this.tvConnectState = (TextView) rootView.findViewById(C0885R.C0889id.tv_connect_state);
        this.mIvFlyState = (ImageView) rootView.findViewById(C0885R.C0889id.iv_fly_state);
        this.mX8MainTopCenterView = (X8MainTopRightFlightPlaybackView) rootView.findViewById(C0885R.C0889id.x8main_top_center_view);
        this.mTvHightUnit = (TextView) rootView.findViewById(C0885R.C0889id.tv_height_lable);
        this.mTvDistanceUnit = (TextView) rootView.findViewById(C0885R.C0889id.tv_distance_lable);
        this.mTvSpeedUnit = (TextView) rootView.findViewById(C0885R.C0889id.tv_vs_unit);
        this.vDroneInfoState = rootView.findViewById(C0885R.C0889id.x8_drone_info_state);
        this.vLandingReturnView = (X8BatteryReturnLandingView) rootView.findViewById(C0885R.C0889id.v_landing_return_view);
    }

    public void setX8sMainActivity(X8sMainActivity activity) {
        this.vLandingReturnView.setX8sMainActivity(activity);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
        this.x8IbtnFlightlogCollect.setOnClickListener(this);
        this.x8IbtnFlightlogCollect.setOnClickListener(new NoDoubleClickListener(500) { // from class: com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightlogTopBarController.1
            @Override // com.fimi.widget.impl.NoDoubleClickListener
            protected void onNoDoubleClick(View v) {
                if (X8FlightlogTopBarController.this.mCustomLoadManage == null) {
                    X8FlightlogTopBarController.this.mCustomLoadManage = new CustomLoadManage();
                }
                CustomLoadManage unused = X8FlightlogTopBarController.this.mCustomLoadManage;
                CustomLoadManage.x8ShowNoClick(X8FlightlogTopBarController.this.mActivity);
                if (X8FlightlogTopBarController.this.isCollect) {
                    X8FlightlogTopBarController.this.x8IbtnFlightlogCollect.setImageResource(C0885R.C0888drawable.x8_selector_flightlog_btn_collect);
                    X8FlightlogTopBarController.this.isCollect = false;
                } else {
                    X8FlightlogTopBarController.this.x8IbtnFlightlogCollect.setImageResource(C0885R.C0888drawable.x8_selector_flightlog_btn_collect_end);
                    X8FlightlogTopBarController.this.isCollect = true;
                }
                EventBus.getDefault().post(new EventMessage(Constants.X8_FLIGHTLOG_EVENT_KEY, Boolean.valueOf(X8FlightlogTopBarController.this.isCollect)));
            }
        });
        this.ibtnReturn.setOnClickListener(this);
        this.vDroneInfoState.setOnClickListener(this);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
        this.mX8MainTopCenterView.defaultVal();
        this.mX8MainElectricView.setPercent(0);
        this.vLandingReturnView.resetByDidconnect();
        this.mTvDistance.setText(C0885R.string.x8_na);
        this.mTvHight.setText(C0885R.string.x8_na);
        this.mIvDistance.setBackgroundResource(C0885R.C0888drawable.x8_main_fly_distance_unconnect);
        this.mIvHight.setBackgroundResource(C0885R.C0888drawable.x8_main_fly_hight_unconnect);
        this.mTvVs.setText(C0885R.string.x8_na);
        this.mTvHs.setText(C0885R.string.x8_na);
        this.tvConnectState.setText(C0885R.string.x8_fly_status_unconnect);
        this.mX8MainPowerView.setPercent(0);
        this.mIvFlyState.setBackgroundResource(C0885R.C0888drawable.x8_main_fly_state_unconnect);
        this.mX8MainReturnTimeTextView.setStrTime(getString(C0885R.string.x8_na));
        this.mTvHightUnit.setText("");
        this.mTvDistanceUnit.setText("");
        this.mTvSpeedUnit.setText("");
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
        this.tvConnectState.setText(C0885R.string.x8_fly_status_unconnect);
        this.mX8MainPowerView.setPercent(0);
        this.mIvFlyState.setBackgroundResource(C0885R.C0888drawable.x8_main_fly_state_unconnect);
        this.mX8MainReturnTimeTextView.setStrTime(getString(C0885R.string.x8_na));
        this.mTvHightUnit.setText("");
        this.mTvDistanceUnit.setText("");
        this.mTvSpeedUnit.setText("");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == C0885R.C0889id.x8_ibtn_return) {
            EventBus.getDefault().unregister(this);
            this.listener.toMainUI();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void eventBusUI(EventMessage eventMessage) {
        if (eventMessage != null && eventMessage.getKey() == Constants.X8_FLIGHTLOG_RENAME_FILE_EVENT_KEY) {
            CustomLoadManage customLoadManage = this.mCustomLoadManage;
            CustomLoadManage.dismiss();
            if (this.isCollect) {
                X8ToastUtil.showToast(this.mActivity, this.mActivity.getString(C0885R.string.x8_playback_collection_successful), 0);
            } else {
                X8ToastUtil.showToast(this.mActivity, this.mActivity.getString(C0885R.string.x8_playback_collection_Cancel), 0);
            }
        }
    }

    public void setListener(IX8FlightLogTopBarListener listener) {
        this.listener = listener;
    }

    public void onFcHeart(AutoFcHeartPlayback fcHeart, boolean isLowPower) {
        if (fcHeart.getCtrlType() == 1) {
            this.mIvFlyState.setBackgroundResource(C0885R.C0888drawable.x8_main_atti_mode);
        } else if (fcHeart.getCtrlType() == 2) {
            this.mIvFlyState.setBackgroundResource(C0885R.C0888drawable.x8_main_gps_mode);
        } else if (fcHeart.getCtrlType() == 3) {
            this.mIvFlyState.setBackgroundResource(C0885R.C0888drawable.x8_main_vpu_mode);
        }
    }

    public void onPowerChange(int percent) {
        this.mX8MainPowerView.setPercent(percent);
    }

    public void onConnectedState(DroneStateFlightPlayback droneState, AutoFcHeartPlayback autoFcHeartPlayback) {
        boolean z = true;
        if (droneState.isOnGround()) {
            if (droneState.isCanFly()) {
                setTvConnectState(C0885R.string.x8_fly_status_can_fly);
            } else {
                setTvConnectState(C0885R.string.x8_fly_status_cannot_takeoff);
            }
        } else if (droneState.isTakeOffing()) {
            setTvConnectState(C0885R.string.x8_fly_status_taking);
        } else if (droneState.isInSky()) {
            boolean z2 = autoFcHeartPlayback.getCtrlModel() == 7;
            if (autoFcHeartPlayback.getCtrlModel() != 8) {
                z = false;
            }
            if (z2 | z) {
                setTvConnectState(C0885R.string.x8_fly_status_returning);
            } else if (autoFcHeartPlayback.getCtrlModel() == 3) {
                setTvConnectState(C0885R.string.x8_fly_status_landing);
            } else {
                setTvConnectState(C0885R.string.x8_fly_status_flying);
            }
        } else if (droneState.isLanding()) {
            setTvConnectState(C0885R.string.x8_fly_status_landing);
        }
    }

    public void showCamState(AutoCameraStateADV cameraStateADV) {
    }

    public void setTvConnectState(int resId) {
        this.tvConnectState.setText(resId);
    }

    public void showSingal(AutoFcSignalStatePlayback signalState) {
        this.mX8MainTopCenterView.setFcSingal(signalState);
    }

    public void onBatteryListener(AutoFcBatteryPlayback autoFcBattery) {
        this.mX8MainTopCenterView.setFcBattey(autoFcBattery);
        int percent = autoFcBattery.getRemainPercentage();
        this.mX8MainElectricView.setPercent(percent);
        this.mX8MainReturnTimeTextView.setStrTime(TimeFormateUtil.getRecordTime(autoFcBattery.getRemainingTime()));
        this.vLandingReturnView.setPercent(autoFcBattery.getLandingCapacity(), autoFcBattery.getRhtCapacity(), autoFcBattery.getTotalCapacity(), percent);
    }

    public void showSportState(AutoFcSportStatePlayback state) {
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
    }

    public void switchUnity() {
        if (this.lastState != null) {
            showSportState(this.lastState);
        }
    }

    public void showRelayHeart(AutoRelayHeartPlayback autoRelayHeart) {
        this.mX8MainTopCenterView.setRelayHeart(autoRelayHeart);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public boolean onClickBackKey() {
        return false;
    }
}
