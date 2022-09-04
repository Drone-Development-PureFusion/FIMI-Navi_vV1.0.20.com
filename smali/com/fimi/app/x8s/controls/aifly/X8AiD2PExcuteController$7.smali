.class Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$7;
.super Ljava/lang/Object;
.source "X8AiD2PExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->setAiVcClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 462
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$1100(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 464
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$1200(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->closeUi()V

    .line 467
    :cond_0
    return-void
.end method
