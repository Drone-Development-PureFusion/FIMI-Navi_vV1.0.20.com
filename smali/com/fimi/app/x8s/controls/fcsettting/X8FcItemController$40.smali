.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$40;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->sendFlyHeight(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$40;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iput p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$40;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 1413
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1414
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$40;->val$value:F

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->setFlyHeight(F)V

    .line 1415
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$40;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImbConfirmEnable(Z)V

    .line 1417
    :cond_0
    return-void
.end method
