.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;
.super Ljava/lang/Object;
.source "X8AiLinesExcuteConfirmUi.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sendActionCmdOneByOne(Ljava/util/List;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

.field final synthetic val$index:I

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;IILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    iput p2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;->val$index:I

    iput p3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;->val$size:I

    iput-object p4, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 4
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 1019
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;->val$index:I

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;->val$size:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->startExcute()V

    .line 1030
    :goto_0
    return-void

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;->val$list:Ljava/util/List;

    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;->val$index:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;->val$size:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->sendActionCmdOneByOne(Ljava/util/List;II)V

    goto :goto_0

    .line 1027
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->access$800(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V

    .line 1028
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$13;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->access$700(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "setAiLinePointsAction ERROR"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
