.class public Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;
.super Lcom/fimi/libperson/BasePersonActivity;
.source "UserProtocolWebViewActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserProtocolWebViewActi"


# instance fields
.field private mBtnBack:Landroid/widget/Button;

.field mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

.field private mTitleView:Lcom/fimi/libperson/widget/TitleView;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/fimi/libperson/BasePersonActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 53
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "web_url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "web_title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "title":Ljava/lang/String;
    sget v2, Lcom/fimi/libperson/R$id;->title_view:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/libperson/widget/TitleView;

    iput-object v2, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    .line 56
    iget-object v2, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v2, v0}, Lcom/fimi/libperson/widget/TitleView;->setTvTitle(Ljava/lang/String;)V

    .line 57
    sget v2, Lcom/fimi/libperson/R$id;->btn_back:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->mBtnBack:Landroid/widget/Button;

    .line 58
    sget v2, Lcom/fimi/libperson/R$id;->web_view:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->webView:Landroid/webkit/WebView;

    .line 59
    iget-object v2, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 60
    iget-object v2, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 61
    invoke-static {p0}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x7d0

    if-lt v2, v3, :cond_0

    .line 62
    iget-object v2, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 64
    :cond_0
    new-instance v2, Lcom/fimi/widget/NetworkDialog;

    iget-object v3, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->mContext:Landroid/content/Context;

    sget v4, Lcom/fimi/sdk/R$style;->network_load_progress_dialog:I

    invoke-direct {v2, v3, v4, v5}, Lcom/fimi/widget/NetworkDialog;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    .line 66
    iget-object v2, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1;

    invoke-direct {v3, p0}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1;-><init>(Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 99
    iget-object v2, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$2;

    invoke-direct {v3, p0}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$2;-><init>(Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 135
    iget-object v2, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$3;-><init>(Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    return-void
.end method


# virtual methods
.method public doTrans()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    new-instance v1, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$4;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$4;-><init>(Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/widget/TitleView;->setIvLeftListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/fimi/libperson/R$layout;->activity_user_protocol_web_view:I

    return v0
.end method

.method public initData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->initView()V

    .line 46
    iget-object v1, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v1}, Lcom/fimi/libperson/widget/TitleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;

    .line 48
    .local v0, "params":Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;
    iget v1, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->statusBarHeight:I

    iget v2, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->marginStatus:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 49
    iget-object v1, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v1, v0}, Lcom/fimi/libperson/widget/TitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->finish()V

    goto :goto_0
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 32
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->StatusBarLightMode(Landroid/app/Activity;)I

    .line 35
    return-void
.end method
