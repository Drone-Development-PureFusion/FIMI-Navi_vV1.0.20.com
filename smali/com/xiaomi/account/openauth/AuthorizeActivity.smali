.class public Lcom/xiaomi/account/openauth/AuthorizeActivity;
.super Lcom/xiaomi/account/openauth/AuthorizeActivityBase;
.source "AuthorizeActivity.java"


# static fields
.field public static RESULT_CANCEL:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static RESULT_FAIL:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static RESULT_SUCCESS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_SUCCESS:I

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_SUCCESS:I

    .line 19
    sget v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_FAIL:I

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_FAIL:I

    .line 22
    sget v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_CANCEL:I

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_CANCEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 29
    invoke-super {p0, p1}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->isMiddleActivityMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-super {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 37
    .local v1, "mWebView":Landroid/webkit/WebView;
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "layout":Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v2, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 44
    iget-object v2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->isMiddleActivityMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v2

    .line 56
    :cond_1
    const-string v0, "refresh"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    .line 57
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    const v1, 0x108007d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 58
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 59
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    new-instance v1, Lcom/xiaomi/account/openauth/AuthorizeActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/openauth/AuthorizeActivity$1;-><init>(Lcom/xiaomi/account/openauth/AuthorizeActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 66
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onHideErrorUI()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 83
    :cond_0
    return-void
.end method

.method protected onHideProgress()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    :cond_0
    return-void
.end method

.method protected onShowErrorUI()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 76
    :cond_0
    return-void
.end method

.method protected onShowProgress()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 104
    :cond_0
    return-void
.end method

.method protected onUpdateProgress(I)V
    .locals 1
    .param p1, "newProgress"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 90
    :cond_0
    return-void
.end method
