.class public abstract Lcom/xiaomi/account/openauth/AuthorizeActivityBase;
.super Landroid/app/Activity;
.source "AuthorizeActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;
    }
.end annotation


# static fields
.field public static final KEY_KEEP_COOKIES:Ljava/lang/String; = "extra_keep_cookies "

.field private static final KEY_MY_BUNDLE:Ljava/lang/String; = "extra_my_bundle"

.field private static final KEY_MY_INTENT:Ljava/lang/String; = "extra_my_intent"

.field public static final KEY_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field public static final KEY_RESPONSE:Ljava/lang/String; = "extra_response"

.field private static final KEY_RESULT_CODE:Ljava/lang/String; = "extra_result_code"

.field public static final KEY_SERVICETOKEN:Ljava/lang/String; = "serviceToken"

.field public static final KEY_USERID:Ljava/lang/String; = "userid"

.field private static final REQUEST_CODE:I = 0x3e9

.field public static RESULT_CANCEL:I = 0x0

.field public static RESULT_FAIL:I = 0x0

.field public static RESULT_SUCCESS:I = 0x0

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mKeepCookies:Z

.field private mMiddleActivityMode:Z

.field private mResponse:Lcom/xiaomi/account/XiaomiOAuthResponse;

.field private mSettings:Landroid/webkit/WebSettings;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_SUCCESS:I

    .line 36
    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_FAIL:I

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_CANCEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mKeepCookies:Z

    .line 57
    iput-boolean v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mMiddleActivityMode:Z

    return-void
.end method

.method private appendPassportUserAgent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 246
    iget-object v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "ua":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    const-string v1, "%s Passport/OAuthSDK/%d.%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 249
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const/16 v4, 0x43

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 248
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 252
    :cond_0
    return-void
.end method

.method public static asMiddleActivity(Landroid/app/Activity;ILandroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resultCode"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 190
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaomi/account/openauth/AuthorizeActivityBase;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_my_bundle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 192
    const-string v1, "extra_result_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    return-object v0
.end method

.method public static asMiddleActivity(Landroid/app/Activity;Landroid/content/Intent;Lcom/xiaomi/account/IXiaomiAuthResponse;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "realIntent"    # Landroid/content/Intent;
    .param p2, "resp"    # Lcom/xiaomi/account/IXiaomiAuthResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            "Lcom/xiaomi/account/IXiaomiAuthResponse;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 180
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaomi/account/openauth/AuthorizeActivityBase;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_my_intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 182
    const-string v1, "extra_response"

    new-instance v2, Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-direct {v2, p2}, Lcom/xiaomi/account/XiaomiOAuthResponse;-><init>(Lcom/xiaomi/account/IXiaomiAuthResponse;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    return-object v0
.end method

.method private removeCookiesIfNeeded()V
    .locals 2

    .prologue
    .line 169
    iget-boolean v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mKeepCookies:Z

    if-nez v1, :cond_0

    .line 170
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 171
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 172
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 174
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_0
    return-void
.end method


# virtual methods
.method protected final getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected final isMiddleActivityMode()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mMiddleActivityMode:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 140
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 141
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->setResultAndFinish(ILandroid/os/Bundle;)V

    .line 143
    :cond_0
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    sget v1, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_CANCEL:I

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->setResultAndFinish(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance v8, Lcom/xiaomi/account/utils/ParcelableAttackGuardian;

    invoke-direct {v8}, Lcom/xiaomi/account/utils/ParcelableAttackGuardian;-><init>()V

    invoke-virtual {v8, p0}, Lcom/xiaomi/account/utils/ParcelableAttackGuardian;->safeCheck(Landroid/app/Activity;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->finish()V

    .line 127
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    const-string v8, "extra_my_bundle"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 70
    .local v3, "myBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 71
    const-string v8, "extra_result_code"

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 72
    .local v5, "resultCode":I
    invoke-virtual {p0, v5, v3}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->setResultAndFinish(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 76
    .end local v5    # "resultCode":I
    :cond_1
    const-string v8, "extra_response"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/xiaomi/account/XiaomiOAuthResponse;

    iput-object v8, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mResponse:Lcom/xiaomi/account/XiaomiOAuthResponse;

    .line 78
    const-string v8, "extra_my_intent"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 79
    .local v2, "intentExtra":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 80
    const/16 v8, 0x3e9

    invoke-virtual {p0, v2, v8}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
    iput-boolean v11, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mMiddleActivityMode:Z

    goto :goto_0

    .line 85
    :cond_2
    const-string v8, "extra_keep_cookies "

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mKeepCookies:Z

    .line 88
    new-instance v8, Landroid/webkit/WebView;

    invoke-direct {v8, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    .line 89
    iget-object v8, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    iput-object v8, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mSettings:Landroid/webkit/WebSettings;

    .line 91
    iget-object v8, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v8, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 94
    iget-object v8, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v8, v10}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 95
    iget-object v8, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v8, v10}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 97
    const-string v8, "url"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mUrl:Ljava/lang/String;

    .line 99
    if-nez p1, :cond_3

    .line 100
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->removeCookiesIfNeeded()V

    .line 103
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->appendPassportUserAgent()V

    .line 105
    const-string v8, "redirect_uri"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "redirectUrlOf3rdPartyApp":Ljava/lang/String;
    iget-object v8, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    new-instance v9, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;

    invoke-direct {v9, p0, v4}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;-><init>(Lcom/xiaomi/account/openauth/AuthorizeActivityBase;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 107
    iget-object v8, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    new-instance v9, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$1;

    invoke-direct {v9, p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$1;-><init>(Lcom/xiaomi/account/openauth/AuthorizeActivityBase;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 114
    const-string v8, "userid"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, "userID":Ljava/lang/String;
    const-string v8, "serviceToken"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "serviceToken":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 117
    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 118
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 119
    .local v0, "cookieMgr":Landroid/webkit/CookieManager;
    invoke-virtual {v0, v11}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 121
    sget-object v8, Lcom/xiaomi/account/openauth/XiaomiOAuthConstants;->OAUTH2_HOST:Ljava/lang/String;

    invoke-virtual {v0, v8, v7}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v8, Lcom/xiaomi/account/openauth/XiaomiOAuthConstants;->OAUTH2_HOST:Ljava/lang/String;

    invoke-virtual {v0, v8, v6}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 126
    .end local v0    # "cookieMgr":Landroid/webkit/CookieManager;
    :cond_4
    invoke-virtual {p0, v10}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->refreshWebView(Z)V

    goto/16 :goto_0
.end method

.method protected abstract onHideErrorUI()V
.end method

.method protected abstract onHideProgress()V
.end method

.method protected abstract onShowErrorUI()V
.end method

.method protected abstract onShowProgress()V
.end method

.method protected abstract onUpdateProgress(I)V
.end method

.method protected final refreshWebView()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->refreshWebView(Z)V

    .line 256
    return-void
.end method

.method protected final refreshWebView(Z)V
    .locals 2
    .param p1, "hideErrorUiImmediately"    # Z

    .prologue
    .line 259
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 260
    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onHideErrorUI()V

    .line 270
    :goto_0
    return-void

    .line 263
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$2;-><init>(Lcom/xiaomi/account/openauth/AuthorizeActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method setResultAndFinish(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 154
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 155
    iget-object v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mResponse:Lcom/xiaomi/account/XiaomiOAuthResponse;

    if-eqz v1, :cond_1

    .line 156
    if-nez p1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mResponse:Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-virtual {v1}, Lcom/xiaomi/account/XiaomiOAuthResponse;->onCancel()V

    .line 163
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->removeCookiesIfNeeded()V

    .line 165
    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->finish()V

    .line 166
    return-void

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mResponse:Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-virtual {v1, p2}, Lcom/xiaomi/account/XiaomiOAuthResponse;->onResult(Landroid/os/Bundle;)V

    goto :goto_0
.end method
