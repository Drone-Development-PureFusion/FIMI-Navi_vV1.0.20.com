.class public Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8RockerCalibrationController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private imgReturn:Landroid/widget/ImageView;

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 20
    return-void
.end method


# virtual methods
.method public closeItem()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;->isShow:Z

    .line 61
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;->contentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;->defaultVal()V

    .line 63
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;->imgReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 24
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_rl_main_rc_item_rocker_mode_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;->contentView:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;->contentView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->img_return:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;->imgReturn:Landroid/widget/ImageView;

    .line 27
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 46
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_return:I

    if-ne v0, v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;->closeItem()V

    .line 48
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onCalibrationReturn()V

    .line 52
    :cond_0
    return-void
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;->isShow:Z

    if-eqz v0, :cond_0

    .line 37
    :cond_0
    return-void
.end method

.method public setCalibrationListener(Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;->listener:Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    .line 70
    return-void
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 66
    return-void
.end method

.method public showItem()V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;->isShow:Z

    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerCalibrationController;->contentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    return-void
.end method
