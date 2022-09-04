package com.xiaomi.account.openauth;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.xiaomi.account.IXiaomiAuthResponse;
import com.xiaomi.account.XiaomiOAuthResponse;
import com.xiaomi.account.utils.OAuthUrlPaser;
import com.xiaomi.account.utils.ParcelableAttackGuardian;
/* loaded from: classes2.dex */
public abstract class AuthorizeActivityBase extends Activity {
    public static final String KEY_KEEP_COOKIES = "extra_keep_cookies ";
    private static final String KEY_MY_BUNDLE = "extra_my_bundle";
    private static final String KEY_MY_INTENT = "extra_my_intent";
    public static final String KEY_REDIRECT_URI = "redirect_uri";
    public static final String KEY_RESPONSE = "extra_response";
    private static final String KEY_RESULT_CODE = "extra_result_code";
    public static final String KEY_SERVICETOKEN = "serviceToken";
    public static final String KEY_USERID = "userid";
    private static final int REQUEST_CODE = 1001;
    private static final String UTF8 = "UTF-8";
    private boolean mKeepCookies = false;
    private boolean mMiddleActivityMode = false;
    private XiaomiOAuthResponse mResponse;
    private WebSettings mSettings;
    private String mUrl;
    private WebView mWebView;
    public static int RESULT_SUCCESS = -1;
    public static int RESULT_FAIL = 1;
    public static int RESULT_CANCEL = 0;

    protected abstract void onHideErrorUI();

    protected abstract void onHideProgress();

    protected abstract void onShowErrorUI();

    protected abstract void onShowProgress();

    protected abstract void onUpdateProgress(int i);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (!new ParcelableAttackGuardian().safeCheck(this)) {
            finish();
            return;
        }
        Intent intent = getIntent();
        Bundle myBundle = intent.getBundleExtra(KEY_MY_BUNDLE);
        if (myBundle != null) {
            int resultCode = intent.getIntExtra(KEY_RESULT_CODE, -1);
            setResultAndFinish(resultCode, myBundle);
            return;
        }
        this.mResponse = (XiaomiOAuthResponse) intent.getParcelableExtra("extra_response");
        Intent intentExtra = (Intent) intent.getParcelableExtra(KEY_MY_INTENT);
        if (intentExtra != null) {
            startActivityForResult(intentExtra, 1001);
            this.mMiddleActivityMode = true;
            return;
        }
        this.mKeepCookies = intent.getBooleanExtra(KEY_KEEP_COOKIES, false);
        this.mWebView = new WebView(this);
        this.mSettings = this.mWebView.getSettings();
        this.mSettings.setJavaScriptEnabled(true);
        this.mSettings.setSavePassword(false);
        this.mSettings.setSaveFormData(false);
        this.mUrl = intent.getStringExtra("url");
        if (savedInstanceState == null) {
            removeCookiesIfNeeded();
        }
        appendPassportUserAgent();
        String redirectUrlOf3rdPartyApp = intent.getStringExtra("redirect_uri");
        this.mWebView.setWebViewClient(new AuthorizeWebViewClient(redirectUrlOf3rdPartyApp));
        this.mWebView.setWebChromeClient(new WebChromeClient() { // from class: com.xiaomi.account.openauth.AuthorizeActivityBase.1
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView view, int newProgress) {
                AuthorizeActivityBase.this.onUpdateProgress(newProgress);
            }
        });
        String userID = intent.getStringExtra(KEY_USERID);
        String serviceToken = intent.getStringExtra(KEY_SERVICETOKEN);
        if (!TextUtils.isEmpty(userID) && !TextUtils.isEmpty(serviceToken)) {
            CookieSyncManager.createInstance(getApplicationContext());
            CookieManager cookieMgr = CookieManager.getInstance();
            cookieMgr.setAcceptCookie(true);
            cookieMgr.setCookie(XiaomiOAuthConstants.OAUTH2_HOST, userID);
            cookieMgr.setCookie(XiaomiOAuthConstants.OAUTH2_HOST, serviceToken);
            CookieSyncManager.getInstance().sync();
        }
        refreshWebView(false);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mWebView.canGoBack()) {
            this.mWebView.goBack();
        } else {
            setResultAndFinish(RESULT_CANCEL, null);
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 1001) {
            setResultAndFinish(resultCode, data != null ? data.getExtras() : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final WebView getWebView() {
        return this.mWebView;
    }

    void setResultAndFinish(int resultCode, Bundle bundle) {
        Intent intent = new Intent();
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        setResult(resultCode, intent);
        if (this.mResponse != null) {
            if (resultCode == 0) {
                this.mResponse.onCancel();
            } else {
                this.mResponse.onResult(bundle);
            }
        }
        removeCookiesIfNeeded();
        finish();
    }

    private void removeCookiesIfNeeded() {
        if (!this.mKeepCookies) {
            CookieSyncManager.createInstance(this);
            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.removeAllCookie();
        }
    }

    public static Intent asMiddleActivity(Activity activity, Intent realIntent, IXiaomiAuthResponse resp, Class<? extends AuthorizeActivityBase> clazz) {
        Intent intent = new Intent(activity, clazz);
        intent.putExtra(KEY_MY_INTENT, realIntent);
        intent.putExtra("extra_response", new XiaomiOAuthResponse(resp));
        return intent;
    }

    public static Intent asMiddleActivity(Activity activity, int resultCode, Bundle bundle, Class<? extends AuthorizeActivityBase> clazz) {
        Intent intent = new Intent(activity, clazz);
        intent.putExtra(KEY_MY_BUNDLE, bundle);
        intent.putExtra(KEY_RESULT_CODE, resultCode);
        return intent;
    }

    /* loaded from: classes2.dex */
    class AuthorizeWebViewClient extends WebViewClient {
        private final String mRedirectUrlOf3rdPartyApp;

        AuthorizeWebViewClient(String redirectUrlOf3rdPartyApp) {
            this.mRedirectUrlOf3rdPartyApp = redirectUrlOf3rdPartyApp;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            AuthorizeActivityBase.this.onShowErrorUI();
            super.onReceivedError(view, errorCode, description, failingUrl);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
            AuthorizeActivityBase.this.onShowErrorUI();
            super.onReceivedSslError(view, handler, error);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            AuthorizeActivityBase.this.onShowProgress();
            super.onPageStarted(view, url, favicon);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            AuthorizeActivityBase.this.onHideProgress();
            super.onPageFinished(view, url);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            if (this.mRedirectUrlOf3rdPartyApp != null && !url.toLowerCase().startsWith(this.mRedirectUrlOf3rdPartyApp.toLowerCase())) {
                return super.shouldOverrideUrlLoading(view, url);
            }
            Bundle bundle = OAuthUrlPaser.parse(url);
            if (bundle != null) {
                AuthorizeActivityBase.this.setResultAndFinish(AuthorizeActivityBase.RESULT_SUCCESS, bundle);
                return true;
            }
            return super.shouldOverrideUrlLoading(view, url);
        }
    }

    private void appendPassportUserAgent() {
        String ua = this.mSettings.getUserAgentString();
        if (!TextUtils.isEmpty(ua)) {
            this.mSettings.setUserAgentString(String.format("%s Passport/OAuthSDK/%d.%d", ua, 1, 67));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void refreshWebView() {
        refreshWebView(true);
    }

    protected final void refreshWebView(boolean hideErrorUiImmediately) {
        this.mWebView.loadUrl(this.mUrl);
        if (hideErrorUiImmediately) {
            onHideErrorUI();
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.xiaomi.account.openauth.AuthorizeActivityBase.2
                @Override // java.lang.Runnable
                public void run() {
                    AuthorizeActivityBase.this.onHideErrorUI();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isMiddleActivityMode() {
        return this.mMiddleActivityMode;
    }
}
