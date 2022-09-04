.class public Lcom/fimi/x8sdk/modulestate/DroneState;
.super Lcom/fimi/x8sdk/modulestate/BaseState;
.source "DroneState.java"


# static fields
.field public static final CAMP:I = 0x1388

.field public static final DEFAULT:I = 0x5dc

.field public static taskMadeChangeTime:J


# instance fields
.field private accurateLanding:I

.field private apStatus:I

.field private autoAiSurroundState:Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;

.field autoFcHeart:Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

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

.field public final newHandItsHeight:I

.field private outTime:I

.field private pilotMode:I

.field private realTimeSpeed:F

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

    .line 21
    invoke-direct {p0}, Lcom/fimi/x8sdk/modulestate/BaseState;-><init>()V

    .line 32
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->outTime:I

    .line 33
    iput v3, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->ctrlMode:I

    .line 36
    const/16 v0, 0x1e

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->newHandItsHeight:I

    .line 60
    iput v3, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->ctrlType:I

    .line 62
    iput v4, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->fcBrakeSenssity:I

    .line 64
    iput v4, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->fcYAWSenssity:I

    .line 84
    iput v2, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->followReturn:I

    .line 270
    iput v2, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->taskMode:I

    .line 271
    iput v1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->naviTaskSta:I

    .line 272
    iput v1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->apStatus:I

    .line 273
    iput v1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->wpNUM:I

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

    .line 244
    iput v5, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->taskMode:I

    .line 245
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->ctrlMode:I

    .line 246
    iput v1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->naviTaskSta:I

    .line 247
    iput v1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->apStatus:I

    .line 248
    iput v1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->wpNUM:I

    .line 249
    iput-wide v2, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->longitude:D

    .line 250
    iput-wide v2, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->latitude:D

    .line 251
    iput v4, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->height:F

    .line 252
    iput v4, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->deviceAngle:F

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->autoFixedwingState:Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;

    .line 254
    iput-boolean v5, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->autoLandingCheckObj:Z

    .line 255
    return-void
.end method

.method public getAiSurroundState()Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->autoAiSurroundState:Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;

    return-object v0
.end method

.method public getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->autoFcHeart:Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    invoke-direct {v0}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->autoFcHeart:Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->autoFcHeart:Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    return-object v0
.end method

.method public getAutoFixedwingState()Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->autoFixedwingState:Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;

    return-object v0
.end method

.method public getCtrlMode()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->ctrlMode:I

    return v0
.end method

.method public getCtrlType()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->ctrlType:I

    return v0
.end method

.method public getDeviceAngle()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->deviceAngle:F

    return v0
.end method

.method public getFcBatterState()Lcom/fimi/x8sdk/dataparser/AutoFcBattery;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->fcBatterState:Lcom/fimi/x8sdk/dataparser/AutoFcBattery;

    return-object v0
.end method

.method public getFcBrakeSenssity()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->fcBrakeSenssity:I

    return v0
.end method

.method public getFcSingal()Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->fcSingal:Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    return-object v0
.end method

.method public getFcSportState()Lcom/fimi/x8sdk/dataparser/AutoFcSportState;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->sportState:Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    return-object v0
.end method

.method public getFcYAWSenssity()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->fcYAWSenssity:I

    return v0
.end method

.method public getFlyDistance()F
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->flyDistance:F

    return v0
.end method

.method public getFlyHeight()F
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->flyHeight:F

    return v0
.end method

.method public getFollowReturn()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->followReturn:I

    return v0
.end method

.method public getGpsSpeed()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->gpsSpeed:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->height:F

    return v0
.end method

.method public getHomeInfo()Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->homeInfo:Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->longitude:D

    return-wide v0
.end method

.method public getLowPowerValue()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->lowPowerValue:I

    return v0
.end method

.method public getRealTimeSpeed()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->realTimeSpeed:F

    return v0
.end method

.method public getReturnHomeHight()F
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->returnHomeHight:F

    return v0
.end method

.method public getTaskMode()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->taskMode:I

    return v0
.end method

.method public getVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleFcAckVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    .line 206
    .local v0, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    return-object v0
.end method

.method public getWpNUM()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->wpNUM:I

    return v0
.end method

.method public isAutoLandingCheckObj()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->autoLandingCheckObj:Z

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleFcAckVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    .line 212
    .local v0, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v1

    if-gez v1, :cond_1

    .line 213
    :cond_0
    const/4 v1, 0x0

    .line 215
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCanFly()Z
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getTakeOffCap()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getAutoTakeOffCap()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 201
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 200
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnect()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleFcAckVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    .line 193
    .local v0, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    if-nez v0, :cond_1

    .line 196
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
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->lastFcHeartTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->outTime:I

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

    .line 325
    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->autoFcHeart:Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    if-nez v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->autoFcHeart:Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getCtrlType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInSky()Z
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getFlightPhase()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getFlightPhase()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getFlightPhase()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 165
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 163
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLanding()Z
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getFlightPhase()I

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

    .line 151
    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getFlightPhase()I

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getFlightPhase()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getFlightPhase()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpenAccurateLanding()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 432
    iget v1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->accurateLanding:I

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
    .line 380
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->pilotMode:I

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
    .line 384
    iget-boolean v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->isSportMode:Z

    return v0
.end method

.method public isTakeOffing()Z
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getFlightPhase()I

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
    .line 305
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->ctrlMode:I

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->taskMode:I

    .line 307
    return-void
.end method

.method public setANavigationState(Lcom/fimi/x8sdk/dataparser/AutoNavigationState;)V
    .locals 1
    .param p1, "mNavigationState"    # Lcom/fimi/x8sdk/dataparser/AutoNavigationState;

    .prologue
    .line 298
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->getTaskMode()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->taskMode:I

    .line 299
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->getNaviTaskSta()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->naviTaskSta:I

    .line 300
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->getApStatus()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->apStatus:I

    .line 301
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->getWpNUM()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->wpNUM:I

    .line 302
    return-void
.end method

.method public setAccurateLanding(I)V
    .locals 1
    .param p1, "accurateLanding"    # I

    .prologue
    const/4 v0, 0x1

    .line 427
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->accurateLanding:I

    .line 428
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->onChangeAccurateLanding(Z)V

    .line 429
    return-void

    .line 428
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccurateLandingCheckObj(Z)V
    .locals 0
    .param p1, "autoLandingCheckObj"    # Z

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->autoLandingCheckObj:Z

    .line 437
    return-void
.end method

.method public setAutoAiSurroundState(Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;)V
    .locals 0
    .param p1, "autoAiSurroundState"    # Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->autoAiSurroundState:Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;

    .line 421
    return-void
.end method

.method public setAutoFixedwingState(Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;)V
    .locals 0
    .param p1, "autoFixedwingState"    # Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->autoFixedwingState:Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;

    .line 402
    return-void
.end method

.method public setCtrlMode(I)V
    .locals 2
    .param p1, "ctrlMode"    # I

    .prologue
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/fimi/x8sdk/modulestate/DroneState;->taskMadeChangeTime:J

    .line 137
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->ctrlMode:I

    .line 138
    return-void
.end method

.method public setCtrlType(I)V
    .locals 0
    .param p1, "ctlType"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->ctrlType:I

    .line 58
    return-void
.end method

.method public setFcBatterState(Lcom/fimi/x8sdk/dataparser/AutoFcBattery;)V
    .locals 0
    .param p1, "fcBatterState"    # Lcom/fimi/x8sdk/dataparser/AutoFcBattery;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->fcBatterState:Lcom/fimi/x8sdk/dataparser/AutoFcBattery;

    .line 335
    return-void
.end method

.method public setFcBrakeSenssity(I)V
    .locals 0
    .param p1, "fcBrakeSenssity"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->fcBrakeSenssity:I

    .line 100
    return-void
.end method

.method public setFcHeart(Lcom/fimi/x8sdk/dataparser/AutoFcHeart;)V
    .locals 0
    .param p1, "fcHeart"    # Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->autoFcHeart:Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    .line 314
    return-void
.end method

.method public setFcSingal(Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;)V
    .locals 0
    .param p1, "fcSingal"    # Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->fcSingal:Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    .line 368
    return-void
.end method

.method public setFcSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 0
    .param p1, "sportState"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->sportState:Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .line 357
    return-void
.end method

.method public setFcYAWSenssity(I)V
    .locals 0
    .param p1, "fcYAWSenssity"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->fcYAWSenssity:I

    .line 104
    return-void
.end method

.method public setFlyDistance(F)V
    .locals 0
    .param p1, "flyDistance"    # F

    .prologue
    .line 411
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->flyDistance:F

    .line 413
    invoke-static {p1}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setDistanceLimit(F)V

    .line 414
    return-void
.end method

.method public setFlyHeight(F)V
    .locals 0
    .param p1, "flyHeight"    # F

    .prologue
    .line 292
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->flyHeight:F

    .line 293
    invoke-static {p1}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setHeightLimit(F)V

    .line 294
    return-void
.end method

.method public setFollowReturn(I)V
    .locals 1
    .param p1, "followReturn"    # I

    .prologue
    const/4 v0, 0x1

    .line 79
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->followReturn:I

    .line 80
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setFollowAB(Z)V

    .line 81
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGpsSpeed(F)V
    .locals 0
    .param p1, "gpsSpeed"    # F

    .prologue
    .line 405
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->gpsSpeed:F

    .line 406
    invoke-static {p1}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setSpeedLimit(F)V

    .line 408
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 240
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->height:F

    .line 241
    return-void
.end method

.method public setHomeInfo(Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;)V
    .locals 0
    .param p1, "homeInfo"    # Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->homeInfo:Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;

    .line 346
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 232
    iput-wide p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->latitude:D

    .line 233
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 224
    iput-wide p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->longitude:D

    .line 225
    return-void
.end method

.method public setLowPowerValue(I)V
    .locals 0
    .param p1, "lowPowerValue"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->lowPowerValue:I

    .line 93
    invoke-static {p1}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setLowPower(I)V

    .line 94
    return-void
.end method

.method public setOutTime(I)V
    .locals 0
    .param p1, "outTime"    # I

    .prologue
    .line 393
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->outTime:I

    .line 394
    return-void
.end method

.method public setPilotMode(I)V
    .locals 1
    .param p1, "pilotMode"    # I

    .prologue
    .line 375
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->pilotMode:I

    .line 376
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setPilotMode(Z)V

    .line 377
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRealTimeSpeed(F)V
    .locals 0
    .param p1, "realTimeSpeed"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->realTimeSpeed:F

    .line 44
    return-void
.end method

.method public setReturnHomeHight(F)V
    .locals 0
    .param p1, "returnHomeHight"    # F

    .prologue
    .line 280
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->returnHomeHight:F

    .line 282
    invoke-static {p1}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setReturnHeight(F)V

    .line 283
    return-void
.end method

.method public setSportMode(Z)V
    .locals 1
    .param p1, "sportMode"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->isSportMode:Z

    .line 389
    iget-boolean v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->isSportMode:Z

    invoke-static {v0}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setSportMode(Z)V

    .line 390
    return-void
.end method

.method public setSportStateValue(DDFF)V
    .locals 1
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .param p5, "height"    # F
    .param p6, "deviceAngle"    # F

    .prologue
    .line 259
    iput-wide p1, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->longitude:D

    .line 260
    iput-wide p3, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->latitude:D

    .line 261
    iput p5, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->height:F

    .line 262
    iput p6, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->deviceAngle:F

    .line 263
    const/4 v0, 0x0

    cmpg-float v0, p6, v0

    if-gez v0, :cond_0

    .line 264
    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p6, v0

    .line 266
    :cond_0
    return-void
.end method

.method public updateLastFcHeartTime()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/modulestate/DroneState;->lastFcHeartTime:J

    .line 108
    return-void
.end method
