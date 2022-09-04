.class public Lcom/fimi/libperson/presenter/ThirdLoginPresenter;
.super Ljava/lang/Object;
.source "ThirdLoginPresenter.java"


# static fields
.field private static final DELAY:I = 0xc350

.field private static final sUPDATE_PROGRESS:I = 0x1


# instance fields
.field loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mThirdLoginManager:Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;


# direct methods
.method public constructor <init>(Lcom/fimi/libperson/ivew/IThirdLoginView;)V
    .locals 1
    .param p1, "loginView"    # Lcom/fimi/libperson/ivew/IThirdLoginView;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$1;

    invoke-direct {v0, p0}, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$1;-><init>(Lcom/fimi/libperson/presenter/ThirdLoginPresenter;)V

    iput-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    .line 61
    check-cast p1, Landroid/content/Context;

    .end local p1    # "loginView":Lcom/fimi/libperson/ivew/IThirdLoginView;
    iput-object p1, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {}, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;->getInstance()Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mThirdLoginManager:Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;

    .line 63
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mThirdLoginManager:Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;

    invoke-virtual {v0}, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;->init()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/presenter/ThirdLoginPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/presenter/ThirdLoginPresenter;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->getFwDetail()V

    return-void
.end method

.method public static checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 302
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v1

    .line 306
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    const/4 v1, 0x1

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private getFwDetail()V
    .locals 3

    .prologue
    .line 268
    new-instance v0, Lcom/fimi/network/FwManager;

    invoke-direct {v0}, Lcom/fimi/network/FwManager;-><init>()V

    .line 269
    .local v0, "x9FwManager":Lcom/fimi/network/FwManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveFirmwareDetail(Ljava/util/List;)V

    .line 270
    new-instance v1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v2, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$5;

    invoke-direct {v2, p0}, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$5;-><init>(Lcom/fimi/libperson/presenter/ThirdLoginPresenter;)V

    invoke-direct {v1, v2}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, v1}, Lcom/fimi/network/FwManager;->getX9FwNetDetail(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 299
    return-void
.end method


# virtual methods
.method public loginFacebook()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 68
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fimi/kernel/utils/AbAppUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    invoke-interface {v0, v1}, Lcom/fimi/libperson/ivew/IThirdLoginView;->updateProgress(Z)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mThirdLoginManager:Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;

    const-string v1, "2"

    iget-object v2, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$2;

    invoke-direct {v3, p0}, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$2;-><init>(Lcom/fimi/libperson/presenter/ThirdLoginPresenter;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;->login(Ljava/lang/String;Landroid/content/Context;Lcom/fimi/thirdpartysdk/login/LoginCallback;)V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/libperson/R$string;->network_exception:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/libperson/ivew/IThirdLoginView;->loginThirdListener(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public loginMi()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 195
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fimi/kernel/utils/AbAppUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    invoke-interface {v0, v1}, Lcom/fimi/libperson/ivew/IThirdLoginView;->updateProgress(Z)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 201
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mThirdLoginManager:Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;

    const-string v1, "1"

    iget-object v2, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;

    invoke-direct {v3, p0}, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$4;-><init>(Lcom/fimi/libperson/presenter/ThirdLoginPresenter;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;->login(Ljava/lang/String;Landroid/content/Context;Lcom/fimi/thirdpartysdk/login/LoginCallback;)V

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/libperson/R$string;->network_exception:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/libperson/ivew/IThirdLoginView;->loginThirdListener(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public loginTwitter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 125
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    const-string v1, "com.twitter.android"

    invoke-static {v0, v1}, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    sget v1, Lcom/fimi/libperson/R$string;->login_install_twitter:I

    invoke-static {v0, v1, v4}, Lcom/fimi/kernel/utils/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fimi/kernel/utils/AbAppUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    invoke-interface {v0, v4}, Lcom/fimi/libperson/ivew/IThirdLoginView;->updateProgress(Z)V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mThirdLoginManager:Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;

    const-string v1, "3"

    iget-object v2, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$3;

    invoke-direct {v3, p0}, Lcom/fimi/libperson/presenter/ThirdLoginPresenter$3;-><init>(Lcom/fimi/libperson/presenter/ThirdLoginPresenter;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;->login(Ljava/lang/String;Landroid/content/Context;Lcom/fimi/thirdpartysdk/login/LoginCallback;)V

    goto :goto_0

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->loginView:Lcom/fimi/libperson/ivew/IThirdLoginView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/libperson/R$string;->network_exception:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/libperson/ivew/IThirdLoginView;->loginThirdListener(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mThirdLoginManager:Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 189
    return-void
.end method

.method public setPause()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ThirdLoginPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    return-void
.end method
