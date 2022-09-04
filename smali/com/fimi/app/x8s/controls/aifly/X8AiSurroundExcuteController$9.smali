.class Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$9;
.super Ljava/lang/Object;
.source "X8AiSurroundExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->setAiVcClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 553
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$2500(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 555
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->closeUi()V

    .line 558
    :cond_0
    return-void
.end method
