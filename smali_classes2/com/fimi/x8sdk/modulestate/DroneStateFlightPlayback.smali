.class public Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;
.super Lcom/fimi/x8sdk/modulestate/BaseState;
.source "DroneStateFlightPlayback.java"


# static fields
.field public static final CAMP:I = 0x1388

.field public static final DEFAULT:I = 0x5dc

.field public static taskMadeChangeTime:J


# instance fields
.field private accurateLanding:I

.field private apStatus:I

.field private autoAiSurroundState:Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;

.field autoFcHeart:Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

.field private autoFixedwingState:Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;

.field private autoLandingCheckObj:Z

.field private ctrlMode:I

.field private ctrlType:I

.field private deviceAngle:F

.field fcBatterState:Lcom/fimi/x8sdk/dataparser/AutoFcBattery;

.field private fcBrakeSenssity:I

.field private fcSingal:Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

.field private fcYAWSenssity:I

.field private flyDistance:F

.field private flyHeight:F

.field private followReturn:I

.field private gpsSpeed:F

.field private height:F

.field homeInfo:Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;

.field private isSportMode:Z

.field private lastFcHeartTime:J

.field private latitude:D

.field private longitude:D

.field private lowPowerValue:I

.field private naviTaskSta:I

.field private outTime:I

.field private pilotMode:I

.field private returnHomeHight:F

.field sportState:Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

.field private taskMode:I

.field private wpNUM:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 20
    invoke-direct {p0}, Lcom/fimi/x8sdk/modulestate/BaseState;-><init>()V

    .line 31
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->outTime:I

    .line 32
    iput v3, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->ctrlMode:I

    .line 49
    iput v3, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->ctrlType:I

    .line 51
    iput v4, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->fcBrakeSenssity:I

    .line 53
    iput v4, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->fcYAWSenssity:I

    .line 73
    iput v2, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->followReturn:I

    .line 259
    iput v2, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->taskMode:I

    .line 260
    iput v1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->naviTaskSta:I

    .line 261
    iput v1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->apStatus:I

    .line 262
    iput v1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->wpNUM:I

    return-void
.end method


# virtual methods
.method public clearState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    .line 233
    iput v5, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->taskMode:I

    .line 234
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->ctrlMode:I

    .line 235
    iput v1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->naviTaskSta:I

    .line 236
    iput v1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->apStatus:I

    .line 237
    iput v1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->wpNUM:I

    .line 238
    iput-wide v2, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->longitude:D

    .line 239
    iput-wide v2, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->latitude:D

    .line 240
    iput v4, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->height:F

    .line 241
    iput v4, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->deviceAngle:F

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->autoFixedwingState:Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;

    .line 243
    iput-boolean v5, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->autoLandingCheckObj:Z

    .line 244
    return-void
.end method

.method public getAiSurroundState()Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->autoAiSurroundState:Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;

    return-object v0
.end method

.method public getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->autoFcHeart:Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    invoke-direct {v0}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->autoFcHeart:Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->autoFcHeart:Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    return-object v0
.end method

.method public getAutoFixedwingState()Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->autoFixedwingState:Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;

    return-object v0
.end method

.method public getCtrlMode()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->ctrlMode:I

    return v0
.end method

.method public getCtrlType()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->ctrlType:I

    return v0
.end method

.method public getDeviceAngle()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->deviceAngle:F

    return v0
.end method

.method public getFcBatterState()Lcom/fimi/x8sdk/dataparser/AutoFcBattery;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->fcBatterState:Lcom/fimi/x8sdk/dataparser/AutoFcBattery;

    return-object v0
.end method

.method public getFcBrakeSenssity()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->fcBrakeSenssity:I

    return v0
.end method

.method public getFcSingal()Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->fcSingal:Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    return-object v0
.end method

.method public getFcSportState()Lcom/fimi/x8sdk/dataparser/AutoFcSportState;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->sportState:Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    return-object v0
.end method

.method public getFcYAWSenssity()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->fcYAWSenssity:I

    return v0
.end method

.method public getFlyDistance()F
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->flyDistance:F

    return v0
.end method

.method public getFlyHeight()F
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->flyHeight:F

    return v0
.end method

.method public getFollowReturn()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->followReturn:I

    return v0
.end method

.method public getGpsSpeed()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->gpsSpeed:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->height:F

    return v0
.end method

.method public getHomeInfo()Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->homeInfo:Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->longitude:D

    return-wide v0
.end method

.method public getLowPowerValue()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->lowPowerValue:I

    return v0
.end method

.method public getReturnHomeHight()F
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->returnHomeHight:F

    return v0
.end method

.method public getTaskMode()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->taskMode:I

    return v0
.end method

.method public getVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleFcAckVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    .line 195
    .local v0, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    return-object v0
.end method

.method public getWpNUM()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->wpNUM:I

    return v0
.end method

.method public isAutoLandingCheckObj()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->autoLandingCheckObj:Z

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleFcAckVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    .line 201
    .local v0, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v1

    if-gez v1, :cond_1

    .line 202
    :cond_0
    const/4 v1, 0x0

    .line 204
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCanFly()Z
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getTakeOffCap()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getAutoTakeOffCap()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 190
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 189
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnect()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleFcAckVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    .line 182
    .local v0, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isFcTimeOut()Z
    .locals 4

    .prologue
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->lastFcHeartTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->outTime:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGPSMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 314
    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->autoFcHeart:Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    if-nez v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->autoFcHeart:Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getCtrlType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInSky()Z
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getFlightPhase()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getFlightPhase()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getFlightPhase()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 154
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 152
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLanding()Z
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getFlightPhase()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnGround()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getFlightPhase()I

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getFlightPhase()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getFlightPhase()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpenAccurateLanding()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 421
    iget v1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->accurateLanding:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPilotModePrimary()Z
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->pilotMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSportMode()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->isSportMode:Z

    return v0
.end method

.method public isTakeOffing()Z
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->getFlightPhase()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetCtrlMode()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->ctrlMode:I

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->taskMode:I

    .line 296
    return-void
.end method

.method public setANavigationState(Lcom/fimi/x8sdk/dataparser/AutoNavigationState;)V
    .locals 1
    .param p1, "mNavigationState"    # Lcom/fimi/x8sdk/dataparser/AutoNavigationState;

    .prologue
    .line 287
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->getTaskMode()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->taskMode:I

    .line 288
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->getNaviTaskSta()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->naviTaskSta:I

    .line 289
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->getApStatus()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->apStatus:I

    .line 290
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->getWpNUM()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->wpNUM:I

    .line 291
    return-void
.end method

.method public setAccurateLanding(I)V
    .locals 1
    .param p1, "accurateLanding"    # I

    .prologue
    const/4 v0, 0x1

    .line 416
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->accurateLanding:I

    .line 417
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->onChangeAccurateLanding(Z)V

    .line 418
    return-void

    .line 417
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccurateLandingCheckObj(Z)V
    .locals 0
    .param p1, "autoLandingCheckObj"    # Z

    .prologue
    .line 425
    iput-boolean p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->autoLandingCheckObj:Z

    .line 426
    return-void
.end method

.method public setAutoAiSurroundState(Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;)V
    .locals 0
    .param p1, "autoAiSurroundState"    # Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->autoAiSurroundState:Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;

    .line 410
    return-void
.end method

.method public setAutoFixedwingState(Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;)V
    .locals 0
    .param p1, "autoFixedwingState"    # Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->autoFixedwingState:Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;

    .line 391
    return-void
.end method

.method public setCtrlMode(I)V
    .locals 2
    .param p1, "ctrlMode"    # I

    .prologue
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->taskMadeChangeTime:J

    .line 126
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->ctrlMode:I

    .line 127
    return-void
.end method

.method public setCtrlType(I)V
    .locals 0
    .param p1, "ctlType"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->ctrlType:I

    .line 47
    return-void
.end method

.method public setFcBatterState(Lcom/fimi/x8sdk/dataparser/AutoFcBattery;)V
    .locals 0
    .param p1, "fcBatterState"    # Lcom/fimi/x8sdk/dataparser/AutoFcBattery;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->fcBatterState:Lcom/fimi/x8sdk/dataparser/AutoFcBattery;

    .line 324
    return-void
.end method

.method public setFcBrakeSenssity(I)V
    .locals 0
    .param p1, "fcBrakeSenssity"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->fcBrakeSenssity:I

    .line 89
    return-void
.end method

.method public setFcHeart(Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;)V
    .locals 0
    .param p1, "fcHeart"    # Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->autoFcHeart:Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;

    .line 303
    return-void
.end method

.method public setFcSingal(Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;)V
    .locals 0
    .param p1, "fcSingal"    # Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->fcSingal:Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    .line 357
    return-void
.end method

.method public setFcSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 0
    .param p1, "sportState"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->sportState:Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .line 346
    return-void
.end method

.method public setFcYAWSenssity(I)V
    .locals 0
    .param p1, "fcYAWSenssity"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->fcYAWSenssity:I

    .line 93
    return-void
.end method

.method public setFlyDistance(F)V
    .locals 0
    .param p1, "flyDistance"    # F

    .prologue
    .line 400
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->flyDistance:F

    .line 402
    invoke-static {p1}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setDistanceLimit(F)V

    .line 403
    return-void
.end method

.method public setFlyHeight(F)V
    .locals 0
    .param p1, "flyHeight"    # F

    .prologue
    .line 281
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->flyHeight:F

    .line 282
    invoke-static {p1}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setHeightLimit(F)V

    .line 283
    return-void
.end method

.method public setFollowReturn(I)V
    .locals 1
    .param p1, "followReturn"    # I

    .prologue
    const/4 v0, 0x1

    .line 68
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->followReturn:I

    .line 69
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setFollowAB(Z)V

    .line 70
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGpsSpeed(F)V
    .locals 0
    .param p1, "gpsSpeed"    # F

    .prologue
    .line 394
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->gpsSpeed:F

    .line 395
    invoke-static {p1}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setSpeedLimit(F)V

    .line 397
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 229
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->height:F

    .line 230
    return-void
.end method

.method public setHomeInfo(Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;)V
    .locals 0
    .param p1, "homeInfo"    # Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->homeInfo:Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;

    .line 335
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 221
    iput-wide p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->latitude:D

    .line 222
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 213
    iput-wide p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->longitude:D

    .line 214
    return-void
.end method

.method public setLowPowerValue(I)V
    .locals 0
    .param p1, "lowPowerValue"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->lowPowerValue:I

    .line 82
    invoke-static {p1}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setLowPower(I)V

    .line 83
    return-void
.end method

.method public setOutTime(I)V
    .locals 0
    .param p1, "outTime"    # I

    .prologue
    .line 382
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->outTime:I

    .line 383
    return-void
.end method

.method public setPilotMode(I)V
    .locals 1
    .param p1, "pilotMode"    # I

    .prologue
    .line 364
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->pilotMode:I

    .line 365
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setPilotMode(Z)V

    .line 366
    return-void

    .line 365
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setReturnHomeHight(F)V
    .locals 0
    .param p1, "returnHomeHight"    # F

    .prologue
    .line 269
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->returnHomeHight:F

    .line 271
    invoke-static {p1}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setReturnHeight(F)V

    .line 272
    return-void
.end method

.method public setSportMode(Z)V
    .locals 1
    .param p1, "sportMode"    # Z

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->isSportMode:Z

    .line 378
    iget-boolean v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->isSportMode:Z

    invoke-static {v0}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setSportMode(Z)V

    .line 379
    return-void
.end method

.method public setSportStateValue(DDFF)V
    .locals 1
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .param p5, "height"    # F
    .param p6, "deviceAngle"    # F

    .prologue
    .line 248
    iput-wide p1, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->longitude:D

    .line 249
    iput-wide p3, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->latitude:D

    .line 250
    iput p5, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->height:F

    .line 251
    iput p6, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->deviceAngle:F

    .line 252
    const/4 v0, 0x0

    cmpg-float v0, p6, v0

    if-gez v0, :cond_0

    .line 253
    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p6, v0

    .line 255
    :cond_0
    return-void
.end method

.method public updateLastFcHeartTime()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/modulestate/DroneStateFlightPlayback;->lastFcHeartTime:J

    .line 97
    return-void
.end method
