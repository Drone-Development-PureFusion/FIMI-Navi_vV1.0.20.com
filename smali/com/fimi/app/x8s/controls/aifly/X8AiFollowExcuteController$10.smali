.class Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$10;
.super Ljava/lang/Object;
.source "X8AiFollowExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->sysAiVcCtrlMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$10;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 602
    return-void
.end method