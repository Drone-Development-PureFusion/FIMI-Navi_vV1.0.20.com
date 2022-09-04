.class public Lcom/fimi/x8sdk/entity/ConectState;
.super Ljava/lang/Object;
.source "ConectState.java"


# instance fields
.field private isCameraConnect:Z

.field private isConnectDrone:Z

.field private isConnectRelay:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCameraConnect()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/fimi/x8sdk/entity/ConectState;->isCameraConnect:Z

    return v0
.end method

.method public isConnectDrone()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/fimi/x8sdk/entity/ConectState;->isConnectDrone:Z

    return v0
.end method

.method public isConnectRelay()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/fimi/x8sdk/entity/ConectState;->isConnectRelay:Z

    return v0
.end method

.method public setCameraConnect(Z)V
    .locals 0
    .param p1, "cameraConnect"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/fimi/x8sdk/entity/ConectState;->isCameraConnect:Z

    .line 25
    return-void
.end method

.method public setConnectDrone(Z)V
    .locals 1
    .param p1, "connectDrone"    # Z

    .prologue
    .line 32
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/fimi/x8sdk/entity/ConectState;->isConnectDrone:Z

    if-eq v0, p1, :cond_0

    .line 34
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->clearFcVersion()V

    .line 36
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->clearState()V

    .line 38
    :cond_0
    iput-boolean p1, p0, Lcom/fimi/x8sdk/entity/ConectState;->isConnectDrone:Z

    .line 39
    return-void
.end method

.method public setConnectRelay(Z)V
    .locals 1
    .param p1, "connectRelay"    # Z

    .prologue
    .line 47
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/fimi/x8sdk/entity/ConectState;->isConnectRelay:Z

    if-eq v0, p1, :cond_0

    .line 49
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->clearVersion()V

    .line 51
    :cond_0
    iput-boolean p1, p0, Lcom/fimi/x8sdk/entity/ConectState;->isConnectRelay:Z

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConectState{isConnectDrone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/x8sdk/entity/ConectState;->isConnectDrone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isConnectRelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/x8sdk/entity/ConectState;->isConnectRelay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCameraConnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/x8sdk/entity/ConectState;->isCameraConnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
