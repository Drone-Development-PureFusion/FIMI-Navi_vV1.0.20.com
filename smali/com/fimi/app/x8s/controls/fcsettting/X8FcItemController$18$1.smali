.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$18$1;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$18;->onSwitch(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$18;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$18;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$18;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$18$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 388
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->setFollowReturn(I)V

    .line 390
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$18$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$18;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$18;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1500(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 392
    :cond_0
    return-void
.end method
