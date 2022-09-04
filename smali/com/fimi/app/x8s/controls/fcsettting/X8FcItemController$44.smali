.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$44;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->showDistanceDialog()V
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
    .line 1489
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$44;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 1493
    return-void
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$44;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    const v1, 0x47c15c00    # 99000.0f

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$3000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;F)V

    .line 1498
    return-void
.end method
