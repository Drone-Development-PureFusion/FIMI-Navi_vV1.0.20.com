package com.fimi.libperson.p013ui.setting;

import android.content.DialogInterface;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.alibaba.fastjson.JSON;
import com.fimi.host.ComonStaticURL;
import com.fimi.host.HostConstants;
import com.fimi.kernel.Constants;
import com.fimi.kernel.network.okhttp.listener.DisposeDataHandle;
import com.fimi.kernel.network.okhttp.listener.DisposeDataListener;
import com.fimi.kernel.store.shared.SPStoreManager;
import com.fimi.kernel.utils.FontUtil;
import com.fimi.kernel.utils.StatusBarUtil;
import com.fimi.kernel.utils.ToastUtil;
import com.fimi.libperson.BasePersonActivity;
import com.fimi.libperson.C1647R;
import com.fimi.libperson.adapter.PersettingThirdAdapt;
import com.fimi.libperson.adapter.PersonSettingAdapt;
import com.fimi.libperson.entity.ImageSource;
import com.fimi.libperson.entity.PersonSetting;
import com.fimi.libperson.p013ui.p014me.login.LoginActivity;
import com.fimi.libperson.p013ui.web.UserProtocolWebViewActivity;
import com.fimi.libperson.widget.BitmapLoadTaskInstance;
import com.fimi.libperson.widget.TitleView;
import com.fimi.network.ErrorMessage;
import com.fimi.network.UserManager;
import com.fimi.network.entity.NetModel;
import com.fimi.widget.DialogManager;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.fimi.libperson.ui.setting.LibPersonAboutActivity */
/* loaded from: classes.dex */
public class LibPersonAboutActivity extends BasePersonActivity implements BitmapLoadTaskInstance.OnLoadListener {
    private Button libpersonBtnRepeal;
    private TextView libpersonTvVersions;
    BitmapLoadTaskInstance mBitmapLoadTaskInstance;
    private ListView mLvMainSetting;
    private PersettingThirdAdapt mPersettingThirdAdapt;
    private List<PersonSetting> mThirdPersonSettings;
    private TitleView mTitleView;
    boolean isLogin = false;
    private AdapterView.OnItemClickListener mThirdListerner = new AdapterView.OnItemClickListener() { // from class: com.fimi.libperson.ui.setting.LibPersonAboutActivity.2
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
            PersettingThirdAdapt.State positionIndex = ((PersonSetting) LibPersonAboutActivity.this.mThirdPersonSettings.get(position)).getThirdAdapt();
            if (positionIndex == PersettingThirdAdapt.State.USER_PRIVACY) {
                LibPersonAboutActivity.this.goWebActivity(ComonStaticURL.getPrivacyUrl(), LibPersonAboutActivity.this.getString(C1647R.string.person_setting_user_privacy));
            } else if (positionIndex == PersettingThirdAdapt.State.USER_AGREEMENT) {
                LibPersonAboutActivity.this.goWebActivity(ComonStaticURL.getPolicyUrl(), LibPersonAboutActivity.this.getString(C1647R.string.person_setting_user_agreement));
            } else if (positionIndex == PersettingThirdAdapt.State.USER_RIGHT) {
                LibPersonAboutActivity.this.readyGo(LibPersonRightApplyActivity.class);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.libperson.BasePersonActivity, com.fimi.kernel.base.BaseActivity
    public void setStatusBarColor() {
        StatusBarUtil.StatusBarLightMode(this);
    }

    @Override // com.fimi.kernel.base.BaseActivity
    protected int getContentViewLayoutID() {
        return C1647R.layout.libperson_activity_about;
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void initData() {
        PersettingThirdAdapt.State[] values;
        initView();
        initListView();
        this.mPersettingThirdAdapt = new PersettingThirdAdapt(this);
        this.mThirdPersonSettings = new ArrayList();
        for (PersettingThirdAdapt.State state : PersettingThirdAdapt.State.values()) {
            if (this.isLogin || !state.equals(PersettingThirdAdapt.State.USER_RIGHT)) {
                PersonSetting setting = new PersonSetting();
                setting.setIsOPen(true);
                setting.setThirdAdapt(state);
                this.mThirdPersonSettings.add(setting);
            }
        }
        this.mPersettingThirdAdapt.setData(this.mThirdPersonSettings);
        this.mLvMainSetting.setAdapter((ListAdapter) this.mPersettingThirdAdapt);
        this.mLvMainSetting.setOnItemClickListener(this.mThirdListerner);
        this.mBitmapLoadTaskInstance = BitmapLoadTaskInstance.getInstance();
    }

    private void initView() {
        String fimiId = HostConstants.getUserDetail().getFimiId();
        this.isLogin = !TextUtils.isEmpty(fimiId);
        this.mTitleView = (TitleView) findViewById(C1647R.C1651id.title_view);
        this.mTitleView.setTvTitle(getResources().getString(C1647R.string.libperson_about));
        this.mLvMainSetting = (ListView) findViewById(C1647R.C1651id.lv_main_setting);
        this.libpersonTvVersions = (TextView) findViewById(C1647R.C1651id.libperson_tv_versions);
        this.libpersonBtnRepeal = (Button) findViewById(C1647R.C1651id.libperson_btn_repeal);
        this.libpersonBtnRepeal.setVisibility(this.isLogin ? 0 : 8);
        FontUtil.changeFontLanTing(getAssets(), this.libpersonTvVersions, findViewById(C1647R.C1651id.libperson_tv_rights_reserved), this.libpersonBtnRepeal);
        this.libpersonTvVersions.setText(getResources().getString(C1647R.string.app_product_name) + " " + getResources().getString(C1647R.string.app_version) + "");
    }

    private void initListView() {
        PersonSettingAdapt.State[] values;
        for (PersonSettingAdapt.State state : PersonSettingAdapt.State.values()) {
            boolean isAdd = true;
            int j = 0;
            while (true) {
                if (j < PersonSettingAdapt.mMainState.length) {
                    if (state != PersonSettingAdapt.mMainState[j]) {
                        j++;
                    } else {
                        isAdd = false;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (isAdd) {
                PersonSetting setting = new PersonSetting();
                setting.setIsOPen(true);
                setting.setSettingAdaptState(state);
            }
        }
    }

    /* renamed from: com.fimi.libperson.ui.setting.LibPersonAboutActivity$1 */
    /* loaded from: classes.dex */
    class View$OnClickListenerC17421 implements View.OnClickListener {
        View$OnClickListenerC17421() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogManager dialogManager = new DialogManager(LibPersonAboutActivity.this.mContext, LibPersonAboutActivity.this.getString(C1647R.string.libperson_repeal_accredit), LibPersonAboutActivity.this.getString(C1647R.string.libperson_repeal_accredit_hint), LibPersonAboutActivity.this.getString(C1647R.string.login_ensure), LibPersonAboutActivity.this.getString(C1647R.string.person_setting_dialog_exit_left_text));
            dialogManager.setVerticalScreen(true);
            dialogManager.setOnDiaLogListener(new DialogManager.OnDialogListener() { // from class: com.fimi.libperson.ui.setting.LibPersonAboutActivity.1.1
                @Override // com.fimi.widget.DialogManager.OnDialogListener
                public void dialogBtnRightOrSingleListener(View customView, DialogInterface dialogInterface, int which) {
                    UserManager.getIntance(LibPersonAboutActivity.this).sendRepealAccredit(Constants.productType.name().toLowerCase(), new DisposeDataHandle(new DisposeDataListener() { // from class: com.fimi.libperson.ui.setting.LibPersonAboutActivity.1.1.1
                        @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
                        public void onSuccess(Object responseObj) {
                            try {
                                NetModel netModel = (NetModel) JSON.parseObject(responseObj.toString(), NetModel.class);
                                if (netModel.isSuccess()) {
                                    LibPersonAboutActivity.this.mBitmapLoadTaskInstance.setOnLoadListener(LibPersonAboutActivity.this);
                                    LibPersonAboutActivity.this.mBitmapLoadTaskInstance.setImage(ImageSource.asset("login_bg.jpg"), LibPersonAboutActivity.this.mContext);
                                } else {
                                    ToastUtil.showToast(LibPersonAboutActivity.this, ErrorMessage.getUserModeErrorMessage(LibPersonAboutActivity.this, netModel.getErrCode()), 1);
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }

                        @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
                        public void onFailure(Object reasonObj) {
                            ToastUtil.showToast(LibPersonAboutActivity.this, LibPersonAboutActivity.this.mContext.getString(C1647R.string.network_exception), 1);
                        }
                    }));
                }

                @Override // com.fimi.widget.DialogManager.OnDialogListener
                public void dialogBtnLeftListener(View customView, DialogInterface dialogInterface, int which) {
                }
            });
            dialogManager.showDialog();
        }
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void doTrans() {
        this.libpersonBtnRepeal.setOnClickListener(new View$OnClickListenerC17421());
    }

    public void goWebActivity(String url, String title) {
        Intent it = new Intent(this, UserProtocolWebViewActivity.class);
        it.putExtra("web_url", url);
        it.putExtra("web_title", title);
        startActivity(it);
        overridePendingTransition(17432576, 17432577);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 10010) {
            recreate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.libperson.BasePersonActivity, com.fimi.kernel.base.BaseActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.mBitmapLoadTaskInstance != null) {
            this.mBitmapLoadTaskInstance.setOnLoadListener(null);
        }
    }

    @Override // com.fimi.libperson.widget.BitmapLoadTaskInstance.OnLoadListener
    public void onComplete() {
        SPStoreManager.getInstance().removeKey(HostConstants.SP_KEY_USER_DETAIL);
        SPStoreManager.getInstance().saveBoolean(HostConstants.USER_PROTOCOL, false);
        readyGoThenKillAllActivity(LoginActivity.class);
    }
}
