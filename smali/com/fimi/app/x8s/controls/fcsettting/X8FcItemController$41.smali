.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$41;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->showFlyHeightDialog(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$41;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iput p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$41;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 1428
    return-void
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$41;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$41;->val$value:F

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->sendFlyHeight(F)V

    .line 1433
    return-void
.end method
