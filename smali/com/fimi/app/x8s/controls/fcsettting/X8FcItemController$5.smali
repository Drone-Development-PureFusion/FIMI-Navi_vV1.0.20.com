.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$5;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 166
    const/high16 v0, 0x42f00000    # 120.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->showFlyHeightDialog(F)V

    .line 173
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->sendFlyHeight(F)V

    goto :goto_0
.end method
