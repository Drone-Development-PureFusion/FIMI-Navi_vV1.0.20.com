.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4;
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
    .line 184
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)[F

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$502(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;[F)[F

    .line 188
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)[F

    move-result-object v0

    aget v0, v0, v4

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)F

    move-result v2

    add-float v3, v0, v2

    .line 189
    .local v3, "newValue":F
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_gimbal_xyz_adjust_max_hint:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 203
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/x8sdk/controller/X8GimbalManager;

    move-result-object v0

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)[F

    move-result-object v2

    const/4 v4, 0x0

    aget v2, v2, v4

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)[F

    move-result-object v4

    aget v4, v4, v1

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4$1;

    invoke-direct {v5, p0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4;F)V

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->setGcParamsNew(IFFFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0
.end method
