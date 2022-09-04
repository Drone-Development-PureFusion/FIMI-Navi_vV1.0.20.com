.class Lcom/fimi/x8sdk/X8FcLogManager$1;
.super Landroid/os/Handler;
.source "X8FcLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/X8FcLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/X8FcLogManager;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/X8FcLogManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/X8FcLogManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/high16 v1, -0x3b860000    # -1000.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 363
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 364
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 419
    :goto_0
    return-void

    .line 367
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/X8FcLogManager;->access$002(Lcom/fimi/x8sdk/X8FcLogManager;F)F

    .line 368
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->onDeviceStateChange(I)V

    .line 369
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    iput-boolean v2, v0, Lcom/fimi/x8sdk/X8FcLogManager;->closeRebuildFCLog:Z

    goto :goto_0

    .line 372
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/X8FcLogManager;->access$002(Lcom/fimi/x8sdk/X8FcLogManager;F)F

    .line 373
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->onDeviceStateChange(I)V

    .line 374
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    iput-boolean v2, v0, Lcom/fimi/x8sdk/X8FcLogManager;->closeRebuildflightPlaybackLog:Z

    goto :goto_0

    .line 380
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v0}, Lcom/fimi/x8sdk/X8FcLogManager;->access$100(Lcom/fimi/x8sdk/X8FcLogManager;)Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    move-result-object v0

    if-nez v0, :cond_3

    .line 381
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/X8FcLogManager;->access$002(Lcom/fimi/x8sdk/X8FcLogManager;F)F

    .line 382
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSportState()Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/X8FcLogManager;->access$102(Lcom/fimi/x8sdk/X8FcLogManager;Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .line 383
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v1}, Lcom/fimi/x8sdk/X8FcLogManager;->access$100(Lcom/fimi/x8sdk/X8FcLogManager;)Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getGroupSpeed()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/X8FcLogManager;->access$002(Lcom/fimi/x8sdk/X8FcLogManager;F)F

    .line 391
    :goto_1
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v0}, Lcom/fimi/x8sdk/X8FcLogManager;->access$200(Lcom/fimi/x8sdk/X8FcLogManager;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v1}, Lcom/fimi/x8sdk/X8FcLogManager;->access$200(Lcom/fimi/x8sdk/X8FcLogManager;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->flightPlaybackLogWrite([BZ)V

    .line 393
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v0, v4}, Lcom/fimi/x8sdk/X8FcLogManager;->access$202(Lcom/fimi/x8sdk/X8FcLogManager;[B)[B

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v0}, Lcom/fimi/x8sdk/X8FcLogManager;->access$300(Lcom/fimi/x8sdk/X8FcLogManager;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v1}, Lcom/fimi/x8sdk/X8FcLogManager;->access$300(Lcom/fimi/x8sdk/X8FcLogManager;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->flightPlaybackLogWrite([BZ)V

    .line 398
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v0, v4}, Lcom/fimi/x8sdk/X8FcLogManager;->access$302(Lcom/fimi/x8sdk/X8FcLogManager;[B)[B

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v0}, Lcom/fimi/x8sdk/X8FcLogManager;->access$400(Lcom/fimi/x8sdk/X8FcLogManager;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v1}, Lcom/fimi/x8sdk/X8FcLogManager;->access$400(Lcom/fimi/x8sdk/X8FcLogManager;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->flightPlaybackLogWrite([BZ)V

    .line 403
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v0, v4}, Lcom/fimi/x8sdk/X8FcLogManager;->access$402(Lcom/fimi/x8sdk/X8FcLogManager;[B)[B

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    iget-object v0, v0, Lcom/fimi/x8sdk/X8FcLogManager;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 386
    :cond_3
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v1}, Lcom/fimi/x8sdk/X8FcLogManager;->access$000(Lcom/fimi/x8sdk/X8FcLogManager;)F

    move-result v1

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->getRealTimeSpeed()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/X8FcLogManager;->access$002(Lcom/fimi/x8sdk/X8FcLogManager;F)F

    goto :goto_1

    .line 408
    :pswitch_3
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v0}, Lcom/fimi/x8sdk/X8FcLogManager;->access$200(Lcom/fimi/x8sdk/X8FcLogManager;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 409
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v1}, Lcom/fimi/x8sdk/X8FcLogManager;->access$200(Lcom/fimi/x8sdk/X8FcLogManager;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->flightPlaybackLogWrite([BZ)V

    .line 410
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v0, v4}, Lcom/fimi/x8sdk/X8FcLogManager;->access$202(Lcom/fimi/x8sdk/X8FcLogManager;[B)[B

    .line 412
    :cond_4
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v0}, Lcom/fimi/x8sdk/X8FcLogManager;->access$500(Lcom/fimi/x8sdk/X8FcLogManager;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 413
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    iget-object v1, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v1}, Lcom/fimi/x8sdk/X8FcLogManager;->access$500(Lcom/fimi/x8sdk/X8FcLogManager;)[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/fimi/x8sdk/X8FcLogManager;->flightPlaybackLogWrite([BZ)V

    .line 414
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    invoke-static {v0, v4}, Lcom/fimi/x8sdk/X8FcLogManager;->access$502(Lcom/fimi/x8sdk/X8FcLogManager;[B)[B

    .line 416
    :cond_5
    iget-object v0, p0, Lcom/fimi/x8sdk/X8FcLogManager$1;->this$0:Lcom/fimi/x8sdk/X8FcLogManager;

    iget-object v0, v0, Lcom/fimi/x8sdk/X8FcLogManager;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
