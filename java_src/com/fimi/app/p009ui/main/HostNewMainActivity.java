package com.fimi.app.p009ui.main;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.NonNull;
import android.support.p001v4.content.LocalBroadcastManager;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.alibaba.fastjson.JSON;
import com.fimi.android.app.R;
import com.fimi.apk.DownloadApkService;
import com.fimi.apk.iview.IApkVerisonView;
import com.fimi.apk.presenter.ApkVersionPrenster;
import com.fimi.app.p009ui.main.ProductShowWidget;
import com.fimi.app.presenter.HostMainPresenter;
import com.fimi.host.HostConstants;
import com.fimi.host.HostLogBack;
import com.fimi.host.common.ProductEnum;
import com.fimi.kernel.Constants;
import com.fimi.kernel.base.BaseActivity;
import com.fimi.kernel.network.okhttp.listener.DisposeDataHandle;
import com.fimi.kernel.network.okhttp.listener.DisposeDataListener;
import com.fimi.kernel.percent.PercentRelativeLayout;
import com.fimi.kernel.utils.FontUtil;
import com.fimi.kernel.utils.StatusBarUtil;
import com.fimi.kernel.utils.ThreadUtils;
import com.fimi.libdownfw.ivew.IFirmwareDownView;
import com.fimi.libdownfw.update.DownloadFwSelectActivity;
import com.fimi.libdownfw.update.FindeNewFwDownActivity;
import com.fimi.network.DownFwService;
import com.fimi.network.FwManager;
import com.fimi.network.entity.ApkVersionDto;
import com.fimi.network.entity.NetModel;
import com.fimi.network.entity.UpfirewareDto;
import com.fimi.widget.DialogManager;
import java.util.ArrayList;
import java.util.List;
import org.apache.mina.proxy.handlers.http.ntlm.NTLMConstants;
/* renamed from: com.fimi.app.ui.main.HostNewMainActivity */
/* loaded from: classes.dex */
public class HostNewMainActivity extends BaseActivity implements ProductShowWidget.ChangePositionListener, IFirmwareDownView, IApkVerisonView {
    public static Class[] PRODUCTCLASS;
    Button btnConnect;
    HostMainPresenter hostMainPresenter;
    private ApkVersionPrenster mApkVersionPrenster;
    private LocalChangeLanguageReceiver mLocalChangeLanguageReceiver;
    HostMainHeader mMainHeader;
    ProductShowWidget mProductShow;
    SelectButtonView mSelectButtonView;
    int[] productName;
    int[] slogn;
    TextView tvNoconect;
    TextView tvSafeOpt;
    int positon = 0;
    private boolean isRecreat = false;
    public final int REQUEST_CODE_PERMISSIONS = 1;

    @Override // com.fimi.kernel.base.BaseActivity
    public void initData() {
        ThreadUtils.execute(new Runnable() { // from class: com.fimi.app.ui.main.HostNewMainActivity.1
            @Override // java.lang.Runnable
            public void run() {
                HostNewMainActivity.this.getFwDetail();
            }
        });
        this.mMainHeader = (HostMainHeader) findViewById(R.id.host_main_header);
        this.mProductShow = (ProductShowWidget) findViewById(R.id.product_show_widget);
        this.mProductShow.setPositionListener(this);
        this.mSelectButtonView = (SelectButtonView) findViewById(R.id.select_btn_view);
        this.mSelectButtonView.initView(this.productName.length);
        if (Constants.productType == ProductEnum.FIMIAPP) {
            this.mSelectButtonView.setVisibility(0);
        } else {
            this.mSelectButtonView.setVisibility(4);
        }
        this.tvNoconect = (TextView) findViewById(R.id.tv_noconect);
        this.tvSafeOpt = (TextView) findViewById(R.id.tv_safe_opert);
        this.btnConnect = (Button) findViewById(R.id.btn_connect);
        FontUtil.changeFontLanTing(getAssets(), this.tvNoconect, this.tvSafeOpt);
        this.hostMainPresenter = new HostMainPresenter(this, this);
        if (Constants.productType == ProductEnum.X9) {
            this.hostMainPresenter.requestX9Permissions(this);
        } else if (Constants.productType == ProductEnum.GH2) {
            this.hostMainPresenter.requestPermissions();
        } else {
            this.hostMainPresenter.requestX9Permissions(this);
            this.hostMainPresenter.requestPermissions();
        }
        this.mApkVersionPrenster = new ApkVersionPrenster(this, this);
        changePosition(0);
        this.hostMainPresenter.setProductControler(this.mProductShow);
        registerReciver();
        PercentRelativeLayout.LayoutParams params = (PercentRelativeLayout.LayoutParams) this.mMainHeader.getLayoutParams();
        params.setMargins(0, this.statusBarHeight + this.marginStatus, 0, 0);
        this.mMainHeader.setLayoutParams(params);
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void doTrans() {
        this.btnConnect.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.ui.main.HostNewMainActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                HostNewMainActivity.this.hostMainPresenter.onConnectDevice();
            }
        });
        if (Constants.isRefreshMainView) {
            this.hostMainPresenter.go2DownSelectActivty();
            this.mApkVersionPrenster.getOnlineNewApkFileInfo();
            this.mApkVersionPrenster.setOnShowDialogListerner(new ApkVersionPrenster.onShowDialogListerner() { // from class: com.fimi.app.ui.main.HostNewMainActivity.3
                @Override // com.fimi.apk.presenter.ApkVersionPrenster.onShowDialogListerner
                public void showDialog(ApkVersionDto dto, String savePath) {
                    HostNewMainActivity.this.mApkVersionPrenster.showDialog(dto, savePath);
                }
            });
            Constants.isRefreshMainView = false;
        }
        this.tvSafeOpt.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.ui.main.HostNewMainActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                boolean hasDowned = HostMainPresenter.getUpfireList() != null && HostMainPresenter.getUpfireList().size() > 0;
                boolean isFinish = DownFwService.DownState.Finish.equals(DownFwService.getState());
                if (hasDowned || isFinish) {
                    if (HostMainPresenter.isDownFirmwareTip()) {
                        HostNewMainActivity.this.readyGo(DownloadFwSelectActivity.class);
                    } else {
                        HostNewMainActivity.this.readyGo(FindeNewFwDownActivity.class);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getFwDetail() {
        FwManager x9FwManager = new FwManager();
        x9FwManager.getX9FwNetDetail(new DisposeDataHandle(new DisposeDataListener() { // from class: com.fimi.app.ui.main.HostNewMainActivity.5
            @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
            public void onSuccess(Object responseObj) {
                try {
                    NetModel netModel = (NetModel) JSON.parseObject(responseObj.toString(), NetModel.class);
                    if (netModel.isSuccess() && netModel.getData() != null) {
                        List<UpfirewareDto> fwDtos = JSON.parseArray(netModel.getData().toString(), UpfirewareDto.class);
                        HostConstants.saveFirmwareDetail(fwDtos);
                    }
                } catch (Exception e) {
                    HostConstants.saveFirmwareDetail(new ArrayList());
                    HostLogBack.getInstance().writeLog("固件Json转换异常：" + e.getMessage());
                }
            }

            @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
            public void onFailure(Object reasonObj) {
            }
        }));
    }

    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity, android.support.p001v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        this.hostMainPresenter.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    @Override // com.fimi.kernel.base.BaseActivity
    protected int getContentViewLayoutID() {
        if (Constants.productType != ProductEnum.GH2) {
            if (Constants.productType != ProductEnum.X9) {
                if (Constants.productType != ProductEnum.X8S) {
                    this.productName = new int[]{R.string.x8s_device_name, R.string.device_name, R.string.device_hand_gimbal};
                    this.slogn = new int[]{R.string.x8s_device_slogn, R.string.device_slogn, R.string.device_gh2_slogn};
                    PRODUCTCLASS = new Class[]{HostX8sProductView.class, HostX9ProductView.class, HostGh2ProductView.class};
                    return R.layout.activity_host_new_main;
                }
                this.productName = new int[]{R.string.x8s_device_name};
                this.slogn = new int[]{R.string.x8s_device_slogn};
                PRODUCTCLASS = new Class[]{HostX8sProductView.class};
                return R.layout.activity_host_new_main;
            }
            this.productName = new int[]{R.string.device_name};
            this.slogn = new int[]{R.string.device_slogn};
            PRODUCTCLASS = new Class[]{HostX9ProductView.class};
            return R.layout.activity_host_new_main;
        }
        this.productName = new int[]{R.string.device_name};
        this.slogn = new int[]{R.string.device_slogn};
        PRODUCTCLASS = new Class[]{HostGh2ProductView.class};
        return R.layout.activity_host_new_main;
    }

    @Override // com.fimi.kernel.base.BaseActivity
    protected void setStatusBarColor() {
        StatusBarUtil.StatusBarLightMode(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.kernel.base.BaseActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        HostMainPresenter.checkUpfireList();
        updateView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode != 10010 && requestCode == 1) {
            this.hostMainPresenter.gotoTeacher("activity://gh2.teacher");
        }
    }

    private void updateView() {
        updateBtnConnect();
        updateTipView();
    }

    private void updateBtnConnect() {
        if (this.hostMainPresenter.isForce()) {
            this.btnConnect.setEnabled(false);
        } else {
            this.btnConnect.setEnabled(true);
        }
    }

    private void updateTipView() {
        if (HostMainPresenter.isDownFirmwareTip()) {
            this.tvSafeOpt.setTextColor(getResources().getColor(R.color.host_fw_color));
            this.tvSafeOpt.setText(R.string.host_find_new_fwname);
        } else if (DownFwService.DownState.Finish.equals(DownFwService.getState())) {
            this.tvSafeOpt.setTextColor(getResources().getColor(R.color.host_fw_color));
            this.tvSafeOpt.setText(R.string.host_down_fwname_finish);
        } else {
            this.tvSafeOpt.setText("");
            this.tvNoconect.setText(getString(this.slogn[this.positon]));
        }
    }

    @Override // com.fimi.app.p009ui.main.ProductShowWidget.ChangePositionListener
    public void changePosition(int positon) {
        this.positon = positon;
        this.mMainHeader.setPresenter(this.hostMainPresenter);
        this.hostMainPresenter.setPosition(positon);
        this.mMainHeader.setPositon(positon);
        this.mMainHeader.setDeviceName(this.productName[positon]);
        this.mSelectButtonView.setProductPositon(positon);
        updateBtnConnect();
        updateTipView();
    }

    @Override // com.fimi.libdownfw.ivew.IFirmwareDownView
    public void showDownFwProgress(DownFwService.DownState downState, int progress, String fwName) {
        if (downState == DownFwService.DownState.Downing) {
            if (progress == 100) {
                updateView();
            }
            if (progress < 100) {
                this.tvSafeOpt.setTextColor(getResources().getColor(R.color.host_fw_color));
                String detail = String.format(getString(R.string.host_down_fwname), fwName, Integer.valueOf(progress)) + "%";
                this.tvSafeOpt.setText(detail);
            }
        } else if (downState == DownFwService.DownState.DownFail) {
            this.tvSafeOpt.setTextColor(getResources().getColor(R.color.host_fw_color));
            this.tvSafeOpt.setText(R.string.host_down_fwname_failed);
        } else if (downState == DownFwService.DownState.Finish) {
            updateView();
            HostMainPresenter.checkUpfireList();
            this.tvSafeOpt.setText(R.string.host_down_fwname_finish);
        } else if (downState == DownFwService.DownState.StopDown && progress < 100) {
            String detail2 = String.format(getString(R.string.host_down_fwname), fwName, Integer.valueOf(progress)) + "%";
            this.tvSafeOpt.setTextColor(getResources().getColor(R.color.host_fw_color));
            this.tvSafeOpt.setText(detail2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.kernel.base.BaseActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.hostMainPresenter != null) {
            this.hostMainPresenter.removeNoticDownListener();
        }
        upRegisterReciver();
    }

    @Override // com.fimi.apk.iview.IApkVerisonView
    public void showNewApkVersionDialog(final ApkVersionDto dto, final String savePath) {
        DialogManager dialogManagerUpdate = new DialogManager(this, getString(R.string.fimi_sdk_app_update_title), dto.getUpdcontents(), getString(R.string.fimi_sdk_update_now), getString(R.string.fimi_sdk_update_ignore), 3);
        dialogManagerUpdate.setOnDiaLogListener(new DialogManager.OnDialogListener() { // from class: com.fimi.app.ui.main.HostNewMainActivity.6
            @Override // com.fimi.widget.DialogManager.OnDialogListener
            public void dialogBtnRightOrSingleListener(View customView, DialogInterface dialogInterface, int which) {
                Intent updateService = new Intent(HostNewMainActivity.this.mContext, DownloadApkService.class);
                updateService.putExtra("down_url", dto.getUrl());
                updateService.putExtra("down_savepath", savePath);
                updateService.setFlags(NTLMConstants.FLAG_NEGOTIATE_128_BIT_ENCRYPTION);
                HostNewMainActivity.this.mContext.startService(updateService);
            }

            @Override // com.fimi.widget.DialogManager.OnDialogListener
            public void dialogBtnLeftListener(View customView, DialogInterface dialogInterface, int which) {
            }
        });
        dialogManagerUpdate.setClickOutIsCancle(true);
        dialogManagerUpdate.showDialog();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (!this.isRecreat) {
            this.isRecreat = false;
            this.mProductShow.startAnimation();
        }
    }

    public void stopAnim() {
        this.mProductShow.stopAnimation();
    }

    public void registerReciver() {
        this.mLocalChangeLanguageReceiver = new LocalChangeLanguageReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Constants.CHANGELANGUGE);
        LocalBroadcastManager.getInstance(this).registerReceiver(this.mLocalChangeLanguageReceiver, intentFilter);
    }

    public void upRegisterReciver() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.mLocalChangeLanguageReceiver);
    }

    /* renamed from: com.fimi.app.ui.main.HostNewMainActivity$LocalChangeLanguageReceiver */
    /* loaded from: classes.dex */
    public class LocalChangeLanguageReceiver extends BroadcastReceiver {
        public LocalChangeLanguageReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            HostNewMainActivity.this.recreate();
        }
    }
}
