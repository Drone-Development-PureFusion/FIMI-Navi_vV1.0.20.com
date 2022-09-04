.class Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$1;
.super Landroid/os/Handler;
.source "X8IMUCheckController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    iget v1, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->reqestCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->reqestCount:I

    .line 42
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMULisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;

    const-string v1, ""

    invoke-interface {v0, v2, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;->checkFinish(ILjava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    iget v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->reqestCount:I

    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMULisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;

    const-string v1, ""

    invoke-interface {v0, v2, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;->checkFinish(ILjava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->checkIMULisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;

    invoke-interface {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$OnCheckIMULisenter;->checkProgress()V

    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8IMUCheckController;)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
