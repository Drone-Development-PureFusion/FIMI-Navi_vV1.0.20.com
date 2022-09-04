package com.xiaomi.account.auth;

import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import ch.qos.logback.classic.spi.CallerData;
import com.facebook.internal.ServerProtocol;
import com.fimi.kernel.connect.tcp.SocketOption;
import com.xiaomi.account.IXiaomiAuthResponse;
import com.xiaomi.account.XiaomiOAuthResponse;
import com.xiaomi.account.http.HttpClient;
import com.xiaomi.account.http.Request;
import com.xiaomi.account.http.Response;
import com.xiaomi.account.http.UrlConnHttpFactory;
import com.xiaomi.account.openauth.AccountAuth;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.account.openauth.XMAuthericationException;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.account.openauth.XiaomiOAuthFuture;
import com.xiaomi.account.openauth.XiaomiOAuthResults;
import com.xiaomi.account.utils.OAuthUrlPaser;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
/* loaded from: classes2.dex */
public class WebViewOauth implements XiaomiOAuth {
    private static final String AUTHORIZE_PATH = XiaomiOAuthConstants.OAUTH2_HOST + "/oauth2/authorize";
    private static final String LOCALE_KEY_IN_URL = "_locale";
    private static final String TAG = "WebViewOauth";
    private String mAppId;
    private Context mContext;
    private String mRedirectUrl;

    public WebViewOauth(Context context, String appId, String redirectUrl) {
        this.mContext = context;
        this.mAppId = appId;
        this.mRedirectUrl = redirectUrl;
    }

    @Override // com.xiaomi.account.auth.XiaomiOAuth
    public XiaomiOAuthFuture<XiaomiOAuthResults> fastOAuth(Activity activity, OAuthConfig config) {
        return new XiaomiOAuthFuture<XiaomiOAuthResults>() { // from class: com.xiaomi.account.auth.WebViewOauth.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.xiaomi.account.openauth.XiaomiOAuthFuture
            /* renamed from: getResult */
            public XiaomiOAuthResults mo1883getResult() throws OperationCanceledException, IOException, XMAuthericationException {
                throw new XMAuthericationException("only miui support fastOAuth");
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.xiaomi.account.openauth.XiaomiOAuthFuture
            /* renamed from: getResult */
            public XiaomiOAuthResults mo1884getResult(long timeout, TimeUnit unit) throws OperationCanceledException, IOException, XMAuthericationException {
                throw new XMAuthericationException("only miui support fastOAuth");
            }
        };
    }

    @Override // com.xiaomi.account.auth.XiaomiOAuth
    public XiaomiOAuthFuture<XiaomiOAuthResults> getCodeOrAccessToken(Activity activity, final OAuthConfig config) {
        final WeakReference<Activity> mActivityWeakReference = new WeakReference<>(activity);
        final XiaomiOAuthFutureImpl<XiaomiOAuthResults> future = new XiaomiOAuthFutureImpl<>();
        AsyncTask.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.xiaomi.account.auth.WebViewOauth.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    XiaomiOAuthResults results = WebViewOauth.this.quietOAuth(config);
                    future.set(results);
                } catch (AuthenticatorException e) {
                    Activity clientActivity = (Activity) mActivityWeakReference.get();
                    if (clientActivity != null && !clientActivity.isFinishing()) {
                        Intent intent = WebViewOauth.this.getIntent(clientActivity, config, new IXiaomiAuthResponse.Stub() { // from class: com.xiaomi.account.auth.WebViewOauth.2.1
                            @Override // com.xiaomi.account.IXiaomiAuthResponse
                            public void onResult(Bundle bundle) throws RemoteException {
                                future.set(XiaomiOAuthResults.parseBundle(bundle));
                            }

                            @Override // com.xiaomi.account.IXiaomiAuthResponse
                            public void onCancel() throws RemoteException {
                                future.setException(new OperationCanceledException());
                            }
                        });
                        clientActivity.startActivity(intent);
                        return;
                    }
                    future.setException(new AuthenticatorException("activity has been finished"));
                } catch (XMAuthericationException e2) {
                    future.setException(e2);
                } catch (IOException e3) {
                    future.setException(e3);
                }
            }
        });
        return future;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public XiaomiOAuthResults quietOAuth(OAuthConfig config) throws AuthenticatorException, IOException, XMAuthericationException {
        if (config.accountAuth == null) {
            throw new AuthenticatorException();
        }
        AccountAuth accountAuth = config.accountAuth;
        for (int i = 0; i < 2; i++) {
            HttpClient httpClient = new UrlConnHttpFactory().createHttpClient();
            Map<String, String> headers = new HashMap<>();
            Map<String, String> cookies = new HashMap<>();
            cookies.put("userId", accountAuth.getUserId());
            cookies.put(AuthorizeActivityBase.KEY_SERVICETOKEN, accountAuth.getServiceToken());
            headers.put("Cookie", joinMap(cookies, "; "));
            Request request = new Request.Builder().url(getUrl(config)).followRedirects(false).headers(headers).build();
            Response response = httpClient.excute(request);
            if (response.location == null) {
                throw new AuthenticatorException();
            }
            if (response.location.startsWith(this.mRedirectUrl)) {
                Bundle bundle = OAuthUrlPaser.parse(response.location);
                if (bundle == null) {
                    throw new XMAuthericationException("parse url fail:" + response.location);
                }
                return XiaomiOAuthResults.parseBundle(bundle);
            }
            accountAuth.invalideServiceToken();
        }
        throw new AuthenticatorException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Intent getIntent(Activity activity, OAuthConfig config, IXiaomiAuthResponse resp) {
        Intent intent = new Intent(activity, config.authorizeActivityClazz);
        intent.putExtra("url", getUrl(config));
        intent.putExtra(AuthorizeActivityBase.KEY_KEEP_COOKIES, config.keepCookies);
        intent.putExtra("extra_response", new XiaomiOAuthResponse(resp));
        AccountAuth accountAuth = config.accountAuth;
        if (accountAuth != null) {
            Map<String, String> cookies = new HashMap<>();
            cookies.put("userId", accountAuth.getUserId());
            cookies.put(AuthorizeActivityBase.KEY_SERVICETOKEN, accountAuth.getServiceToken());
            intent.putExtra(AuthorizeActivityBase.KEY_USERID, "userId=" + accountAuth.getUserId());
            intent.putExtra(AuthorizeActivityBase.KEY_SERVICETOKEN, "serviceToken=" + accountAuth.getServiceToken());
        }
        return intent;
    }

    private String getUrl(OAuthConfig config) {
        Bundle basicBundle = new Bundle();
        basicBundle.putString("client_id", this.mAppId);
        basicBundle.putString("redirect_uri", this.mRedirectUrl);
        basicBundle.putString(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, config.responseType);
        basicBundle.putString("scope", config.scopes);
        basicBundle.putString(XiaomiOAuthConstants.EXTRA_STATE_2, config.state);
        if (config.skipConfirm != null) {
            basicBundle.putString("skip_confirm", String.valueOf(config.skipConfirm));
        }
        basicBundle.putString("pt", "" + config.platform);
        basicBundle.putString("device_id", config.deviceID);
        addLocaleIfNeeded(basicBundle);
        return AUTHORIZE_PATH + CallerData.f38NA + parseBundle(basicBundle);
    }

    private void addLocaleIfNeeded(Bundle bundle) {
        if (bundle != null && !bundle.containsKey(LOCALE_KEY_IN_URL)) {
            Locale defaultLocale = Locale.getDefault();
            String localeString = getLocaleString(defaultLocale);
            if (!TextUtils.isEmpty(localeString)) {
                bundle.putString(LOCALE_KEY_IN_URL, localeString);
            }
        }
    }

    private static String getLocaleString(Locale locale) {
        if (locale == null) {
            return null;
        }
        String language = locale.getLanguage();
        String country = locale.getCountry();
        if (TextUtils.isEmpty(country)) {
            return language;
        }
        return String.format("%s_%s", language, country);
    }

    private String parseBundle(Bundle parameters) {
        if (parameters == null) {
            return "";
        }
        List<NameValuePair> list = new ArrayList<>();
        for (String key : parameters.keySet()) {
            String value = parameters.getString(key);
            if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(value)) {
                list.add(new BasicNameValuePair(key, value));
            }
        }
        return URLEncodedUtils.format(list, SocketOption.DEFAULT_CHARSET);
    }

    private String getCookie(String name, String value) {
        return name + "=" + value;
    }

    protected static String joinMap(Map<String, String> map, String sp) {
        if (map == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Set<Map.Entry<String, String>> entries = map.entrySet();
        int i = 0;
        for (Map.Entry<String, String> entry : entries) {
            if (i > 0) {
                sb.append(sp);
            }
            String key = entry.getKey();
            String value = entry.getValue();
            sb.append(key);
            sb.append("=");
            sb.append(value);
            i++;
        }
        return sb.toString();
    }
}
