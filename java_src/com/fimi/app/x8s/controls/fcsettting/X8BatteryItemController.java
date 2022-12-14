package com.fimi.app.x8s.controls.fcsettting;

import android.content.Context;
import android.view.View;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.interfaces.AbsX8Controllers;
import com.fimi.app.x8s.interfaces.IX8ValueSeakBarViewListener;
import com.fimi.app.x8s.widget.X8BatteryLayout;
import com.fimi.app.x8s.widget.X8BatteryView;
import com.fimi.app.x8s.widget.X8DoubleCustomDialog;
import com.fimi.app.x8s.widget.X8SingleCustomDialog;
import com.fimi.app.x8s.widget.X8TabHost;
import com.fimi.app.x8s.widget.X8ValueSeakBarView;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.kernel.store.shared.SPStoreManager;
import com.fimi.widget.SwitchButton;
import com.fimi.widget.X8ToastUtil;
import com.fimi.x8sdk.common.GlobalConfig;
import com.fimi.x8sdk.controller.FcCtrlManager;
import com.fimi.x8sdk.dataparser.AckGetLowPowerOpt;
import com.fimi.x8sdk.dataparser.AutoFcBattery;
import com.fimi.x8sdk.modulestate.StateManager;
/* loaded from: classes.dex */
public class X8BatteryItemController extends AbsX8Controllers implements View.OnClickListener {
    private static final int SERIOUS_LOWPOWER_VALUE = 15;
    private static final String SP_UPDATE_CAP_TIP = "sp_update_cap_tip";
    private int COLOR_ABNORMAL_YELLOW;
    private int COLOR_LOW_TEMP_BLUE;
    private int COLOR_NORMAL_WHITE;
    private int COLOR_SERIOUS_RED;
    private X8BatteryLayout batteryLayout1;
    private X8BatteryLayout batteryLayout2;
    private X8BatteryLayout batteryLayout3;
    private ImageButton btnCapacityNotUpdate;
    private Context context;
    private FcCtrlManager fcCtrlManager;
    private boolean isRequested = false;
    private View rlItem;
    private X8ValueSeakBarView sbLowPowerWarning;
    private X8ValueSeakBarView sbLowPowerWarningSerious;
    private ViewStub stubItem;
    private SwitchButton swbLowLanding;
    private SwitchButton swbLowReturn;
    private X8TabHost tbLowPowerOperation;
    private X8TabHost tbLowPowerSeriousOperation;
    private TextView tvOverReleaseTimes;
    private TextView tvRecycleTimes;
    private TextView tvRemainCapacity;
    private TextView tvRemainElectric;
    private TextView tvTemperature;
    X8SingleCustomDialog updateDialog;
    private Button x8BatteryBtnRestParams;
    private X8DoubleCustomDialog x8DoubleCustomDialog;

    public X8BatteryItemController(View rootView) {
        super(rootView);
        this.COLOR_LOW_TEMP_BLUE = 0;
        this.COLOR_NORMAL_WHITE = 0;
        this.COLOR_ABNORMAL_YELLOW = 0;
        this.COLOR_SERIOUS_RED = 0;
        this.stubItem = (ViewStub) rootView.findViewById(C0885R.C0889id.stub_battery_item);
        this.COLOR_LOW_TEMP_BLUE = rootView.getContext().getResources().getColor(C0885R.C0887color.x8_battery_state_low_temperature_blue);
        this.COLOR_NORMAL_WHITE = rootView.getContext().getResources().getColor(C0885R.C0887color.x8_battery_state_normal);
        this.COLOR_ABNORMAL_YELLOW = rootView.getContext().getResources().getColor(C0885R.C0887color.x8_battery_state_abnormal);
        this.COLOR_SERIOUS_RED = rootView.getContext().getResources().getColor(C0885R.C0887color.x8_battery_state_serious);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
    }

    private boolean isNeedShowUpdateCapDialog() {
        return !SPStoreManager.getInstance().getBoolean(SP_UPDATE_CAP_TIP);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void onDroneConnected(boolean b) {
        boolean z = true;
        if (this.isShow && this.rlItem != null) {
            if (!b) {
                this.tvRemainElectric.setText(this.rootView.getContext().getString(C0885R.string.x8_default_na));
                this.tvRemainCapacity.setText(this.rootView.getContext().getString(C0885R.string.x8_default_na));
                this.tvRecycleTimes.setText(this.rootView.getContext().getString(C0885R.string.x8_default_na));
                this.tvTemperature.setText(this.rootView.getContext().getString(C0885R.string.x8_default_na));
                this.tvOverReleaseTimes.setText(this.rootView.getContext().getString(C0885R.string.x8_default_na));
                setViewEnable(false);
                this.isRequested = false;
            } else if (!this.isRequested) {
                setViewEnable(true);
                requestValue();
                this.isRequested = true;
            }
            boolean isOngroud = StateManager.getInstance().getX8Drone().isOnGround();
            Button button = this.x8BatteryBtnRestParams;
            if (!isOngroud || !b) {
                z = false;
            }
            button.setEnabled(z);
            this.x8BatteryBtnRestParams.setAlpha((!isOngroud || !b) ? 0.4f : 1.0f);
        }
    }

    private void requestValue() {
        if (this.fcCtrlManager != null) {
            this.fcCtrlManager.getLowPowerOpt(new UiCallBackListener<AckGetLowPowerOpt>() { // from class: com.fimi.app.x8s.controls.fcsettting.X8BatteryItemController.1
                @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                public void onComplete(CmdResult cmdResult, AckGetLowPowerOpt lowPowerOpt) {
                    if (cmdResult.isSuccess()) {
                        X8BatteryItemController.this.sbLowPowerWarning.setProgress(lowPowerOpt.getLowPowerValue());
                        X8BatteryItemController.this.sbLowPowerWarning.setImbConfirmEnable(false);
                        X8BatteryItemController.this.sbLowPowerWarningSerious.setProgress(lowPowerOpt.getSeriousLowPowerValue());
                        X8BatteryItemController.this.sbLowPowerWarningSerious.setImbConfirmEnable(false);
                        X8BatteryItemController.this.tbLowPowerOperation.setSelect(lowPowerOpt.getLowPowerOpt());
                        X8BatteryItemController.this.tbLowPowerSeriousOperation.setSelect(lowPowerOpt.getSeriousLowPowerOpt());
                    }
                }
            });
        }
    }

    public void setViewEnable(boolean b) {
        float f = 1.0f;
        this.sbLowPowerWarning.setEnabled(b);
        this.sbLowPowerWarning.setViewEnable(b);
        this.sbLowPowerWarningSerious.setEnabled(b);
        this.sbLowPowerWarningSerious.setViewEnable(b);
        this.tbLowPowerOperation.setEnabled(b);
        this.tbLowPowerSeriousOperation.setEnabled(b);
        this.tbLowPowerOperation.setAlpha(b ? 1.0f : 0.4f);
        this.tbLowPowerSeriousOperation.setAlpha(b ? 1.0f : 0.4f);
        this.swbLowReturn.setEnabled(b);
        this.swbLowLanding.setEnabled(b);
        this.swbLowReturn.setAlpha(b ? 1.0f : 0.4f);
        SwitchButton switchButton = this.swbLowLanding;
        if (!b) {
            f = 0.4f;
        }
        switchButton.setAlpha(f);
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void showItem() {
        this.isShow = true;
        if (this.rlItem == null) {
            View view = this.stubItem.inflate();
            this.rlItem = view.findViewById(C0885R.C0889id.x8_rl_main_battery_item);
            this.context = this.rootView.getContext();
            this.batteryLayout1 = (X8BatteryLayout) this.rootView.findViewById(C0885R.C0889id.layout_battery_core1);
            this.batteryLayout2 = (X8BatteryLayout) this.rootView.findViewById(C0885R.C0889id.layout_battery_core2);
            this.batteryLayout3 = (X8BatteryLayout) this.rootView.findViewById(C0885R.C0889id.layout_battery_core3);
            this.tvRemainElectric = (TextView) this.rootView.findViewById(C0885R.C0889id.tv_remain_electric);
            this.tvRemainCapacity = (TextView) this.rootView.findViewById(C0885R.C0889id.tv_remain_capacity);
            this.btnCapacityNotUpdate = (ImageButton) this.rootView.findViewById(C0885R.C0889id.btn_capacity_not_update);
            this.tvRecycleTimes = (TextView) this.rootView.findViewById(C0885R.C0889id.tv_recycle_times);
            this.tvTemperature = (TextView) this.rootView.findViewById(C0885R.C0889id.tv_temperature);
            this.tvOverReleaseTimes = (TextView) this.rootView.findViewById(C0885R.C0889id.tv_over_release_times);
            this.sbLowPowerWarning = (X8ValueSeakBarView) this.rootView.findViewById(C0885R.C0889id.vsb_low_power_warning);
            this.sbLowPowerWarningSerious = (X8ValueSeakBarView) this.rootView.findViewById(C0885R.C0889id.vsb_low_power_serious_warning);
            this.tbLowPowerOperation = (X8TabHost) this.rootView.findViewById(C0885R.C0889id.th_low_power_operation);
            this.tbLowPowerSeriousOperation = (X8TabHost) this.rootView.findViewById(C0885R.C0889id.th_low_power_operation_serious);
            this.swbLowReturn = (SwitchButton) this.rootView.findViewById(C0885R.C0889id.swb_low_power_return);
            this.swbLowLanding = (SwitchButton) this.rootView.findViewById(C0885R.C0889id.swb_low_power_landing);
            this.x8BatteryBtnRestParams = (Button) this.rootView.findViewById(C0885R.C0889id.x8_battery_btn_rest_params);
            this.x8BatteryBtnRestParams.setOnClickListener(this);
            this.swbLowReturn.setOnSwitchListener(new SwitchButton.OnSwitchListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8BatteryItemController.2
                @Override // com.fimi.widget.SwitchButton.OnSwitchListener
                public void onSwitch(View view2, boolean on) {
                    if (on) {
                        GlobalConfig.getInstance().setLowReturn(false);
                        X8BatteryItemController.this.swbLowReturn.onSwitch(false);
                        return;
                    }
                    GlobalConfig.getInstance().setLowReturn(true);
                    X8BatteryItemController.this.swbLowReturn.onSwitch(true);
                }
            });
            this.swbLowLanding.setOnSwitchListener(new SwitchButton.OnSwitchListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8BatteryItemController.3
                @Override // com.fimi.widget.SwitchButton.OnSwitchListener
                public void onSwitch(View view2, boolean on) {
                    if (on) {
                        GlobalConfig.getInstance().setLowLanding(false);
                        X8BatteryItemController.this.swbLowLanding.onSwitch(false);
                        return;
                    }
                    GlobalConfig.getInstance().setLowLanding(true);
                    X8BatteryItemController.this.swbLowLanding.onSwitch(true);
                }
            });
            this.btnCapacityNotUpdate.setOnClickListener(this);
            this.sbLowPowerWarning.setListener(new IX8ValueSeakBarViewListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8BatteryItemController.4
                @Override // com.fimi.app.x8s.interfaces.IX8ValueSeakBarViewListener
                public void onSelect(boolean b) {
                    X8BatteryItemController.this.sbLowPowerWarningSerious.onOtherSelect();
                }
            });
            this.sbLowPowerWarning.setConfirmListener(new X8ValueSeakBarView.OnProgressConfirmListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8BatteryItemController.5
                @Override // com.fimi.app.x8s.widget.X8ValueSeakBarView.OnProgressConfirmListener
                public void onConfirm(float value) {
                    if (value <= X8BatteryItemController.this.sbLowPowerWarningSerious.getCurrentValue()) {
                        X8ToastUtil.showToast(X8BatteryItemController.this.context, X8BatteryItemController.this.context.getString(C0885R.string.x8_battery_setting_must_less_than_serious), 1);
                    } else {
                        X8BatteryItemController.this.setLowPowerOpt(0, false);
                    }
                }
            });
            this.sbLowPowerWarningSerious.setConfirmListener(new X8ValueSeakBarView.OnProgressConfirmListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8BatteryItemController.6
                @Override // com.fimi.app.x8s.widget.X8ValueSeakBarView.OnProgressConfirmListener
                public void onConfirm(float value) {
                    if (value >= X8BatteryItemController.this.sbLowPowerWarning.getCurrentValue()) {
                        X8ToastUtil.showToast(X8BatteryItemController.this.context, X8BatteryItemController.this.context.getString(C0885R.string.x8_battery_setting_must_large_than_low), 1);
                    } else {
                        X8BatteryItemController.this.setLowPowerOpt(1, false);
                    }
                }
            });
            this.sbLowPowerWarningSerious.setListener(new IX8ValueSeakBarViewListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8BatteryItemController.7
                @Override // com.fimi.app.x8s.interfaces.IX8ValueSeakBarViewListener
                public void onSelect(boolean b) {
                    X8BatteryItemController.this.sbLowPowerWarning.onOtherSelect();
                }
            });
            this.tbLowPowerOperation.setOnSelectListener(new X8TabHost.OnSelectListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8BatteryItemController.8
                @Override // com.fimi.app.x8s.widget.X8TabHost.OnSelectListener
                public void onSelect(int index, String text, int last) {
                    X8BatteryItemController.this.setLowPowerOpt(2, false);
                }
            });
            this.tbLowPowerSeriousOperation.setOnSelectListener(new X8TabHost.OnSelectListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8BatteryItemController.9
                @Override // com.fimi.app.x8s.widget.X8TabHost.OnSelectListener
                public void onSelect(int index, String text, int last) {
                    X8BatteryItemController.this.setLowPowerOpt(3, false);
                }
            });
        }
        this.rlItem.setVisibility(0);
        this.swbLowReturn.setSwitchState(GlobalConfig.getInstance().isLowReturn());
        this.swbLowLanding.setSwitchState(GlobalConfig.getInstance().isLowLanding());
    }

    public void setLowPowerOpt(final int type, final boolean isReset) {
        final int lowPowerValue = (int) this.sbLowPowerWarning.getCurrentValue();
        int seriousLowPowerValue = (int) this.sbLowPowerWarningSerious.getCurrentValue();
        int lowPowerOpt = this.tbLowPowerOperation.getSelectIndex();
        int seriousLowPowerOpt = this.tbLowPowerSeriousOperation.getSelectIndex();
        this.fcCtrlManager.setLowPowerOpt(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8BatteryItemController.10
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                    switch (type) {
                        case 0:
                            X8BatteryItemController.this.sbLowPowerWarning.setImbConfirmEnable(false);
                            StateManager.getInstance().getX8Drone().setLowPowerValue(lowPowerValue);
                            if (isReset) {
                                X8ToastUtil.showToast(X8BatteryItemController.this.context, X8BatteryItemController.this.context.getString(C0885R.string.x8_rc_reset_params_successd), 1);
                                return;
                            }
                            return;
                        case 1:
                            X8BatteryItemController.this.sbLowPowerWarningSerious.setImbConfirmEnable(false);
                            return;
                        case 2:
                        default:
                            return;
                    }
                } else if (type == 0 && isReset) {
                    X8ToastUtil.showToast(X8BatteryItemController.this.context, X8BatteryItemController.this.context.getString(C0885R.string.x8_battery_reset_params_hint_failed), 1);
                }
            }
        }, lowPowerValue, seriousLowPowerValue, lowPowerOpt, seriousLowPowerOpt);
    }

    public void onBatteryReceive(AutoFcBattery autoFcBattery) {
        if (this.isShow) {
            double cell1voltage = autoFcBattery.getCell1Voltage();
            double cell2voltage = autoFcBattery.getCell2Voltage();
            double cell3voltage = autoFcBattery.getCell3Voltage();
            int dischargeCnt = autoFcBattery.getUvc();
            this.batteryLayout1.setData(cell1voltage, cell2voltage, cell3voltage, dischargeCnt);
            this.batteryLayout2.setData(cell2voltage, cell1voltage, cell3voltage, dischargeCnt);
            this.batteryLayout3.setData(cell3voltage, cell2voltage, cell1voltage, dischargeCnt);
            int curCapacity = autoFcBattery.getCurrentCapacity();
            int totalCapacity = autoFcBattery.getTotalCapacity();
            int percent = autoFcBattery.getRemainPercentage();
            setRemainElectric(percent);
            setRemainCapacity(curCapacity, totalCapacity, autoFcBattery.getRcNotUpdateCnt());
            setRecycleTimes(percent, autoFcBattery.getCc());
            setTemperature(autoFcBattery.getTemperature());
            setDischargeCnt(dischargeCnt, cell1voltage, cell2voltage, cell3voltage);
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void closeItem() {
        this.isShow = false;
        if (this.rlItem != null) {
            this.rlItem.setVisibility(8);
        }
    }

    private void setRemainElectric(int percent) {
        this.tvRemainElectric.setText(percent + "%");
        int lowPowerValue = (int) this.sbLowPowerWarning.getCurrentValue();
        int currentValue = (int) this.sbLowPowerWarningSerious.getCurrentValue();
        if (15 <= percent && percent < lowPowerValue) {
            this.tvRemainElectric.setTextColor(X8BatteryView.COLOR_ABNORMAL_YELLOW);
        } else if (percent < 15) {
            this.tvRemainElectric.setTextColor(X8BatteryView.COLOR_SERIOUS_RED);
        } else {
            this.tvRemainElectric.setTextColor(X8BatteryView.COLOR_NORMAL_WHITE);
        }
    }

    private void setRemainCapacity(int curCapacity, int totalCapacity, int capacityNotUpdateTimes) {
        this.tvRemainCapacity.setText(curCapacity + "/" + totalCapacity + this.context.getString(C0885R.string.x8_unit_mah));
    }

    private void setRecycleTimes(int percent, int notUpdateTimes) {
        this.tvRecycleTimes.setText(String.valueOf(notUpdateTimes));
        if (notUpdateTimes > 20) {
            if (isNeedShowUpdateCapDialog()) {
                showUpdateDialog();
            }
            this.btnCapacityNotUpdate.setVisibility(0);
            return;
        }
        this.btnCapacityNotUpdate.setVisibility(8);
    }

    private void setTemperature(float temperature) {
        String state = "";
        if (-10.0f < temperature && temperature < 10.0f) {
            state = this.context.getString(C0885R.string.x8_battery_setting_low_temperature);
            this.tvTemperature.setTextColor(this.COLOR_LOW_TEMP_BLUE);
        } else if (10.0f <= temperature && temperature <= 75.0f) {
            state = this.context.getString(C0885R.string.x8_battery_setting_normal_temperature);
            this.tvTemperature.setTextColor(this.COLOR_NORMAL_WHITE);
        } else if (75.0f < temperature && temperature <= 90.0f) {
            state = this.context.getString(C0885R.string.x8_battery_setting_high_temperature);
            this.tvTemperature.setTextColor(this.COLOR_SERIOUS_RED);
        }
        this.tvTemperature.setText(String.format(this.context.getString(C0885R.string.x8_battery_setting_temperature_format), "" + temperature, state));
        if (temperature < 0.0f) {
            X8ToastUtil.showToast(this.context, "????????????", 1);
        }
    }

    public void setDischargeCnt(int dischargeCnt, double voltage1, double voltage2, double voltage3) {
        if (voltage1 < 3.0d) {
            dischargeCnt++;
        }
        if (voltage2 < 3.0d) {
            dischargeCnt++;
        }
        if (voltage3 < 3.0d) {
            dischargeCnt++;
        }
        if (dischargeCnt >= 5) {
            this.tvOverReleaseTimes.setText(String.valueOf(dischargeCnt));
            this.tvOverReleaseTimes.setTextColor(this.COLOR_SERIOUS_RED);
            return;
        }
        this.tvOverReleaseTimes.setText(dischargeCnt == 0 ? this.context.getString(C0885R.string.x8_battery_setting_never_release) : String.valueOf(dischargeCnt));
        this.tvOverReleaseTimes.setTextColor(this.COLOR_NORMAL_WHITE);
    }

    private void showUpdateDialog() {
        if (this.updateDialog == null) {
            this.updateDialog = new X8SingleCustomDialog(this.context, getString(C0885R.string.x8_battery_setting_update_capacity_tittle), getString(C0885R.string.x8_battery_setting_update_capacity_content), new X8SingleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8BatteryItemController.11
                @Override // com.fimi.app.x8s.widget.X8SingleCustomDialog.onDialogButtonClickListener
                public void onSingleButtonClick() {
                }
            });
        }
        SPStoreManager.getInstance().saveBoolean(SP_UPDATE_CAP_TIP, true);
        this.updateDialog.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int i = v.getId();
        if (i == C0885R.C0889id.btn_capacity_not_update) {
            showUpdateDialog();
        } else if (i == C0885R.C0889id.x8_battery_btn_rest_params) {
            showRestParamDialog();
        }
    }

    public void showRestParamDialog() {
        if (this.x8DoubleCustomDialog == null) {
            this.x8DoubleCustomDialog = new X8DoubleCustomDialog(this.rootView.getContext(), this.rootView.getContext().getString(C0885R.string.x8_battery_reset_params), this.rootView.getContext().getString(C0885R.string.x8_battery_reset_params_hint), this.rootView.getContext().getString(C0885R.string.x8_general_rest), new X8DoubleCustomDialog.onDialogButtonClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8BatteryItemController.12
                @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                public void onLeft() {
                }

                @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
                public void onRight() {
                    X8BatteryItemController.this.restBatteryParams();
                }
            });
        }
        this.x8DoubleCustomDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restBatteryParams() {
        this.sbLowPowerWarning.setProgress(30);
        setLowPowerOpt(0, true);
        if (!this.swbLowReturn.getToggleOn()) {
            this.swbLowReturn.setSwitchState(true);
            GlobalConfig.getInstance().setLowReturn(true);
        }
        if (!this.swbLowLanding.getToggleOn()) {
            this.swbLowLanding.setSwitchState(true);
            GlobalConfig.getInstance().setLowLanding(true);
        }
    }

    public void setFcCtrlManager(FcCtrlManager fcCtrlManager) {
        this.fcCtrlManager = fcCtrlManager;
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public boolean onClickBackKey() {
        return false;
    }
}
