.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$1;
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
    .line 110
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$1$1;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$1$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$1;F)V

    invoke-virtual {v0, v1, p1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setGpsSpeed(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V

    .line 123
    return-void
.end method
