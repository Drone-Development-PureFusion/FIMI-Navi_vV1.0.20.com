.class public Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
.super Ljava/lang/Object;
.source "XiaomiOAuthorize.java"


# static fields
.field private static final DEFAULT_AUTHORIZE_ACTIVITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "XiaomiOAuthorize"

.field public static final TYPE_CODE:Ljava/lang/String; = "code"

.field public static final TYPE_TOKEN:Ljava/lang/String; = "token"


# instance fields
.field private mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;

    sput-object v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->DEFAULT_AUTHORIZE_ACTIVITY_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-direct {v0}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->DEFAULT_AUTHORIZE_ACTIVITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method private oauth(Landroid/app/Activity;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "responseType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "activity should not be null and should be running"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :cond_1
    new-instance v0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    iget-object v3, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-direct {v0, v3}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;-><init>(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)V

    .line 115
    .local v0, "builder":Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    invoke-virtual {v0, p2}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->responseType(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->build()Lcom/xiaomi/account/auth/OAuthConfig;

    move-result-object v1

    .line 117
    .local v1, "config":Lcom/xiaomi/account/auth/OAuthConfig;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/xiaomi/account/auth/OAuthFactory;->createOAuth(Landroid/content/Context;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/auth/XiaomiOAuth;

    move-result-object v2

    .line 118
    .local v2, "xiaomiOAuth":Lcom/xiaomi/account/auth/XiaomiOAuth;
    invoke-interface {v2, p1, v1}, Lcom/xiaomi/account/auth/XiaomiOAuth;->getCodeOrAccessToken(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v3

    return-object v3
.end method

.method private static scopeStringToIntArray(Ljava/lang/String;)[I
    .locals 8
    .param p0, "scopeString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 294
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v2, "scopeArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    .line 296
    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 298
    .local v3, "x":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 304
    .end local v3    # "x":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [I

    .line 305
    .local v1, "scope":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 306
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 308
    :cond_1
    return-object v1

    .line 299
    .end local v0    # "i":I
    .end local v1    # "scope":[I
    .restart local v3    # "x":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static startGetAccessToken(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;I)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "clientId"    # J
    .param p3, "redirecURI"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    const-string/jumbo v0, "you are calling startGetAccessToken(). Is still works but it is deprecated. Instead please use \n                XiaomiOAuthFuture<XiaomiOAuthResults> future = new XiaomiOAuthorize()\n                        .setAppId(appId)\n                        .setRedirectUrl(redirectUri)\n                        .setScope(scope)\n                        .setAllowSwitchAccount(true)\n                        .startGetAccessToken(acitivity);\n                XiaomiOAuthResults results = future.getResult();//call on background thread.\nIt provides better user experience! Checkout the Demo codes!"

    .line 181
    .local v0, "log":Ljava/lang/String;
    const-string v1, "XiaomiOAuthorize"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string/jumbo v5, "token"

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 184
    return-void
.end method

.method public static startGetOAuthCode(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;I)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "clientId"    # J
    .param p3, "redirecURI"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    const-string/jumbo v0, "you are calling startGetOAuthCode(). Is still works but it is deprecated. Instead please use \n                XiaomiOAuthFuture<XiaomiOAuthResults> future = new XiaomiOAuthorize()\n                        .setAppId(appId)\n                        .setRedirectUrl(redirectUri)\n                        .setScope(scope)\n                        .setAllowSwitchAccount(true)\n                        .startGetOAuthCode(acitivity);\n                XiaomiOAuthResults results = future.getResult();//call on background thread.\nIt provides better user experience! Checkout the Demo codes!"

    .line 200
    .local v0, "log":Ljava/lang/String;
    const-string v1, "XiaomiOAuthorize"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v5, "code"

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 203
    return-void
.end method

.method private static startGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "clientId"    # J
    .param p3, "redirecURI"    # Ljava/lang/String;
    .param p4, "typeCode"    # Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    if-nez p5, :cond_0

    .line 211
    new-instance p5, Landroid/os/Bundle;

    .end local p5    # "options":Landroid/os/Bundle;
    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 214
    .restart local p5    # "options":Landroid/os/Bundle;
    :cond_0
    const-string v5, "extra_scope"

    invoke-virtual {p5, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->scopeStringToIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 215
    .local v1, "scope":[I
    const-string v5, "extra_state"

    invoke-virtual {p5, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "state":Ljava/lang/String;
    new-instance v5, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    invoke-direct {v5}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;-><init>()V

    .line 217
    invoke-virtual {v5, p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setAppId(J)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v5

    .line 218
    invoke-virtual {v5, p3}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setRedirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v5

    .line 219
    invoke-virtual {v5, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setScope([I)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v5

    .line 220
    invoke-virtual {v5, v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setState(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v3

    .line 221
    .local v3, "x":Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    const-string v5, "extra_skip_confirm"

    invoke-virtual {p5, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    const-string v5, "extra_skip_confirm"

    invoke-virtual {p5, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setSkipConfirm(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    .line 225
    :cond_1
    const-string v5, "code"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthCode(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v4

    .line 227
    .local v4, "y":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<Lcom/xiaomi/account/openauth/XiaomiOAuthResults;>;"
    :goto_0
    new-instance v5, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;

    invoke-direct {v5, v4, p4, p0, p6}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;-><init>(Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;Ljava/lang/String;Landroid/app/Activity;I)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    .line 289
    invoke-virtual {v5, v6}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 290
    .local v0, "execute":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/xiaomi/account/openauth/XiaomiOAuthResults;>;"
    return-void

    .line 225
    .end local v0    # "execute":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/xiaomi/account/openauth/XiaomiOAuthResults;>;"
    .end local v4    # "y":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<Lcom/xiaomi/account/openauth/XiaomiOAuthResults;>;"
    :cond_2
    invoke-virtual {v3, p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetAccessToken(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public callOpenApi(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # J
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "accessToken"    # Ljava/lang/String;
    .param p6, "macKey"    # Ljava/lang/String;
    .param p7, "macAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v9, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-wide v4, p2

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;-><init>(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 137
    .local v9, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 139
    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;

    invoke-direct {v0, p0, v9}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;-><init>(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;Ljava/util/concurrent/FutureTask;)V

    return-object v0
.end method

.method public fastOAuth(Landroid/app/Activity;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "responseType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "activity should not be null and should be running"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_1
    new-instance v0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    iget-object v3, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-direct {v0, v3}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;-><init>(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)V

    .line 96
    .local v0, "builder":Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    invoke-virtual {v0, p2}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->responseType(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->build()Lcom/xiaomi/account/auth/OAuthConfig;

    move-result-object v1

    .line 98
    .local v1, "config":Lcom/xiaomi/account/auth/OAuthConfig;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/xiaomi/account/auth/OAuthFactory;->createOAuth(Landroid/content/Context;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/auth/XiaomiOAuth;

    move-result-object v2

    .line 99
    .local v2, "xiaomiOAuth":Lcom/xiaomi/account/auth/XiaomiOAuth;
    invoke-interface {v2, p1, v1}, Lcom/xiaomi/account/auth/XiaomiOAuth;->fastOAuth(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v3

    return-object v3
.end method

.method public setAccountAuth(Lcom/xiaomi/account/openauth/AccountAuth;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1
    .param p1, "accountAuth"    # Lcom/xiaomi/account/openauth/AccountAuth;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->accountAuth(Lcom/xiaomi/account/openauth/AccountAuth;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 78
    return-object p0
.end method

.method public setAppId(J)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1
    .param p1, "appId"    # J

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->appId(J)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 43
    return-object p0
.end method

.method public setCustomizedAuthorizeActivityClass(Ljava/lang/Class;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;)",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthorize;"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaomi/account/openauth/AuthorizeActivityBase;>;"
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->authorizeActivityClazz(Ljava/lang/Class;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 73
    return-object p0
.end method

.method public setDeviceID(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->deviceID(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 88
    return-object p0
.end method

.method public setKeepCookies(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1
    .param p1, "keepCookies"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->keepCookies(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 68
    return-object p0
.end method

.method public setNoMiui(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1
    .param p1, "noMiui"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->notUseMiui(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 58
    return-object p0
.end method

.method public setPlatform(I)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1
    .param p1, "platform"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->platform(I)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 83
    return-object p0
.end method

.method public setRedirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1
    .param p1, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->redirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 48
    return-object p0
.end method

.method public setScope([I)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1
    .param p1, "scope"    # [I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->scopes([I)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 38
    return-object p0
.end method

.method public setSkipConfirm(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1
    .param p1, "skipConfirm"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->skipConfirm(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 53
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->state(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 63
    return-object p0
.end method

.method public startGetAccessToken(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const-string/jumbo v0, "token"

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->oauth(Landroid/app/Activity;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    return-object v0
.end method

.method public startGetOAuthCode(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const-string v0, "code"

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->oauth(Landroid/app/Activity;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    return-object v0
.end method
