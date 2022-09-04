.class Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;
.super Landroid/os/AsyncTask;
.source "XiaomiLoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginAuth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field e:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

.field final synthetic val$futureProfile:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;


# direct methods
.method constructor <init>(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    iput-object p2, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;->val$futureProfile:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 177
    const/4 v2, 0x0

    .line 179
    .local v2, "v":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;->val$futureProfile:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    invoke-interface {v3}, Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/account/openauth/XMAuthericationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 187
    :goto_0
    return-object v2

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e1":Ljava/io/IOException;
    iput-object v1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;->e:Ljava/lang/Exception;

    goto :goto_0

    .line 182
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 183
    .local v1, "e1":Landroid/accounts/OperationCanceledException;
    iput-object v1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;->e:Ljava/lang/Exception;

    goto :goto_0

    .line 184
    .end local v1    # "e1":Landroid/accounts/OperationCanceledException;
    :catch_2
    move-exception v1

    .line 185
    .local v1, "e1":Lcom/xiaomi/account/openauth/XMAuthericationException;
    iput-object v1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;->e:Ljava/lang/Exception;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 167
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    iget-object v3, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    iget-object v3, v3, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    if-eqz v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    iget-object v3, v3, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    iget-object v4, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    invoke-static {v4}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->access$200(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/thirdpartysdk/R$string;->login_result:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/fimi/thirdpartysdk/login/LoginCallback;->loginFail(Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "data"

    .line 201
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 202
    .local v0, "dataJsonObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    iget-object v3, v3, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    invoke-interface {v3, v0}, Lcom/fimi/thirdpartysdk/login/LoginCallback;->loginSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    .end local v0    # "dataJsonObject":Lorg/json/JSONObject;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$2;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    iget-object v3, v3, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/fimi/thirdpartysdk/login/LoginCallback;->loginFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method
