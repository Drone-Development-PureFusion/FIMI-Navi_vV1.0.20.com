.class public Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;
.super Ljava/lang/Object;
.source "ThirdLoginManager.java"


# static fields
.field private static thirdLoginManager:Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;


# instance fields
.field login:Lcom/fimi/thirdpartysdk/login/ILogin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;->thirdLoginManager:Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;

    invoke-direct {v0}, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;-><init>()V

    sput-object v0, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;->thirdLoginManager:Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;

    .line 31
    :cond_0
    sget-object v0, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;->thirdLoginManager:Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public login(Ljava/lang/String;Landroid/content/Context;Lcom/fimi/thirdpartysdk/login/LoginCallback;)V
    .locals 1
    .param p1, "chanelId"    # Ljava/lang/String;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "loginCallback"    # Lcom/fimi/thirdpartysdk/login/LoginCallback;

    .prologue
    .line 43
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    invoke-direct {v0}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;->login:Lcom/fimi/thirdpartysdk/login/ILogin;

    .line 46
    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;

    invoke-direct {v0}, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;->login:Lcom/fimi/thirdpartysdk/login/ILogin;

    .line 51
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;->login:Lcom/fimi/thirdpartysdk/login/ILogin;

    invoke-interface {v0, p2, p3}, Lcom/fimi/thirdpartysdk/login/ILogin;->login(Landroid/content/Context;Lcom/fimi/thirdpartysdk/login/LoginCallback;)V

    .line 52
    return-void

    .line 48
    :cond_2
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager;

    invoke-direct {v0}, Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;->login:Lcom/fimi/thirdpartysdk/login/ILogin;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/ThirdLoginManager;->login:Lcom/fimi/thirdpartysdk/login/ILogin;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/thirdpartysdk/login/ILogin;->onActivityResult(IILandroid/content/Intent;)V

    .line 57
    return-void
.end method
