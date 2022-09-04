.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2$1;
.super Ljava/lang/Object;
.source "X8GimbalAdvancedSetupController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 68
    iget-boolean v0, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;->onGimbalXYZAdjust()V

    .line 72
    :cond_0
    return-void
.end method
