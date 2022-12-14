package com.fimi.libperson.p013ui.setting;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.common.util.UriUtil;
import com.facebook.drawee.view.SimpleDraweeView;
import com.fimi.apk.DownloadApkService;
import com.fimi.apk.iview.IApkVerisonView;
import com.fimi.apk.presenter.ApkVersionPrenster;
import com.fimi.host.HostConstants;
import com.fimi.kernel.Constants;
import com.fimi.kernel.percent.PercentRelativeLayout;
import com.fimi.kernel.store.shared.SPStoreManager;
import com.fimi.kernel.utils.FontUtil;
import com.fimi.kernel.utils.FrescoImageLoader;
import com.fimi.kernel.utils.StatusBarUtil;
import com.fimi.kernel.utils.ToastUtil;
import com.fimi.libperson.BasePersonActivity;
import com.fimi.libperson.C1647R;
import com.fimi.libperson.adapter.PersettingFourAdapt;
import com.fimi.libperson.adapter.PersettingSecondAdapt;
import com.fimi.libperson.entity.ImageSource;
import com.fimi.libperson.entity.PersonSetting;
import com.fimi.libperson.p013ui.p014me.login.LoginActivity;
import com.fimi.libperson.p013ui.web.UserProtocolWebViewActivity;
import com.fimi.libperson.widget.BitmapLoadTaskInstance;
import com.fimi.libperson.widget.TitleView;
import com.fimi.network.entity.ApkVersionDto;
import com.fimi.sdk.C1787R;
import com.fimi.widget.DialogManager;
import com.fimi.x8sdk.common.Constants;
import java.util.ArrayList;
import java.util.List;
import org.apache.mina.proxy.handlers.http.ntlm.NTLMConstants;
/* renamed from: com.fimi.libperson.ui.setting.PersonSettingNewActivity */
/* loaded from: classes.dex */
public class PersonSettingNewActivity extends BasePersonActivity implements BitmapLoadTaskInstance.OnLoadListener, IApkVerisonView, ApkVersionPrenster.onApkUpdateListerner {
    private ApkVersionPrenster mApkVersionPrenster;
    private BitmapLoadTaskInstance mBitmapLoadTaskInstance;
    private Button mBtnBack;
    private List<PersonSetting> mFourPersonSettings;
    private SimpleDraweeView mIvHead;
    private ListView mLvFirstSetting;
    private ListView mLvFourSetting;
    private ListView mLvSecondSetting;
    private ListView mLvThirdSetting;
    private PersettingFourAdapt mPersettingFourAdapt;
    private PersettingSecondAdapt mPersettingSecondAdapt;
    private List<PersonSetting> mSecondPersonSettings;
    private List<PersonSetting> mThirdPersonSettings;
    private TitleView mTitleView;
    private TextView mTvId;
    private TextView mTvName;
    private RelativeLayout rlLoginNow;
    private RelativeLayout rlPersonTitle;
    private boolean isRequestNewVersion = false;
    private AdapterView.OnItemClickListener mSecondListerner = new AdapterView.OnItemClickListener() { // from class: com.fimi.libperson.ui.setting.PersonSettingNewActivity.3
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
            PersettingSecondAdapt.State positionIndex = ((PersonSetting) PersonSettingNewActivity.this.mSecondPersonSettings.get(position)).getSecondAdapt();
            if (positionIndex == PersettingSecondAdapt.State.LANGUAGE) {
                PersonSettingNewActivity.this.readyGoForResult(LanguageSettingActivity.class, Constants.A12_TCP_CMD_PORT);
            } else if (positionIndex == PersettingSecondAdapt.State.SERVICE) {
                PersonSettingNewActivity.this.readyGo(ServiceSettingActivity.class);
            }
        }
    };
    private AdapterView.OnItemClickListener mFourListerner = new AdapterView.OnItemClickListener() { // from class: com.fimi.libperson.ui.setting.PersonSettingNewActivity.4
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
            PersonSettingNewActivity.this.isRequestNewVersion = true;
            PersettingFourAdapt.State positionIndex = ((PersonSetting) PersonSettingNewActivity.this.mFourPersonSettings.get(position)).getFourAdapt();
            if (positionIndex == PersettingFourAdapt.State.ABOUT) {
                PersonSettingNewActivity.this.readyGo(LibPersonAboutActivity.class);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.libperson.BasePersonActivity, com.fimi.kernel.base.BaseActivity
    public void setStatusBarColor() {
        StatusBarUtil.StatusBarLightMode(this);
    }

    private void handleUserType(Constants.UserType userType, String fimiId) {
        switch (userType) {
            case Guest:
                this.mIvHead.setImageURI(new Uri.Builder().scheme(UriUtil.LOCAL_RESOURCE_SCHEME).path(String.valueOf(C1647R.C1650drawable.icon_person_setting_head_unlogin)).build());
                this.mBtnBack.setVisibility(8);
                this.rlLoginNow.setVisibility(0);
                return;
            case Register:
                String name = HostConstants.getUserDetail().getNickName();
                TextView textView = this.mTvName;
                if (TextUtils.isEmpty(name)) {
                    name = "";
                }
                textView.setText(name);
                this.mTvId.setText(getString(C1647R.string.person_setting_fimi_id, new Object[]{fimiId}));
                FrescoImageLoader.display(this.mIvHead, HostConstants.getUserDetail().getUserImgUrl());
                this.mBtnBack.setVisibility(0);
                this.rlLoginNow.setVisibility(8);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void go2LoginAboutBigImage() {
        this.mBitmapLoadTaskInstance.setOnLoadListener(this);
        this.mBitmapLoadTaskInstance.setImage(ImageSource.asset("login_bg.jpg"), this.mContext);
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void initData() {
        this.mTitleView = (TitleView) findViewById(C1647R.C1651id.title_view);
        this.mTitleView.setTvTitle(getResources().getString(C1647R.string.person_setting_title));
        this.mIvHead = (SimpleDraweeView) findViewById(C1647R.C1651id.iv_head);
        this.mBtnBack = (Button) findViewById(C1647R.C1651id.btn_back);
        this.mTvName = (TextView) findViewById(C1647R.C1651id.tv_name);
        this.mTvId = (TextView) findViewById(C1647R.C1651id.tv_id);
        this.rlPersonTitle = (RelativeLayout) findViewById(C1647R.C1651id.rl_person_title);
        this.rlLoginNow = (RelativeLayout) findViewById(C1647R.C1651id.rl_login_now);
        FontUtil.changeFontLanTing(getAssets(), this.mTvName, this.mTvId);
        final String fimiId = HostConstants.getUserDetail().getFimiId();
        handleUserType(TextUtils.isEmpty(fimiId) ? Constants.UserType.Guest : Constants.UserType.Register, fimiId);
        this.rlPersonTitle.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.libperson.ui.setting.PersonSettingNewActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TextUtils.isEmpty(fimiId)) {
                    PersonSettingNewActivity.this.go2LoginAboutBigImage();
                }
            }
        });
        this.mBitmapLoadTaskInstance = BitmapLoadTaskInstance.getInstance();
        this.mBitmapLoadTaskInstance.setOnLoadListener(this);
        initListView();
        PercentRelativeLayout.LayoutParams params = (PercentRelativeLayout.LayoutParams) this.mTitleView.getLayoutParams();
        params.setMargins(0, this.statusBarHeight + this.marginStatus, 0, 0);
        this.mTitleView.setLayoutParams(params);
        this.mApkVersionPrenster = new ApkVersionPrenster(this, this);
        this.mApkVersionPrenster.getOnlineNewApkFileInfo();
        this.mApkVersionPrenster.setOnApkUpdateListerner(this);
    }

    private void initListView() {
        PersettingSecondAdapt.State[] values;
        PersettingFourAdapt.State[] values2;
        this.mLvSecondSetting = (ListView) findViewById(C1647R.C1651id.lv_second_setting);
        this.mPersettingSecondAdapt = new PersettingSecondAdapt(this);
        this.mSecondPersonSettings = new ArrayList();
        for (PersettingSecondAdapt.State state : PersettingSecondAdapt.State.values()) {
            if (1 != 0) {
                PersonSetting setting = new PersonSetting();
                setting.setIsOPen(true);
                setting.setSecondAdapt(state);
                this.mSecondPersonSettings.add(setting);
            }
        }
        this.mPersettingSecondAdapt.setData(this.mSecondPersonSettings);
        this.mLvSecondSetting.setAdapter((ListAdapter) this.mPersettingSecondAdapt);
        this.mLvSecondSetting.setOnItemClickListener(this.mSecondListerner);
        this.mLvFourSetting = (ListView) findViewById(C1647R.C1651id.lv_four_setting);
        this.mPersettingFourAdapt = new PersettingFourAdapt(this);
        this.mFourPersonSettings = new ArrayList();
        for (PersettingFourAdapt.State state2 : PersettingFourAdapt.State.values()) {
            if (1 != 0) {
                PersonSetting setting2 = new PersonSetting();
                setting2.setIsOPen(false);
                setting2.setFourAdapt(state2);
                this.mFourPersonSettings.add(setting2);
            }
        }
        this.mPersettingFourAdapt.setData(this.mFourPersonSettings);
        this.mLvFourSetting.setAdapter((ListAdapter) this.mPersettingFourAdapt);
        this.mLvFourSetting.setOnItemClickListener(this.mFourListerner);
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void doTrans() {
        this.mBtnBack.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.libperson.ui.setting.PersonSettingNewActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                DialogManager dialogManager = new DialogManager(PersonSettingNewActivity.this.mContext, PersonSettingNewActivity.this.getString(C1647R.string.person_setting_dialog_exit_title), PersonSettingNewActivity.this.getString(C1647R.string.person_setting_dialog_exit_message), PersonSettingNewActivity.this.getString(C1647R.string.person_setting_back), PersonSettingNewActivity.this.getString(C1647R.string.person_setting_dialog_exit_left_text));
                dialogManager.setVerticalScreen(true);
                dialogManager.setOnDiaLogListener(new DialogManager.OnDialogListener() { // from class: com.fimi.libperson.ui.setting.PersonSettingNewActivity.2.1
                    @Override // com.fimi.widget.DialogManager.OnDialogListener
                    public void dialogBtnRightOrSingleListener(View customView, DialogInterface dialogInterface, int which) {
                        PersonSettingNewActivity.this.go2LoginAboutBigImage();
                    }

                    @Override // com.fimi.widget.DialogManager.OnDialogListener
                    public void dialogBtnLeftListener(View customView, DialogInterface dialogInterface, int which) {
                    }
                });
                dialogManager.showDialog();
            }
        });
    }

    public void goWebActivity(String url, String title) {
        Intent it = new Intent(this, UserProtocolWebViewActivity.class);
        it.putExtra("web_url", url);
        it.putExtra("web_title", title);
        startActivity(it);
        overridePendingTransition(17432576, 17432577);
    }

    @Override // com.fimi.kernel.base.BaseActivity
    protected int getContentViewLayoutID() {
        return C1647R.layout.activity_person_new_setting;
    }

    @Override // com.fimi.libperson.widget.BitmapLoadTaskInstance.OnLoadListener
    public void onComplete() {
        SPStoreManager.getInstance().removeKey(HostConstants.SP_KEY_USER_DETAIL);
        readyGoThenKillAllActivity(LoginActivity.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.libperson.BasePersonActivity, com.fimi.kernel.base.BaseActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.mBitmapLoadTaskInstance != null) {
            this.mBitmapLoadTaskInstance.setOnLoadListener(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 10010) {
            recreate();
        }
    }

    @Override // com.fimi.apk.iview.IApkVerisonView
    public void showNewApkVersionDialog(final ApkVersionDto dto, final String savePath) {
        DialogManager dialogManagerUpdate = new DialogManager(this, getString(C1787R.string.fimi_sdk_app_update_title), dto.getUpdcontents(), getString(C1787R.string.fimi_sdk_update_now), getString(C1787R.string.fimi_sdk_update_ignore), 3);
        dialogManagerUpdate.setOnDiaLogListener(new DialogManager.OnDialogListener() { // from class: com.fimi.libperson.ui.setting.PersonSettingNewActivity.5
            @Override // com.fimi.widget.DialogManager.OnDialogListener
            public void dialogBtnRightOrSingleListener(View customView, DialogInterface dialogInterface, int which) {
                Intent updateService = new Intent(PersonSettingNewActivity.this.mContext, DownloadApkService.class);
                updateService.putExtra("down_url", dto.getUrl());
                updateService.putExtra("down_savepath", savePath);
                updateService.setFlags(NTLMConstants.FLAG_NEGOTIATE_128_BIT_ENCRYPTION);
                PersonSettingNewActivity.this.mContext.startService(updateService);
            }

            @Override // com.fimi.widget.DialogManager.OnDialogListener
            public void dialogBtnLeftListener(View customView, DialogInterface dialogInterface, int which) {
            }
        });
        dialogManagerUpdate.setClickOutIsCancle(true);
        dialogManagerUpdate.showDialog();
    }

    @Override // com.fimi.apk.presenter.ApkVersionPrenster.onApkUpdateListerner
    public void haveUpdate(boolean isUpdate) {
        if (isUpdate) {
            this.mFourPersonSettings.get(0).setIsOPen(true);
        } else {
            if (this.isRequestNewVersion) {
                this.isRequestNewVersion = false;
                ToastUtil.showToast(this.mContext, getString(C1647R.string.person_setting_check_updated_content), 1);
            }
            this.mFourPersonSettings.get(0).setIsOPen(false);
        }
        this.mPersettingFourAdapt.notifyDataSetChanged();
    }

    @Override // android.support.p004v7.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (event.getAction() == 0) {
            finish();
        }
        return super.onKeyDown(keyCode, event);
    }
}
