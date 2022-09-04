.class public Lcom/fimi/app/x8s/ui/activity/X8DeviceSelectActivity;
.super Landroid/app/Activity;
.source "X8DeviceSelectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8DeviceSelectActivity;->requestWindowFeature(I)Z

    .line 24
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8DeviceSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 25
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8DeviceSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 26
    sget v0, Lcom/fimi/app/x8s/R$layout;->x8s_host_new_main:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8DeviceSelectActivity;->setContentView(I)V

    .line 27
    return-void
.end method

.method public onDeviceClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v2

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v1

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_OPTION:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fimi/x8sdk/map/MapType;->AMap:Lcom/fimi/x8sdk/map/MapType;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->setMapType(Lcom/fimi/x8sdk/map/MapType;)V

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8DeviceSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void

    .line 30
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget-object v1, Lcom/fimi/x8sdk/map/MapType;->GoogleMap:Lcom/fimi/x8sdk/map/MapType;

    goto :goto_0
.end method
