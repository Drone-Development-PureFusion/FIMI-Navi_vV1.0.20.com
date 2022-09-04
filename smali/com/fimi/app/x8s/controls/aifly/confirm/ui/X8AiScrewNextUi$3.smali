.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$3;
.super Ljava/lang/Object;
.source "X8AiScrewNextUi.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->setSpeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->access$100(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;)V

    .line 222
    :cond_0
    return-void
.end method
