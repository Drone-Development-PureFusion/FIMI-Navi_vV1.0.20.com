.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7;
.super Ljava/lang/Object;
.source "X8GimbalXYZAdjustController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->initClickAction()V
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
    .line 249
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    .line 252
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)[F

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$502(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;[F)[F

    .line 253
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)[F

    move-result-object v0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)F

    move-result v2

    sub-float v4, v0, v2

    .line 254
    .local v4, "newValue":F
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v0, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_gimbal_xyz_adjust_max_hint:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 268
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/x8sdk/controller/X8GimbalManager;

    move-result-object v0

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)[F

    move-result-object v3

    aget v3, v3, v5

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7$1;

    invoke-direct {v5, p0, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7;F)V

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->setGcParamsNew(IFFFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0
.end method
