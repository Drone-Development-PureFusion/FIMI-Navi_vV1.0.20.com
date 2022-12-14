package com.fimi.libperson.p013ui.p014me.register;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.LinkMovementMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fimi.host.ComonStaticURL;
import com.fimi.kernel.C1583R;
import com.fimi.kernel.Constants;
import com.fimi.kernel.region.ServiceItem;
import com.fimi.kernel.store.shared.SPStoreManager;
import com.fimi.kernel.utils.AbAppUtil;
import com.fimi.kernel.utils.DataValidatorUtil;
import com.fimi.kernel.utils.FontUtil;
import com.fimi.kernel.utils.StatusBarUtil;
import com.fimi.libperson.BasePersonActivity;
import com.fimi.libperson.C1647R;
import com.fimi.libperson.ivew.IRegisterView;
import com.fimi.libperson.p013ui.web.UserProtocolWebViewActivity;
import com.fimi.libperson.presenter.RegisterPrenster;
import com.fimi.libperson.widget.TitleView;
import router.Router;
/* renamed from: com.fimi.libperson.ui.me.register.RegisterActivity */
/* loaded from: classes.dex */
public class RegisterActivity extends BasePersonActivity implements IRegisterView {
    Button mBtnRegisterEmail;
    Button mBtnRegisterPhone;
    CheckBox mCbEmailSelectService;
    CheckBox mCbIphoneSelectService;
    EditText mEtAccount;
    EditText mEtEmailAccount;
    EditText mEtEmailPassword;
    EditText mEtGetVelidationCode;
    EditText mEtIphonePassword;
    ImageView mIvReturn;
    ImageView mIvShowIphonePassword;
    ImageView mIvShowPassword;
    RelativeLayout mRlEmail;
    RelativeLayout mRlIphone;
    TitleView mTitleView;
    TextView mTvAreaCode;
    TextView mTvEmailErrorHint;
    TextView mTvEmailSelectService;
    TextView mTvErrorHint;
    TextView mTvForgetHint;
    TextView mTvGetValidationCode;
    TextView mTvIphoneSelectService;
    TextView mTvSelectCountry;
    TextView mTvTitleNmae;
    RegisterPrenster registerPrenster;
    boolean isShowPassword = false;
    boolean isShowIphonePassword = false;
    boolean isEmail = false;
    private boolean isCheckEmail = false;
    private boolean isCheckPhone = false;
    private TextView.OnEditorActionListener mOnEditorActionListener = new TextView.OnEditorActionListener() { // from class: com.fimi.libperson.ui.me.register.RegisterActivity.11
        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
            if (actionId == 4 || actionId == 6 || (event != null && 66 == event.getKeyCode() && event.getAction() == 0)) {
                AbAppUtil.closeSoftInput(RegisterActivity.this.mContext);
                return false;
            }
            return false;
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.libperson.BasePersonActivity, com.fimi.kernel.base.BaseActivity
    public void setStatusBarColor() {
        super.setStatusBarColor();
        StatusBarUtil.StatusBarLightMode(this);
    }

    @Override // com.fimi.kernel.base.BaseActivity
    protected int getContentViewLayoutID() {
        return C1647R.layout.activity_register;
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void initData() {
        initView();
        ServiceItem serviceItem = (ServiceItem) SPStoreManager.getInstance().getObject(Constants.SERVICE_ITEM_KEY, ServiceItem.class);
        if (serviceItem != null && serviceItem.getInfo() != C1583R.string.region_Mainland_China) {
            this.isEmail = true;
            this.mTitleView.setTvRightText(getString(C1647R.string.login_iphone_title));
            this.mTvTitleNmae.setText(C1647R.string.login_register_main_email_title);
            this.mTitleView.setRightTvIsVisible(false);
            this.mRlEmail.setVisibility(0);
            this.mRlIphone.setVisibility(4);
            this.mBtnRegisterPhone.setVisibility(8);
            this.mBtnRegisterEmail.setVisibility(0);
            if (this.isCheckEmail) {
                if (this.mEtEmailPassword.getText().length() >= 8 && this.mEtEmailPassword.getText().length() <= 16) {
                    registerBtnIsClick(true);
                    return;
                } else {
                    registerBtnIsClick(false);
                    return;
                }
            }
            registerBtnIsClick(false);
        }
    }

    private void initView() {
        this.registerPrenster = new RegisterPrenster(this, this);
        this.mIvReturn = (ImageView) findViewById(C1647R.C1651id.iv_return);
        this.mTitleView = (TitleView) findViewById(C1647R.C1651id.title_view);
        this.mTvSelectCountry = (TextView) findViewById(C1647R.C1651id.tv_select_country);
        this.mTvAreaCode = (TextView) findViewById(C1647R.C1651id.tv_area_code);
        this.mEtAccount = (EditText) findViewById(C1647R.C1651id.et_account);
        this.mEtIphonePassword = (EditText) findViewById(C1647R.C1651id.et_password);
        this.mEtGetVelidationCode = (EditText) findViewById(C1647R.C1651id.et_verification);
        this.mTvGetValidationCode = (TextView) findViewById(C1647R.C1651id.btn_get_validation_code);
        this.mTvErrorHint = (TextView) findViewById(C1647R.C1651id.tv_error_hint);
        this.mCbIphoneSelectService = (CheckBox) findViewById(C1647R.C1651id.cb_iphone_select_service);
        this.mCbEmailSelectService = (CheckBox) findViewById(C1647R.C1651id.cb_email_select_service);
        this.mEtEmailAccount = (EditText) findViewById(C1647R.C1651id.et_email_account);
        this.mEtEmailPassword = (EditText) findViewById(C1647R.C1651id.et_email_password);
        this.mTvEmailErrorHint = (TextView) findViewById(C1647R.C1651id.tv_email_error_hint);
        this.mTvForgetHint = (TextView) findViewById(C1647R.C1651id.tv_forget_hint);
        this.mBtnRegisterPhone = (Button) findViewById(C1647R.C1651id.btn_register_phone);
        this.mBtnRegisterEmail = (Button) findViewById(C1647R.C1651id.btn_register_email);
        this.mRlIphone = (RelativeLayout) findViewById(C1647R.C1651id.rl_iphone);
        this.mRlEmail = (RelativeLayout) findViewById(C1647R.C1651id.rl_email);
        this.mIvShowPassword = (ImageView) findViewById(C1647R.C1651id.iv_show_password);
        this.mIvShowIphonePassword = (ImageView) findViewById(C1647R.C1651id.iv_show_iphone_password);
        this.mTvIphoneSelectService = (TextView) findViewById(C1647R.C1651id.tv_iphone_select_service);
        this.mTvEmailSelectService = (TextView) findViewById(C1647R.C1651id.tv_email_select_service);
        this.mTvTitleNmae = (TextView) findViewById(C1647R.C1651id.tv_title_name);
        this.mTvGetValidationCode.setTextColor(getResources().getColor(C1647R.C1649color.login_get_verfication_unclick));
        this.mTvGetValidationCode.setEnabled(false);
        this.mTvIphoneSelectService.setVisibility(0);
        this.mCbIphoneSelectService.setVisibility(0);
        this.mCbIphoneSelectService.setChecked(false);
        this.mTvEmailSelectService.setVisibility(0);
        this.mCbEmailSelectService.setVisibility(0);
        this.mCbEmailSelectService.setChecked(false);
        this.mTvEmailSelectService.setText(getSpannableStringEmail());
        this.mTvEmailSelectService.setHighlightColor(0);
        this.mTvEmailSelectService.setMovementMethod(LinkMovementMethod.getInstance());
        this.mTvIphoneSelectService.setText(getSpannableString());
        this.mTvIphoneSelectService.setMovementMethod(LinkMovementMethod.getInstance());
        this.mTvIphoneSelectService.setHighlightColor(0);
        registerBtnIsClick(false);
        this.mTitleView.setTvTitle("");
        this.mTvTitleNmae.setText(getString(C1647R.string.login_register_main_phone_title));
        this.mTitleView.setTvRightVisible(0);
        this.mRlIphone.setVisibility(0);
        this.mRlEmail.setVisibility(4);
        this.mEtAccount.addTextChangedListener(new EditTextWatcher(this.mEtAccount));
        this.mEtEmailAccount.addTextChangedListener(new EditTextWatcher(this.mEtEmailAccount));
        this.mEtEmailPassword.addTextChangedListener(new EditTextWatcher(this.mEtEmailPassword));
        this.mEtGetVelidationCode.addTextChangedListener(new EditTextWatcher(this.mEtGetVelidationCode));
        this.mEtIphonePassword.addTextChangedListener(new EditTextWatcher(this.mEtIphonePassword));
        this.mTvSelectCountry.setText(getResources().getString(C1647R.string.libperson_service_china));
        FontUtil.changeViewLanTing(getAssets(), getWindow().getDecorView());
    }

    @Override // com.fimi.kernel.base.BaseActivity
    public void doTrans() {
        OnClickListener();
    }

    private void OnClickListener() {
        this.mTitleView.setTvRightListener(new View.OnClickListener() { // from class: com.fimi.libperson.ui.me.register.RegisterActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                AbAppUtil.closeSoftInput(RegisterActivity.this.mContext);
                RegisterActivity.this.mCbIphoneSelectService.setChecked(false);
                RegisterActivity.this.mCbEmailSelectService.setChecked(false);
                if (RegisterActivity.this.mRlEmail.isShown()) {
                    RegisterActivity.this.isEmail = false;
                    RegisterActivity.this.mTitleView.setTvRightText(RegisterActivity.this.getString(C1647R.string.login_email_title));
                    RegisterActivity.this.mTvTitleNmae.setText(C1647R.string.login_register_main_phone_title);
                    RegisterActivity.this.mBtnRegisterPhone.setVisibility(0);
                    RegisterActivity.this.mBtnRegisterEmail.setVisibility(8);
                    RegisterActivity.this.mRlEmail.setVisibility(4);
                    RegisterActivity.this.mRlIphone.setVisibility(0);
                    if (!RegisterActivity.this.isCheckPhone) {
                        RegisterActivity.this.registerBtnIsClick(false);
                        return;
                    } else if (RegisterActivity.this.mEtGetVelidationCode.getText().length() == 4) {
                        RegisterActivity.this.registerBtnIsClick(true);
                        return;
                    } else {
                        RegisterActivity.this.registerBtnIsClick(false);
                        return;
                    }
                }
                RegisterActivity.this.isEmail = true;
                RegisterActivity.this.mTitleView.setTvRightText(RegisterActivity.this.getString(C1647R.string.login_iphone_title));
                RegisterActivity.this.mTvTitleNmae.setText(C1647R.string.login_register_main_email_title);
                RegisterActivity.this.mRlEmail.setVisibility(0);
                RegisterActivity.this.mRlIphone.setVisibility(4);
                RegisterActivity.this.mBtnRegisterPhone.setVisibility(8);
                RegisterActivity.this.mBtnRegisterEmail.setVisibility(0);
                if (!RegisterActivity.this.isCheckEmail) {
                    RegisterActivity.this.registerBtnIsClick(false);
                } else if (RegisterActivity.this.mEtEmailPassword.getText().length() < 8 || RegisterActivity.this.mEtEmailPassword.getText().length() > 16) {
                    RegisterActivity.this.registerBtnIsClick(false);
                } else {
                    RegisterActivity.this.registerBtnIsClick(true);
                }
            }
        });
        this.mIvShowPassword.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.libperson.ui.me.register.RegisterActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (RegisterActivity.this.isShowPassword) {
                    RegisterActivity.this.isShowPassword = false;
                    RegisterActivity.this.mEtEmailPassword.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    RegisterActivity.this.mIvShowPassword.setBackgroundResource(C1647R.C1650drawable.iv_login_email_password);
                } else {
                    RegisterActivity.this.isShowPassword = true;
                    RegisterActivity.this.mEtEmailPassword.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
                    RegisterActivity.this.mIvShowPassword.setBackgroundResource(C1647R.C1650drawable.iv_login_email_password_show);
                }
                RegisterActivity.this.mEtEmailPassword.requestFocus();
                RegisterActivity.this.mEtEmailPassword.setSelection(RegisterActivity.this.mEtEmailPassword.getText().length());
            }
        });
        this.mIvShowIphonePassword.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.libperson.ui.me.register.RegisterActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (RegisterActivity.this.isShowIphonePassword) {
                    RegisterActivity.this.isShowIphonePassword = false;
                    RegisterActivity.this.mEtIphonePassword.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    RegisterActivity.this.mIvShowIphonePassword.setBackgroundResource(C1647R.C1650drawable.iv_login_email_password);
                } else {
                    RegisterActivity.this.isShowIphonePassword = true;
                    RegisterActivity.this.mEtIphonePassword.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
                    RegisterActivity.this.mIvShowIphonePassword.setBackgroundResource(C1647R.C1650drawable.iv_login_email_password_show);
                }
                RegisterActivity.this.mEtIphonePassword.requestFocus();
                RegisterActivity.this.mEtIphonePassword.setSelection(RegisterActivity.this.mEtIphonePassword.getText().length());
            }
        });
        this.mTvGetValidationCode.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.libperson.ui.me.register.RegisterActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AbAppUtil.closeSoftInput(RegisterActivity.this.mContext);
                RegisterActivity.this.registerPrenster.getVerificationCode(RegisterActivity.this.mEtAccount.getText().toString());
            }
        });
        this.mBtnRegisterPhone.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.libperson.ui.me.register.RegisterActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                AbAppUtil.closeSoftInput(RegisterActivity.this.mContext);
                RegisterActivity.this.registerPrenster.registerByPhone(RegisterActivity.this.mEtAccount.getText().toString(), RegisterActivity.this.mEtGetVelidationCode.getText().toString(), RegisterActivity.this.mEtIphonePassword.getText().toString());
            }
        });
        this.mBtnRegisterEmail.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.libperson.ui.me.register.RegisterActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                AbAppUtil.closeSoftInput(RegisterActivity.this.mContext);
                RegisterActivity.this.registerPrenster.registerByEmail(RegisterActivity.this.mEtEmailAccount.getText().toString(), RegisterActivity.this.mEtEmailPassword.getText().toString(), RegisterActivity.this.mEtEmailPassword.getText().toString());
            }
        });
        this.mCbEmailSelectService.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.fimi.libperson.ui.me.register.RegisterActivity.7
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                RegisterActivity.this.isCheckEmail = isChecked;
                RegisterActivity.this.judgeEmailIsClick();
            }
        });
        this.mCbIphoneSelectService.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.fimi.libperson.ui.me.register.RegisterActivity.8
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                RegisterActivity.this.isCheckPhone = isChecked;
                if (!RegisterActivity.this.isCheckPhone) {
                    RegisterActivity.this.registerBtnIsClick(false);
                } else if (RegisterActivity.this.mEtGetVelidationCode.getText().length() == 4) {
                    RegisterActivity.this.registerBtnIsClick(true);
                } else {
                    RegisterActivity.this.registerBtnIsClick(false);
                }
            }
        });
        this.mTvSelectCountry.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.libperson.ui.me.register.RegisterActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
            }
        });
        this.mIvReturn.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.libperson.ui.me.register.RegisterActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                RegisterActivity.this.finish();
            }
        });
        this.mEtGetVelidationCode.setOnEditorActionListener(this.mOnEditorActionListener);
        this.mEtIphonePassword.setOnEditorActionListener(this.mOnEditorActionListener);
        this.mEtAccount.setOnEditorActionListener(this.mOnEditorActionListener);
        this.mEtEmailPassword.setOnEditorActionListener(this.mOnEditorActionListener);
        this.mEtEmailAccount.setOnEditorActionListener(this.mOnEditorActionListener);
    }

    private int getEditTextCursorIndex(EditText mEditText) {
        return mEditText.getSelectionStart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.kernel.base.BaseActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // com.fimi.libperson.ivew.IRegisterView
    public void getCodeResult(boolean isSuccess, String errMsg) {
        if (!isSuccess) {
            this.mTvErrorHint.setVisibility(0);
            this.mTvErrorHint.setText(errMsg);
            return;
        }
        this.mTvGetValidationCode.setTextColor(getResources().getColor(C1647R.C1649color.login_get_verfication_unclick));
        this.mTvGetValidationCode.setEnabled(false);
        this.mTvErrorHint.setText("");
    }

    @Override // com.fimi.libperson.ivew.IRegisterView
    public void updateSeconds(boolean isComplete, int seconds) {
        if (isComplete) {
            this.mTvGetValidationCode.setEnabled(true);
            this.mTvGetValidationCode.setTextColor(getResources().getColorStateList(C1647R.C1649color.selector_btn_register_get_verfication_code));
            this.mTvGetValidationCode.setText(C1647R.string.login_btn_verification);
            return;
        }
        this.mTvGetValidationCode.setTextColor(getResources().getColor(C1647R.C1649color.login_get_verfication_unclick));
        this.mTvGetValidationCode.setEnabled(false);
        this.mTvGetValidationCode.setText(seconds + getString(C1647R.string.login_second));
    }

    @Override // com.fimi.libperson.ivew.IRegisterView
    public void loginSuccess() {
        Constants.isRefreshMainView = true;
        Intent it = (Intent) Router.invoke(this, "activity://app.main");
        readyGoThenKillAllActivity(it);
    }

    @Override // com.fimi.libperson.ivew.IRegisterView
    public void registerIphoneResult(boolean isSuceess, String errMsg) {
        if (isSuceess) {
            Constants.isRefreshMainView = true;
            Intent it = (Intent) Router.invoke(this, "activity://app.main");
            readyGoThenKillAllActivity(it);
        } else if (errMsg != null) {
            this.mTvErrorHint.setVisibility(0);
            this.mTvErrorHint.setText(errMsg);
        }
    }

    @Override // com.fimi.libperson.ivew.IRegisterView
    public void registerEmailResult(boolean isSuccess, String errMsg) {
        if (isSuccess) {
            Constants.isRefreshMainView = true;
            Intent it = (Intent) Router.invoke(this, "activity://app.main");
            readyGoThenKillAllActivity(it);
        } else if (errMsg != null) {
            this.mTvEmailErrorHint.setVisibility(0);
            this.mTvEmailErrorHint.setText(errMsg);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.fimi.libperson.ui.me.register.RegisterActivity$EditTextWatcher */
    /* loaded from: classes.dex */
    public class EditTextWatcher implements TextWatcher {
        private EditText mEditText;

        public EditTextWatcher(EditText editText) {
            this.mEditText = editText;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            if (s.length() > 0) {
                if (C1647R.C1651id.et_account == this.mEditText.getId()) {
                    RegisterActivity.this.mTvErrorHint.setText("");
                } else if (C1647R.C1651id.et_email_password == this.mEditText.getId()) {
                    RegisterActivity.this.judgeEmailIsClick();
                    RegisterActivity.this.mTvEmailErrorHint.setText("");
                } else if (C1647R.C1651id.et_email_account == this.mEditText.getId()) {
                    RegisterActivity.this.judgeEmailIsClick();
                    RegisterActivity.this.mTvEmailErrorHint.setText("");
                }
            } else if (C1647R.C1651id.et_account == this.mEditText.getId()) {
                RegisterActivity.this.mTvErrorHint.setText("");
            } else if (C1647R.C1651id.et_email_password == this.mEditText.getId()) {
                RegisterActivity.this.judgeEmailIsClick();
                RegisterActivity.this.mTvEmailErrorHint.setText("");
            } else if (C1647R.C1651id.et_email_account == this.mEditText.getId()) {
                RegisterActivity.this.judgeEmailIsClick();
                RegisterActivity.this.mTvEmailErrorHint.setText("");
            }
            if (C1647R.C1651id.et_password == this.mEditText.getId()) {
                RegisterActivity.this.mTvErrorHint.setText("");
            }
            if (C1647R.C1651id.et_account == this.mEditText.getId()) {
                if (!DataValidatorUtil.isMobile(s.toString().trim())) {
                    RegisterActivity.this.mTvGetValidationCode.setTextColor(RegisterActivity.this.getResources().getColor(C1647R.C1649color.login_get_verfication_unclick));
                    RegisterActivity.this.mTvGetValidationCode.setEnabled(false);
                } else {
                    RegisterActivity.this.mTvGetValidationCode.setEnabled(true);
                    RegisterActivity.this.mTvGetValidationCode.setTextColor(RegisterActivity.this.getResources().getColorStateList(C1647R.C1649color.selector_btn_register_get_verfication_code));
                }
            }
            if (C1647R.C1651id.et_password == this.mEditText.getId()) {
                if (!RegisterActivity.this.isCheckPhone) {
                    RegisterActivity.this.registerBtnIsClick(false);
                } else if (s.length() < 8 || RegisterActivity.this.mEtGetVelidationCode.getText().length() != 4) {
                    RegisterActivity.this.registerBtnIsClick(false);
                } else {
                    RegisterActivity.this.registerBtnIsClick(true);
                }
            }
            if (C1647R.C1651id.et_verification == this.mEditText.getId()) {
                if (!RegisterActivity.this.isCheckPhone) {
                    RegisterActivity.this.registerBtnIsClick(false);
                } else if (s.length() != 4 || RegisterActivity.this.mEtIphonePassword.getText().length() < 8) {
                    RegisterActivity.this.registerBtnIsClick(false);
                } else {
                    RegisterActivity.this.registerBtnIsClick(true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void judgeEmailIsClick() {
        if (DataValidatorUtil.isEmail(this.mEtEmailAccount.getText().toString().trim()) && this.mEtEmailPassword.getText().length() >= 8 && this.mEtEmailPassword.getText().length() <= 16 && this.isCheckEmail) {
            registerBtnIsClick(true);
        } else {
            registerBtnIsClick(false);
        }
    }

    private SpannableString getSpannableString() {
        String str1 = this.mContext.getString(C1647R.string.register_select_service1);
        String str2 = this.mContext.getString(C1647R.string.register_select_service2);
        String str3 = this.mContext.getString(C1647R.string.register_select_service3);
        String str4 = this.mContext.getString(C1647R.string.register_select_service4);
        String str5 = this.mContext.getString(C1647R.string.register_select_service5);
        SpannableString spannableString = new SpannableString(str1 + str2 + str3 + str4 + str5);
        spannableString.setSpan(new ForegroundColorSpan(this.mContext.getResources().getColor(C1647R.C1649color.register_agreement)), 0, str1.length(), 33);
        spannableString.setSpan(new ForegroundColorSpan(this.mContext.getResources().getColor(C1647R.C1649color.register_agreement)), str1.length() + str2.length(), str1.length() + str2.length() + str3.length(), 33);
        spannableString.setSpan(new ForegroundColorSpan(this.mContext.getResources().getColor(C1647R.C1649color.register_agreement)), str1.length() + str2.length() + str3.length() + str4.length(), str1.length() + str2.length() + str3.length() + str4.length() + str5.length(), 33);
        spannableString.setSpan(new ClickableSpan() { // from class: com.fimi.libperson.ui.me.register.RegisterActivity.12
            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint ds) {
                super.updateDrawState(ds);
                ds.setColor(RegisterActivity.this.getResources().getColor(C1647R.C1649color.register_agreement_click));
                ds.setUnderlineText(false);
            }

            @Override // android.text.style.ClickableSpan
            public void onClick(View widget) {
                RegisterActivity.this.goWebActivity(ComonStaticURL.getPolicyUrl(), RegisterActivity.this.getString(C1647R.string.person_setting_user_agreement));
            }
        }, str1.length(), str1.length() + str2.length(), 33);
        spannableString.setSpan(new ClickableSpan() { // from class: com.fimi.libperson.ui.me.register.RegisterActivity.13
            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint ds) {
                super.updateDrawState(ds);
                ds.setColor(RegisterActivity.this.getResources().getColor(C1647R.C1649color.register_agreement_click));
                ds.setUnderlineText(false);
            }

            @Override // android.text.style.ClickableSpan
            public void onClick(View widget) {
                RegisterActivity.this.goWebActivity(ComonStaticURL.getPrivacyUrl(), RegisterActivity.this.getString(C1647R.string.person_setting_user_privacy));
            }
        }, str1.length() + str2.length() + str3.length(), str1.length() + str2.length() + str3.length() + str4.length(), 33);
        return spannableString;
    }

    private SpannableString getSpannableStringEmail() {
        String str1 = this.mContext.getString(C1647R.string.register_select_service1);
        String str2 = this.mContext.getString(C1647R.string.register_select_service2);
        String str3 = this.mContext.getString(C1647R.string.register_select_service3);
        String str4 = this.mContext.getString(C1647R.string.register_select_service4);
        String str5 = this.mContext.getString(C1647R.string.register_select_service_email5);
        SpannableString spannableString = new SpannableString(str1 + str2 + str3 + str4 + str5);
        spannableString.setSpan(new ForegroundColorSpan(this.mContext.getResources().getColor(C1647R.C1649color.register_agreement)), 0, str1.length(), 33);
        spannableString.setSpan(new ForegroundColorSpan(this.mContext.getResources().getColor(C1647R.C1649color.register_agreement)), str1.length() + str2.length(), str1.length() + str2.length() + str3.length(), 33);
        spannableString.setSpan(new ForegroundColorSpan(this.mContext.getResources().getColor(C1647R.C1649color.register_agreement)), str1.length() + str2.length() + str3.length() + str4.length(), str1.length() + str2.length() + str3.length() + str4.length() + str5.length(), 33);
        spannableString.setSpan(new ClickableSpan() { // from class: com.fimi.libperson.ui.me.register.RegisterActivity.14
            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint ds) {
                super.updateDrawState(ds);
                ds.setColor(RegisterActivity.this.getResources().getColor(C1647R.C1649color.register_agreement_click));
                ds.setUnderlineText(false);
            }

            @Override // android.text.style.ClickableSpan
            public void onClick(View widget) {
                RegisterActivity.this.goWebActivity(ComonStaticURL.getPolicyUrl(), RegisterActivity.this.getString(C1647R.string.person_setting_user_agreement));
            }
        }, str1.length(), str1.length() + str2.length(), 33);
        spannableString.setSpan(new ClickableSpan() { // from class: com.fimi.libperson.ui.me.register.RegisterActivity.15
            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint ds) {
                super.updateDrawState(ds);
                ds.setColor(RegisterActivity.this.getResources().getColor(C1647R.C1649color.register_agreement_click));
                ds.setUnderlineText(false);
            }

            @Override // android.text.style.ClickableSpan
            public void onClick(View widget) {
                RegisterActivity.this.goWebActivity(ComonStaticURL.getPrivacyUrl(), RegisterActivity.this.getString(C1647R.string.person_setting_user_privacy));
            }
        }, str1.length() + str2.length() + str3.length(), str1.length() + str2.length() + str3.length() + str4.length(), 33);
        return spannableString;
    }

    public void goWebActivity(String url, String title) {
        Intent it = new Intent(this.mContext, UserProtocolWebViewActivity.class);
        it.putExtra("web_url", url);
        it.putExtra("web_title", title);
        startActivity(it);
        overridePendingTransition(17432576, 17432577);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerBtnIsClick(boolean isClick) {
        if (isClick) {
            this.mBtnRegisterPhone.setEnabled(true);
            this.mBtnRegisterEmail.setEnabled(true);
            return;
        }
        this.mBtnRegisterPhone.setEnabled(false);
        this.mBtnRegisterEmail.setEnabled(false);
    }

    @Override // android.support.p004v7.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 121) {
            finish();
            return false;
        }
        return super.onKeyDown(keyCode, event);
    }
}
