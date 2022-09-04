.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$3;
.super Ljava/lang/Object;
.source "X8AiSurroundToPointExcuteConfirmUi.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->setOrientation()V
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
    .line 234
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->startExcute()V

    .line 241
    :cond_0
    return-void
.end method
