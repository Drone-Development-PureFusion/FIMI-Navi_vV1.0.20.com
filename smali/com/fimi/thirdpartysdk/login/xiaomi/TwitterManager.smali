.class public Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager;
.super Ljava/lang/Object;
.source "TwitterManager.java"

# interfaces
.implements Lcom/fimi/thirdpartysdk/login/ILogin;


# instance fields
.field loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

.field mTwitterApiClient:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public login(Landroid/content/Context;Lcom/fimi/thirdpartysdk/login/LoginCallback;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/fimi/thirdpartysdk/login/LoginCallback;

    .prologue
    .line 23
    iput-object p2, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    .line 51
    new-instance v0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;

    invoke-direct {v0, p1}, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager;->mTwitterApiClient:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;

    .line 52
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager;->mTwitterApiClient:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;

    new-instance v1, Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager$1;

    invoke-direct {v1, p0}, Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager$1;-><init>(Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;->login(Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;)V

    .line 64
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager;->mTwitterApiClient:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 69
    return-void
.end method
