package com.fimi.thirdpartysdk.login.xiaomi;

import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.fimi.host.common.ProductEnum;
import com.fimi.kernel.Constants;
import com.fimi.kernel.FimiAppContext;
import com.fimi.thirdpartysdk.C1813R;
import com.fimi.thirdpartysdk.ThirdPartyConstants;
import com.fimi.thirdpartysdk.login.ILogin;
import com.fimi.thirdpartysdk.login.LoginCallback;
import com.fimi.thirdpartysdk.login.LoginResultCache;
import com.xiaomi.account.openauth.XMAuthericationException;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.account.openauth.XiaomiOAuthFuture;
import com.xiaomi.account.openauth.XiaomiOAuthResults;
import com.xiaomi.account.openauth.XiaomiOAuthorize;
import java.io.IOException;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class XiaomiLoginManager implements ILogin {
    LoginCallback loginCallback;
    private Context mContext;
    private String mErrormessage;
    private XiaomiOAuthResults mResults;
    XiaoMiEntity xiaoMiEntity;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class XiaoMiEntity {
        public String appId;
        public String redirectUri;

        XiaoMiEntity() {
        }
    }

    public XiaoMiEntity getXiaoMiEntity(ProductEnum product) {
        XiaoMiEntity xiaoMiEntity = new XiaoMiEntity();
        xiaoMiEntity.redirectUri = "http://www.fimi.com";
        if (product.equals(ProductEnum.X9)) {
            xiaoMiEntity.appId = ThirdPartyConstants.XIAOMI_APP_ID_X9;
        } else if (product.equals(ProductEnum.GH2)) {
            xiaoMiEntity.appId = ThirdPartyConstants.XIAOMI_APP_ID_GH2;
        } else {
            xiaoMiEntity.appId = ThirdPartyConstants.XIAOMI_APP_ID_FIMIAPP;
        }
        return xiaoMiEntity;
    }

    @Override // com.fimi.thirdpartysdk.login.ILogin
    public void login(Context context, LoginCallback listener) {
        this.mContext = context;
        this.loginCallback = listener;
        this.xiaoMiEntity = getXiaoMiEntity(Constants.productType);
        int[] scopes = {1, 3};
        try {
            XiaomiOAuthFuture<XiaomiOAuthResults> future = new XiaomiOAuthorize().setAppId(Long.parseLong(this.xiaoMiEntity.appId)).setRedirectUrl(this.xiaoMiEntity.redirectUri).setScope(Arrays.copyOf(scopes, 0)).setKeepCookies(true).setNoMiui(false).setSkipConfirm(false).startGetAccessToken((Activity) context);
            waitAndShowFutureResult(future);
        } catch (Exception e) {
            e.printStackTrace();
            if (this.loginCallback != null) {
                this.loginCallback.loginFail(this.mContext.getResources().getString(C1813R.string.login_result));
            }
        }
    }

    @Override // com.fimi.thirdpartysdk.login.ILogin
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.fimi.thirdpartysdk.login.xiaomi.XiaomiLoginManager$1] */
    private <V> void waitAndShowFutureResult(final XiaomiOAuthFuture<V> future) {
        new AsyncTask<Void, Void, V>() { // from class: com.fimi.thirdpartysdk.login.xiaomi.XiaomiLoginManager.1

            /* renamed from: e */
            Exception f223e;

            @Override // android.os.AsyncTask
            protected void onPreExecute() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Type inference failed for: r1v4, types: [V, java.lang.Object] */
            @Override // android.os.AsyncTask
            public V doInBackground(Void... params) {
                try {
                    return future.mo1883getResult();
                } catch (OperationCanceledException e1) {
                    this.f223e = e1;
                    return null;
                } catch (XMAuthericationException e12) {
                    this.f223e = e12;
                    return null;
                } catch (IOException e13) {
                    this.f223e = e13;
                    return null;
                }
            }

            @Override // android.os.AsyncTask
            protected void onPostExecute(V v) {
                if (v != 0) {
                    if (v instanceof XiaomiOAuthResults) {
                        XiaomiLoginManager.this.mResults = (XiaomiOAuthResults) v;
                        if (XiaomiLoginManager.this.mResults.getAccessToken() != null) {
                            LoginResultCache.setAccessToken(FimiAppContext.getContext(), 0, XiaomiLoginManager.this.mResults.getAccessToken());
                            LoginResultCache.setMacKey(FimiAppContext.getContext(), 0, XiaomiLoginManager.this.mResults.getMacKey());
                            LoginResultCache.setMacAlgorithm(FimiAppContext.getContext(), 0, XiaomiLoginManager.this.mResults.getMacAlgorithm());
                            XiaomiLoginManager.this.loginAuth();
                        } else if (XiaomiLoginManager.this.loginCallback != null) {
                            XiaomiLoginManager.this.loginCallback.loginFail(XiaomiLoginManager.this.mContext.getResources().getString(C1813R.string.login_result));
                        }
                    }
                } else if (this.f223e != null) {
                    if (!this.f223e.toString().equals("android.accounts.OperationCanceledException")) {
                        if (XiaomiLoginManager.this.loginCallback != null) {
                            XiaomiLoginManager.this.loginCallback.loginFail(this.f223e.getMessage());
                        }
                    } else if (XiaomiLoginManager.this.loginCallback != null) {
                        XiaomiLoginManager.this.loginCallback.loginFail(null);
                    }
                } else if (XiaomiLoginManager.this.loginCallback != null) {
                    XiaomiLoginManager.this.loginCallback.loginFail(XiaomiLoginManager.this.mContext.getResources().getString(C1813R.string.login_result));
                }
            }
        }.execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.fimi.thirdpartysdk.login.xiaomi.XiaomiLoginManager$2] */
    public void loginAuth() {
        final XiaomiOAuthFuture<String> futureProfile = new XiaomiOAuthorize().callOpenApi(this.mContext, Long.parseLong(this.xiaoMiEntity.appId), XiaomiOAuthConstants.OPEN_API_PATH_PROFILE, this.mResults.getAccessToken(), this.mResults.getMacKey(), this.mResults.getMacAlgorithm());
        new AsyncTask<Void, Void, String>() { // from class: com.fimi.thirdpartysdk.login.xiaomi.XiaomiLoginManager.2

            /* renamed from: e */
            Exception f224e;

            @Override // android.os.AsyncTask
            protected void onPreExecute() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public String doInBackground(Void... params) {
                try {
                    String v = (String) futureProfile.mo1883getResult();
                    return v;
                } catch (OperationCanceledException e1) {
                    this.f224e = e1;
                    return null;
                } catch (XMAuthericationException e12) {
                    this.f224e = e12;
                    return null;
                } catch (IOException e13) {
                    this.f224e = e13;
                    return null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(String result) {
                if (TextUtils.isEmpty(result)) {
                    if (XiaomiLoginManager.this.loginCallback != null) {
                        XiaomiLoginManager.this.loginCallback.loginFail(XiaomiLoginManager.this.mContext.getResources().getString(C1813R.string.login_result));
                        return;
                    }
                    return;
                }
                try {
                    JSONObject jsonObject = new JSONObject(result);
                    JSONObject dataJsonObject = jsonObject.getJSONObject("data");
                    XiaomiLoginManager.this.loginCallback.loginSuccess(dataJsonObject);
                } catch (JSONException e) {
                    XiaomiLoginManager.this.loginCallback.loginFail(e.getMessage());
                }
            }
        }.execute(new Void[0]);
    }
}
