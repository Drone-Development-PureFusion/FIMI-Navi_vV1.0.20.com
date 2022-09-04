.class Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$2;
.super Ljava/lang/Object;
.source "X8BlackBoxController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->initAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/FdsManager;->hasUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->showUploadingEixtDialog()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->onBlackBoxBack()V

    goto :goto_0
.end method
