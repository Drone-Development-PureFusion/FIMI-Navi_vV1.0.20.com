.class Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;
.super Ljava/lang/Object;
.source "X8AiLineExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getAllPointValue()V
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
        "Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$2308(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)I

    .line 1004
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$2400(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$2300(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)I

    move-result v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$2000(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$2400(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$2000(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1013
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$2400(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1014
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$2400(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->setAiLineMarkActionByDevice(Ljava/util/List;)V

    .line 1015
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->END:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$2102(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;)Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    .line 1016
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->startAiLineProcess()V

    .line 1017
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$2502(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;Z)Z

    .line 1022
    :cond_1
    :goto_0
    return-void

    .line 1019
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->ALL:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$2102(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;)Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1000
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$11;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;)V

    return-void
.end method
