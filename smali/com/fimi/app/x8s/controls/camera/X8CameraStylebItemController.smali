.class public Lcom/fimi/app/x8s/controls/camera/X8CameraStylebItemController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8CameraStylebItemController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private awbSeekBar:Landroid/widget/SeekBar;

.field private cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private context:Landroid/content/Context;

.field private isUser:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraStylebItemController;->isUser:Z

    .line 23
    return-void
.end method


# virtual methods
.method public defaultVal()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraStylebItemController;->context:Landroid/content/Context;

    .line 30
    sget v0, Lcom/fimi/app/x8s/R$id;->awb_seekBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraStylebItemController;->awbSeekBar:Landroid/widget/SeekBar;

    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraStylebItemController;->awbSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 32
    return-void
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 46
    iput-boolean p3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraStylebItemController;->isUser:Z

    .line 47
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 52
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 57
    return-void
.end method

.method public setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 0
    .param p1, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraStylebItemController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 19
    return-void
.end method
