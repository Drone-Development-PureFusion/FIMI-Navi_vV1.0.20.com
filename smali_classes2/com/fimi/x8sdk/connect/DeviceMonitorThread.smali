.class public Lcom/fimi/x8sdk/connect/DeviceMonitorThread;
.super Ljava/lang/Thread;
.source "DeviceMonitorThread.java"


# instance fields
.field conectState:Lcom/fimi/x8sdk/entity/ConectState;

.field isConnectDrone:Z

.field isConnectRelay:Z

.field public isLoop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isLoop:Z

    .line 21
    new-instance v0, Lcom/fimi/x8sdk/entity/ConectState;

    invoke-direct {v0}, Lcom/fimi/x8sdk/entity/ConectState;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->conectState:Lcom/fimi/x8sdk/entity/ConectState;

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isLoop:Z

    .line 90
    invoke-virtual {p0}, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->interrupt()V

    .line 91
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 33
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 35
    :goto_0
    iget-boolean v3, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isLoop:Z

    if-eqz v3, :cond_a

    .line 36
    sget-boolean v3, Lcom/fimi/x8sdk/rtp/X8Rtp;->simulationTest:Z

    if-eqz v3, :cond_3

    .line 37
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->isFcTimeOut()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    iput-boolean v5, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isConnectDrone:Z

    .line 39
    iput-boolean v5, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isConnectRelay:Z

    .line 75
    :goto_1
    iget-object v3, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->conectState:Lcom/fimi/x8sdk/entity/ConectState;

    iget-boolean v6, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isConnectRelay:Z

    invoke-virtual {v3, v6}, Lcom/fimi/x8sdk/entity/ConectState;->setConnectRelay(Z)V

    .line 76
    iget-object v3, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->conectState:Lcom/fimi/x8sdk/entity/ConectState;

    iget-boolean v6, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isConnectDrone:Z

    invoke-virtual {v3, v6}, Lcom/fimi/x8sdk/entity/ConectState;->setConnectDrone(Z)V

    .line 77
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    iget-object v6, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->conectState:Lcom/fimi/x8sdk/entity/ConectState;

    invoke-virtual {v3, v6}, Lcom/fimi/x8sdk/modulestate/StateManager;->onConnectState(Lcom/fimi/x8sdk/entity/ConectState;)V

    .line 79
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 41
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->getVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v1

    .line 42
    .local v1, "fcVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    if-eqz v1, :cond_2

    .line 43
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isConnectDrone:Z

    iput-boolean v3, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isConnectRelay:Z

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_2

    .line 45
    :cond_2
    iput-boolean v5, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isConnectDrone:Z

    .line 46
    iput-boolean v5, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isConnectRelay:Z

    goto :goto_1

    .line 52
    .end local v1    # "fcVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    :cond_3
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->isFcTimeOut()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 53
    iput-boolean v5, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isConnectDrone:Z

    .line 63
    :goto_3
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getRelayState()Lcom/fimi/x8sdk/modulestate/RelayState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/RelayState;->isRlTimeOut()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 64
    iput-boolean v5, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isConnectRelay:Z

    goto :goto_1

    .line 55
    :cond_4
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->getVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v1

    .line 56
    .restart local v1    # "fcVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    if-eqz v1, :cond_6

    .line 57
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v3

    if-lez v3, :cond_5

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isConnectDrone:Z

    goto :goto_3

    :cond_5
    move v3, v5

    goto :goto_4

    .line 59
    :cond_6
    iput-boolean v5, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isConnectDrone:Z

    goto :goto_3

    .line 66
    .end local v1    # "fcVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    :cond_7
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getRelayState()Lcom/fimi/x8sdk/modulestate/RelayState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/RelayState;->getRelayVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v2

    .line 67
    .local v2, "relayVer":Lcom/fimi/x8sdk/dataparser/AckVersion;
    if-nez v2, :cond_8

    .line 68
    iput-boolean v5, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isConnectRelay:Z

    goto/16 :goto_1

    .line 70
    :cond_8
    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v3

    if-lez v3, :cond_9

    move v3, v4

    :goto_5
    iput-boolean v3, p0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->isConnectRelay:Z

    goto/16 :goto_1

    :cond_9
    move v3, v5

    goto :goto_5

    .line 85
    .end local v2    # "relayVer":Lcom/fimi/x8sdk/dataparser/AckVersion;
    :cond_a
    return-void
.end method
