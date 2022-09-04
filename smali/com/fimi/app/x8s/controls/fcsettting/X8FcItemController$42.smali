.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$42;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->showFailsafeDialog(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

.field final synthetic val$index:I

.field final synthetic val$last:I

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 1451
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$42;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iput p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$42;->val$last:I

    iput p3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$42;->val$value:I

    iput p4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$42;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 1455
    return-void
.end method

.method public onRight()V
    .locals 4

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$42;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$42;->val$last:I

    iget v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$42;->val$value:I

    iget v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$42;->val$index:I

    invoke-static {v0, v1, v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$2900(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;III)V

    .line 1460
    return-void
.end method
