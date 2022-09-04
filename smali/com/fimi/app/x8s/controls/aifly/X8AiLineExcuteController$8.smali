.class Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$8;
.super Ljava/lang/Object;
.source "X8AiLineExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->lineTaskExite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$8;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 874
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$8;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    .line 876
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$8;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->clearAiLineMarker()V

    .line 877
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$8;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiLineState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiLineState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$1002(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;Lcom/fimi/app/x8s/enums/X8AiLineState;)Lcom/fimi/app/x8s/enums/X8AiLineState;

    .line 878
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$8;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$1700(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AiLineExcuteControllerListener;->onLineComplete(Z)V

    .line 882
    :goto_0
    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$8;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiLineState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiLineState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$1002(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;Lcom/fimi/app/x8s/enums/X8AiLineState;)Lcom/fimi/app/x8s/enums/X8AiLineState;

    goto :goto_0
.end method
