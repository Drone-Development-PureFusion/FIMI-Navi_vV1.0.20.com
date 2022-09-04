.class public Lcom/fimi/x8sdk/controller/FcCtrlManager;
.super Ljava/lang/Object;
.source "FcCtrlManager.java"


# instance fields
.field fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;

    invoke-direct {v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    .line 24
    return-void
.end method


# virtual methods
.method public checkCloudCalibrationProgress(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->checkCloudCalibrationProgress(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 177
    return-void
.end method

.method public checkIMUException(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "sensorType"    # I
    .param p2, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->checkIMUException(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 379
    return-void
.end method

.method public checkRcCalibrationProgress(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->checkRcCilabration(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 192
    return-void
.end method

.method public checkRcMactchProgress(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->checkMatchCodeProgress(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 184
    return-void
.end method

.method public closeAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->closeAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 478
    return-void
.end method

.method public cloudCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->cloudCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 173
    return-void
.end method

.method public getAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 483
    return-void
.end method

.method public getAiFollowEnableBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getAiFollowEnableBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 461
    return-void
.end method

.method public getAircrftCalibrationState(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "sensorType"    # I
    .param p2, "type"    # I
    .param p3, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getAircrftCalibrationState(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 130
    return-void
.end method

.method public getApMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getApMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 168
    return-void
.end method

.method public getAutoHomePoint(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getAutoHomePoint(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 419
    return-void
.end method

.method public getBrakeSens(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getBrakeSens(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 287
    return-void
.end method

.method public getCalibrationState(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "sensorType"    # I
    .param p2, "type"    # I
    .param p3, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getCalibrationState(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 123
    return-void
.end method

.method public getFlyDistanceParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
            "<",
            "Lcom/fimi/x8sdk/dataparser/AckGetFcParam;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "listenerWithParam":Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;, "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener<Lcom/fimi/x8sdk/dataparser/AckGetFcParam;>;"
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getFlyDistanceParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 115
    return-void
.end method

.method public getFlyHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getFlyHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 470
    return-void
.end method

.method public getFormatStorage(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "devid"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getFormatStorage(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 137
    return-void
.end method

.method public getGpsSpeedParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
            "<",
            "Lcom/fimi/x8sdk/dataparser/AckGetFcParam;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "listenerWithParam":Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;, "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener<Lcom/fimi/x8sdk/dataparser/AckGetFcParam;>;"
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getGpsSpeedParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 97
    return-void
.end method

.method public getIUMInfo(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "imuType"    # I
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getIUMInfo(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 141
    return-void
.end method

.method public getLostAction(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
            "<",
            "Lcom/fimi/x8sdk/dataparser/AckGetLostAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "listenerWithParam":Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;, "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener<Lcom/fimi/x8sdk/dataparser/AckGetLostAction;>;"
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getLostAction(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 63
    return-void
.end method

.method public getLowPowerOpt()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    new-instance v1, Lcom/fimi/x8sdk/controller/FcCtrlManager$1;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/FcCtrlManager$1;-><init>(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getLowPowerOperation(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 226
    return-void
.end method

.method public getLowPowerOpt(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getLowPowerOperation(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 214
    return-void
.end method

.method public getOpticFlow(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getOpticFlow(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 243
    return-void
.end method

.method public getPilotMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getPilotMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 79
    return-void
.end method

.method public getRcCtrlMode()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    new-instance v1, Lcom/fimi/x8sdk/controller/FcCtrlManager$2;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/FcCtrlManager$2;-><init>(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getRcCtrlMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 371
    return-void
.end method

.method public getRcCtrlMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getRcCtrlMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 359
    return-void
.end method

.method public getReturnHomeHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
            "<",
            "Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "paramLisnter":Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;, "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener<Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;>;"
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->reqReturnHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 44
    return-void
.end method

.method public getRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 341
    return-void
.end method

.method public getSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 269
    return-void
.end method

.method public getSportMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getSportMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 412
    return-void
.end method

.method public getYawTrip(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->getYawTrip(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 305
    return-void
.end method

.method public openAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->openAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 474
    return-void
.end method

.method public openCheckIMU(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->openCheckIMU(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 387
    return-void
.end method

.method public rcCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "cmdType"    # I
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->rcCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 188
    return-void
.end method

.method public rcMatchCodeOrNot(I)V
    .locals 1
    .param p1, "codeType"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->rcMatchCodeOrNot(I)V

    .line 180
    return-void
.end method

.method public restSystemParams(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->restSystemParams(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 394
    return-void
.end method

.method public setAiFollowEnableBack(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setAiFollowEnableBack(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 457
    return-void
.end method

.method public setAircrftCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "cmd"    # I
    .param p3, "mode"    # I
    .param p4, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setAircrftCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 127
    return-void
.end method

.method public setApMode(BLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "mode"    # B
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setApMode(BLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 150
    return-void
.end method

.method public setApModeRestart(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setApModeRestart(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 158
    return-void
.end method

.method public setAttitudeSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "rollPercent"    # I
    .param p3, "pitchPercent"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setAttitudeSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V

    .line 254
    return-void
.end method

.method public setAutoHomePoint(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "enable"    # I
    .param p2, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setAutoHomePoint(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 415
    return-void
.end method

.method public setBrakeSens(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "rollPercent"    # I
    .param p3, "pitchPercent"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setBrakeSens(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V

    .line 279
    return-void
.end method

.method public setCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "cmd"    # I
    .param p3, "mode"    # I
    .param p4, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 119
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    check-cast v0, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->setContext(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public setDisenableFixwing(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setDisenableFixwing(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 444
    return-void
.end method

.method public setDisenableHeadingFree(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setDisenableHeadingFree(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 453
    return-void
.end method

.method public setEnableAerailShot(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "enable"    # I
    .param p2, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setEnableAerailShot(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 434
    return-void
.end method

.method public setEnableFixwing(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setEnableFixwing(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 439
    return-void
.end method

.method public setEnableHeadingFree(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setEnableHeadingFree(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 449
    return-void
.end method

.method public setEnableTripod(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "enable"    # I
    .param p2, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setEnableTripod(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 430
    return-void
.end method

.method public setFlyDistanceParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "paramData"    # F

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setFlyDistanceParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V

    .line 106
    return-void
.end method

.method public setFlyHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "value"    # F

    .prologue
    .line 465
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setFlyHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V

    .line 466
    return-void
.end method

.method public setFormatStorage(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "devid"    # I
    .param p3, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setFormatStorage(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 134
    return-void
.end method

.method public setGoBackRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "rollPercent"    # I
    .param p3, "pitchPercent"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setGoBackRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V

    .line 333
    return-void
.end method

.method public setGpsSpeed(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "speed"    # F

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setGpsSpeedParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V

    .line 88
    return-void
.end method

.method public setLeftRightRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "yawPercent"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setLeftRightRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 323
    return-void
.end method

.method public setLostAction(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "lostAction"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setLostAction(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 54
    return-void
.end method

.method public setLowPowerOpt(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;IIII)V
    .locals 6
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "lowPowerValue"    # I
    .param p3, "seriousLowPowerValue"    # I
    .param p4, "lowPowerOpt"    # I
    .param p5, "seriousLowPowerOpt"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setLowPowerOperation(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;IIII)V

    .line 205
    return-void
.end method

.method public setOpticFlow(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;Z)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "isOpen"    # Z

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setOpticFlow(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;Z)V

    .line 235
    return-void
.end method

.method public setPanoramaPhotographState(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "panoramaPhotographState"    # B

    .prologue
    .line 503
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setPanoramaPhotographState(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V

    .line 504
    return-void
.end method

.method public setPanoramaPhotographType(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "panoramaPhotographType"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setPanoramaPhotographType(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 495
    return-void
.end method

.method public setPilotMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "mode"    # B

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setPilotMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V

    .line 71
    return-void
.end method

.method public setRcCtrlMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "mode"    # B

    .prologue
    .line 350
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setRcCtrlMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V

    .line 351
    return-void
.end method

.method public setReturnHome(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "height"    # F

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setReturnHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V

    .line 36
    return-void
.end method

.method public setSportMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 1
    .param p1, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "enable"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setSportMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 404
    return-void
.end method

.method public setUpDownRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "throttlePercent"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setUpDownRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 314
    return-void
.end method

.method public setUpdateHeadingFree(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setUpdateHeadingFree(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 486
    return-void
.end method

.method public setYawSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "yawPercent"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setYawSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 261
    return-void
.end method

.method public setYawTrip(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "yawValue"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcCtrlManager;->fcCtrlAction:Lcom/fimi/x8sdk/ivew/IFcCtrlAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcCtrlAction;->setYawTrip(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 296
    return-void
.end method
