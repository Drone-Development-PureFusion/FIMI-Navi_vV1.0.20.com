.class Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$4;
.super Ljava/lang/Object;
.source "X8AiAerialPhotographExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->setTypeEnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->taskExit()V

    .line 310
    :cond_0
    return-void
.end method
