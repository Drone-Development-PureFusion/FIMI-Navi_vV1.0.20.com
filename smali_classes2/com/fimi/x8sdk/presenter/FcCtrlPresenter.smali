.class public Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;
.super Lcom/fimi/x8sdk/common/BasePresenter;
.source "FcCtrlPresenter.java"

# interfaces
.implements Lcom/fimi/x8sdk/ivew/IFcCtrlAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/fimi/x8sdk/common/BasePresenter;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->addNoticeListener()V

    .line 42
    return-void
.end method


# virtual methods
.method public checkCloudCalibrationProgress(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 233
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 234
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->checkCloudCalibrationCmd()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 235
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 236
    return-void
.end method

.method public checkIMUException(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "sensorType"    # I
    .param p2, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 386
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/FcCollection;->checkIMUException(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 387
    return-void
.end method

.method public checkMatchCodeProgress(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 365
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 366
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->checkMatchCodeProgress()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 367
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 368
    return-void
.end method

.method public checkRcCilabration(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 379
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 380
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->checkRCCalibration()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 381
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 382
    return-void
.end method

.method public closeAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 506
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 507
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/FcCollection;->setAccurateLanding(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 508
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 509
    return-void
.end method

.method public cloudCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 226
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 227
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setCloudCalibrationCmd(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 228
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 229
    return-void
.end method

.method public getAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 513
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 514
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getAccurateLanding()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 515
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 516
    return-void
.end method

.method public getAiFollowEnableBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 475
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 476
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getAiFollowEnableBack()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 477
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 478
    return-void
.end method

.method public getAircrftCalibrationState(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "sensorType"    # I
    .param p2, "type"    # I
    .param p3, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 120
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p3}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 121
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->getAircrftCalibrationState(II)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    .line 122
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 123
    return-void
.end method

.method public getApMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 162
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 163
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getApMode()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 164
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 165
    return-void
.end method

.method public getAutoHomePoint(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 412
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/FcCollection;->getAutoHomePoint()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 413
    return-void
.end method

.method public getBrakeSens(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 303
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 304
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getBrakeSens()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 305
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 306
    return-void
.end method

.method public getCalibrationState(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "sensorType"    # I
    .param p2, "type"    # I
    .param p3, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 114
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p3}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 115
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->getCalibrationState(II)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    .line 116
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 117
    return-void
.end method

.method public getFcParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 2
    .param p2, "paramIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
            "<",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "listenerWithParam":Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;, "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener<Ljava/lang/Float;>;"
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/command/FcCollection;->getFcParam(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 83
    return-void
.end method

.method public getFlyDistanceParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
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
    .line 103
    .local p1, "listenerWithParam":Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;, "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener<Lcom/fimi/x8sdk/dataparser/AckGetFcParam;>;"
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/command/FcCollection;->getFcParam(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 104
    return-void
.end method

.method public getFlyHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 488
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/command/FcCollection;->getFcParam(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 489
    return-void
.end method

.method public getFormatStorage(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "devid"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 140
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 141
    .local v1, "fcCollection":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->getFormatStorage(I)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    .line 142
    .local v0, "command":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 143
    return-void
.end method

.method public getGpsSpeedParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
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
    .line 93
    .local p1, "listenerWithParam":Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;, "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener<Lcom/fimi/x8sdk/dataparser/AckGetFcParam;>;"
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/command/FcCollection;->getFcParam(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 94
    return-void
.end method

.method public getIUMInfo(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "imuType"    # I
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 219
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 220
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->getIMUInfoCmd(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 221
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 222
    return-void
.end method

.method public getLostAction(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "callBackListenerWithParam"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 61
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/FcCollection;->getLostAction()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 62
    return-void
.end method

.method public getLowPowerOperation(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 247
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 248
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getLowPowerOperation()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 249
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 250
    return-void
.end method

.method public getOpticFlow(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 268
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 269
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getOpticFlow()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 270
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 271
    return-void
.end method

.method public getPilotMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 71
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/FcCollection;->getPilotMode()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 72
    return-void
.end method

.method public getRcCtrlMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 358
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 359
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getCtrlMode()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 360
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 361
    return-void
.end method

.method public getRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 345
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 346
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getRockerExp()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 347
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 348
    return-void
.end method

.method public getSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 289
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 290
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getSensitivity()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 291
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 292
    return-void
.end method

.method public getSportMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 402
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/FcCollection;->getSportMode()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 404
    return-void
.end method

.method public getYawTrip(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 317
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 318
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getYawTrip()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 319
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 320
    return-void
.end method

.method public onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 177
    return-void
.end method

.method public onPersonalDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 181
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 182
    return-void
.end method

.method public onPersonalSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 186
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 187
    return-void
.end method

.method public onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 172
    return-void
.end method

.method public openAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 499
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 500
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/FcCollection;->setAccurateLanding(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 501
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 502
    return-void
.end method

.method public openCheckIMU(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 492
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 493
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->checkIMUInfoCmd()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 494
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 495
    return-void
.end method

.method public rcCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "cmdTyp"    # I
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 372
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 373
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->rcCalibration(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 374
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 375
    return-void
.end method

.method public rcMatchCodeOrNot(I)V
    .locals 3
    .param p1, "codeType"    # I

    .prologue
    .line 253
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 254
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->RCMatchOrCancelCode(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 255
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 256
    return-void
.end method

.method protected reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 2
    .param p1, "isAck"    # Z
    .param p2, "groupId"    # I
    .param p3, "msgId"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p5, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/16 v1, 0xc

    .line 192
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 193
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->onNormalResponseWithParamForFCCTRL(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const/16 v0, 0xd

    if-ne p2, v0, :cond_2

    .line 195
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->onNormalResponseWithParamForMaintenance(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 196
    :cond_2
    if-ne p2, v1, :cond_3

    .line 197
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->onNormalResponseWithParamForTelemetry(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 198
    :cond_3
    const/16 v0, 0x9

    if-ne p2, v0, :cond_4

    .line 199
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->onNormalResponseWithParamForGimbal(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 200
    :cond_4
    const/16 v0, 0xb

    if-ne p2, v0, :cond_5

    .line 201
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->onNormalResponseWithParamWithRcCTRL(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 202
    :cond_5
    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    .line 203
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->onNormalResponse(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 204
    :cond_6
    const/16 v0, 0xe

    if-ne p2, v0, :cond_7

    .line 205
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->onNormalResponse(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 206
    :cond_7
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 207
    if-ne p3, v1, :cond_8

    .line 208
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->onNormalResponse(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 210
    :cond_8
    const/16 v0, 0x15

    if-ne p3, v0, :cond_0

    .line 211
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->onNormalFormatResonse(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0
.end method

.method public reqReturnHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
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
    .line 51
    .local p1, "reqRetHome":Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;, "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener<Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;>;"
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/FcCollection;->getReturnHeight()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 52
    return-void
.end method

.method public restSystemParams(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 391
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/FcCollection;->restSystemParams()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 392
    return-void
.end method

.method public setAiFollowEnableBack(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 468
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 469
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setAiFollowEnableBack(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 470
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 471
    return-void
.end method

.method public setAircrftCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "cmd"    # I
    .param p3, "mode"    # I
    .param p4, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 126
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p4}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 127
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1, p2, p3}, Lcom/fimi/x8sdk/command/FcCollection;->setAircrftCalibrationStart(III)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    .line 128
    .local v0, "c":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 129
    return-void
.end method

.method public setApMode(BLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "mode"    # B
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 148
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 149
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setApMode(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 150
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 151
    return-void
.end method

.method public setApModeRestart(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 155
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 156
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setApModeRestart()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 157
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 158
    return-void
.end method

.method public setAttitudeSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "rollPercent"    # I
    .param p3, "pitchPercent"    # I

    .prologue
    .line 275
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 276
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p2, p3}, Lcom/fimi/x8sdk/command/FcCollection;->setAttitudeSensitivity(II)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 277
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 278
    return-void
.end method

.method public setAutoHomePoint(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "enable"    # I
    .param p2, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 407
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setAutoHomePoint(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 408
    return-void
.end method

.method public setBrakeSens(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "rollPercent"    # I
    .param p3, "pitchPercent"    # I

    .prologue
    .line 296
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 297
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p2, p3}, Lcom/fimi/x8sdk/command/FcCollection;->setBrakeSens(II)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 298
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 299
    return-void
.end method

.method public setCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "cmd"    # I
    .param p3, "mode"    # I
    .param p4, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 108
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p4}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 109
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1, p2, p3}, Lcom/fimi/x8sdk/command/FcCollection;->setCalibrationStart(III)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    .line 110
    .local v0, "c":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 111
    return-void
.end method

.method public setDisenableFixwing(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 447
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 448
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setDisenableFixwing()Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    .line 449
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 450
    return-void
.end method

.method public setDisenableHeadingFree(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 461
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 462
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setDisenableHeadingFree()Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    .line 463
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 464
    return-void
.end method

.method public setEnableAerailShot(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "enable"    # I
    .param p2, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 435
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setEnableAerailShot(I)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 437
    return-void
.end method

.method public setEnableFixwing(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 440
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 441
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setEnableFixwing()Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    .line 442
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 443
    return-void
.end method

.method public setEnableHeadingFree(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 454
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 455
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setEnableHeadingFree()Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    .line 456
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 457
    return-void
.end method

.method public setEnableTripod(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "enable"    # I
    .param p2, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 429
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setEnableTripod(I)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 431
    return-void
.end method

.method public setFcParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;IF)V
    .locals 2
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "paramIndex"    # I
    .param p3, "paramData"    # F

    .prologue
    .line 77
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    int-to-byte v1, p2

    invoke-virtual {v0, v1, p3}, Lcom/fimi/x8sdk/command/FcCollection;->setFcParam(BF)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 78
    return-void
.end method

.method public setFlyDistanceParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V
    .locals 2
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "paramData"    # F

    .prologue
    .line 98
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setFcParam(BF)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 99
    return-void
.end method

.method public setFlyHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "paramData"    # F

    .prologue
    .line 482
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setFcParam(BF)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 484
    return-void
.end method

.method public setFormatStorage(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "devid"    # I
    .param p3, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 133
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p3}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 134
    .local v1, "fcCollection":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setFormatStorage(II)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    .line 135
    .local v0, "command":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 137
    return-void
.end method

.method public setGoBackRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "rollPercent"    # I
    .param p3, "pitchPercent"    # I

    .prologue
    .line 338
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 339
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p2, p3}, Lcom/fimi/x8sdk/command/FcCollection;->setGoBackRockerExp(II)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 340
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 341
    return-void
.end method

.method public setGpsSpeedParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V
    .locals 2
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "paramData"    # F

    .prologue
    .line 88
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setFcParam(BF)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 89
    return-void
.end method

.method public setLeftRightRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "yawPercent"    # I

    .prologue
    .line 331
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 332
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setLeftRightRockerExp(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 333
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 334
    return-void
.end method

.method public setLostAction(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "action"    # I

    .prologue
    .line 56
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/command/FcCollection;->setLostAction(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 57
    return-void
.end method

.method public setLowPowerOperation(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;IIII)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "lowPowerValue"    # I
    .param p3, "seriousLowPowerValue"    # I
    .param p4, "lowPowerOpt"    # I
    .param p5, "seriousLowPowerOpt"    # I

    .prologue
    .line 240
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 241
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/fimi/x8sdk/command/FcCollection;->setLowPowerOperation(IIII)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 242
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 243
    return-void
.end method

.method public setOpticFlow(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;Z)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "isOpen"    # Z

    .prologue
    .line 261
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 262
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setOpticFlow(Z)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 263
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 264
    return-void
.end method

.method public setPanoramaPhotographState(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "panoramaPhotographState"    # B

    .prologue
    .line 534
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 535
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setPanoramaPhotographState(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 536
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 537
    return-void
.end method

.method public setPanoramaPhotographType(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "panoramaPhotographType"    # I

    .prologue
    .line 527
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 528
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setPanoramaPhotographType(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 529
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 530
    return-void
.end method

.method public setPilotMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "mode"    # B

    .prologue
    .line 66
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setPilotMode(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 67
    return-void
.end method

.method public setRcCtrlMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "mode"    # B

    .prologue
    .line 352
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 353
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setCtrlMode(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 354
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 355
    return-void
.end method

.method public setReturnHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V
    .locals 1
    .param p1, "retHomeListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "height"    # F

    .prologue
    .line 46
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setReturnHeight(F)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 47
    return-void
.end method

.method public setSportMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 1
    .param p1, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "enable"    # I

    .prologue
    .line 396
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setSportMode(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 398
    return-void
.end method

.method public setUpDownRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "throttlePercent"    # I

    .prologue
    .line 324
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 325
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setUpDownRockerExp(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 326
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 327
    return-void
.end method

.method public setUpdateHeadingFree(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 520
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 521
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setUpdateHeadingFree()Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    .line 522
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 523
    return-void
.end method

.method public setYawSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "yawPercent"    # I

    .prologue
    .line 282
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 283
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setYawSensitivity(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 284
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 285
    return-void
.end method

.method public setYawTrip(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "yawValue"    # I

    .prologue
    .line 310
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 311
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setYawTrip(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 312
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcCtrlPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 313
    return-void
.end method
