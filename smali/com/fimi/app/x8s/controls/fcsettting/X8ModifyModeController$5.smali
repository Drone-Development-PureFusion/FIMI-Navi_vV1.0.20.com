.class Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;
.super Ljava/lang/Object;
.source "X8ModifyModeController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->initActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 214
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1900(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/ViewStub;

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$2000(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_sensor_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-static {v1, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1902(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    .line 216
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1900(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/ViewStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$2102(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Landroid/view/View;)Landroid/view/View;

    .line 217
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$2100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;-><init>(Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$2202(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$2200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 220
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$2200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->showItem()V

    .line 221
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$2200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifySensorController;->setModeControllerListener(Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;)V

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/kernel/percent/PercentRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/kernel/percent/PercentRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 240
    return-void
.end method
