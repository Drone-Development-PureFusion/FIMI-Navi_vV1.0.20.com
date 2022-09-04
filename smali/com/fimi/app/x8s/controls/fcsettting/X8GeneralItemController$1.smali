.class Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$1;
.super Ljava/lang/Object;
.source "X8GeneralItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/controls/fcsettting/X8RestSystemController$OnRestSystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    move-result-object v0

    sget v1, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_NORMAL:I

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;->switchMapStyle(I)V

    .line 81
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8GeneralItemControllerListerner;->switchUnity(Z)V

    .line 85
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Lcom/fimi/app/x8s/widget/X8TabHost;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8TabHost;->setSelect(I)V

    .line 86
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->resetPrexString(Landroid/content/Context;)V

    .line 89
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8GeneralItemController;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 73
    return-void
.end method
