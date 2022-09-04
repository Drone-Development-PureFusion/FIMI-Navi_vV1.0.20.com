.class Lcom/xiaomi/account/auth/MiuiOauth$2;
.super Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;
.source "MiuiOauth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/auth/MiuiOauth;->getOauth(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/account/auth/MiuiOauth;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/auth/MiuiOauth;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/account/auth/MiuiOauth;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    iput-object p3, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->val$options:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;-><init>(Lcom/xiaomi/account/auth/MiuiOauth;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method doWork(Lcom/xiaomi/account/auth/XiaomiAuthService;Lcom/xiaomi/account/IXiaomiAuthResponse;)V
    .locals 6
    .param p1, "service"    # Lcom/xiaomi/account/auth/XiaomiAuthService;
    .param p2, "mResponse"    # Lcom/xiaomi/account/IXiaomiAuthResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v3, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->val$options:Landroid/os/Bundle;

    const-string v4, "extra_client_id"

    iget-object v5, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-static {v5}, Lcom/xiaomi/account/auth/MiuiOauth;->access$000(Lcom/xiaomi/account/auth/MiuiOauth;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->val$options:Landroid/os/Bundle;

    const-string v4, "extra_redirect_uri"

    iget-object v5, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-static {v5}, Lcom/xiaomi/account/auth/MiuiOauth;->access$100(Lcom/xiaomi/account/auth/MiuiOauth;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v3, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    iget-object v4, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->val$options:Landroid/os/Bundle;

    invoke-static {v3, p1, v4}, Lcom/xiaomi/account/auth/MiuiOauth;->access$200(Lcom/xiaomi/account/auth/MiuiOauth;Lcom/xiaomi/account/IXiaomiAuthService;Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p1}, Lcom/xiaomi/account/auth/XiaomiAuthService;->supportResponseWay()Z

    move-result v2

    .line 132
    .local v2, "supportResponseWay":Z
    if-eqz v2, :cond_0

    .line 133
    iget-object v3, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->val$options:Landroid/os/Bundle;

    const/4 v4, 0x1

    const/16 v5, 0x43

    invoke-virtual {p1, p2, v3, v4, v5}, Lcom/xiaomi/account/auth/XiaomiAuthService;->getAccessTokenInResponse(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;II)V

    .line 157
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-static {v3}, Lcom/xiaomi/account/auth/MiuiOauth;->access$300(Lcom/xiaomi/account/auth/MiuiOauth;)Landroid/accounts/Account;

    move-result-object v0

    .line 136
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 137
    iget-object v4, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    iget-object v3, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/xiaomi/account/auth/MiuiOauth;->access$400(Lcom/xiaomi/account/auth/MiuiOauth;Landroid/app/Activity;)V

    .line 138
    iget-object v3, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-static {v3}, Lcom/xiaomi/account/auth/MiuiOauth;->access$300(Lcom/xiaomi/account/auth/MiuiOauth;)Landroid/accounts/Account;

    move-result-object v0

    .line 140
    :cond_1
    if-nez v0, :cond_2

    .line 152
    new-instance v3, Lcom/xiaomi/account/openauth/XMAuthericationException;

    const-string v4, "Xiaomi Account not Login"

    invoke-direct {v3, v4}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_2
    iget-object v3, p0, Lcom/xiaomi/account/auth/MiuiOauth$2;->val$options:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v3}, Lcom/xiaomi/account/auth/XiaomiAuthService;->getMiCloudAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 155
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-interface {p2, v1}, Lcom/xiaomi/account/IXiaomiAuthResponse;->onResult(Landroid/os/Bundle;)V

    goto :goto_0
.end method
