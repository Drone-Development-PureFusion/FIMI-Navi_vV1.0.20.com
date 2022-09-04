.class public interface abstract Lcom/fimi/x8sdk/ivew/IFcCtrlAction;
.super Ljava/lang/Object;
.source "IFcCtrlAction.java"


# virtual methods
.method public abstract checkCloudCalibrationProgress(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract checkIMUException(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract checkMatchCodeProgress(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract checkRcCilabration(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract closeAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract cloudCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getAiFollowEnableBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getAircrftCalibrationState(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getApMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getAutoHomePoint(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getBrakeSens(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getCalibrationState(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getFcParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
            "<",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract getFlyDistanceParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
            "<",
            "Lcom/fimi/x8sdk/dataparser/AckGetFcParam;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getFlyHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getFormatStorage(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getGpsSpeedParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
            "<",
            "Lcom/fimi/x8sdk/dataparser/AckGetFcParam;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getIUMInfo(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getLostAction(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getLowPowerOperation(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getOpticFlow(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getPilotMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getRcCtrlMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getSportMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract getYawTrip(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract openAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract openCheckIMU(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract rcCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract rcMatchCodeOrNot(I)V
.end method

.method public abstract reqReturnHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
            "<",
            "Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract restSystemParams(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract setAiFollowEnableBack(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract setAircrftCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract setApMode(BLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract setApModeRestart(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract setAttitudeSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V
.end method

.method public abstract setAutoHomePoint(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract setBrakeSens(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V
.end method

.method public abstract setCalibrationStart(IIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract setDisenableFixwing(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract setDisenableHeadingFree(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract setEnableAerailShot(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract setEnableFixwing(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract setEnableHeadingFree(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract setEnableTripod(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract setFcParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;IF)V
.end method

.method public abstract setFlyDistanceParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V
.end method

.method public abstract setFlyHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V
.end method

.method public abstract setFormatStorage(IILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract setGoBackRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V
.end method

.method public abstract setGpsSpeedParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V
.end method

.method public abstract setLeftRightRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
.end method

.method public abstract setLostAction(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
.end method

.method public abstract setLowPowerOperation(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;IIII)V
.end method

.method public abstract setOpticFlow(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;Z)V
.end method

.method public abstract setPanoramaPhotographState(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V
.end method

.method public abstract setPanoramaPhotographType(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
.end method

.method public abstract setPilotMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V
.end method

.method public abstract setRcCtrlMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V
.end method

.method public abstract setReturnHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;F)V
.end method

.method public abstract setSportMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
.end method

.method public abstract setUpDownRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
.end method

.method public abstract setUpdateHeadingFree(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
.end method

.method public abstract setYawSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
.end method

.method public abstract setYawTrip(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
.end method
