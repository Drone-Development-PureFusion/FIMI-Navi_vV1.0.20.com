.class Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$6;
.super Ljava/lang/Object;
.source "X8AiSurroundExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->getPoint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
        "<",
        "Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;)V
    .locals 7
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "ackGetAiSurroundPoint"    # Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;

    .prologue
    const/4 v6, 0x1

    .line 446
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->getDeviceLatitude()D

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1202(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;D)D

    .line 448
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->getDeviceLongitude()D

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1302(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;D)D

    .line 449
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->getDeviceLatitudeTakeoff()D

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$2102(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;D)D

    .line 450
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->getDeviceLongitudeTakeoff()D

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$2202(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;D)D

    .line 454
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAiSurroundState()Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;

    move-result-object v1

    .line 455
    .local v1, "runState":Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->getRadius()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$2302(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;F)F

    .line 456
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$2300(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$2300(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 460
    .local v0, "max":I
    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    .line 461
    const/16 v0, 0x64

    .line 463
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1900(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    move-result-object v2

    invoke-static {}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$2400()I

    move-result v3

    invoke-virtual {v2, v0, v3, v6}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->setMaxMin(III)V

    .line 465
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v2, v6}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1502(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Z)Z

    .line 469
    .end local v0    # "max":I
    .end local v1    # "runState":Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;
    :goto_0
    return-void

    .line 467
    :cond_2
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1502(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Z)Z

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 443
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$6;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;)V

    return-void
.end method
