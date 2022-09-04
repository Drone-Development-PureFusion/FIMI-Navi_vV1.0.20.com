.class Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AuthorizeActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/openauth/AuthorizeActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthorizeWebViewClient"
.end annotation


# instance fields
.field private final mRedirectUrlOf3rdPartyApp:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/openauth/AuthorizeActivityBase;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/account/openauth/AuthorizeActivityBase;
    .param p2, "redirectUrlOf3rdPartyApp"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 201
    iput-object p2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->mRedirectUrlOf3rdPartyApp:Ljava/lang/String;

    .line 202
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onHideProgress()V

    .line 225
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onShowProgress()V

    .line 219
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 220
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onShowErrorUI()V

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onShowErrorUI()V

    .line 213
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 214
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->mRedirectUrlOf3rdPartyApp:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->mRedirectUrlOf3rdPartyApp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    .line 240
    :goto_0
    return v1

    .line 235
    :cond_0
    invoke-static {p2}, Lcom/xiaomi/account/utils/OAuthUrlPaser;->parse(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 236
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 237
    iget-object v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    sget v2, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_SUCCESS:I

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->setResultAndFinish(ILandroid/os/Bundle;)V

    .line 238
    const/4 v1, 0x1

    goto :goto_0

    .line 240
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
