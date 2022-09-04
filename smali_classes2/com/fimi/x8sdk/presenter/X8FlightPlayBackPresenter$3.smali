.class Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;
.super Landroid/os/Handler;
.source "X8FlightPlayBackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 336
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 337
    iget v1, p1, Landroid/os/Message;->what:I

    .line 338
    .local v1, "msgWhat":I
    packed-switch v1, :pswitch_data_0

    .line 371
    :goto_0
    return-void

    .line 340
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 341
    .local v0, "isParseFileSucceed":Z
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v3}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1100(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget v4, v4, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->play2Second:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v2

    .line 342
    .local v2, "playTotalTime":I
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v3}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1300(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;->parseFileDateEnd(IZ)V

    goto :goto_0

    .line 346
    .end local v0    # "isParseFileSucceed":Z
    .end local v2    # "playTotalTime":I
    :pswitch_1
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v3}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1300(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget v4, v4, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->currentProgress:I

    iget-object v5, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget v5, v5, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->play2Second:I

    div-int/2addr v4, v5

    invoke-interface {v3, v4, v7}, Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;->setPlaybackProgress(IZ)V

    .line 347
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget v4, v4, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->currentProgress:I

    invoke-static {v3, v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1400(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;I)V

    .line 348
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget v4, v3, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->currentProgress:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->currentProgress:I

    .line 350
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget v3, v3, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->currentProgress:I

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_1

    .line 352
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v3}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1500(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v3, v6}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1602(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Z)Z

    .line 354
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v3}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1300(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    move-result-object v3

    invoke-interface {v3}, Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;->showDroneDisconnectState()V

    .line 356
    :cond_0
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v3, v6}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1502(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Z)Z

    .line 358
    :cond_1
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget v3, v3, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->currentProgress:I

    if-ne v3, v6, :cond_2

    .line 362
    :cond_2
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget v3, v3, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->currentProgress:I

    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1100(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 363
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v3}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 365
    :cond_3
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iput v7, v3, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->currentProgress:I

    .line 366
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v3}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1300(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget v4, v4, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->currentProgress:I

    invoke-interface {v3, v4, v6}, Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;->setPlaybackProgress(IZ)V

    .line 367
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$3;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    sget-object v4, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;->Payback:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;

    iput-object v4, v3, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->mPlayStatus:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$PlayStatus;

    goto/16 :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
