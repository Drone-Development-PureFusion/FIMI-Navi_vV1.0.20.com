.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi$2;
.super Ljava/lang/Object;
.source "X8AiPoint2PointExcuteConfirmUi.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->startExcute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;)Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;->onExcuteClick()V

    .line 226
    :cond_0
    return-void
.end method
