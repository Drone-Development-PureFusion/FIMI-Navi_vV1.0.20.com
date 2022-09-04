.class Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$1;
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
    .line 57
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$1;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$1;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$1;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->listener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;->onGcClick()V

    .line 63
    :cond_0
    return-void
.end method
