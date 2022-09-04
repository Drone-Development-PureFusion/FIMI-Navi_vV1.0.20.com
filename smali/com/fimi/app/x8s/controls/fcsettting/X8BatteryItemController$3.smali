.class Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$3;
.super Ljava/lang/Object;
.source "X8BatteryItemController.java"

# interfaces
.implements Lcom/fimi/widget/SwitchButton$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->showItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitch(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "on"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    if-eqz p2, :cond_0

    .line 221
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->setLowLanding(Z)V

    .line 222
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 228
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/x8sdk/common/GlobalConfig;->setLowLanding(Z)V

    .line 225
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    goto :goto_0
.end method
