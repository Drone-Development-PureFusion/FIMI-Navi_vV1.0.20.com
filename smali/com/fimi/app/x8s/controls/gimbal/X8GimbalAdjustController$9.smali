.class Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$9;
.super Ljava/lang/Object;
.source "X8GimbalAdjustController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->initClickAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$9;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$9;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->rlYaw:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->getEtxValue()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3f70624dd2f1a9fcL    # 0.004

    add-double/2addr v2, v4

    double-to-float v0, v2

    .line 189
    .local v0, "value":F
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$9;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    const/16 v2, 0x8

    new-instance v3, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$9$1;

    invoke-direct {v3, p0, v0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$9$1;-><init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$9;F)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->setGcParams(IFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 200
    return-void
.end method
