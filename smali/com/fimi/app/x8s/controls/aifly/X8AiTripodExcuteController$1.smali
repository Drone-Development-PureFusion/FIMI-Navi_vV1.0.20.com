.class Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController$1;
.super Ljava/lang/Object;
.source "X8AiTripodExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->setTypeEnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->taskExit()V

    .line 196
    :cond_0
    return-void
.end method
