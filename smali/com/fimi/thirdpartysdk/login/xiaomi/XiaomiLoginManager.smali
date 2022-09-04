.class public Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;
.super Ljava/lang/Object;
.source "XiaomiLoginManager.java"

# interfaces
.implements Lcom/fimi/thirdpartysdk/login/ILogin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;
    }
.end annotation


# instance fields
.field loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

.field private mContext:Landroid/content/Context;

.field private mErrormessage:Ljava/lang/String;

.field private mResults:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

.field xiaoMiEntity:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->mResults:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;Lcom/xiaomi/account/openauth/XiaomiOAuthResults;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;
    .param p1, "x1"    # Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->mResults:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginAuth()V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private loginAuth()V
    .locals 9

    .prologue
    .line 160
    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    invoke-direct {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;-><init>()V

    iget-object v1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->xiaoMiEntity:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;

    iget-object v2, v2, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;->appId:Ljava/lang/String;

    .line 162
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "/user/profile"

    iget-object v5, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->mResults:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    .line 164
    invoke-virtual {v5}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->mResults:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    .line 165
    invoke-virtual {v6}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getMacKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->mResults:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    .line 166
    invoke-virtual {v7}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getMacAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 161
    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->callOpenApi(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v8

    .line 167
    .local v8, "futureProfile":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<Ljava/lang/String;>;"
    new-instance v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;

    invoke-direct {v0, p0, v8}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;-><init>(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 208
    invoke-virtual {v0, v1}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 210
    return-void
.end method

.method private waitAndShowFutureResult(Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "future":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<TV;>;"
    new-instance v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;

    invoke-direct {v0, p0, p1}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;-><init>(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 155
    invoke-virtual {v0, v1}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    return-void
.end method


# virtual methods
.method public getXiaoMiEntity(Lcom/fimi/host/common/ProductEnum;)Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;
    .locals 2
    .param p1, "product"    # Lcom/fimi/host/common/ProductEnum;

    .prologue
    .line 52
    new-instance v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;

    invoke-direct {v0, p0}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;-><init>(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;)V

    .line 53
    .local v0, "xiaoMiEntity":Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;
    const-string v1, "http://www.fimi.com"

    iput-object v1, v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;->redirectUri:Ljava/lang/String;

    .line 54
    sget-object v1, Lcom/fimi/host/common/ProductEnum;->X9:Lcom/fimi/host/common/ProductEnum;

    invoke-virtual {p1, v1}, Lcom/fimi/host/common/ProductEnum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "2882303761517615393"

    iput-object v1, v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;->appId:Ljava/lang/String;

    .line 61
    :goto_0
    return-object v0

    .line 56
    :cond_0
    sget-object v1, Lcom/fimi/host/common/ProductEnum;->GH2:Lcom/fimi/host/common/ProductEnum;

    invoke-virtual {p1, v1}, Lcom/fimi/host/common/ProductEnum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const-string v1, "2882303761517778764"

    iput-object v1, v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;->appId:Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_1
    const-string v1, "2882303761517855809"

    iput-object v1, v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;->appId:Ljava/lang/String;

    goto :goto_0
.end method

.method public login(Landroid/content/Context;Lcom/fimi/thirdpartysdk/login/LoginCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/fimi/thirdpartysdk/login/LoginCallback;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    iput-object p1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    .line 69
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 70
    .local v2, "scopes":[I
    sget-object v3, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    invoke-virtual {p0, v3}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->getXiaoMiEntity(Lcom/fimi/host/common/ProductEnum;)Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->xiaoMiEntity:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;

    .line 71
    aput v5, v2, v4

    .line 72
    const/4 v3, 0x3

    aput v3, v2, v5

    .line 74
    :try_start_0
    new-instance v3, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    invoke-direct {v3}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;-><init>()V

    iget-object v4, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->xiaoMiEntity:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;

    iget-object v4, v4, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;->appId:Ljava/lang/String;

    .line 75
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setAppId(J)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->xiaoMiEntity:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;

    iget-object v4, v4, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;->redirectUri:Ljava/lang/String;

    .line 76
    invoke-virtual {v3, v4}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setRedirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v3

    const/4 v4, 0x0

    .line 77
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setScope([I)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v3

    const/4 v4, 0x1

    .line 78
    invoke-virtual {v3, v4}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setKeepCookies(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v3

    const/4 v4, 0x0

    .line 79
    invoke-virtual {v3, v4}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setNoMiui(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v3

    const/4 v4, 0x0

    .line 80
    invoke-virtual {v3, v4}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setSkipConfirm(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v3

    check-cast p1, Landroid/app/Activity;

    .line 81
    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {v3, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetAccessToken(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v1

    .line 82
    .local v1, "future":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<Lcom/xiaomi/account/openauth/XiaomiOAuthResults;>;"
    invoke-direct {p0, v1}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->waitAndShowFutureResult(Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "future":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<Lcom/xiaomi/account/openauth/XiaomiOAuthResults;>;"
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    iget-object v3, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    iget-object v4, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/thirdpartysdk/R$string;->login_result:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/fimi/thirdpartysdk/login/LoginCallback;->loginFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 95
    return-void
.end method
