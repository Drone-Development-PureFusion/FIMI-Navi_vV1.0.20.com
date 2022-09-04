.class Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$3;
.super Ljava/lang/Object;
.source "X8AiSurroundExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->setTakeOffPoint()V
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
        "Lcom/fimi/x8sdk/dataparser/AckNormalCmds;",
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
    .line 328
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckNormalCmds;)V
    .locals 8
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    .prologue
    const/16 v7, 0x8

    .line 331
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$600(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)F

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->setAiSurroundCircle(DDF)V

    .line 333
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->openNextUi()V

    .line 334
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$800(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$300(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$902(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Z)Z

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_CIRCLE_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1002(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Lcom/fimi/app/x8s/enums/X8AiSuroundState;)Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 328
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$3;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckNormalCmds;)V

    return-void
.end method
