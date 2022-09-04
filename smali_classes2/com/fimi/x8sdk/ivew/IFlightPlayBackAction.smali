.class public interface abstract Lcom/fimi/x8sdk/ivew/IFlightPlayBackAction;
.super Ljava/lang/Object;
.source "IFlightPlayBackAction.java"


# virtual methods
.method public abstract parseFileDateEnd(IZ)V
.end method

.method public abstract setPlaybackProgress(IZ)V
.end method

.method public abstract showAutoFcBattery(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;)V
.end method

.method public abstract showAutoFcErrCode(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showAutoFcHeart(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;)V
.end method

.method public abstract showAutoFcSignalState(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSignalStatePlayback;)V
.end method

.method public abstract showAutoFcSportState(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcSportStatePlayback;)V
.end method

.method public abstract showAutoHomeInfo(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoHomeInfoPlayback;)V
.end method

.method public abstract showAutoRelayHeart(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;)V
.end method

.method public abstract showAutoRockerState(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;)V
.end method

.method public abstract showDroneDisconnectState()V
.end method

.method public abstract showGetLowPowerOpt(Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;)V
.end method

.method public abstract showGetRcMode(Lcom/fimi/x8sdk/dataparser/AckGetRcMode;)V
.end method

.method public abstract showRemoteControlDisconnectState()V
.end method
