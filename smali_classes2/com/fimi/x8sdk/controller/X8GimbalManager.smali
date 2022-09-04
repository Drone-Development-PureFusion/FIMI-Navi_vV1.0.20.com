.class public Lcom/fimi/x8sdk/controller/X8GimbalManager;
.super Ljava/lang/Object;
.source "X8GimbalManager.java"


# instance fields
.field gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;

    invoke-direct {v0}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/controller/X8GimbalManager;->gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;

    .line 20
    return-void
.end method


# virtual methods
.method public getGcGain(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8GimbalManager;->gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IGbAciton;->getGcGain(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 77
    return-void
.end method

.method public getGcParams(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8GimbalManager;->gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IGbAciton;->getGcParams(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 55
    return-void
.end method

.method public getGcParamsNew(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8GimbalManager;->gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IGbAciton;->getGcParamsNew(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 64
    return-void
.end method

.method public getGimbalSensorInfo(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8GimbalManager;->gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IGbAciton;->getGimbalSensorInfo(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 27
    return-void
.end method

.method public getHorizontalAdjust(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8GimbalManager;->gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IGbAciton;->getHorizontalAdjust(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 39
    return-void
.end method

.method public getPitchSpeed(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8GimbalManager;->gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IGbAciton;->getPitchSpeed(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 47
    return-void
.end method

.method public resetGCParams(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8GimbalManager;->gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IGbAciton;->restGcSystemParams(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 51
    return-void
.end method

.method public setAiAutoPhotoPitchAngle(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "angle"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8GimbalManager;->gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IGbAciton;->setAiAutoPhotoPitchAngle(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 31
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8GimbalManager;->gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;

    check-cast v0, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->setContext(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public setGcGain(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8GimbalManager;->gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IGbAciton;->setGcGain(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 73
    return-void
.end method

.method public setGcParams(IFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "param"    # F
    .param p3, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8GimbalManager;->gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/x8sdk/ivew/IGbAciton;->setGcParams(IFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 60
    return-void
.end method

.method public setGcParamsNew(IFFFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 6
    .param p1, "model"    # I
    .param p2, "param1"    # F
    .param p3, "param2"    # F
    .param p4, "param3"    # F
    .param p5, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8GimbalManager;->gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/fimi/x8sdk/ivew/IGbAciton;->setGcParamsNew(IFFFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 68
    return-void
.end method

.method public setHorizontalAdjust(FLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "angle"    # F
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8GimbalManager;->gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IGbAciton;->setHorizontalAdjust(FLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 35
    return-void
.end method

.method public setPitchSpeed(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "speed"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/X8GimbalManager;->gbAction:Lcom/fimi/x8sdk/ivew/IGbAciton;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IGbAciton;->setPitchSpeed(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 43
    return-void
.end method
