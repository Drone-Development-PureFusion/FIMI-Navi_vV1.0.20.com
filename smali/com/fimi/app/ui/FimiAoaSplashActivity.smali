.class public Lcom/fimi/app/ui/FimiAoaSplashActivity;
.super Landroid/app/Activity;
.source "FimiAoaSplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/fimi/app/ui/FimiAoaSplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/fimi/app/ui/FimiAoaSplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    sput-boolean v4, Lcom/fimi/app/x8s/X8Application;->isAoaTopActivity:Z

    .line 23
    invoke-static {}, Lcom/fimi/x8sdk/controller/ConnectRcManager;->getInstance()Lcom/fimi/x8sdk/controller/ConnectRcManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/fimi/x8sdk/controller/ConnectRcManager;->connectRC(Landroid/content/Context;)V

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/ui/FimiAoaSplashActivity;->finish()V

    .line 48
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/ui/FimiAoaSplashActivity;->isTaskRoot()Z

    move-result v2

    if-nez v2, :cond_3

    .line 30
    invoke-virtual {p0}, Lcom/fimi/app/ui/FimiAoaSplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 31
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    invoke-virtual {p0}, Lcom/fimi/app/ui/FimiAoaSplashActivity;->finish()V

    goto :goto_0

    .line 37
    :cond_2
    const-string v2, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    sput-boolean v4, Lcom/fimi/app/x8s/X8Application;->isAoaTopActivity:Z

    .line 39
    invoke-static {}, Lcom/fimi/x8sdk/controller/ConnectRcManager;->getInstance()Lcom/fimi/x8sdk/controller/ConnectRcManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/fimi/x8sdk/controller/ConnectRcManager;->connectRC(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0}, Lcom/fimi/app/ui/FimiAoaSplashActivity;->finish()V

    goto :goto_0

    .line 45
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fimi/app/ui/SplashActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/fimi/app/ui/FimiAoaSplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lcom/fimi/app/ui/FimiAoaSplashActivity;->finish()V

    goto :goto_0
.end method
