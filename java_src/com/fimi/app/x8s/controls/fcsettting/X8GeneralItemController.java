package com.fimi.app.x8s.controls.fcsettting;

import android.content.Context;
import android.view.View;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.controls.fcsettting.X8RestSystemController;
import com.fimi.app.x8s.interfaces.AbsX8Controllers;
import com.fimi.app.x8s.interfaces.IX8GeneralItemControllerListerner;
import com.fimi.app.x8s.tools.X8NumberUtil;
import com.fimi.app.x8s.widget.X8TabHost;
import com.fimi.kernel.percent.PercentRelativeLayout;
import com.fimi.kernel.store.shared.SPStoreManager;
import com.fimi.widget.SwitchButton;
import com.fimi.x8sdk.common.Constants;
import com.fimi.x8sdk.common.GlobalConfig;
import com.fimi.x8sdk.controller.FcCtrlManager;
import com.fimi.x8sdk.controller.X8GimbalManager;
import com.fimi.x8sdk.map.MapType;
import com.fimi.x8sdk.modulestate.StateManager;
/* loaded from: classes.dex */
public class X8GeneralItemController extends AbsX8Controllers {
    private Button btnRestParams;
    private FcCtrlManager fcCtrlManager;
    private LinearLayout frequencyPoint;
    private X8GimbalManager gimbalManager;
    private Context mContext;
    private IX8GeneralItemControllerListerner mListerner;
    private SwitchButton mSbGoogleMap;
    private SwitchButton mSbMapRectifyDeviation;
    private SwitchButton mSbShowLog;
    private X8TabHost mThMap;
    private X8TabHost mThUnity;
    private PercentRelativeLayout mllVersion;
    private LinearLayout modifyMode;
    X8RestSystemController.OnRestSystemListener onRestSystemListener = new X8RestSystemController.OnRestSystemListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GeneralItemController.1
        @Override // com.fimi.app.x8s.controls.fcsettting.X8RestSystemController.OnRestSystemListener
        public void onStart() {
            X8GeneralItemController.this.btnRestParams.setVisibility(8);
            X8GeneralItemController.this.pbResetParams.setVisibility(0);
        }

        @Override // com.fimi.app.x8s.controls.fcsettting.X8RestSystemController.OnRestSystemListener
        public void onFinish() {
            X8GeneralItemController.this.btnRestParams.setVisibility(0);
            X8GeneralItemController.this.pbResetParams.setVisibility(8);
            if (X8GeneralItemController.this.mListerner != null) {
                X8GeneralItemController.this.mListerner.switchMapStyle(Constants.X8_GENERAL_MAP_STYLE_NORMAL);
                X8GeneralItemController.this.mThMap.setSelect(0);
            }
            if (X8GeneralItemController.this.mListerner != null) {
                X8GeneralItemController.this.mListerner.switchUnity(true);
                X8GeneralItemController.this.mThUnity.setSelect(0);
                X8NumberUtil.resetPrexString(X8GeneralItemController.this.rootView.getContext());
            }
        }
    };
    private ProgressBar pbResetParams;
    X8RestSystemController restSystemController;
    private View rlFcItem;
    private ViewStub stubFcItem;
    private LinearLayout x8LlFlightlog;

    public X8GeneralItemController(View rootView) {
        super(rootView);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
        this.stubFcItem = (ViewStub) rootView.findViewById(C0885R.C0889id.stub_general_item);
        this.mContext = rootView.getContext();
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
        if (this.rlFcItem != null) {
            this.restSystemController = new X8RestSystemController(this.mContext, this.gimbalManager, this.fcCtrlManager, this.onRestSystemListener);
            this.mThMap.setOnSelectListener(new X8TabHost.OnSelectListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GeneralItemController.2
                @Override // com.fimi.app.x8s.widget.X8TabHost.OnSelectListener
                public void onSelect(int index, String text, int last) {
                    int mapStyle = index == 0 ? Constants.X8_GENERAL_MAP_STYLE_NORMAL : Constants.X8_GENERAL_MAP_STYLE_SATELLITE;
                    SPStoreManager.getInstance().saveInt(Constants.X8_MAP_STYLE, mapStyle);
                    GlobalConfig.getInstance().setMapStyle(mapStyle);
                    if (X8GeneralItemController.this.mListerner != null) {
                        X8GeneralItemController.this.mListerner.switchMapStyle(mapStyle);
                    }
                }
            });
            this.mThUnity.setOnSelectListener(new X8TabHost.OnSelectListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GeneralItemController.3
                @Override // com.fimi.app.x8s.widget.X8TabHost.OnSelectListener
                public void onSelect(int index, String text, int last) {
                    boolean isShowMetric = index == 0;
                    if (isShowMetric != GlobalConfig.getInstance().isShowmMtric()) {
                        SPStoreManager.getInstance().saveBoolean(Constants.X8_UNITY_OPTION, isShowMetric);
                        GlobalConfig.getInstance().setShowmMtric(isShowMetric);
                        X8NumberUtil.resetPrexString(X8GeneralItemController.this.rootView.getContext());
                        if (X8GeneralItemController.this.mListerner != null) {
                            X8GeneralItemController.this.mListerner.switchUnity(isShowMetric);
                        }
                    }
                }
            });
            this.mllVersion.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GeneralItemController.4
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    if (X8GeneralItemController.this.mListerner != null) {
                        X8GeneralItemController.this.mListerner.setVersion();
                    }
                }
            });
            this.modifyMode.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GeneralItemController.5
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    if (X8GeneralItemController.this.mListerner != null) {
                        X8GeneralItemController.this.mListerner.modifyMode();
                    }
                }
            });
            this.x8LlFlightlog.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GeneralItemController.6
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    if (X8GeneralItemController.this.mListerner != null) {
                        X8GeneralItemController.this.mListerner.openFlightlog();
                    }
                }
            });
            this.btnRestParams.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GeneralItemController.7
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    X8GeneralItemController.this.restSystemController.showRestParamDialog();
                }
            });
            this.frequencyPoint.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GeneralItemController.8
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    if (X8GeneralItemController.this.mListerner != null) {
                        X8GeneralItemController.this.mListerner.frequencyPoint();
                    }
                }
            });
        }
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void onDroneConnected(boolean b) {
        if (this.isShow) {
            if (b && StateManager.getInstance().getX8Drone().isOnGround()) {
                this.btnRestParams.setEnabled(true);
                this.btnRestParams.setAlpha(1.0f);
                return;
            }
            this.btnRestParams.setEnabled(false);
            this.btnRestParams.setAlpha(0.4f);
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void showItem() {
        if (this.rlFcItem == null) {
            View view = this.stubFcItem.inflate();
            this.rlFcItem = view.findViewById(C0885R.C0889id.x8_rl_main_general_item);
            this.mThMap = (X8TabHost) view.findViewById(C0885R.C0889id.th_map);
            this.mSbMapRectifyDeviation = (SwitchButton) view.findViewById(C0885R.C0889id.swb_map_rectify_deviation);
            this.mSbMapRectifyDeviation.setOnSwitchListener(new SwitchButton.OnSwitchListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GeneralItemController.9
                @Override // com.fimi.widget.SwitchButton.OnSwitchListener
                public void onSwitch(View view2, boolean on) {
                    boolean z = true;
                    if (on) {
                        GlobalConfig.getInstance().setRectification(false);
                        SPStoreManager.getInstance().saveBoolean(Constants.X8_MAP_RECTIFYIN_OPTION, false);
                    } else {
                        SPStoreManager.getInstance().saveBoolean(Constants.X8_MAP_RECTIFYIN_OPTION, true);
                        GlobalConfig.getInstance().setRectification(true);
                    }
                    SwitchButton switchButton = X8GeneralItemController.this.mSbMapRectifyDeviation;
                    if (on) {
                        z = false;
                    }
                    switchButton.setSwitchState(z);
                }
            });
            this.mSbMapRectifyDeviation.setSwitchState(GlobalConfig.getInstance().isRectification());
            this.mSbGoogleMap = (SwitchButton) view.findViewById(C0885R.C0889id.swb_google_map);
            this.mThUnity = (X8TabHost) view.findViewById(C0885R.C0889id.th_unity);
            this.mSbShowLog = (SwitchButton) view.findViewById(C0885R.C0889id.swb_show_log);
            this.mllVersion = (PercentRelativeLayout) view.findViewById(C0885R.C0889id.rl_update);
            this.modifyMode = (LinearLayout) view.findViewById(C0885R.C0889id.ll_modify);
            this.x8LlFlightlog = (LinearLayout) view.findViewById(C0885R.C0889id.x8_ll_flightlog);
            this.frequencyPoint = (LinearLayout) view.findViewById(C0885R.C0889id.ll_frequency_point);
            this.mThMap.setSelect(GlobalConfig.getInstance().getMapStyle() == Constants.X8_GENERAL_MAP_STYLE_NORMAL ? 0 : 1);
            this.btnRestParams = (Button) view.findViewById(C0885R.C0889id.btn_rest_params);
            this.pbResetParams = (ProgressBar) view.findViewById(C0885R.C0889id.pb_restsystem_loading);
            this.mSbGoogleMap.onSwitch(GlobalConfig.getInstance().getMapType() == MapType.GoogleMap);
            this.mSbGoogleMap.setEnabled(true);
            this.mSbGoogleMap.setOnSwitchListener(new SwitchButton.OnSwitchListener() { // from class: com.fimi.app.x8s.controls.fcsettting.X8GeneralItemController.10
                @Override // com.fimi.widget.SwitchButton.OnSwitchListener
                public void onSwitch(View view2, boolean on) {
                    if (on) {
                        SPStoreManager.getInstance().saveBoolean(Constants.X8_MAP_OPTION, true);
                        X8GeneralItemController.this.mSbGoogleMap.setSwitchState(false);
                        return;
                    }
                    SPStoreManager.getInstance().saveBoolean(Constants.X8_MAP_OPTION, false);
                    X8GeneralItemController.this.mSbGoogleMap.setSwitchState(true);
                }
            });
            this.mThUnity.setSelect(GlobalConfig.getInstance().isShowmMtric() ? 0 : 1);
            this.mSbShowLog.setSwitchState(GlobalConfig.getInstance().isShowLog());
            initActions();
        }
        this.isShow = true;
        setViewEnable(true);
        this.rlFcItem.setVisibility(0);
    }

    public void setViewEnable(boolean b) {
        this.mThMap.setEnabled(b);
        this.mThUnity.setEnabled(b);
        this.mSbShowLog.setEnabled(b);
        if (b) {
            this.mThMap.setAlpha(1.0f);
            this.mThUnity.setAlpha(1.0f);
            this.mSbShowLog.setAlpha(1.0f);
            return;
        }
        this.mThMap.setAlpha(0.4f);
        this.mThUnity.setAlpha(0.4f);
        this.mSbShowLog.setAlpha(0.4f);
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void closeItem() {
        if (this.rlFcItem != null) {
            this.isShow = false;
            this.rlFcItem.setVisibility(8);
        }
    }

    public void setListerner(IX8GeneralItemControllerListerner listerner) {
        this.mListerner = listerner;
    }

    public void setFcCtrlManager(FcCtrlManager fcCtrlManager) {
        this.fcCtrlManager = fcCtrlManager;
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public boolean onClickBackKey() {
        return false;
    }

    public void setGimbalManager(X8GimbalManager gimbalManager) {
        this.gimbalManager = gimbalManager;
    }
}
