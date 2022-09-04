.class Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TwitterApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;->login(Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback",
        "<",
        "Lcom/twitter/sdk/android/core/TwitterSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;

.field final synthetic val$loginCallback:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;


# direct methods
.method constructor <init>(Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;

    iput-object p2, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$1;->val$loginCallback:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1
    .param p1, "e"    # Lcom/twitter/sdk/android/core/TwitterException;

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->printStackTrace()V

    .line 46
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$1;->val$loginCallback:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;

    invoke-interface {v0}, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;->onFailure()V

    .line 47
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/core/TwitterSession;>;"
    iget-object v1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterSession;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterSession;->getUserId()J

    move-result-wide v2

    .line 41
    .local v2, "userId":J
    iget-object v1, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;

    iget-object v4, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$1;->val$loginCallback:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;->access$000(Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;Ljava/lang/String;JLcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;)V

    .line 42
    return-void
.end method
