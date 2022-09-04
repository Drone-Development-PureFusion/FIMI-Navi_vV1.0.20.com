.class public Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;
.super Ljava/lang/Object;
.source "FaceBookManager.java"

# interfaces
.implements Lcom/fimi/thirdpartysdk/login/ILogin;


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceBookManager"


# instance fields
.field loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

.field private loginManager:Lcom/facebook/login/LoginManager;

.field private mCallbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public login(Landroid/content/Context;Lcom/fimi/thirdpartysdk/login/LoginCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/fimi/thirdpartysdk/login/LoginCallback;

    .prologue
    .line 39
    iput-object p2, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    .line 40
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;->mCallbackManager:Lcom/facebook/CallbackManager;

    .line 41
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;->loginManager:Lcom/facebook/login/LoginManager;

    .line 43
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;->loginManager:Lcom/facebook/login/LoginManager;

    iget-object v1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1;

    invoke-direct {v2, p0, p2}, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1;-><init>(Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;Lcom/fimi/thirdpartysdk/login/LoginCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 75
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "public_profile"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "user_friends"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 78
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 83
    return-void
.end method
