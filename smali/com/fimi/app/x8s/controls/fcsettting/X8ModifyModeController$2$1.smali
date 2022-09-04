.class Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2$1;
.super Ljava/lang/Object;
.source "X8ModifyModeController.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;->onClose()V

    .line 162
    return-void
.end method

.method public onOpen()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public returnBack()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/kernel/percent/PercentRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/kernel/percent/PercentRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 152
    return-void
.end method
