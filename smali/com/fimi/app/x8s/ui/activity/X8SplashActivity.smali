.class public Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;
.super Landroid/app/Activity;
.source "X8SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;->syncServerFwInfo()V

    return-void
.end method

.method private syncServerFwInfo()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/fimi/network/FwManager;

    invoke-direct {v0}, Lcom/fimi/network/FwManager;-><init>()V

    .line 84
    .local v0, "x9FwManager":Lcom/fimi/network/FwManager;
    new-instance v1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v2, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity$2;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity$2;-><init>(Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;)V

    invoke-direct {v1, v2}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, v1}, Lcom/fimi/network/FwManager;->getX9FwNetDetail(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v2, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity$1;-><init>(Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;)V

    invoke-static {v2}, Lcom/fimi/kernel/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 47
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v2

    const-string v3, " connect --\u300bhome--\u300busb out2in--->"

    invoke-virtual {v2, v3}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 51
    sput-boolean v4, Lcom/fimi/app/x8s/X8Application;->isAoaTopActivity:Z

    .line 52
    invoke-static {}, Lcom/fimi/x8sdk/controller/ConnectRcManager;->getInstance()Lcom/fimi/x8sdk/controller/ConnectRcManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/fimi/x8sdk/controller/ConnectRcManager;->connectRC(Landroid/content/Context;)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;->finish()V

    .line 79
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;->isTaskRoot()Z

    move-result v2

    if-nez v2, :cond_3

    .line 59
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 60
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
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

    .line 62
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;->finish()V

    goto :goto_0

    .line 66
    :cond_2
    const-string v2, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v2

    const-string v3, "main runing ---> usb is in--->"

    invoke-virtual {v2, v3}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 68
    sput-boolean v4, Lcom/fimi/app/x8s/X8Application;->isAoaTopActivity:Z

    .line 69
    invoke-static {}, Lcom/fimi/x8sdk/controller/ConnectRcManager;->getInstance()Lcom/fimi/x8sdk/controller/ConnectRcManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/fimi/x8sdk/controller/ConnectRcManager;->connectRC(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;->finish()V

    goto :goto_0

    .line 76
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fimi/app/x8s/ui/activity/X8DeviceSelectActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8SplashActivity;->finish()V

    goto :goto_0
.end method
