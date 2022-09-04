.class Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$7;
.super Landroid/os/Handler;
.source "X8ModifySensorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 237
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)V

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getConectState()Lcom/fimi/x8sdk/entity/ConectState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/ConectState;->isConnectDrone()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$902(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;Z)Z

    .line 239
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$1002(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;Z)Z

    .line 240
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Landroid/widget/Button;

    move-result-object v2

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 242
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 243
    return-void

    :cond_0
    move v0, v1

    .line 239
    goto :goto_0

    .line 241
    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1
.end method
