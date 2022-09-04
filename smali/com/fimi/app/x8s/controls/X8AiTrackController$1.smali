.class Lcom/fimi/app/x8s/controls/X8AiTrackController$1;
.super Ljava/lang/Object;
.source "X8AiTrackController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/X8AiTrackController;->sendRectF(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/X8AiTrackController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/X8AiTrackController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/X8AiTrackController;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController$1;->this$0:Lcom/fimi/app/x8s/controls/X8AiTrackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 4
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->getErrCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController$1;->this$0:Lcom/fimi/app/x8s/controls/X8AiTrackController;

    iget-boolean v0, v0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->isLog:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v0

    const-string v1, "Vc\u9009\u4e2d\u76ee\u6807\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController$1;->this$0:Lcom/fimi/app/x8s/controls/X8AiTrackController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->access$000(Lcom/fimi/app/x8s/controls/X8AiTrackController;)Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->setSelectError(Z)V

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController$1;->this$0:Lcom/fimi/app/x8s/controls/X8AiTrackController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->access$100(Lcom/fimi/app/x8s/controls/X8AiTrackController;)Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;->setGoEnabled(Z)V

    .line 97
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController$1;->this$0:Lcom/fimi/app/x8s/controls/X8AiTrackController;

    iget-boolean v0, v0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->isLog:Z

    if-eqz v0, :cond_2

    .line 87
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v0

    const-string v1, "Vc\u9009\u4e2d\u76ee\u6807\u9519\u8bef"

    invoke-virtual {v0, v1}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController$1;->this$0:Lcom/fimi/app/x8s/controls/X8AiTrackController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->access$100(Lcom/fimi/app/x8s/controls/X8AiTrackController;)Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;->setGoEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController$1;->this$0:Lcom/fimi/app/x8s/controls/X8AiTrackController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->access$000(Lcom/fimi/app/x8s/controls/X8AiTrackController;)Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->setSelectError(Z)V

    goto :goto_0

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController$1;->this$0:Lcom/fimi/app/x8s/controls/X8AiTrackController;

    iget-boolean v0, v0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->isLog:Z

    if-eqz v0, :cond_4

    .line 93
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v0

    const-string v1, "Vc\u9009\u4e2d\u76ee\u6807\u8d85\u65f6"

    invoke-virtual {v0, v1}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController$1;->this$0:Lcom/fimi/app/x8s/controls/X8AiTrackController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->access$100(Lcom/fimi/app/x8s/controls/X8AiTrackController;)Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;->setGoEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController$1;->this$0:Lcom/fimi/app/x8s/controls/X8AiTrackController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->access$000(Lcom/fimi/app/x8s/controls/X8AiTrackController;)Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->setSelectError(Z)V

    goto :goto_0
.end method
