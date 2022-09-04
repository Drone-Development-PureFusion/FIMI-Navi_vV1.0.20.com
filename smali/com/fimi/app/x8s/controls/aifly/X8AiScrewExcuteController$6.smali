.class Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;
.super Ljava/lang/Object;
.source "X8AiScrewExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->getPoint()V
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
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;)V
    .locals 10
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "ackGetAiSurroundPoint"    # Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;

    .prologue
    .line 512
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->getDeviceLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$902(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;D)D

    .line 514
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->getDeviceLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1002(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;D)D

    .line 515
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->getDeviceLatitudeTakeoff()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1102(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;D)D

    .line 516
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->getDeviceLongitudeTakeoff()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1202(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;D)D

    .line 517
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1300(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$900(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)D

    move-result-wide v2

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1000(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->setAiSurroundMark(DD)V

    .line 518
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1300(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$900(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1000(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v6}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1100(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)D

    move-result-wide v6

    iget-object v8, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v8}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1200(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)D

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->getSurroundRadius(DDDD)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1402(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;I)I

    .line 519
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1502(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Z)Z

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1502(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Z)Z

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 509
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$6;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;)V

    return-void
.end method
