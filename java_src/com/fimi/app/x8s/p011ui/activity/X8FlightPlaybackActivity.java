package com.fimi.app.x8s.p011ui.activity;

import android.content.Intent;
import android.support.p001v4.app.FragmentManager;
import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.controls.X8MainErrorCodePowerPitchAngleController;
import com.fimi.app.x8s.controls.fcsettting.flightlog.PlayBackMapFragment;
import com.fimi.app.x8s.controls.fcsettting.flightlog.X8FlightlogTopBarController;
import com.fimi.app.x8s.interfaces.IX8FlightLogTopBarListener;
import com.fimi.app.x8s.interfaces.UpdateChangeMapTypeInterface;
import com.fimi.app.x8s.manager.X8DroneInfoStatemManager;
import com.fimi.app.x8s.tools.X8sNavigationBarUtils;
import com.fimi.app.x8s.widget.RemotesimulatorView;
import com.fimi.kernel.Constants;
import com.fimi.kernel.base.BaseActivity;
import com.fimi.kernel.percent.PercentRelativeLayout;
import com.fimi.kernel.utils.NumberUtil;
import com.fimi.kernel.utils.StatusBarUtil;
import com.fimi.kernel.utils.TimerUtil;
import com.fimi.widget.impl.NoDoubleClickListener;
import com.fimi.x8sdk.X8FcLogManager;
import com.fimi.x8sdk.dataparser.AckGetLowPowerOpt;
import com.fimi.x8sdk.dataparser.AckGetRcMode;
import com.fimi.x8sdk.dataparser.flightplayback.AutoFcBatteryPlayback;
import com.fimi.x8sdk.dataparser.flightplayback.AutoFcHeartPlayback;
import com.fimi.x8sdk.dataparser.flightplayback.AutoFcSignalStatePlayback;
import com.fimi.x8sdk.dataparser.flightplayback.AutoFcSportStatePlayback;
import com.fimi.x8sdk.dataparser.flightplayback.AutoHomeInfoPlayback;
import com.fimi.x8sdk.dataparser.flightplayback.AutoRelayHeartPlayback;
import com.fimi.x8sdk.dataparser.flightplayback.AutoRockerStatePlayback;
import com.fimi.x8sdk.entity.X8ErrorCodeInfo;
import com.fimi.x8sdk.ivew.IFlightPlayBackAction;
import com.fimi.x8sdk.modulestate.DroneStateFlightPlayback;
import com.fimi.x8sdk.presenter.X8FlightPlayBackPresenter;
import com.google.android.gms.maps.model.LatLng;
import java.util.List;
/* renamed from: com.fimi.app.x8s.ui.activity.X8FlightPlaybackActivity */
/* loaded from: classes.dex */
public class X8FlightPlaybackActivity extends BaseActivity implements UpdateChangeMapTypeInterface, IFlightPlayBackAction, SeekBar.OnSeekBarChangeListener {
    private boolean isBatteryPress;
    private boolean isLandPress;
    private boolean isParseFileSucceed;
    private boolean isReturnPress;
    IX8FlightLogTopBarListener ix8FlightLogTopBarListener = new IX8FlightLogTopBarListener() { // from class: com.fimi.app.x8s.ui.activity.X8FlightPlaybackActivity.5
        @Override // com.fimi.app.x8s.interfaces.IX8FlightLogTopBarListener
        public void toMainUI() {
            X8FlightPlaybackActivity.this.finish();
        }
    };
    private int lowPowerValue;
    private FragmentManager mFragmentManager;
    private int mMode;
    private PlayBackMapFragment mPlayBackMapFragment;
    private X8MainErrorCodePowerPitchAngleController mX8MainErrorCodePowerPitchAngleController;
    private int remainPercentage;
    private int rockerKeyMessage;
    private String rockerMode;
    private ImageView showMoreBatteryStatus;
    private ImageView showMoreGpsStatus;
    private ImageView showMoreRemoteStatus;
    private TextView x8BatteryElectricityDesValue;
    private TextView x8BatteryTemDesValue;
    private TextView x8BatteryVoltageOneValue;
    private TextView x8BatteryVoltageSencondValue;
    private TextView x8BatteryVoltageThreeValue;
    private ImageView x8BtnPaly;
    private PercentRelativeLayout x8DrontBatteryRl;
    private X8FlightPlayBackPresenter x8FlightPlayBackPresenter;
    private X8FlightlogTopBarController x8FlightlogTopBarController;
    private View x8FlightplaybackMain;
    private TextView x8PlayBackProgressFact;
    private TextView x8PlayBackTotalTime;
    private PercentRelativeLayout x8ProgressLoading;
    private RemotesimulatorView x8RemoteSimulator;
    private SeekBar x8SeebarPaly;

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean b) {
        X8FlightPlayBackPresenter x8FlightPlayBackPresenter = this.x8FlightPlayBackPresenter;
        this.x8FlightPlayBackPresenter.getClass();
        x8FlightPlayBackPresenter.removeMessages(1);
        this.x8FlightPlayBackPresenter.currentProgress = this.x8FlightPlayBackPresenter.play2Second * i;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.x8FlightPlayBackPresenter.stopFlightPlayback();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        if (this.x8FlightPlayBackPresenter.mPlayStatus == X8FlightPlayBackPresenter.PlayStatus.Stop) {
            this.x8FlightPlayBackPresenter.sendEmptyMessageDelayed();
        }
        this.x8PlayBackProgressFact.setText(TimerUtil.getInstance().stringForTime(seekBar.getProgress(), true));
        reFreshDroneLineList(seekBar);
        this.x8FlightPlayBackPresenter.playFlightPlayback();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.kernel.base.BaseActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        X8sNavigationBarUtils.hideBottomUIMenu(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) {
            X8sNavigationBarUtils.hideBottomUIMenu(this);
        }
    }

    @Override // com.fimi.kernel.base.BaseActivity
    protected void setStatusBarColor() {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(128);
        StatusBarUtil.StatusBarLightMode(this);
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void initData() {
        Intent intent = getIntent();
        String filePath = intent.getStringExtra(Constants.X8_FLIGHTLOG_PATH);
        this.x8FlightplaybackMain = findViewById(C0885R.C0889id.x8_flightplayback_main);
        this.x8FlightlogTopBarController = new X8FlightlogTopBarController(this.x8FlightplaybackMain, filePath.contains(X8FcLogManager.getInstance().prexCollect), this);
        this.x8FlightlogTopBarController.setListener(this.ix8FlightLogTopBarListener);
        this.showMoreRemoteStatus = (ImageView) findViewById(C0885R.C0889id.show_more_remote_status);
        this.showMoreGpsStatus = (ImageView) findViewById(C0885R.C0889id.show_more_gps_status);
        this.showMoreBatteryStatus = (ImageView) findViewById(C0885R.C0889id.show_more_battery_status);
        this.x8RemoteSimulator = (RemotesimulatorView) findViewById(C0885R.C0889id.x8_remote_simulator);
        this.x8ProgressLoading = (PercentRelativeLayout) findViewById(C0885R.C0889id.x8_progress_loading);
        this.x8PlayBackTotalTime = (TextView) findViewById(C0885R.C0889id.x8_play_back_total_time);
        this.x8PlayBackProgressFact = (TextView) findViewById(C0885R.C0889id.x8_play_back_progress_fact);
        this.x8BtnPaly = (ImageView) findViewById(C0885R.C0889id.x8_btn_paly);
        this.x8SeebarPaly = (SeekBar) findViewById(C0885R.C0889id.x8_seebar_paly);
        this.x8SeebarPaly.setOnSeekBarChangeListener(this);
        this.x8DrontBatteryRl = (PercentRelativeLayout) findViewById(C0885R.C0889id.x8_dront_battery_rl);
        this.x8BatteryTemDesValue = (TextView) findViewById(C0885R.C0889id.x8_battery_tem_des_value);
        this.x8BatteryElectricityDesValue = (TextView) findViewById(C0885R.C0889id.x8_battery_electricity_des_value);
        this.x8BatteryVoltageOneValue = (TextView) findViewById(C0885R.C0889id.x8_battery_voltage_one_value);
        this.x8BatteryVoltageSencondValue = (TextView) findViewById(C0885R.C0889id.x8_battery_voltage_sencond_value);
        this.x8BatteryVoltageThreeValue = (TextView) findViewById(C0885R.C0889id.x8_battery_voltage_three_value);
        this.mFragmentManager = getSupportFragmentManager();
        this.mPlayBackMapFragment = (PlayBackMapFragment) this.mFragmentManager.findFragmentById(C0885R.C0889id.mapFragment);
        if (this.mPlayBackMapFragment == null) {
            this.mPlayBackMapFragment = new PlayBackMapFragment();
            this.mFragmentManager.beginTransaction().add(C0885R.C0889id.mapFragment, this.mPlayBackMapFragment).commit();
        }
        this.mX8MainErrorCodePowerPitchAngleController = new X8MainErrorCodePowerPitchAngleController(this.x8FlightplaybackMain);
        X8DroneInfoStatemManager.setErrorCodeHolder(this.mX8MainErrorCodePowerPitchAngleController);
        this.mX8MainErrorCodePowerPitchAngleController.openUi();
        this.x8FlightPlayBackPresenter = new X8FlightPlayBackPresenter();
        this.x8FlightPlayBackPresenter.setX8ProgressLoading(this.x8ProgressLoading);
        this.x8FlightPlayBackPresenter.setOnFlightPlayBackAction(this);
        this.x8FlightPlayBackPresenter.parseFileDate(filePath);
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void doTrans() {
        this.x8BtnPaly.setOnClickListener(new NoDoubleClickListener(500) { // from class: com.fimi.app.x8s.ui.activity.X8FlightPlaybackActivity.1
            @Override // com.fimi.widget.impl.NoDoubleClickListener
            protected void onNoDoubleClick(View v) {
                if (X8FlightPlaybackActivity.this.x8FlightPlayBackPresenter.mPlayStatus == X8FlightPlayBackPresenter.PlayStatus.Payback) {
                    if (X8FlightPlaybackActivity.this.x8FlightPlayBackPresenter.currentProgress != X8FlightPlaybackActivity.this.x8SeebarPaly.getMax()) {
                        X8FlightPlaybackActivity.this.changePlayButton(C0885R.C0888drawable.x8_selector_flightlog_btn_stop);
                        X8FlightPlaybackActivity.this.x8FlightPlayBackPresenter.mPlayStatus = X8FlightPlayBackPresenter.PlayStatus.Stop;
                    } else {
                        X8FlightPlaybackActivity.this.x8FlightPlayBackPresenter.currentProgress = 0;
                        X8FlightPlaybackActivity.this.changePlayButton(C0885R.C0888drawable.x8_selector_flightlog_btn_play);
                    }
                    X8FlightPlaybackActivity.this.x8FlightPlayBackPresenter.playFlightPlayback();
                    return;
                }
                X8FlightPlaybackActivity.this.x8FlightPlayBackPresenter.stopFlightPlayback();
                X8FlightPlaybackActivity.this.changePlayButton(C0885R.C0888drawable.x8_selector_flightlog_btn_play);
                X8FlightPlaybackActivity.this.x8FlightPlayBackPresenter.mPlayStatus = X8FlightPlayBackPresenter.PlayStatus.Payback;
            }
        });
        this.showMoreRemoteStatus.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.ui.activity.X8FlightPlaybackActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (X8FlightPlaybackActivity.this.x8RemoteSimulator.isShown()) {
                    X8FlightPlaybackActivity.this.changeViewBg(X8FlightPlaybackActivity.this.showMoreRemoteStatus, C0885R.C0888drawable.play_back_remote_more_bg);
                    X8FlightPlaybackActivity.this.x8RemoteSimulator.setVisibility(8);
                    return;
                }
                X8FlightPlaybackActivity.this.changeViewBg(X8FlightPlaybackActivity.this.showMoreRemoteStatus, C0885R.C0888drawable.x8_btn_playback_rc_end);
                X8FlightPlaybackActivity.this.x8RemoteSimulator.setVisibility(0);
            }
        });
        this.showMoreGpsStatus.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.ui.activity.X8FlightPlaybackActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int backType = X8FlightPlaybackActivity.this.mPlayBackMapFragment.changeMapType();
                X8FlightPlaybackActivity.this.changeMapType(backType);
            }
        });
        this.showMoreBatteryStatus.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.ui.activity.X8FlightPlaybackActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (X8FlightPlaybackActivity.this.x8DrontBatteryRl.isShown()) {
                    X8FlightPlaybackActivity.this.changeViewBg(X8FlightPlaybackActivity.this.showMoreBatteryStatus, C0885R.C0888drawable.play_back_battery_more_bg);
                    X8FlightPlaybackActivity.this.x8DrontBatteryRl.setVisibility(8);
                    return;
                }
                X8FlightPlaybackActivity.this.changeViewBg(X8FlightPlaybackActivity.this.showMoreBatteryStatus, C0885R.C0888drawable.x8_btn_playback_battery_info_end);
                X8FlightPlaybackActivity.this.x8DrontBatteryRl.setVisibility(0);
            }
        });
    }

    @Override // com.fimi.kernel.base.BaseActivity
    protected int getContentViewLayoutID() {
        return C0885R.layout.activity_x8_flightplayback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeMapType(int backType) {
        if (backType == 1) {
            changeViewBg(this.showMoreGpsStatus, C0885R.C0888drawable.x8_btn_playback_satellite_map);
        } else {
            changeViewBg(this.showMoreGpsStatus, C0885R.C0888drawable.x8_btn_playback_satellite_map_end);
        }
    }

    @Override // com.fimi.app.x8s.interfaces.UpdateChangeMapTypeInterface
    public void update(int currentType) {
        changeMapType(currentType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeViewBg(ImageView view, int resID) {
        view.setImageResource(resID);
    }

    @Override // com.fimi.x8sdk.ivew.IFlightPlayBackAction
    public void parseFileDateEnd(int totalTime, boolean isParseFileSucceed) {
        this.isParseFileSucceed = isParseFileSucceed;
        this.x8ProgressLoading.setVisibility(8);
        String totalTimeStr = TimerUtil.getInstance().stringForTime(totalTime, true);
        this.x8PlayBackTotalTime.setText("/" + totalTimeStr);
        this.x8SeebarPaly.setMax(totalTime);
    }

    @Override // com.fimi.x8sdk.ivew.IFlightPlayBackAction
    public void showRemoteControlDisconnectState() {
        this.x8FlightlogTopBarController.defaultVal();
        this.x8BatteryTemDesValue.setText("0??C");
        this.x8BatteryElectricityDesValue.setText("0 A");
        this.x8BatteryVoltageOneValue.setText("0 V");
        this.x8BatteryVoltageSencondValue.setText("0 V");
        this.x8BatteryVoltageThreeValue.setText("0 V");
        this.x8RemoteSimulator.showDefaultView();
    }

    @Override // com.fimi.x8sdk.ivew.IFlightPlayBackAction
    public void showDroneDisconnectState() {
        this.x8FlightlogTopBarController.onDisconnectDroneVal();
        this.x8BatteryTemDesValue.setText("0??C");
        this.x8BatteryElectricityDesValue.setText("0 A");
        this.x8BatteryVoltageOneValue.setText("0 V");
        this.x8BatteryVoltageSencondValue.setText("0 V");
        this.x8BatteryVoltageThreeValue.setText("0 V");
    }

    @Override // com.fimi.x8sdk.ivew.IFlightPlayBackAction
    public void setPlaybackProgress(int progress, boolean isPlayEnd) {
        this.x8SeebarPaly.setProgress(progress);
        this.x8PlayBackProgressFact.setText(TimerUtil.getInstance().stringForTime(progress, true));
        if (isPlayEnd) {
            changePlayButton(C0885R.C0888drawable.x8_selector_flightlog_btn_play);
            this.mPlayBackMapFragment.getListDronePoint().clear();
            this.mX8MainErrorCodePowerPitchAngleController.closeUi();
        }
    }

    @Override // com.fimi.x8sdk.ivew.IFlightPlayBackAction
    public void showAutoFcHeart(AutoFcHeartPlayback autoFcHeartPlayback, DroneStateFlightPlayback droneStateFlightPlayback) {
        boolean z = false;
        X8FlightlogTopBarController x8FlightlogTopBarController = this.x8FlightlogTopBarController;
        if (this.lowPowerValue != 0 && this.lowPowerValue >= this.remainPercentage) {
            z = true;
        }
        x8FlightlogTopBarController.onFcHeart(autoFcHeartPlayback, z);
        this.x8FlightlogTopBarController.onConnectedState(droneStateFlightPlayback, autoFcHeartPlayback);
        this.x8FlightlogTopBarController.onPowerChange(droneStateFlightPlayback.getAutoFcHeart().getPowerConRate());
    }

    @Override // com.fimi.x8sdk.ivew.IFlightPlayBackAction
    public void showAutoFcSignalState(AutoFcSignalStatePlayback autoFcSignalStatePlayback) {
        this.x8FlightlogTopBarController.showSingal(autoFcSignalStatePlayback);
    }

    @Override // com.fimi.x8sdk.ivew.IFlightPlayBackAction
    public void showAutoFcBattery(AutoFcBatteryPlayback autoFcBatteryPlayback) {
        this.remainPercentage = autoFcBatteryPlayback.getRemainPercentage();
        this.x8FlightlogTopBarController.onBatteryListener(autoFcBatteryPlayback);
        showBatteryInfo(autoFcBatteryPlayback);
    }

    @Override // com.fimi.x8sdk.ivew.IFlightPlayBackAction
    public void showAutoFcErrCode(List<X8ErrorCodeInfo> x8ErrorCodeInfos) {
        this.mX8MainErrorCodePowerPitchAngleController.onErrorCode(x8ErrorCodeInfos);
    }

    @Override // com.fimi.x8sdk.ivew.IFlightPlayBackAction
    public void showAutoFcSportState(AutoFcSportStatePlayback autoFcSportStatePlayback) {
        this.x8FlightlogTopBarController.showSportState(autoFcSportStatePlayback);
        this.mPlayBackMapFragment.handlerDroneMarker(autoFcSportStatePlayback);
    }

    @Override // com.fimi.x8sdk.ivew.IFlightPlayBackAction
    public void showAutoHomeInfo(AutoHomeInfoPlayback autoHomeInfoPlayback) {
        this.mPlayBackMapFragment.handlerHomePoint(autoHomeInfoPlayback);
    }

    @Override // com.fimi.x8sdk.ivew.IFlightPlayBackAction
    public void showAutoRockerState(AutoRockerStatePlayback autoRockerStatePlayback) {
        boolean z = false;
        this.rockerKeyMessage = autoRockerStatePlayback.getRockerKeyMessage();
        this.isBatteryPress = (this.rockerKeyMessage & 1) == 1;
        this.isLandPress = ((this.rockerKeyMessage >> 1) & 1) == 1;
        if (((this.rockerKeyMessage >> 4) & 1) == 0) {
            z = true;
        }
        this.isReturnPress = z;
        if (this.mMode == 1) {
            this.x8RemoteSimulator.setCurrentRemote(autoRockerStatePlayback.getRc0(), autoRockerStatePlayback.getRc2(), autoRockerStatePlayback.getRc1(), autoRockerStatePlayback.getRc3(), this.isBatteryPress, this.isLandPress, this.isReturnPress);
        } else if (this.mMode == 2) {
            this.x8RemoteSimulator.setCurrentRemote(autoRockerStatePlayback.getRc0(), autoRockerStatePlayback.getRc1(), autoRockerStatePlayback.getRc2(), autoRockerStatePlayback.getRc3(), this.isBatteryPress, this.isLandPress, this.isReturnPress);
        } else if (this.mMode == 3) {
            this.x8RemoteSimulator.setCurrentRemote(autoRockerStatePlayback.getRc3(), autoRockerStatePlayback.getRc1(), autoRockerStatePlayback.getRc2(), autoRockerStatePlayback.getRc0(), this.isBatteryPress, this.isLandPress, this.isReturnPress);
        } else {
            this.x8RemoteSimulator.setCurrentRemote(autoRockerStatePlayback.getRc3(), autoRockerStatePlayback.getRc1(), autoRockerStatePlayback.getRc2(), autoRockerStatePlayback.getRc0(), this.isBatteryPress, this.isLandPress, this.isReturnPress);
        }
        showRcMode(this.mMode);
    }

    @Override // com.fimi.x8sdk.ivew.IFlightPlayBackAction
    public void showAutoRelayHeart(AutoRelayHeartPlayback autoRelayHeartPlayback) {
        this.x8FlightlogTopBarController.showRelayHeart(autoRelayHeartPlayback);
    }

    @Override // com.fimi.x8sdk.ivew.IFlightPlayBackAction
    public void showGetRcMode(AckGetRcMode ackGetRcMode) {
        this.mMode = ackGetRcMode.getMode();
        showRcMode(this.mMode);
    }

    @Override // com.fimi.x8sdk.ivew.IFlightPlayBackAction
    public void showGetLowPowerOpt(AckGetLowPowerOpt ackGetLowPowerOpt) {
        this.lowPowerValue = ackGetLowPowerOpt.getLowPowerValue();
    }

    private void showBatteryInfo(AutoFcBatteryPlayback autoFcBatteryPlayback) {
        this.x8BatteryTemDesValue.setText(autoFcBatteryPlayback.getTemperature() + "??C");
        this.x8BatteryElectricityDesValue.setText(NumberUtil.decimalPointStr(autoFcBatteryPlayback.getCurrents(), 2) + "A");
        this.x8BatteryVoltageOneValue.setText(NumberUtil.decimalPointStr(autoFcBatteryPlayback.getCell1Voltage(), 2) + "V");
        this.x8BatteryVoltageSencondValue.setText(NumberUtil.decimalPointStr(autoFcBatteryPlayback.getCell2Voltage(), 2) + "V");
        this.x8BatteryVoltageThreeValue.setText(NumberUtil.decimalPointStr(autoFcBatteryPlayback.getCell3Voltage(), 2) + "V");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changePlayButton(int res) {
        this.x8BtnPaly.setImageResource(res);
    }

    private void reFreshDroneLineList(SeekBar seekBar) {
        int count;
        List<LatLng> listDronePoint = this.mPlayBackMapFragment.getListDronePoint();
        listDronePoint.clear();
        float precent = seekBar.getProgress() / (seekBar.getMax() * 1.0f);
        if (this.x8FlightPlayBackPresenter.listLinkedHashMap != null && (count = (int) (this.x8FlightPlayBackPresenter.listLinkedHashMap.size() * precent)) < this.x8FlightPlayBackPresenter.listLinkedHashMap.size()) {
            for (int x = 0; x < count; x++) {
                List<Object> list = this.x8FlightPlayBackPresenter.listLinkedHashMap.get(Integer.valueOf(x));
                if (list != null) {
                    for (Object obj : list) {
                        if (obj != null && (obj instanceof AutoFcSportStatePlayback)) {
                            AutoFcSportStatePlayback autoFcSportStatePlayback = (AutoFcSportStatePlayback) obj;
                            LatLng latLng = new LatLng(autoFcSportStatePlayback.getLatitude(), autoFcSportStatePlayback.getLongitude());
                            listDronePoint.add(latLng);
                        }
                    }
                }
            }
            if (listDronePoint.size() > 0) {
                this.mPlayBackMapFragment.moveDroneMarker(listDronePoint.get(listDronePoint.size() - 1), listDronePoint);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.kernel.base.BaseActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.x8FlightPlayBackPresenter.stopFlightPlayback();
    }

    private void showRcMode(int mode) {
        switch (mode) {
            case 1:
                this.rockerMode = getString(C0885R.string.x8_rc_setting_america_rocker);
                break;
            case 2:
                this.rockerMode = getString(C0885R.string.x8_rc_setting_japanese_rocker);
                break;
            case 3:
                this.rockerMode = getString(C0885R.string.x8_rc_setting_chinese_rocker);
                break;
            default:
                this.rockerMode = " ";
                break;
        }
        this.x8RemoteSimulator.showGetRcModeText(this.rockerMode);
    }
}
