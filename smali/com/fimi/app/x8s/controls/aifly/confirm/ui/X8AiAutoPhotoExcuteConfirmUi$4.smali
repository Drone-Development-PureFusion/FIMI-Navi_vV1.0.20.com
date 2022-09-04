.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$4;
.super Ljava/lang/Object;
.source "X8AiAutoPhotoExcuteConfirmUi.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->startAiAutoPhoto(Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

.field final synthetic val$excuteListener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    iput-object p2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$4;->val$excuteListener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 323
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$4;->val$excuteListener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;->autoPhototExcute(Z)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi$4;->val$excuteListener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;->autoPhototExcute(Z)V

    goto :goto_0
.end method
