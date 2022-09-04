package com.fimi.app.x8s.p011ui.activity.update;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.manager.X8FpvManager;
import com.fimi.host.HostConstants;
import com.fimi.host.LocalFwEntity;
import com.fimi.kernel.Constants;
import com.fimi.kernel.animutils.IOUtils;
import com.fimi.kernel.base.BaseActivity;
import com.fimi.kernel.base.EventMessage;
import com.fimi.kernel.utils.FontUtil;
import com.fimi.kernel.utils.StatusBarUtil;
import com.fimi.widget.DownRoundProgress;
import com.fimi.x8sdk.controller.UpdateManager;
import com.fimi.x8sdk.ivew.IX8UpdateProgressView;
import com.fimi.x8sdk.modulestate.StateManager;
import com.fimi.x8sdk.process.RelayProcess;
import com.fimi.x8sdk.update.UpdateUtil;
import com.fimi.x8sdk.update.fwpack.FwInfo;
import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
/* renamed from: com.fimi.app.x8s.ui.activity.update.X8UpdatingActivity */
/* loaded from: classes.dex */
public class X8UpdatingActivity extends BaseActivity {
    private Button btnReconnect;
    private DownRoundProgress downRoundProgress;
    private ImageView imgUpdateResult;
    private boolean isUpdating;
    private TextView tvUpdateWarnming;
    private TextView tvUpdating;
    private UpdateManager updateManager;
    private TextView x8TvUpdateFailureHint;
    private TextView x8sTvUpdatingProgress;

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
        if (intent != null) {
            this.isUpdating = intent.getBooleanExtra(Constants.UPDATING_KEY, false);
        }
        initView();
        this.updateManager = new UpdateManager(this);
        if (!this.isUpdating) {
            this.updateManager.firmwareBuildPack(UpdateUtil.toFwInfo());
        } else {
            this.updateManager.queryCurUpdateStatus(null);
        }
    }

    void initView() {
        this.downRoundProgress = (DownRoundProgress) findViewById(C0885R.C0889id.rpb_update_progress);
        this.imgUpdateResult = (ImageView) findViewById(C0885R.C0889id.img_update_result);
        this.tvUpdating = (TextView) findViewById(C0885R.C0889id.tv_updating);
        this.x8TvUpdateFailureHint = (TextView) findViewById(C0885R.C0889id.x8_tv_update_failure_hint);
        this.tvUpdateWarnming = (TextView) findViewById(C0885R.C0889id.tv_update_warnming);
        this.x8sTvUpdatingProgress = (TextView) findViewById(C0885R.C0889id.x8s_tv_updating_progress);
        this.btnReconnect = (Button) findViewById(C0885R.C0889id.btn_reconnect);
        X8FpvManager.isUpdateing = true;
        FontUtil.changeFontLanTing(getAssets(), this.tvUpdateWarnming, this.tvUpdating);
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void doTrans() {
        this.btnReconnect.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.ui.activity.update.X8UpdatingActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                X8FpvManager.isUpdateing = false;
                X8UpdatingActivity.this.finish();
            }
        });
        this.updateManager.setOnUpdateProgress(new IX8UpdateProgressView() { // from class: com.fimi.app.x8s.ui.activity.update.X8UpdatingActivity.2
            @Override // com.fimi.x8sdk.ivew.IX8UpdateProgressView
            public void showUpdateProgress(boolean isSuccess, int progress, final List<FwInfo> dtos, String name) {
                String tempString;
                if (!isSuccess) {
                    X8UpdatingActivity.this.btnReconnect.setVisibility(0);
                    X8UpdatingActivity.this.btnReconnect.setText(C0885R.string.x8_update_connect);
                    X8UpdatingActivity.this.imgUpdateResult.setVisibility(0);
                    X8UpdatingActivity.this.tvUpdateWarnming.setVisibility(4);
                    X8UpdatingActivity.this.tvUpdating.setText(name);
                    X8UpdatingActivity.this.x8sTvUpdatingProgress.setVisibility(8);
                } else if (100 != progress || dtos == null) {
                    X8UpdatingActivity.this.downRoundProgress.setProgress(progress);
                    if (name == null) {
                        tempString = X8UpdatingActivity.this.getString(C0885R.string.x8_update_hint_one);
                    } else {
                        tempString = String.format(X8UpdatingActivity.this.getString(C0885R.string.x8_updating), name);
                    }
                    X8UpdatingActivity.this.tvUpdating.setText(tempString);
                    X8UpdatingActivity.this.x8sTvUpdatingProgress.setText(progress + "%");
                    if (X8UpdatingActivity.this.btnReconnect.getVisibility() == 0) {
                        X8UpdatingActivity.this.btnReconnect.setVisibility(8);
                        X8UpdatingActivity.this.tvUpdateWarnming.setText(X8UpdatingActivity.this.getString(C0885R.string.x8_update_warning));
                    }
                } else {
                    X8UpdatingActivity.this.btnReconnect.postDelayed(new Runnable() { // from class: com.fimi.app.x8s.ui.activity.update.X8UpdatingActivity.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            HostConstants.clearLocalFwEntitys();
                            RelayProcess.getRelayProcess().getAllVersion();
                            X8UpdatingActivity.this.btnReconnect.setVisibility(0);
                            X8UpdatingActivity.this.btnReconnect.setText(C0885R.string.x8_update_success);
                            X8UpdatingActivity.this.tvUpdateWarnming.setVisibility(4);
                            X8UpdatingActivity.this.x8sTvUpdatingProgress.setVisibility(8);
                            X8UpdatingActivity.this.updateResult(dtos);
                            X8UpdatingActivity.this.imgUpdateResult.setVisibility(0);
                        }
                    }, 10000L);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateResult(List<FwInfo> dtos) {
        StringBuffer sucessSb = new StringBuffer();
        StringBuffer failedSb = new StringBuffer();
        boolean hasFailed = false;
        for (FwInfo dto : dtos) {
            if ("0".equalsIgnoreCase(dto.getUpdateResult())) {
                sucessSb.append(dto.getSysName() + "、");
                HostConstants.saveLocalFirmware(new LocalFwEntity(dto.getTypeId(), dto.getModelId(), dto.getSoftwareVer(), ""));
            }
            if ("1".equalsIgnoreCase(dto.getUpdateResult())) {
                failedSb.append(dto.getSysName() + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + dto.getErrorCode() + "、");
            }
        }
        if (!TextUtils.isEmpty(sucessSb.toString())) {
            sucessSb.deleteCharAt(sucessSb.length() - 1);
            sucessSb.append(getString(C0885R.string.x8_update_success1));
        }
        if (!TextUtils.isEmpty(failedSb.toString())) {
            failedSb.deleteCharAt(failedSb.length() - 1);
            failedSb.append(getString(C0885R.string.x8_update_failed));
        }
        StringBuilder info = new StringBuilder();
        if (!TextUtils.isEmpty(failedSb.toString())) {
            info.append(failedSb.toString() + IOUtils.LINE_SEPARATOR_UNIX);
            hasFailed = true;
        }
        if (!TextUtils.isEmpty(sucessSb.toString())) {
            info.append(sucessSb.toString());
        }
        if (hasFailed) {
            this.imgUpdateResult.setImageResource(C0885R.C0888drawable.x8s_update_error_4);
            this.x8TvUpdateFailureHint.setVisibility(0);
        } else {
            this.imgUpdateResult.setImageResource(C0885R.C0888drawable.x8_img_updating_success);
            this.x8TvUpdateFailureHint.setVisibility(8);
        }
        if (hasFailed) {
            this.tvUpdating.setText(info.toString());
        } else {
            this.tvUpdating.setText(info.toString());
        }
        this.downRoundProgress.setProgress(100);
        EventBus.getDefault().post(new EventMessage(Constants.X8_UPDATE_EVENT_KEY, ""));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.kernel.base.BaseActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.updateManager.removeNoticeList();
        X8FpvManager.isUpdateing = false;
        StateManager.getInstance().getVersionState().setModuleFcAckVersion(null);
    }

    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        X8FpvManager.isUpdateing = false;
    }

    @Override // com.fimi.kernel.base.BaseActivity
    protected int getContentViewLayoutID() {
        return C0885R.layout.x8_activity_updating;
    }
}
