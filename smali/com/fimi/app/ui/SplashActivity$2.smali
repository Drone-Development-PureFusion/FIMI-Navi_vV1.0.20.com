.class Lcom/fimi/app/ui/SplashActivity$2;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/ui/SplashActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/ui/SplashActivity;

.field final synthetic val$fimiId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fimi/app/ui/SplashActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/ui/SplashActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/fimi/app/ui/SplashActivity$2;->this$0:Lcom/fimi/app/ui/SplashActivity;

    iput-object p2, p0, Lcom/fimi/app/ui/SplashActivity$2;->val$fimiId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 143
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_2

    .line 154
    sget-object v2, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v3, Lcom/fimi/host/common/ProductEnum;->X9:Lcom/fimi/host/common/ProductEnum;

    if-ne v2, v3, :cond_3

    .line 155
    iget-object v2, p0, Lcom/fimi/app/ui/SplashActivity$2;->this$0:Lcom/fimi/app/ui/SplashActivity;

    invoke-static {v2}, Lcom/fimi/app/ui/SplashActivity;->access$100(Lcom/fimi/app/ui/SplashActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "service://x9.recordupload"

    invoke-static {v2, v3}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 156
    .local v0, "it":Landroid/content/Intent;
    iget-object v2, p0, Lcom/fimi/app/ui/SplashActivity$2;->this$0:Lcom/fimi/app/ui/SplashActivity;

    invoke-static {v2}, Lcom/fimi/app/ui/SplashActivity;->access$200(Lcom/fimi/app/ui/SplashActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 162
    .end local v0    # "it":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    const-string v3, "sp_person_user_type"

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 163
    .local v1, "userType":I
    if-gtz v1, :cond_1

    iget-object v2, p0, Lcom/fimi/app/ui/SplashActivity$2;->val$fimiId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 164
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/fimi/kernel/Constants;->isRefreshMainView:Z

    .line 165
    iget-object v2, p0, Lcom/fimi/app/ui/SplashActivity$2;->this$0:Lcom/fimi/app/ui/SplashActivity;

    const-class v3, Lcom/fimi/app/ui/main/HostNewMainActivity;

    invoke-static {v2, v3}, Lcom/fimi/app/ui/SplashActivity;->access$500(Lcom/fimi/app/ui/SplashActivity;Ljava/lang/Class;)V

    .line 206
    .end local v1    # "userType":I
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 207
    return-void

    .line 157
    :cond_3
    sget-object v2, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v3, Lcom/fimi/host/common/ProductEnum;->GH2:Lcom/fimi/host/common/ProductEnum;

    if-ne v2, v3, :cond_0

    .line 158
    iget-object v2, p0, Lcom/fimi/app/ui/SplashActivity$2;->this$0:Lcom/fimi/app/ui/SplashActivity;

    invoke-static {v2}, Lcom/fimi/app/ui/SplashActivity;->access$300(Lcom/fimi/app/ui/SplashActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "service://gh2.recordupload"

    invoke-static {v2, v3}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 159
    .restart local v0    # "it":Landroid/content/Intent;
    iget-object v2, p0, Lcom/fimi/app/ui/SplashActivity$2;->this$0:Lcom/fimi/app/ui/SplashActivity;

    invoke-static {v2}, Lcom/fimi/app/ui/SplashActivity;->access$400(Lcom/fimi/app/ui/SplashActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 167
    .end local v0    # "it":Landroid/content/Intent;
    .restart local v1    # "userType":I
    :cond_4
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    const-string v3, "service_item_key"

    const-class v4, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 168
    iget-object v2, p0, Lcom/fimi/app/ui/SplashActivity$2;->this$0:Lcom/fimi/app/ui/SplashActivity;

    const-class v3, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    invoke-static {v2, v3}, Lcom/fimi/app/ui/SplashActivity;->access$600(Lcom/fimi/app/ui/SplashActivity;Ljava/lang/Class;)V

    goto :goto_1

    .line 170
    :cond_5
    iget-object v2, p0, Lcom/fimi/app/ui/SplashActivity$2;->this$0:Lcom/fimi/app/ui/SplashActivity;

    const-class v3, Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-static {v2, v3}, Lcom/fimi/app/ui/SplashActivity;->access$700(Lcom/fimi/app/ui/SplashActivity;Ljava/lang/Class;)V

    goto :goto_1
.end method
