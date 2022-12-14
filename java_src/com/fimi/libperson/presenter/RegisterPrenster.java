package com.fimi.libperson.presenter;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.fastjson.JSON;
import com.fimi.host.HostConstants;
import com.fimi.host.HostLogBack;
import com.fimi.kernel.network.okhttp.listener.DisposeDataHandle;
import com.fimi.kernel.network.okhttp.listener.DisposeDataListener;
import com.fimi.kernel.utils.DataValidatorUtil;
import com.fimi.kernel.utils.LogUtil;
import com.fimi.libperson.C1647R;
import com.fimi.libperson.ivew.IRegisterView;
import com.fimi.network.ErrorMessage;
import com.fimi.network.FwManager;
import com.fimi.network.UserManager;
import com.fimi.network.entity.NetModel;
import com.fimi.network.entity.UpfirewareDto;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class RegisterPrenster {
    private static final String TAG = "RegisterPrenster";
    private static final int TIMER = 1;
    private static final int sUPDATE_TIME = 1000;
    IRegisterView iRegisterView;
    Context mContext;
    private int mSeconds = 60;
    private Handler mHandler = new Handler() { // from class: com.fimi.libperson.presenter.RegisterPrenster.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg.what == 1) {
                Log.d(RegisterPrenster.TAG, "handleMessage: " + RegisterPrenster.this.mSeconds);
                if (RegisterPrenster.this.mSeconds != 0) {
                    RegisterPrenster.this.iRegisterView.updateSeconds(false, RegisterPrenster.this.mSeconds);
                    RegisterPrenster.access$010(RegisterPrenster.this);
                    RegisterPrenster.this.mHandler.sendEmptyMessageDelayed(1, 1000L);
                    return;
                }
                RegisterPrenster.this.iRegisterView.updateSeconds(true, 0);
            }
        }
    };

    static /* synthetic */ int access$010(RegisterPrenster x0) {
        int i = x0.mSeconds;
        x0.mSeconds = i - 1;
        return i;
    }

    public RegisterPrenster(IRegisterView iRegisterView, Context mContext) {
        this.iRegisterView = iRegisterView;
        this.mContext = mContext;
    }

    public void getVerificationCode(String phone) {
        if (!DataValidatorUtil.isMobile(phone)) {
            this.iRegisterView.getCodeResult(false, this.mContext.getString(C1647R.string.register_input_right_phone));
        } else {
            UserManager.getIntance(this.mContext).getSecurityCode(phone, "0", "0", new DisposeDataHandle(new DisposeDataListener() { // from class: com.fimi.libperson.presenter.RegisterPrenster.2
                @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
                public void onSuccess(Object responseObj) {
                    NetModel netModel = (NetModel) JSON.parseObject(responseObj.toString(), NetModel.class);
                    if (netModel.isSuccess()) {
                        RegisterPrenster.this.mSeconds = 60;
                        RegisterPrenster.this.mHandler.sendEmptyMessage(1);
                        RegisterPrenster.this.iRegisterView.getCodeResult(true, null);
                        return;
                    }
                    RegisterPrenster.this.iRegisterView.getCodeResult(false, ErrorMessage.getUserModeErrorMessage(RegisterPrenster.this.mContext, netModel.getErrCode()));
                }

                @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
                public void onFailure(Object reasonObj) {
                    RegisterPrenster.this.iRegisterView.getCodeResult(false, RegisterPrenster.this.mContext.getString(C1647R.string.network_exception));
                }
            }));
        }
    }

    public void registerByPhone(final String phone, String code, String password) {
        if (TextUtils.isEmpty(phone)) {
            this.iRegisterView.registerIphoneResult(false, this.mContext.getString(C1647R.string.login_hint_iphone));
        } else if (!DataValidatorUtil.isMobile(phone)) {
            this.iRegisterView.registerIphoneResult(false, this.mContext.getString(C1647R.string.register_input_right_phone));
        } else {
            UserManager.getIntance(this.mContext).registerFmUser(phone, code, password, new DisposeDataHandle(new DisposeDataListener() { // from class: com.fimi.libperson.presenter.RegisterPrenster.3
                @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
                public void onSuccess(Object responseObj) {
                    NetModel netModel = (NetModel) JSON.parseObject(responseObj.toString(), NetModel.class);
                    if (netModel.isSuccess()) {
                        HostConstants.saveUserDetail(netModel.getData());
                        HostConstants.saveUserInfo("0", phone);
                        RegisterPrenster.this.getFwDetail();
                        return;
                    }
                    RegisterPrenster.this.iRegisterView.registerIphoneResult(false, ErrorMessage.getUserModeErrorMessage(RegisterPrenster.this.mContext, netModel.getErrCode()));
                }

                @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
                public void onFailure(Object reasonObj) {
                    RegisterPrenster.this.iRegisterView.registerIphoneResult(false, RegisterPrenster.this.mContext.getString(C1647R.string.network_exception));
                }
            }));
        }
    }

    public void registerByEmail(final String email, String pwd, String comfirmPwd) {
        if (TextUtils.isEmpty(email)) {
            this.iRegisterView.registerEmailResult(false, this.mContext.getString(C1647R.string.register_email_not_null));
        } else if (!DataValidatorUtil.isEmail(email)) {
            this.iRegisterView.registerEmailResult(false, this.mContext.getString(C1647R.string.register_input_right_email));
        } else {
            UserManager.getIntance(this.mContext).registerByEmail(email, pwd, comfirmPwd, new DisposeDataHandle(new DisposeDataListener() { // from class: com.fimi.libperson.presenter.RegisterPrenster.4
                @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
                public void onSuccess(Object responseObj) {
                    try {
                        NetModel netModel = (NetModel) JSON.parseObject(responseObj.toString(), NetModel.class);
                        if (netModel.isSuccess()) {
                            HostConstants.saveUserDetail(netModel.getData());
                            HostConstants.saveUserInfo("1", email);
                            RegisterPrenster.this.getFwDetail();
                        } else {
                            RegisterPrenster.this.iRegisterView.registerEmailResult(false, ErrorMessage.getUserModeErrorMessage(RegisterPrenster.this.mContext, netModel.getErrCode()));
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }

                @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
                public void onFailure(Object reasonObj) {
                    RegisterPrenster.this.iRegisterView.registerEmailResult(false, RegisterPrenster.this.mContext.getString(C1647R.string.network_exception));
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getFwDetail() {
        FwManager x9FwManager = new FwManager();
        HostConstants.saveFirmwareDetail(new ArrayList());
        x9FwManager.getX9FwNetDetail(new DisposeDataHandle(new DisposeDataListener() { // from class: com.fimi.libperson.presenter.RegisterPrenster.5
            @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
            public void onSuccess(Object responseObj) {
                try {
                    try {
                        NetModel netModel = (NetModel) JSON.parseObject(responseObj.toString(), NetModel.class);
                        LogUtil.m1330d("moweiru", "responseObj:" + responseObj);
                        if (netModel.isSuccess() && netModel.getData() != null) {
                            List<UpfirewareDto> fwDtos = JSON.parseArray(netModel.getData().toString(), UpfirewareDto.class);
                            HostConstants.saveFirmwareDetail(fwDtos);
                        }
                        if (RegisterPrenster.this.iRegisterView != null) {
                            RegisterPrenster.this.iRegisterView.loginSuccess();
                        }
                    } catch (Exception e) {
                        HostConstants.saveFirmwareDetail(new ArrayList());
                        HostLogBack.getInstance().writeLog("??????Json???????????????" + e.getMessage());
                        if (RegisterPrenster.this.iRegisterView != null) {
                            RegisterPrenster.this.iRegisterView.loginSuccess();
                        }
                    }
                } catch (Throwable th) {
                    if (RegisterPrenster.this.iRegisterView != null) {
                        RegisterPrenster.this.iRegisterView.loginSuccess();
                    }
                    throw th;
                }
            }

            @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
            public void onFailure(Object reasonObj) {
                if (RegisterPrenster.this.iRegisterView != null) {
                    RegisterPrenster.this.iRegisterView.loginSuccess();
                }
            }
        }));
    }
}
