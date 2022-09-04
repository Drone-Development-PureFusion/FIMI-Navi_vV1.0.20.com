package com.xiaomi.account.openauth;

import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.util.Log;
import com.xiaomi.account.auth.AuthorizeApi;
import com.xiaomi.account.auth.OAuthConfig;
import com.xiaomi.account.auth.OAuthFactory;
import com.xiaomi.account.auth.XiaomiOAuth;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
public class XiaomiOAuthorize {
    private static final Class<? extends AuthorizeActivityBase> DEFAULT_AUTHORIZE_ACTIVITY_CLASS = AuthorizeActivity.class;
    private static final String TAG = "XiaomiOAuthorize";
    public static final String TYPE_CODE = "code";
    public static final String TYPE_TOKEN = "token";
    private OAuthConfig.Builder mConfigBuilder = new OAuthConfig.Builder();

    public XiaomiOAuthorize setScope(int[] scope) {
        this.mConfigBuilder.scopes(scope);
        return this;
    }

    public XiaomiOAuthorize setAppId(long appId) {
        this.mConfigBuilder.appId(appId);
        return this;
    }

    public XiaomiOAuthorize setRedirectUrl(String redirectUrl) {
        this.mConfigBuilder.redirectUrl(redirectUrl);
        return this;
    }

    public XiaomiOAuthorize setSkipConfirm(boolean skipConfirm) {
        this.mConfigBuilder.skipConfirm(skipConfirm);
        return this;
    }

    public XiaomiOAuthorize setNoMiui(boolean noMiui) {
        this.mConfigBuilder.notUseMiui(noMiui);
        return this;
    }

    public XiaomiOAuthorize setState(String state) {
        this.mConfigBuilder.state(state);
        return this;
    }

    public XiaomiOAuthorize setKeepCookies(boolean keepCookies) {
        this.mConfigBuilder.keepCookies(keepCookies);
        return this;
    }

    public XiaomiOAuthorize setCustomizedAuthorizeActivityClass(Class<? extends AuthorizeActivityBase> clazz) {
        this.mConfigBuilder.authorizeActivityClazz(clazz);
        return this;
    }

    public XiaomiOAuthorize setAccountAuth(AccountAuth accountAuth) {
        this.mConfigBuilder.accountAuth(accountAuth);
        return this;
    }

    public XiaomiOAuthorize setPlatform(int platform) {
        this.mConfigBuilder.platform(platform);
        return this;
    }

    public XiaomiOAuthorize setDeviceID(String deviceID) {
        this.mConfigBuilder.deviceID(deviceID);
        return this;
    }

    public XiaomiOAuthFuture<XiaomiOAuthResults> fastOAuth(Activity activity, @NonNull String responseType) {
        if (activity == null || activity.isFinishing()) {
            throw new IllegalArgumentException("activity should not be null and should be running");
        }
        OAuthConfig.Builder builder = new OAuthConfig.Builder(this.mConfigBuilder);
        OAuthConfig config = builder.responseType(responseType).build();
        XiaomiOAuth xiaomiOAuth = OAuthFactory.createOAuth(activity.getApplicationContext(), config);
        return xiaomiOAuth.fastOAuth(activity, config);
    }

    public XiaomiOAuthFuture<XiaomiOAuthResults> startGetAccessToken(Activity activity) {
        return oauth(activity, TYPE_TOKEN);
    }

    public XiaomiOAuthFuture<XiaomiOAuthResults> startGetOAuthCode(Activity activity) {
        return oauth(activity, "code");
    }

    private XiaomiOAuthFuture<XiaomiOAuthResults> oauth(Activity activity, String responseType) {
        if (activity == null || activity.isFinishing()) {
            throw new IllegalArgumentException("activity should not be null and should be running");
        }
        OAuthConfig.Builder builder = new OAuthConfig.Builder(this.mConfigBuilder);
        OAuthConfig config = builder.responseType(responseType).build();
        XiaomiOAuth xiaomiOAuth = OAuthFactory.createOAuth(activity.getApplicationContext(), config);
        return xiaomiOAuth.getCodeOrAccessToken(activity, config);
    }

    public XiaomiOAuthFuture<String> callOpenApi(final Context context, final long appId, final String path, final String accessToken, final String macKey, final String macAlgorithm) {
        final FutureTask<String> futureTask = new FutureTask<>(new Callable<String>() { // from class: com.xiaomi.account.openauth.XiaomiOAuthorize.1
            @Override // java.util.concurrent.Callable
            public String call() throws Exception {
                String ret = AuthorizeApi.doHttpGet(context, path, appId, accessToken, macKey, macAlgorithm);
                return ret;
            }
        });
        AsyncTask.THREAD_POOL_EXECUTOR.execute(futureTask);
        return new XiaomiOAuthFuture<String>() { // from class: com.xiaomi.account.openauth.XiaomiOAuthorize.2
            @Override // com.xiaomi.account.openauth.XiaomiOAuthFuture
            /* renamed from: getResult  reason: collision with other method in class */
            public String mo1883getResult() throws OperationCanceledException, IOException, XMAuthericationException {
                try {
                    return (String) futureTask.get();
                } catch (InterruptedException e) {
                    throw new XMAuthericationException(e);
                } catch (ExecutionException e2) {
                    throw new XMAuthericationException(e2.getCause());
                }
            }

            @Override // com.xiaomi.account.openauth.XiaomiOAuthFuture
            /* renamed from: getResult  reason: collision with other method in class */
            public String mo1884getResult(long timeout, TimeUnit unit) throws OperationCanceledException, IOException, XMAuthericationException {
                try {
                    return (String) futureTask.get(timeout, unit);
                } catch (InterruptedException e) {
                    throw new XMAuthericationException(e);
                } catch (ExecutionException e2) {
                    throw new XMAuthericationException(e2.getCause());
                } catch (TimeoutException e3) {
                    throw new XMAuthericationException(e3);
                }
            }
        };
    }

    @Deprecated
    public static void startGetAccessToken(Activity activity, long clientId, String redirecURI, Bundle options, int requestCode) {
        Log.w(TAG, "you are calling startGetAccessToken(). Is still works but it is deprecated. Instead please use \n                XiaomiOAuthFuture<XiaomiOAuthResults> future = new XiaomiOAuthorize()\n                        .setAppId(appId)\n                        .setRedirectUrl(redirectUri)\n                        .setScope(scope)\n                        .setAllowSwitchAccount(true)\n                        .startGetAccessToken(acitivity);\n                XiaomiOAuthResults results = future.getResult();//call on background thread.\nIt provides better user experience! Checkout the Demo codes!");
        startGetOAuthorize(activity, clientId, redirecURI, TYPE_TOKEN, options, requestCode);
    }

    @Deprecated
    public static void startGetOAuthCode(Activity activity, long clientId, String redirecURI, Bundle options, int requestCode) {
        Log.w(TAG, "you are calling startGetOAuthCode(). Is still works but it is deprecated. Instead please use \n                XiaomiOAuthFuture<XiaomiOAuthResults> future = new XiaomiOAuthorize()\n                        .setAppId(appId)\n                        .setRedirectUrl(redirectUri)\n                        .setScope(scope)\n                        .setAllowSwitchAccount(true)\n                        .startGetOAuthCode(acitivity);\n                XiaomiOAuthResults results = future.getResult();//call on background thread.\nIt provides better user experience! Checkout the Demo codes!");
        startGetOAuthorize(activity, clientId, redirecURI, "code", options, requestCode);
    }

    /* JADX WARN: Type inference failed for: r5v11, types: [com.xiaomi.account.openauth.XiaomiOAuthorize$3] */
    @Deprecated
    private static void startGetOAuthorize(final Activity activity, long clientId, String redirecURI, final String typeCode, Bundle options, final int requestCode) {
        if (options == null) {
            options = new Bundle();
        }
        int[] scope = scopeStringToIntArray(options.getString(XiaomiOAuthConstants.EXTRA_SCOPE));
        String state = options.getString(XiaomiOAuthConstants.EXTRA_STATE);
        XiaomiOAuthorize x = new XiaomiOAuthorize().setAppId(clientId).setRedirectUrl(redirecURI).setScope(scope).setState(state);
        if (options.containsKey(XiaomiOAuthConstants.EXTRA_SKIP_CONFIRM)) {
            x.setSkipConfirm(options.getBoolean(XiaomiOAuthConstants.EXTRA_SKIP_CONFIRM));
        }
        final XiaomiOAuthFuture<XiaomiOAuthResults> y = "code".equalsIgnoreCase(typeCode) ? x.startGetOAuthCode(activity) : x.startGetAccessToken(activity);
        new AsyncTask<Void, Void, XiaomiOAuthResults>() { // from class: com.xiaomi.account.openauth.XiaomiOAuthorize.3

            /* renamed from: e */
            Exception f1462e;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public XiaomiOAuthResults doInBackground(Void... params) {
                try {
                    return (XiaomiOAuthResults) XiaomiOAuthFuture.this.mo1883getResult();
                } catch (OperationCanceledException e) {
                    e.printStackTrace();
                    return null;
                } catch (XMAuthericationException e2) {
                    this.f1462e = e2;
                    return null;
                } catch (IOException e3) {
                    this.f1462e = e3;
                    return null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(XiaomiOAuthResults result) {
                int resultCode;
                Bundle bundle = new Bundle();
                if (result == null) {
                    if (this.f1462e == null) {
                        resultCode = AuthorizeActivityBase.RESULT_CANCEL;
                        bundle.putInt("error", AuthorizeActivityBase.RESULT_CANCEL);
                        bundle.putString("error_description", "canceled");
                    } else {
                        resultCode = AuthorizeActivityBase.RESULT_FAIL;
                        bundle.putInt("error", AuthorizeActivityBase.RESULT_FAIL);
                        bundle.putString("error_description", this.f1462e.getMessage());
                    }
                } else if (result.hasError()) {
                    resultCode = AuthorizeActivityBase.RESULT_FAIL;
                    bundle.putInt("error", result.getErrorCode());
                    bundle.putString("error_description", result.getErrorMessage());
                } else {
                    resultCode = AuthorizeActivityBase.RESULT_SUCCESS;
                    if ("code".equalsIgnoreCase(typeCode)) {
                        bundle.putString("code", result.getCode());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_STATE_2, result.getState());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_TOKEN_TYPE_2, result.getTokenType());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_MAC_KEY_2, result.getMacKey());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_MAC_ALGORITHM_2, result.getMacAlgorithm());
                    } else {
                        bundle.putString("access_token", result.getAccessToken());
                        bundle.putString("expires_in", result.getExpiresIn());
                        bundle.putString("scope", result.getScopes());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_STATE_2, result.getState());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_TOKEN_TYPE_2, result.getTokenType());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_MAC_KEY_2, result.getMacKey());
                        bundle.putString(XiaomiOAuthConstants.EXTRA_MAC_ALGORITHM_2, result.getMacAlgorithm());
                    }
                }
                activity.startActivityForResult(AuthorizeActivityBase.asMiddleActivity(activity, resultCode, bundle, XiaomiOAuthorize.DEFAULT_AUTHORIZE_ACTIVITY_CLASS), requestCode);
            }
        }.execute(new Void[0]);
    }

    @Deprecated
    private static int[] scopeStringToIntArray(String scopeString) {
        String[] split;
        ArrayList<Integer> scopeArray = new ArrayList<>();
        if (scopeString != null) {
            for (String x : scopeString.split(" ")) {
                try {
                    scopeArray.add(Integer.valueOf(x));
                } catch (NumberFormatException e) {
                }
            }
        }
        int[] scope = new int[scopeArray.size()];
        for (int i = 0; i < scope.length; i++) {
            scope[i] = scopeArray.get(i).intValue();
        }
        return scope;
    }
}
