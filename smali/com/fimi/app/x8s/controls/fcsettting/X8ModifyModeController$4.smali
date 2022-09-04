.class Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;
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
    .line 178
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 181
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1400(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/ViewStub;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_gimbal_sensor_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-static {v1, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1402(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    .line 183
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1400(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/ViewStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1602(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Landroid/view/View;)Landroid/view/View;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;-><init>(Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1702(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;)Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    .line 186
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1800(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/x8sdk/controller/X8GimbalManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->setX8GimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V

    .line 188
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->showItem()V

    .line 189
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8modifyGimbalSensorController;->setModeControllerListener(Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;)V

    .line 206
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/kernel/percent/PercentRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/kernel/percent/PercentRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 208
    return-void
.end method
