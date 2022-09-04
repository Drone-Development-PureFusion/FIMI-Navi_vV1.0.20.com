.class public Lcom/xiaomi/account/auth/OAuthFactory;
.super Ljava/lang/Object;
.source "OAuthFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOauthParams(Lcom/xiaomi/account/auth/OAuthConfig;)V
    .locals 2
    .param p0, "oAuthConfig"    # Lcom/xiaomi/account/auth/OAuthConfig;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client id is error!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->redirectUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "redirect url is empty!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    return-void
.end method

.method public static createOAuth(Landroid/content/Context;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/auth/XiaomiOAuth;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oAuthConfig"    # Lcom/xiaomi/account/auth/OAuthConfig;

    .prologue
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 12
    invoke-static {p1}, Lcom/xiaomi/account/auth/OAuthFactory;->checkOauthParams(Lcom/xiaomi/account/auth/OAuthConfig;)V

    .line 14
    iget v1, p1, Lcom/xiaomi/account/auth/OAuthConfig;->platform:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p1, Lcom/xiaomi/account/auth/OAuthConfig;->notUseMiui:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/account/auth/OAuthFactory;->isMiui(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    :cond_0
    new-instance v0, Lcom/xiaomi/account/auth/WebViewOauth;

    iget-object v1, p1, Lcom/xiaomi/account/auth/OAuthConfig;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->redirectUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/account/auth/WebViewOauth;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :goto_0
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lcom/xiaomi/account/auth/MiuiOauth;

    iget-object v1, p1, Lcom/xiaomi/account/auth/OAuthConfig;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->redirectUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/account/auth/MiuiOauth;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .local v0, "miuiOauth":Lcom/xiaomi/account/auth/MiuiOauth;
    iget-object v1, p1, Lcom/xiaomi/account/auth/OAuthConfig;->authorizeActivityClazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/auth/MiuiOauth;->setAuthorizeActivityClazz(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private static isMiui(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/xiaomi/account/auth/MiuiOauth;->isSupportService(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
