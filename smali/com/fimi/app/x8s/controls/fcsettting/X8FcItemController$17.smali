.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/widget/SwitchButton$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->initActions()V
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
    .line 353
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitch(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "on"    # Z

    .prologue
    .line 356
    if-eqz p2, :cond_0

    .line 357
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setAutoHomePoint(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 379
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17$2;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$17;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setAutoHomePoint(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0
.end method
