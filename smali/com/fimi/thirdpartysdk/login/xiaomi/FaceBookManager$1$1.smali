.class Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1$1;
.super Ljava/lang/Object;
.source "FaceBookManager.java"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1;->onSuccess(Lcom/facebook/login/LoginResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1;


# direct methods
.method constructor <init>(Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1$1;->this$1:Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 50
    const-string v1, "FaceBookManager"

    const-string v2, "onCompleted: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-eqz p1, :cond_0

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v1, "uid"

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1$1;->this$1:Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1;

    iget-object v1, v1, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;

    iget-object v1, v1, Lcom/fimi/thirdpartysdk/login/xiaomi/FaceBookManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    invoke-interface {v1, v0}, Lcom/fimi/thirdpartysdk/login/LoginCallback;->loginSuccess(Ljava/lang/Object;)V

    .line 57
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
