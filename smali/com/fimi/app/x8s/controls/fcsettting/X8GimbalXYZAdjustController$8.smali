.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$8;
.super Ljava/lang/Object;
.source "X8GimbalXYZAdjustController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 317
    return-void
.end method

.method public onRight()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 321
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/x8sdk/controller/X8GimbalManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$8$1;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$8$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$8;)V

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->setGcParamsNew(IFFFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 327
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 328
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/app/x8s/interfaces/IX8GimbalXYZAdjustListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8GimbalXYZAdjustListener;->gimbalXYZAdjustExit()V

    .line 329
    return-void
.end method
