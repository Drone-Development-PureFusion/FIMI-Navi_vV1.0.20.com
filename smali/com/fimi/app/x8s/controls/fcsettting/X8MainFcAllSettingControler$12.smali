.class Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$12;
.super Ljava/lang/Object;
.source "X8MainFcAllSettingControler.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8FirmwareUpgradeControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 791
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$12;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirmwareUpgradeClick()V
    .locals 3

    .prologue
    .line 799
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$12;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 800
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$12;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$1400(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 801
    return-void
.end method

.method public onFirmwareUpgradeReturn()V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$12;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->closeSecondUi()V

    .line 795
    return-void
.end method
