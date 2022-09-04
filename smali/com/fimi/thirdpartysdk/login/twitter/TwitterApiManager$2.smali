.class Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$2;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TwitterApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;->getTwitterUserInfo(Ljava/lang/String;JLcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback",
        "<",
        "Lcom/twitter/sdk/android/core/models/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;

.field final synthetic val$callback:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;

.field final synthetic val$userId:J


# direct methods
.method constructor <init>(Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;JLcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$2;->this$0:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager;

    iput-wide p2, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$2;->val$userId:J

    iput-object p4, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$2;->val$callback:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1
    .param p1, "exception"    # Lcom/twitter/sdk/android/core/TwitterException;

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->printStackTrace()V

    .line 89
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$2;->val$callback:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;

    invoke-interface {v0}, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;->onFailure()V

    .line 90
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result",
            "<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/core/models/User;>;"
    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/models/User;

    .line 78
    .local v0, "data":Lcom/twitter/sdk/android/core/models/User;
    iget-object v4, v0, Lcom/twitter/sdk/android/core/models/User;->profileImageUrl:Ljava/lang/String;

    const-string v5, "_normal"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "profileImageUrl":Ljava/lang/String;
    iget-object v2, v0, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    .line 80
    .local v2, "name":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "name"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v4, "userId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$2;->val$userId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v4, "iconurl"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v4, p0, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$2;->val$callback:Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;

    invoke-interface {v4, v1}, Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;->onSuccess(Ljava/util/Map;)V

    .line 85
    return-void
.end method
