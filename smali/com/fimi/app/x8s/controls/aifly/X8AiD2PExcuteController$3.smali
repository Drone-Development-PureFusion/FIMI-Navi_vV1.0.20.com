.class Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$3;
.super Ljava/lang/Object;
.source "X8AiD2PExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->getPoint()V
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
        "Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;)V
    .locals 7
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "ackGetAiPoint"    # Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;

    .prologue
    .line 347
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->getfLatLng()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiPoint2PointManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->getfLatLng()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v0

    iget-wide v2, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->getfLatLng()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v0

    iget-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->getAltitude()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;->setMarkerByDevice(DDI)V

    .line 349
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;->END:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$602(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;)Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    .line 350
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$702(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;Z)Z

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$602(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;)Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 344
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$3;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;)V

    return-void
.end method
