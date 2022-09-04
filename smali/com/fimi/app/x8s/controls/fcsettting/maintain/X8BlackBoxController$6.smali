.class Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$6;
.super Ljava/lang/Object;
.source "X8BlackBoxController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->showUploadingEixtDialog()V
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
    .line 243
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public onRight()V
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/FdsManager;->stopAll()V

    .line 253
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->onBlackBoxBack()V

    .line 254
    return-void
.end method
