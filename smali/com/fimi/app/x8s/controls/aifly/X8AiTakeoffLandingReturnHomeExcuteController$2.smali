.class Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController$2;
.super Ljava/lang/Object;
.source "X8AiTakeoffLandingReturnHomeExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->taskExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiTLRState;->WAIT_EXIT:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    iput-object v1, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiTLRState;->RUNING:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    iput-object v1, v0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    goto :goto_0
.end method
