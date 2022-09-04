.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$1;
.super Ljava/lang/Object;
.source "X8AiSurroundToPointExcuteConfirmUi.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->startExcute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 5
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 192
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)F

    move-result v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->setSpeedMax(I)V

    .line 194
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;->onExcuteClick()V

    .line 195
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->access$300(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)F

    move-result v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->access$400(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 196
    .local v1, "speed":F
    mul-float v2, v1, v4

    float-to-int v0, v2

    .line 197
    .local v0, "s":I
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->access$500(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->setSpeed(I)V

    .line 204
    .end local v0    # "s":I
    .end local v1    # "speed":F
    :cond_1
    return-void

    .line 198
    .restart local v0    # "s":I
    .restart local v1    # "speed":F
    :cond_2
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->access$600(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    rsub-int/lit8 v0, v0, 0x0

    goto :goto_0
.end method
