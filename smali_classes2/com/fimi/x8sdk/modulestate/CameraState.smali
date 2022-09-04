.class public Lcom/fimi/x8sdk/modulestate/CameraState;
.super Lcom/fimi/x8sdk/modulestate/BaseState;
.source "CameraState.java"


# instance fields
.field autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

.field cameraSystemState:Lcom/fimi/x8sdk/entity/CameraSystemState;

.field private takingPanoramicPhotos:Z

.field private token:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fimi/x8sdk/modulestate/BaseState;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/CameraState;->token:I

    .line 20
    new-instance v0, Lcom/fimi/x8sdk/entity/CameraSystemState;

    invoke-direct {v0}, Lcom/fimi/x8sdk/entity/CameraSystemState;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/CameraState;->cameraSystemState:Lcom/fimi/x8sdk/entity/CameraSystemState;

    .line 21
    return-void
.end method


# virtual methods
.method public getAutoCameraStateADV()Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/CameraState;->autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    return-object v0
.end method

.method public getCameraSystemState()Lcom/fimi/x8sdk/entity/CameraSystemState;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/CameraState;->cameraSystemState:Lcom/fimi/x8sdk/entity/CameraSystemState;

    return-object v0
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/CameraState;->token:I

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0}, Lcom/fimi/x8sdk/modulestate/CameraState;->getLoginState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnect()Z
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/CameraState;->token:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDelayedPhotography()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/CameraState;->autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/CameraState;->autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->isDelayedPhotography()Z

    move-result v0

    goto :goto_0
.end method

.method public isTakingPanoramicPhotos()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/fimi/x8sdk/modulestate/CameraState;->takingPanoramicPhotos:Z

    return v0
.end method

.method public setAutoCameraStateADV(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V
    .locals 0
    .param p1, "autoCameraStateADV"    # Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/CameraState;->autoCameraStateADV:Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    .line 72
    return-void
.end method

.method public setCameraStatus(I)V
    .locals 2
    .param p1, "cameraStatus"    # I

    .prologue
    .line 33
    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/fimi/kernel/utils/BitUtil;->getBitByByte(II)I

    move-result v0

    .line 34
    .local v0, "camearStatus":I
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/modulestate/CameraState;->setLoginState(I)V

    .line 35
    return-void
.end method

.method public setTakingPanoramicPhotos(Z)V
    .locals 0
    .param p1, "takingPanoramicPhotos"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/fimi/x8sdk/modulestate/CameraState;->takingPanoramicPhotos:Z

    .line 68
    return-void
.end method

.method public setToken(I)V
    .locals 2
    .param p1, "token"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/CameraState;->token:I

    .line 44
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 45
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/VersionState;->setModuleCameraVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 46
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/VersionState;->setModuleCvVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 48
    :cond_0
    return-void
.end method
