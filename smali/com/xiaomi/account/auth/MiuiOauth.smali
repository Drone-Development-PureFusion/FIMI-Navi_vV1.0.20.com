.class public Lcom/xiaomi/account/auth/MiuiOauth;
.super Ljava/lang/Object;
.source "MiuiOauth.java"

# interfaces
.implements Lcom/xiaomi/account/auth/XiaomiOAuth;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;
    }
.end annotation


# static fields
.field private static final ACTION_FOR_AUTH_SERVICE:Ljava/lang/String; = "android.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NEW_ACTION_FOR_AUTH_SERVICE:Ljava/lang/String; = "miui.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"

.field private static final PACKAGE_NAME_FOR_AUTH_SERVICE:Ljava/lang/String; = "com.xiaomi.account"

.field private static final TAG:Ljava/lang/String; = "MiuiOauth"


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private mAppId:Ljava/lang/String;

.field private mAuthorizeActivityClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRedirectUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->executor:Ljava/util/concurrent/Executor;

    .line 49
    const-class v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;

    iput-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mAuthorizeActivityClazz:Ljava/lang/Class;

    .line 58
    iput-object p1, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mAppId:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mRedirectUrl:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/account/auth/MiuiOauth;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/MiuiOauth;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/account/auth/MiuiOauth;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/MiuiOauth;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/account/auth/MiuiOauth;Lcom/xiaomi/account/IXiaomiAuthService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/account/auth/MiuiOauth;
    .param p1, "x1"    # Lcom/xiaomi/account/IXiaomiAuthService;
    .param p2, "x2"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/auth/MiuiOauth;->checkNativeOAuthSupport(Lcom/xiaomi/account/IXiaomiAuthService;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/account/auth/MiuiOauth;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/MiuiOauth;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/xiaomi/account/auth/MiuiOauth;->getXiaomiAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/account/auth/MiuiOauth;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/account/auth/MiuiOauth;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/xiaomi/account/auth/MiuiOauth;->addXiaomiAccount(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/account/auth/MiuiOauth;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/MiuiOauth;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaomi/account/auth/MiuiOauth;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/MiuiOauth;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mAuthorizeActivityClazz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaomi/account/auth/MiuiOauth;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/MiuiOauth;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private addXiaomiAccount(Landroid/app/Activity;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 184
    if-nez p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    .line 189
    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 192
    .local v9, "result":Landroid/os/Bundle;
    if-eqz v9, :cond_0

    const-string v0, "authAccount"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 195
    .end local v9    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v8

    .line 197
    .local v8, "e":Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v8    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v8

    .line 200
    .local v8, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {v8}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_0

    .line 201
    .end local v8    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v8

    .line 202
    .local v8, "e":Landroid/accounts/OperationCanceledException;
    invoke-virtual {v8}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v8    # "e":Landroid/accounts/OperationCanceledException;
    :catch_3
    move-exception v8

    .line 204
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkNativeOAuthSupport(Lcom/xiaomi/account/IXiaomiAuthService;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "service"    # Lcom/xiaomi/account/IXiaomiAuthService;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 162
    const-string v2, "extra_native_oauth"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 163
    .local v0, "askNativeOauth":Z
    invoke-interface {p1}, Lcom/xiaomi/account/IXiaomiAuthService;->getVersionNum()I

    move-result v2

    if-lt v2, v1, :cond_0

    .line 164
    .local v1, "supportNativeOAuth":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 165
    if-nez v1, :cond_1

    .line 166
    new-instance v2, Lcom/xiaomi/account/openauth/XMAuthericationException;

    const-string v3, "this version of miui not support fast Oauth"

    invoke-direct {v2, v3}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    .end local v1    # "supportNativeOAuth":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 169
    .restart local v1    # "supportNativeOAuth":Z
    :cond_1
    return-void
.end method

.method private getCodeOrAccessToken(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/auth/MiuiOauth;->getOauth(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    .line 100
    .local v0, "future":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<Landroid/os/Bundle;>;"
    new-instance v1, Lcom/xiaomi/account/auth/MiuiOauth$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/account/auth/MiuiOauth$1;-><init>(Lcom/xiaomi/account/auth/MiuiOauth;Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V

    return-object v1
.end method

.method private getOauth(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/xiaomi/account/auth/MiuiOauth$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/account/auth/MiuiOauth$2;-><init>(Lcom/xiaomi/account/auth/MiuiOauth;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {v0}, Lcom/xiaomi/account/auth/MiuiOauth$2;->bind()Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    .line 123
    return-object v0
.end method

.method private getXiaomiAccount()Landroid/accounts/Account;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 174
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.xiaomi"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 175
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v3, v0

    if-nez v3, :cond_0

    .line 179
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :goto_0
    return-object v2

    .line 175
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    :cond_0
    const/4 v3, 0x0

    aget-object v2, v0, v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSupportService(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v5, "miui.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "com.xiaomi.account"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 71
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 72
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v3

    .line 76
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v5, "com.xiaomi.account"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_0

    :cond_2
    move v3, v4

    .line 82
    goto :goto_0
.end method


# virtual methods
.method public fastOAuth(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "config"    # Lcom/xiaomi/account/auth/OAuthConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaomi/account/auth/OAuthConfig;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p2}, Lcom/xiaomi/account/auth/OAuthConfig;->makeOptions()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    .local v0, "options":Landroid/os/Bundle;
    const-string v1, "extra_native_oauth"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/account/auth/MiuiOauth;->getCodeOrAccessToken(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v1

    return-object v1
.end method

.method public getCodeOrAccessToken(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "config"    # Lcom/xiaomi/account/auth/OAuthConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaomi/account/auth/OAuthConfig;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p2}, Lcom/xiaomi/account/auth/OAuthConfig;->makeOptions()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    .local v0, "options":Landroid/os/Bundle;
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/account/auth/MiuiOauth;->getCodeOrAccessToken(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v1

    return-object v1
.end method

.method public setAuthorizeActivityClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "mAuthorizeActivityClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaomi/account/openauth/AuthorizeActivityBase;>;"
    iput-object p1, p0, Lcom/xiaomi/account/auth/MiuiOauth;->mAuthorizeActivityClazz:Ljava/lang/Class;

    .line 65
    return-void
.end method
