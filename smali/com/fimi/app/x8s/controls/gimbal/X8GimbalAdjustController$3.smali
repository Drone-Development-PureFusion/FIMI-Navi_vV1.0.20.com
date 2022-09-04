.class Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;
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
    .line 81
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3$1;-><init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->getGcParams(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 99
    return-void
.end method
