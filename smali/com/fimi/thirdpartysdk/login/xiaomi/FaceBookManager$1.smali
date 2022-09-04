.class Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1;
.super Ljava/lang/Object;
.source "FaceBookManager.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;->login(Landroid/content/Context;Lcom/fimi/thirdpartysdk/login/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;

.field final synthetic val$callback:Lcom/fimi/thirdpartysdk/login/LoginCallback;


# direct methods
.method constructor <init>(Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;Lcom/fimi/thirdpartysdk/login/LoginCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;

    iput-object p2, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1;->val$callback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "FaceBookManager"

    const-string v1, "onCancel: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 68
    const-string v0, "FaceBookManager"

    const-string v1, "onError: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1;->val$callback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/thirdpartysdk/login/LoginCallback;->loginFail(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 2
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 47
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    new-instance v1, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1$1;

    invoke-direct {v1, p0}, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1$1;-><init>(Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1;)V

    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 59
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
