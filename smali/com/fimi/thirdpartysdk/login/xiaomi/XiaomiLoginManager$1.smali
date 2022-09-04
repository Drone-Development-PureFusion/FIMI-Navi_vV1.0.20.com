.class Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;
.super Landroid/os/AsyncTask;
.source "XiaomiLoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->waitAndShowFutureResult(Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V
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
        "TV;>;"
    }
.end annotation


# instance fields
.field e:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

.field final synthetic val$future:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;


# direct methods
.method constructor <init>(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    iput-object p2, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->val$future:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 109
    .local v1, "v":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v2, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->val$future:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    invoke-interface {v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/account/openauth/XMAuthericationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 117
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v1

    .line 110
    .restart local v1    # "v":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e1":Ljava/io/IOException;
    iput-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->e:Ljava/lang/Exception;

    goto :goto_0

    .line 112
    .end local v0    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e1":Landroid/accounts/OperationCanceledException;
    iput-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->e:Ljava/lang/Exception;

    goto :goto_0

    .line 114
    .end local v0    # "e1":Landroid/accounts/OperationCanceledException;
    :catch_2
    move-exception v0

    .line 115
    .local v0, "e1":Lcom/xiaomi/account/openauth/XMAuthericationException;
    iput-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->e:Ljava/lang/Exception;

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .local p1, "v":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 122
    if-eqz p1, :cond_2

    .line 123
    instance-of v0, p1, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    check-cast p1, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    .end local p1    # "v":Ljava/lang/Object;, "TV;"
    invoke-static {v0, p1}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->access$002(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;Lcom/xiaomi/account/openauth/XiaomiOAuthResults;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    .line 125
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    invoke-static {v0}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->access$000(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    invoke-static {}, Lcom/fimi/kernel/FimiAppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    .line 127
    invoke-static {v1}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->access$000(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v0, v2, v1}, Lcom/fimi/thirdpartysdk/login/LoginResultCache;->setAccessToken(Landroid/content/Context;ILjava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/fimi/kernel/FimiAppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    .line 129
    invoke-static {v1}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->access$000(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getMacKey()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0, v2, v1}, Lcom/fimi/thirdpartysdk/login/LoginResultCache;->setMacKey(Landroid/content/Context;ILjava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/fimi/kernel/FimiAppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    .line 131
    invoke-static {v1}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->access$000(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getMacAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v0, v2, v1}, Lcom/fimi/thirdpartysdk/login/LoginResultCache;->setMacAlgorithm(Landroid/content/Context;ILjava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    invoke-static {v0}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->access$100(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    iget-object v0, v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    iget-object v0, v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    iget-object v1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    invoke-static {v1}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->access$200(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/thirdpartysdk/R$string;->login_result:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/thirdpartysdk/login/LoginCallback;->loginFail(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    .restart local p1    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->e:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.accounts.OperationCanceledException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    iget-object v0, v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    iget-object v0, v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    iget-object v1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/thirdpartysdk/login/LoginCallback;->loginFail(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    iget-object v0, v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    iget-object v0, v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/thirdpartysdk/login/LoginCallback;->loginFail(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    iget-object v0, v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    iget-object v0, v0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    iget-object v1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    invoke-static {v1}, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;->access$200(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/thirdpartysdk/R$string;->login_result:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/thirdpartysdk/login/LoginCallback;->loginFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
