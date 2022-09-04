package com.fimi.libperson.presenter;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.alibaba.fastjson.JSON;
import com.fimi.kernel.network.okhttp.listener.DisposeDataHandle;
import com.fimi.kernel.network.okhttp.listener.DisposeDataListener;
import com.fimi.libperson.C1647R;
import com.fimi.libperson.ivew.IForgetIphonePasswordView;
import com.fimi.network.ErrorMessage;
import com.fimi.network.UserManager;
import com.fimi.network.entity.NetModel;
import com.fimi.network.entity.RestPswDto;
/* loaded from: classes.dex */
public class ForgetIphonePasswordPresenter {
    private static final String TAG = "ForgetIphonePasswordPre";
    private static final int TIMER = 2;
    private static final int sUPDATE_TIME = 1000;
    Context mContext;
    private IForgetIphonePasswordView mIForgetPasswordView;
    private int mSeconds = 60;
    private Handler mForgetIphoneHandler = new Handler() { // from class: com.fimi.libperson.presenter.ForgetIphonePasswordPresenter.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            Log.i(ForgetIphonePasswordPresenter.TAG, "handleMessage: " + msg.what + ",mSecond:" + ForgetIphonePasswordPresenter.this.mSeconds);
            if (msg.what == 2) {
                Log.d(ForgetIphonePasswordPresenter.TAG, "handleMessage: " + ForgetIphonePasswordPresenter.this.mSeconds);
                if (ForgetIphonePasswordPresenter.this.mSeconds == 0) {
                    ForgetIphonePasswordPresenter.this.mIForgetPasswordView.updateSeconds(true, 0);
                    return;
                }
                ForgetIphonePasswordPresenter.this.mIForgetPasswordView.updateSeconds(false, ForgetIphonePasswordPresenter.this.mSeconds);
                ForgetIphonePasswordPresenter.access$010(ForgetIphonePasswordPresenter.this);
                ForgetIphonePasswordPresenter.this.mForgetIphoneHandler.sendEmptyMessageDelayed(2, 1000L);
            }
        }
    };

    static /* synthetic */ int access$010(ForgetIphonePasswordPresenter x0) {
        int i = x0.mSeconds;
        x0.mSeconds = i - 1;
        return i;
    }

    public ForgetIphonePasswordPresenter(IForgetIphonePasswordView IForgetPasswordView, Context context) {
        this.mIForgetPasswordView = IForgetPasswordView;
        this.mContext = context;
    }

    public void sendIphone(String iphone) {
        UserManager.getIntance(this.mContext).getSecurityCode(iphone, "2", "0", new DisposeDataHandle(new DisposeDataListener() { // from class: com.fimi.libperson.presenter.ForgetIphonePasswordPresenter.2
            @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
            public void onSuccess(Object responseObj) {
                try {
                    NetModel netModel = (NetModel) JSON.parseObject(responseObj.toString(), NetModel.class);
                    Log.i(ForgetIphonePasswordPresenter.TAG, "onSuccess: " + netModel.toString());
                    if (netModel.isSuccess()) {
                        ForgetIphonePasswordPresenter.this.mSeconds = 60;
                        ForgetIphonePasswordPresenter.this.mForgetIphoneHandler.sendEmptyMessage(2);
                        ForgetIphonePasswordPresenter.this.mIForgetPasswordView.sendIphone(true, null);
                    } else {
                        Log.i(ForgetIphonePasswordPresenter.TAG, "onSuccess: 2");
                        ForgetIphonePasswordPresenter.this.mIForgetPasswordView.sendIphone(false, ErrorMessage.getUserModeErrorMessage(ForgetIphonePasswordPresenter.this.mContext, netModel.getErrCode()));
                    }
                } catch (Exception e) {
                    Log.i(ForgetIphonePasswordPresenter.TAG, "onSuccess: 3");
                    ForgetIphonePasswordPresenter.this.mIForgetPasswordView.sendIphone(false, ForgetIphonePasswordPresenter.this.mContext.getString(C1647R.string.network_exception));
                }
            }

            @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
            public void onFailure(Object reasonObj) {
                Log.i(ForgetIphonePasswordPresenter.TAG, "onFailure: 4");
                ForgetIphonePasswordPresenter.this.mIForgetPasswordView.sendIphone(false, ForgetIphonePasswordPresenter.this.mContext.getString(C1647R.string.network_exception));
            }
        }));
    }

    public void inputVerficationCode(String iphone, String verficationCode) {
        RestPswDto restPswDto = new RestPswDto();
        restPswDto.setPhone(iphone);
        restPswDto.setCode(verficationCode);
        restPswDto.setCheckPsw("0");
        restPswDto.setPassword("");
        restPswDto.setConfirmPassword("");
        UserManager.getIntance(this.mContext).resetIphonePassword(restPswDto, new DisposeDataHandle(new DisposeDataListener() { // from class: com.fimi.libperson.presenter.ForgetIphonePasswordPresenter.3
            @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
            public void onSuccess(Object responseObj) {
                NetModel netModel = (NetModel) JSON.parseObject(responseObj.toString(), NetModel.class);
                if (netModel.isSuccess()) {
                    ForgetIphonePasswordPresenter.this.mIForgetPasswordView.sendVerfication(true, null);
                } else {
                    ForgetIphonePasswordPresenter.this.mIForgetPasswordView.sendVerfication(false, ErrorMessage.getUserModeErrorMessage(ForgetIphonePasswordPresenter.this.mContext, netModel.getErrCode()));
                }
            }

            @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
            public void onFailure(Object reasonObj) {
                ForgetIphonePasswordPresenter.this.mIForgetPasswordView.sendVerfication(false, ForgetIphonePasswordPresenter.this.mContext.getString(C1647R.string.network_exception));
            }
        }));
    }

    public void inputPassword(String iphone, String code, String password, String confirmPassword) {
        if (!password.equals(confirmPassword)) {
            this.mIForgetPasswordView.resetPassword(false, this.mContext.getString(C1647R.string.login_input_password_different_hint));
            return;
        }
        RestPswDto restPswDto = new RestPswDto();
        restPswDto.setPhone(iphone);
        restPswDto.setCode(code);
        restPswDto.setPassword(password);
        restPswDto.setConfirmPassword(confirmPassword);
        restPswDto.setCheckPsw("1");
        UserManager.getIntance(this.mContext).resetIphonePassword(restPswDto, new DisposeDataHandle(new DisposeDataListener() { // from class: com.fimi.libperson.presenter.ForgetIphonePasswordPresenter.4
            @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
            public void onSuccess(Object responseObj) {
                NetModel netModel = (NetModel) JSON.parseObject(responseObj.toString(), NetModel.class);
                if (netModel.isSuccess()) {
                    ForgetIphonePasswordPresenter.this.mIForgetPasswordView.resetPassword(true, null);
                } else {
                    ForgetIphonePasswordPresenter.this.mIForgetPasswordView.resetPassword(false, ErrorMessage.getUserModeErrorMessage(ForgetIphonePasswordPresenter.this.mContext, netModel.getErrCode()));
                }
            }

            @Override // com.fimi.kernel.network.okhttp.listener.DisposeDataListener
            public void onFailure(Object reasonObj) {
                ForgetIphonePasswordPresenter.this.mIForgetPasswordView.resetPassword(false, ForgetIphonePasswordPresenter.this.mContext.getString(C1647R.string.network_exception));
            }
        }));
    }

    public void setStopTime() {
        if (this.mForgetIphoneHandler != null) {
            this.mForgetIphoneHandler.removeMessages(2);
        }
    }
}
