package com.fimi.libdownfw.update;

import android.content.Intent;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.fimi.host.Entity.DownloadFwSelectInfo;
import com.fimi.host.HostConstants;
import com.fimi.kernel.base.BaseActivity;
import com.fimi.kernel.utils.DNSLookupThread;
import com.fimi.kernel.utils.FontUtil;
import com.fimi.kernel.utils.StatusBarUtil;
import com.fimi.kernel.utils.ToastUtil;
import com.fimi.libdownfw.C1631R;
import com.fimi.libdownfw.ivew.IFirmwareDownView;
import com.fimi.libdownfw.presenter.DownFirmwarePresenter;
import com.fimi.network.DownFwService;
import com.fimi.network.entity.UpfirewareDto;
import com.fimi.p015x9.upgrade.X9UpdateUtil;
import com.fimi.widget.RoundProgressBar;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class FindeNewFwDownActivity extends BaseActivity implements IFirmwareDownView {
    Button btnDownAgain;
    ImageView btnReturn;
    DownFirmwarePresenter downFirmwarePresenter;
    boolean hasTry;
    ImageView hostDownResult;
    Intent intent;
    private List<DownloadFwSelectInfo> mSelectList;
    RoundProgressBar progressBar;
    private LinearLayout rt_layout;
    TextView tvDowning;
    TextView tvProgress;
    TextView tvTitle;
    TextView tv_downList;
    TextView tv_fail;
    TextView tv_succeuss;
    List<UpfirewareDto> downDtos = null;
    long currTime = System.currentTimeMillis();
    private boolean isFirstDown = true;
    private String curFirmware = "";

    @Override // com.fimi.kernel.base.BaseActivity
    public void initData() {
        this.downFirmwarePresenter = new DownFirmwarePresenter(this);
        this.tvTitle = (TextView) findViewById(C1631R.C1635id.tv_setting_title);
        this.tvProgress = (TextView) findViewById(C1631R.C1635id.tv_progress);
        this.tvDowning = (TextView) findViewById(C1631R.C1635id.tv_downing);
        this.btnReturn = (ImageView) findViewById(C1631R.C1635id.ibtn_back);
        this.progressBar = (RoundProgressBar) findViewById(C1631R.C1635id.rpb_down_progress);
        this.hostDownResult = (ImageView) findViewById(C1631R.C1635id.host_down_result);
        this.btnDownAgain = (Button) findViewById(C1631R.C1635id.btn_down_again);
        this.rt_layout = (LinearLayout) findViewById(C1631R.C1635id.rt_layout);
        this.tv_fail = (TextView) findViewById(C1631R.C1635id.tv_down_fail);
        this.tv_succeuss = (TextView) findViewById(C1631R.C1635id.tv_down_success);
        this.tv_downList = (TextView) findViewById(C1631R.C1635id.tv_downing_list);
        FontUtil.changeFontLanTing(getAssets(), this.tvTitle, this.tvDowning, this.tvProgress, this.tvProgress, this.btnDownAgain);
        this.mSelectList = (ArrayList) getIntent().getSerializableExtra("listDownloadFwSelectInfo");
        this.currTime = System.currentTimeMillis();
        refreshTvDownFirmwareDetail();
        notifyView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshTvDownFirmwareDetail() {
        if (this.mSelectList != null) {
            this.downDtos = HostConstants.getNeedDownFw(false, this.mSelectList);
        }
        if (this.downDtos != null && this.downDtos.size() > 0) {
            String tempString = String.format(this.mContext.getString(C1631R.string.host_downing_firmware), this.downDtos.get(0).getSysName());
            this.tvDowning.setText(tempString);
        }
        this.tv_downList.setText(getUpdateContent());
    }

    private void notifyView() {
        this.rt_layout.setVisibility(8);
        if (DownFwService.getState().equals(DownFwService.DownState.Finish)) {
            this.progressBar.setVisibility(4);
            this.hostDownResult.setImageResource(C1631R.C1634drawable.host_down_update_sucess);
            this.hostDownResult.setVisibility(0);
            this.btnDownAgain.setText(C1631R.string.host_down_fwname_finish);
            this.btnDownAgain.setVisibility(0);
            String failString = getdownFail();
            if (!TextUtils.isEmpty(failString)) {
                this.tv_fail.setText(failString + getString(C1631R.string.host_down_fwname_failed));
                this.tv_fail.setVisibility(0);
            }
            String successString = getdownSuccess();
            if (!TextUtils.isEmpty(successString)) {
                this.tv_succeuss.setText(successString + getString(C1631R.string.host_down_fwname_success));
                this.tv_succeuss.setVisibility(0);
            }
            this.tvDowning.setVisibility(4);
            this.tv_downList.setVisibility(8);
            this.rt_layout.setVisibility(0);
        } else if (DownFwService.getState().equals(DownFwService.DownState.DownFail)) {
            String tempString = String.format(getResources().getString(C1631R.string.host_downed_firmware), new Object[0]);
            this.tvDowning.setText(tempString);
            this.progressBar.setProgress(0);
            this.progressBar.setVisibility(4);
            this.hostDownResult.setImageResource(C1631R.C1634drawable.host_down_update_fail);
            this.hostDownResult.setVisibility(0);
            this.btnDownAgain.setVisibility(0);
            this.btnDownAgain.setText(C1631R.string.host_try_down_fwname_again);
            String failString2 = getdownFail();
            if (!TextUtils.isEmpty(failString2)) {
                this.tv_fail.setText(failString2 + getString(C1631R.string.host_down_fwname_failed));
                this.tv_fail.setVisibility(0);
            }
            String successString2 = getdownSuccess();
            if (!TextUtils.isEmpty(successString2)) {
                this.tv_succeuss.setText(successString2 + getString(C1631R.string.host_down_fwname_success));
                this.tv_succeuss.setVisibility(0);
            }
            this.tvDowning.setVisibility(4);
            this.rt_layout.setVisibility(0);
            this.tv_downList.setVisibility(8);
        } else if (DownFwService.getState().equals(DownFwService.DownState.UnStart)) {
            this.progressBar.setVisibility(0);
            this.btnDownAgain.setVisibility(8);
        } else if (DownFwService.getState().equals(DownFwService.DownState.Downing)) {
            this.hostDownResult.setImageResource(C1631R.C1634drawable.icon_firmware_down);
            this.progressBar.setVisibility(0);
            this.hostDownResult.setVisibility(0);
            this.tvDowning.setVisibility(0);
            this.tv_downList.setVisibility(0);
            this.tvProgress.setVisibility(8);
        } else {
            this.tvDowning.setVisibility(4);
            this.progressBar.setVisibility(0);
            this.btnDownAgain.setVisibility(8);
        }
    }

    public String getdownFail() {
        StringBuffer failBuffer = new StringBuffer();
        if (X9UpdateUtil.getDownList() != null && X9UpdateUtil.getDownList().size() > 0) {
            for (UpfirewareDto dto : X9UpdateUtil.getDownList()) {
                if ("1" == dto.getDownResult()) {
                    failBuffer.append(dto.getSysName() + "???");
                }
            }
        }
        if (failBuffer.length() > 0) {
            failBuffer.deleteCharAt(failBuffer.length() - 1);
        }
        return failBuffer.toString();
    }

    public String getdownSuccess() {
        StringBuffer successBuffer = new StringBuffer();
        if (X9UpdateUtil.getDownList() != null && X9UpdateUtil.getDownList().size() > 0) {
            for (UpfirewareDto dto : X9UpdateUtil.getDownList()) {
                if ("0" == dto.getDownResult()) {
                    successBuffer.append(dto.getSysName() + "???");
                }
            }
        }
        if (successBuffer.length() > 0) {
            successBuffer.deleteCharAt(successBuffer.length() - 1);
        }
        return successBuffer.toString();
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void doTrans() {
        this.btnReturn.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.libdownfw.update.FindeNewFwDownActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FindeNewFwDownActivity.this.finish();
            }
        });
        this.btnDownAgain.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.libdownfw.update.FindeNewFwDownActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DownFwService.getState().equals(DownFwService.DownState.Finish)) {
                    FindeNewFwDownActivity.this.finish();
                } else if (DownFwService.getState().equals(DownFwService.DownState.Downing)) {
                    DownFwService.setState(DownFwService.DownState.StopDown);
                    FindeNewFwDownActivity.this.finish();
                } else if (!FindeNewFwDownActivity.this.isDSNSuceess()) {
                    ToastUtil.showToast(FindeNewFwDownActivity.this, FindeNewFwDownActivity.this.getString(C1631R.string.host_down_net_exception), 0);
                } else if (System.currentTimeMillis() - FindeNewFwDownActivity.this.currTime >= 1000 || FindeNewFwDownActivity.this.isFirstDown) {
                    FindeNewFwDownActivity.this.currTime = System.currentTimeMillis();
                    FindeNewFwDownActivity.this.isFirstDown = false;
                    FindeNewFwDownActivity.this.hasTry = true;
                    FindeNewFwDownActivity.this.tvDowning.setVisibility(0);
                    DownFwService.checkingTaskCount = 0;
                    FindeNewFwDownActivity.this.intent = new Intent(FindeNewFwDownActivity.this, DownFwService.class);
                    FindeNewFwDownActivity.this.intent.putExtra("listDownloadFwSelectInfo", (Serializable) FindeNewFwDownActivity.this.mSelectList);
                    FindeNewFwDownActivity.this.startService(FindeNewFwDownActivity.this.intent);
                    FindeNewFwDownActivity.this.refreshTvDownFirmwareDetail();
                    FindeNewFwDownActivity.this.tv_downList.setVisibility(0);
                    FindeNewFwDownActivity.this.tvProgress.setVisibility(8);
                    FindeNewFwDownActivity.this.progressBar.setVisibility(0);
                    FindeNewFwDownActivity.this.tv_fail.setText("");
                    FindeNewFwDownActivity.this.tv_fail.setVisibility(8);
                    FindeNewFwDownActivity.this.tv_succeuss.setVisibility(8);
                }
            }
        });
        if (DownFwService.getState().equals(DownFwService.DownState.UnStart)) {
            DownFwService.checkingTaskCount = 0;
            this.intent = new Intent(this, DownFwService.class);
            this.intent.putExtra("listDownloadFwSelectInfo", (Serializable) this.mSelectList);
            startService(this.intent);
        }
    }

    @Override // com.fimi.kernel.base.BaseActivity
    protected void setStatusBarColor() {
        StatusBarUtil.StatusBarLightMode(this);
    }

    @Override // com.fimi.kernel.base.BaseActivity
    protected int getContentViewLayoutID() {
        return C1631R.layout.activity_find_new_fw;
    }

    @Override // com.fimi.libdownfw.ivew.IFirmwareDownView
    public void showDownFwProgress(DownFwService.DownState isResult, int progress, String name) {
        this.curFirmware = name;
        if (isResult == DownFwService.DownState.Downing) {
            DownFwService.setState(DownFwService.DownState.Downing);
            if (this.hasTry) {
                this.hasTry = false;
            }
            this.progressBar.setProgress(progress);
            if (progress == 100) {
                stopService();
                DownFwService.setState(DownFwService.DownState.Finish);
            } else {
                String tempString = String.format(this.mContext.getString(C1631R.string.host_downing_firmware), this.curFirmware) + " " + progress + "%";
                this.tvDowning.setText(tempString);
                this.tvDowning.setVisibility(0);
                if (HostConstants.isForceUpdate(X9UpdateUtil.getDownList())) {
                    this.btnDownAgain.setVisibility(4);
                } else {
                    this.btnDownAgain.setText(C1631R.string.host_try_down_fwname_stop);
                    this.btnDownAgain.setVisibility(0);
                }
            }
        } else if (isResult == DownFwService.DownState.DownFail) {
            DownFwService.setState(DownFwService.DownState.DownFail);
            stopService();
        } else if (isResult == DownFwService.DownState.StopDown) {
            DownFwService.setState(DownFwService.DownState.StopDown);
            String tempString2 = String.format(this.mContext.getString(C1631R.string.host_downing_firmware), this.curFirmware) + String.valueOf(progress) + "%";
            this.tvDowning.setText(tempString2);
        }
        notifyView();
    }

    public String getUpdateContent() {
        StringBuffer sb = new StringBuffer();
        if (this.downDtos != null && this.downDtos.size() > 0) {
            for (UpfirewareDto dto : this.downDtos) {
                sb.append(dto.getSysName() + "???");
            }
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    private void stopService() {
        if (this.intent != null) {
            stopService(this.intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.kernel.base.BaseActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.downFirmwarePresenter.removerDownNoticeLisnter();
    }

    @Override // android.support.p004v7.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            finish();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    public boolean isDSNSuceess() {
        DNSLookupThread dnsTh = new DNSLookupThread("www.baidu.com");
        dnsTh.start();
        try {
            dnsTh.join(500L);
        } catch (Exception e) {
        }
        if (dnsTh.getIP() == null) {
            return false;
        }
        return true;
    }
}
