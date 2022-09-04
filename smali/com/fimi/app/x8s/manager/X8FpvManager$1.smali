.class Lcom/fimi/app/x8s/manager/X8FpvManager$1;
.super Ljava/lang/Object;
.source "X8FpvManager.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/manager/X8FpvManager;->sendVcSetFpvMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/manager/X8FpvManager;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/manager/X8FpvManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/manager/X8FpvManager;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fimi/app/x8s/manager/X8FpvManager$1;->this$0:Lcom/fimi/app/x8s/manager/X8FpvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8FpvManager$1;->this$0:Lcom/fimi/app/x8s/manager/X8FpvManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/manager/X8FpvManager;->access$002(Lcom/fimi/app/x8s/manager/X8FpvManager;I)I

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8FpvManager$1;->this$0:Lcom/fimi/app/x8s/manager/X8FpvManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/manager/X8FpvManager;->access$002(Lcom/fimi/app/x8s/manager/X8FpvManager;I)I

    goto :goto_0
.end method
