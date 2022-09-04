.class Lcom/fimi/x8sdk/modulestate/StateManager$1;
.super Landroid/os/Handler;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/modulestate/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/modulestate/StateManager;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/modulestate/StateManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/modulestate/StateManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    invoke-static {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->access$000(Lcom/fimi/x8sdk/modulestate/StateManager;)Lcom/fimi/x8sdk/modulestate/RelayState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/RelayState;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->onRelayProcess()V

    .line 124
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->onDroneProcess()V

    .line 125
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->onCameraProcess()V

    .line 126
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->onRcMatchProcess()V

    .line 128
    :cond_1
    const/4 v0, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/fimi/x8sdk/modulestate/StateManager$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fimi/x8sdk/entity/ConectState;

    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->onConnectProcess(Lcom/fimi/x8sdk/entity/ConectState;)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    iget-object v0, v0, Lcom/fimi/x8sdk/modulestate/StateManager;->vcTrackListener:Lcom/fimi/x8sdk/listener/IX8VcTrackListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    iget-object v1, v0, Lcom/fimi/x8sdk/modulestate/StateManager;->vcTrackListener:Lcom/fimi/x8sdk/listener/IX8VcTrackListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;

    invoke-interface {v1, v0}, Lcom/fimi/x8sdk/listener/IX8VcTrackListener;->onTracking(Lcom/fimi/x8sdk/dataparser/AutoVcTracking;)V

    goto :goto_0

    .line 139
    :pswitch_3
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    iget-object v0, v0, Lcom/fimi/x8sdk/modulestate/StateManager;->powerListener:Lcom/fimi/x8sdk/listener/IX8PowerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    invoke-static {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->access$100(Lcom/fimi/x8sdk/modulestate/StateManager;)Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    iget-object v0, v0, Lcom/fimi/x8sdk/modulestate/StateManager;->powerListener:Lcom/fimi/x8sdk/listener/IX8PowerListener;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    invoke-static {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->access$100(Lcom/fimi/x8sdk/modulestate/StateManager;)Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getPowerConRate()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/listener/IX8PowerListener;->onPowerChange(I)V

    goto :goto_0

    .line 144
    :pswitch_4
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    iget-object v0, v0, Lcom/fimi/x8sdk/modulestate/StateManager;->ix8PanoramicInformationListener:Lcom/fimi/x8sdk/listener/IX8PanoramicInformationListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    iget-object v1, v0, Lcom/fimi/x8sdk/modulestate/StateManager;->ix8PanoramicInformationListener:Lcom/fimi/x8sdk/listener/IX8PanoramicInformationListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;

    invoke-interface {v1, v0}, Lcom/fimi/x8sdk/listener/IX8PanoramicInformationListener;->onPanoramicInformationChange(Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;)V

    goto :goto_0

    .line 149
    :pswitch_5
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    iget-object v0, v0, Lcom/fimi/x8sdk/modulestate/StateManager;->rightRollerLinstener:Lcom/fimi/x8sdk/listener/RightRollerLinstener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    iget-object v0, v0, Lcom/fimi/x8sdk/modulestate/StateManager;->rightRollerLinstener:Lcom/fimi/x8sdk/listener/RightRollerLinstener;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager$1;->this$0:Lcom/fimi/x8sdk/modulestate/StateManager;

    invoke-static {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->access$200(Lcom/fimi/x8sdk/modulestate/StateManager;)Lcom/fimi/x8sdk/dataparser/AckRightRoller;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/listener/RightRollerLinstener;->changeDirection(Lcom/fimi/x8sdk/dataparser/AckRightRoller;)V

    goto/16 :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
