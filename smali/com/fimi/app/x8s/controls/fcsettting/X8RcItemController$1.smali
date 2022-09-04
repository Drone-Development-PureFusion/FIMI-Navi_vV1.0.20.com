.class Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;
.super Ljava/lang/Object;
.source "X8RcItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->showApDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    iput p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)Lcom/fimi/app/x8s/widget/X8TabItem;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    iget v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->currAPModel:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabItem;->setSelect(I)V

    .line 74
    return-void
.end method

.method public onRight()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;->val$index:I

    int-to-byte v1, v1

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setApMode(BLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 99
    return-void
.end method
