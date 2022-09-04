.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$39;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->showFollowDialog(Z)V
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
    .line 1315
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$39;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 1319
    return-void
.end method

.method public onRight()V
    .locals 3

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$39;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$39$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$39$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$39;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setAiFollowEnableBack(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 1333
    return-void
.end method
