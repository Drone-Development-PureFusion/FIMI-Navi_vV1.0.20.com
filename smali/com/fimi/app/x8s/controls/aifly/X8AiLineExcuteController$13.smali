.class Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$13;
.super Ljava/lang/Object;
.source "X8AiLineExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->setAiVcClose()V
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
    .line 1124
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$13;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 1127
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$13;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$2600(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1132
    :cond_0
    return-void
.end method
