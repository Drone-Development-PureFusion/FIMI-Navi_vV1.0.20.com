.class public Lcom/fimi/x8sdk/modulestate/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# static fields
.field private static final ALL_CONNECTED_STATE:I = 0x0

.field private static final BATTERYSTATE:I = 0x3

.field private static final CHECK_CONNECT_MESSAGE:I = 0x1

.field private static final PANORAMIC_INFORMATION:I = 0x5

.field private static final RIGHT_ROLLER:I = 0x4

.field private static final VC_TRACKING:I = 0x2

.field private static stateManager:Lcom/fimi/x8sdk/modulestate/StateManager;


# instance fields
.field private ackRightRoller:Lcom/fimi/x8sdk/dataparser/AckRightRoller;

.field private camera:Lcom/fimi/x8sdk/modulestate/CameraState;

.field cameraStateListener:Lcom/fimi/x8sdk/listener/CameraStateListener;

.field private conectState:Lcom/fimi/x8sdk/entity/ConectState;

.field connectListener:Lcom/fimi/x8sdk/listener/ConnectListener;

.field cruTime:J

.field curTime:J

.field private droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

.field fcBatteryListeners:Lcom/fimi/x8sdk/listener/FcBatteryListener;

.field fcHeartListener:Lcom/fimi/x8sdk/listener/FcHeartListener;

.field fcSingalListener:Lcom/fimi/x8sdk/listener/FcSingalListener;

.field private gimbalState:Lcom/fimi/x8sdk/modulestate/GimbalState;

.field homeInfoListeners:Lcom/fimi/x8sdk/listener/HomeInfoListener;

.field private is4KResolution:Z

.field ix8PanoramicInformationListener:Lcom/fimi/x8sdk/listener/IX8PanoramicInformationListener;

.field private mErrorCodeState:Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

.field mHandler:Landroid/os/Handler;

.field mNavigationStateListeners:Lcom/fimi/x8sdk/listener/NavigationStateListener;

.field private mNfzState:Lcom/fimi/x8sdk/modulestate/NfzState;

.field private mVersionState:Lcom/fimi/x8sdk/modulestate/VersionState;

.field mX8ErrorCodeListener:Lcom/fimi/x8sdk/listener/IX8ErrorCodeListener;

.field noFlyLinstener:Lcom/fimi/x8sdk/listener/NoFlyLinstener;

.field powerListener:Lcom/fimi/x8sdk/listener/IX8PowerListener;

.field private rcMatchState:Lcom/fimi/x8sdk/modulestate/RCMatchState;

.field rcMatchStateListener:Lcom/fimi/x8sdk/listener/RcMatchStateListener;

.field relayHeartListener:Lcom/fimi/x8sdk/listener/RelayHeartListener;

.field private relayState:Lcom/fimi/x8sdk/modulestate/RelayState;

.field rightRollerLinstener:Lcom/fimi/x8sdk/listener/RightRollerLinstener;

.field sportStateListeners:Lcom/fimi/x8sdk/listener/FcSportStateListener;

.field vcTrackListener:Lcom/fimi/x8sdk/listener/IX8VcTrackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/fimi/x8sdk/modulestate/StateManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/modulestate/StateManager;->stateManager:Lcom/fimi/x8sdk/modulestate/StateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-direct {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    .line 40
    new-instance v0, Lcom/fimi/x8sdk/modulestate/CameraState;

    invoke-direct {v0}, Lcom/fimi/x8sdk/modulestate/CameraState;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->camera:Lcom/fimi/x8sdk/modulestate/CameraState;

    .line 42
    new-instance v0, Lcom/fimi/x8sdk/modulestate/RelayState;

    invoke-direct {v0}, Lcom/fimi/x8sdk/modulestate/RelayState;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->relayState:Lcom/fimi/x8sdk/modulestate/RelayState;

    .line 44
    new-instance v0, Lcom/fimi/x8sdk/modulestate/GimbalState;

    invoke-direct {v0}, Lcom/fimi/x8sdk/modulestate/GimbalState;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->gimbalState:Lcom/fimi/x8sdk/modulestate/GimbalState;

    .line 51
    new-instance v0, Lcom/fimi/x8sdk/modulestate/NfzState;

    invoke-direct {v0}, Lcom/fimi/x8sdk/modulestate/NfzState;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mNfzState:Lcom/fimi/x8sdk/modulestate/NfzState;

    .line 62
    new-instance v0, Lcom/fimi/x8sdk/modulestate/VersionState;

    invoke-direct {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mVersionState:Lcom/fimi/x8sdk/modulestate/VersionState;

    .line 64
    new-instance v0, Lcom/fimi/x8sdk/entity/ConectState;

    invoke-direct {v0}, Lcom/fimi/x8sdk/entity/ConectState;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->conectState:Lcom/fimi/x8sdk/entity/ConectState;

    .line 73
    new-instance v0, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    invoke-direct {v0}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mErrorCodeState:Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    .line 75
    new-instance v0, Lcom/fimi/x8sdk/modulestate/RCMatchState;

    invoke-direct {v0}, Lcom/fimi/x8sdk/modulestate/RCMatchState;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->rcMatchState:Lcom/fimi/x8sdk/modulestate/RCMatchState;

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->curTime:J

    .line 116
    new-instance v0, Lcom/fimi/x8sdk/modulestate/StateManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fimi/x8sdk/modulestate/StateManager$1;-><init>(Lcom/fimi/x8sdk/modulestate/StateManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mHandler:Landroid/os/Handler;

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->cruTime:J

    .line 239
    iput-object v2, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->sportStateListeners:Lcom/fimi/x8sdk/listener/FcSportStateListener;

    .line 241
    iput-object v2, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mNavigationStateListeners:Lcom/fimi/x8sdk/listener/NavigationStateListener;

    .line 243
    iput-object v2, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->noFlyLinstener:Lcom/fimi/x8sdk/listener/NoFlyLinstener;

    .line 245
    iput-object v2, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->fcHeartListener:Lcom/fimi/x8sdk/listener/FcHeartListener;

    .line 247
    iput-object v2, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->fcBatteryListeners:Lcom/fimi/x8sdk/listener/FcBatteryListener;

    .line 249
    iput-object v2, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->homeInfoListeners:Lcom/fimi/x8sdk/listener/HomeInfoListener;

    .line 251
    iput-object v2, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->fcSingalListener:Lcom/fimi/x8sdk/listener/FcSingalListener;

    .line 253
    iput-object v2, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->relayHeartListener:Lcom/fimi/x8sdk/listener/RelayHeartListener;

    .line 255
    iput-object v2, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->connectListener:Lcom/fimi/x8sdk/listener/ConnectListener;

    .line 257
    iput-object v2, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->cameraStateListener:Lcom/fimi/x8sdk/listener/CameraStateListener;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/x8sdk/modulestate/StateManager;)Lcom/fimi/x8sdk/modulestate/RelayState;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/modulestate/StateManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->relayState:Lcom/fimi/x8sdk/modulestate/RelayState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/x8sdk/modulestate/StateManager;)Lcom/fimi/x8sdk/modulestate/DroneState;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/modulestate/StateManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/x8sdk/modulestate/StateManager;)Lcom/fimi/x8sdk/dataparser/AckRightRoller;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/modulestate/StateManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->ackRightRoller:Lcom/fimi/x8sdk/dataparser/AckRightRoller;

    return-object v0
.end method

.method public static getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/fimi/x8sdk/modulestate/StateManager;->stateManager:Lcom/fimi/x8sdk/modulestate/StateManager;

    return-object v0
.end method


# virtual methods
.method public getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->camera:Lcom/fimi/x8sdk/modulestate/CameraState;

    return-object v0
.end method

.method public getConectState()Lcom/fimi/x8sdk/entity/ConectState;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->conectState:Lcom/fimi/x8sdk/entity/ConectState;

    return-object v0
.end method

.method public getErrorCodeState()Lcom/fimi/x8sdk/modulestate/ErrorCodeState;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mErrorCodeState:Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    return-object v0
.end method

.method public getGimbalState()Lcom/fimi/x8sdk/modulestate/GimbalState;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->gimbalState:Lcom/fimi/x8sdk/modulestate/GimbalState;

    return-object v0
.end method

.method public getNfzState()Lcom/fimi/x8sdk/modulestate/NfzState;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mNfzState:Lcom/fimi/x8sdk/modulestate/NfzState;

    return-object v0
.end method

.method public getRcMatchState()Lcom/fimi/x8sdk/modulestate/RCMatchState;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->rcMatchState:Lcom/fimi/x8sdk/modulestate/RCMatchState;

    return-object v0
.end method

.method public getRelayState()Lcom/fimi/x8sdk/modulestate/RelayState;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->relayState:Lcom/fimi/x8sdk/modulestate/RelayState;

    return-object v0
.end method

.method public getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mVersionState:Lcom/fimi/x8sdk/modulestate/VersionState;

    return-object v0
.end method

.method public getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-direct {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    return-object v0
.end method

.method public isIs4KResolution()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->is4KResolution:Z

    return v0
.end method

.method public onBatterProcess()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 408
    return-void
.end method

.method public onCameraProcess()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->cameraStateListener:Lcom/fimi/x8sdk/listener/CameraStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->camera:Lcom/fimi/x8sdk/modulestate/CameraState;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/CameraState;->getAutoCameraStateADV()Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->cameraStateListener:Lcom/fimi/x8sdk/listener/CameraStateListener;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->camera:Lcom/fimi/x8sdk/modulestate/CameraState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->getAutoCameraStateADV()Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/listener/CameraStateListener;->showCamState(Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;)V

    .line 167
    :cond_0
    return-void
.end method

.method public onConnectProcess(Lcom/fimi/x8sdk/entity/ConectState;)V
    .locals 1
    .param p1, "state"    # Lcom/fimi/x8sdk/entity/ConectState;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->conectState:Lcom/fimi/x8sdk/entity/ConectState;

    .line 171
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->connectListener:Lcom/fimi/x8sdk/listener/ConnectListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->connectListener:Lcom/fimi/x8sdk/listener/ConnectListener;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/listener/ConnectListener;->onConnectedState(Lcom/fimi/x8sdk/entity/ConectState;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onConnectState(Lcom/fimi/x8sdk/entity/ConectState;)V
    .locals 2
    .param p1, "state"    # Lcom/fimi/x8sdk/entity/ConectState;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 400
    return-void
.end method

.method public onDroneProcess()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 200
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->sportStateListeners:Lcom/fimi/x8sdk/listener/FcSportStateListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->sportStateListeners:Lcom/fimi/x8sdk/listener/FcSportStateListener;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->gimbalState:Lcom/fimi/x8sdk/modulestate/GimbalState;

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/listener/FcSportStateListener;->showGimbalState(Lcom/fimi/x8sdk/modulestate/GimbalState;)V

    .line 202
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSportState()Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->sportStateListeners:Lcom/fimi/x8sdk/listener/FcSportStateListener;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSportState()Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/listener/FcSportStateListener;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSportState()Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getGroupSpeed()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->setRealTimeSpeed(F)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mNavigationStateListeners:Lcom/fimi/x8sdk/listener/NavigationStateListener;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mNavigationStateListeners:Lcom/fimi/x8sdk/listener/NavigationStateListener;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/listener/NavigationStateListener;->onNavigationState(Lcom/fimi/x8sdk/modulestate/DroneState;)V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->noFlyLinstener:Lcom/fimi/x8sdk/listener/NoFlyLinstener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mNfzState:Lcom/fimi/x8sdk/modulestate/NfzState;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/NfzState;->getAckNoFlyNormal()Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->noFlyLinstener:Lcom/fimi/x8sdk/listener/NoFlyLinstener;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mNfzState:Lcom/fimi/x8sdk/modulestate/NfzState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/NfzState;->getAckNoFlyNormal()Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/listener/NoFlyLinstener;->showNoFly(Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;)V

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->fcHeartListener:Lcom/fimi/x8sdk/listener/FcHeartListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mErrorCodeState:Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->fcHeartListener:Lcom/fimi/x8sdk/listener/FcHeartListener;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFcHeart()Lcom/fimi/x8sdk/dataparser/AutoFcHeart;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mErrorCodeState:Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->isLowPower()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/x8sdk/listener/FcHeartListener;->onFcHeart(Lcom/fimi/x8sdk/dataparser/AutoFcHeart;Z)V

    .line 220
    :cond_4
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->fcBatteryListeners:Lcom/fimi/x8sdk/listener/FcBatteryListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcBatterState()Lcom/fimi/x8sdk/dataparser/AutoFcBattery;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 221
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->fcBatteryListeners:Lcom/fimi/x8sdk/listener/FcBatteryListener;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcBatterState()Lcom/fimi/x8sdk/dataparser/AutoFcBattery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/listener/FcBatteryListener;->onBatteryListener(Lcom/fimi/x8sdk/dataparser/AutoFcBattery;)V

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->homeInfoListeners:Lcom/fimi/x8sdk/listener/HomeInfoListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHomeInfo()Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 224
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->homeInfoListeners:Lcom/fimi/x8sdk/listener/HomeInfoListener;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHomeInfo()Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/listener/HomeInfoListener;->showHomeInfo(Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;)V

    .line 227
    :cond_6
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->fcSingalListener:Lcom/fimi/x8sdk/listener/FcSingalListener;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSingal()Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 228
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->fcSingalListener:Lcom/fimi/x8sdk/listener/FcSingalListener;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->droneState:Lcom/fimi/x8sdk/modulestate/DroneState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSingal()Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/listener/FcSingalListener;->showSingal(Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;)V

    .line 230
    :cond_7
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mX8ErrorCodeListener:Lcom/fimi/x8sdk/listener/IX8ErrorCodeListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mErrorCodeState:Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    if-eqz v0, :cond_8

    .line 231
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mX8ErrorCodeListener:Lcom/fimi/x8sdk/listener/IX8ErrorCodeListener;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mErrorCodeState:Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->getErrooInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/listener/IX8ErrorCodeListener;->onErrorCode(Ljava/util/List;)V

    .line 232
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mX8ErrorCodeListener:Lcom/fimi/x8sdk/listener/IX8ErrorCodeListener;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mErrorCodeState:Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->unMountCloud()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/listener/IX8ErrorCodeListener;->cloudUnMountError(Z)V

    .line 236
    :cond_8
    return-void
.end method

.method public onPanoramicInformation(Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;)V
    .locals 2
    .param p1, "ackPanoramaPhotographType"    # Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 412
    return-void
.end method

.method public onRcMatchProcess()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->rcMatchStateListener:Lcom/fimi/x8sdk/listener/RcMatchStateListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->rcMatchStateListener:Lcom/fimi/x8sdk/listener/RcMatchStateListener;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->rcMatchState:Lcom/fimi/x8sdk/modulestate/RCMatchState;

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/listener/RcMatchStateListener;->showRcMatchState(Lcom/fimi/x8sdk/modulestate/RCMatchState;)V

    .line 193
    :cond_0
    return-void
.end method

.method public onRelayProcess()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->relayHeartListener:Lcom/fimi/x8sdk/listener/RelayHeartListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->relayState:Lcom/fimi/x8sdk/modulestate/RelayState;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/RelayState;->getRelayHeart()Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->relayHeartListener:Lcom/fimi/x8sdk/listener/RelayHeartListener;

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->relayState:Lcom/fimi/x8sdk/modulestate/RelayState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/RelayState;->getRelayHeart()Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/listener/RelayHeartListener;->onRelayHeart(Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;)V

    .line 161
    :cond_0
    return-void
.end method

.method public onTracking(Lcom/fimi/x8sdk/dataparser/AutoVcTracking;)V
    .locals 2
    .param p1, "mAutoVcTracking"    # Lcom/fimi/x8sdk/dataparser/AutoVcTracking;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 404
    return-void
.end method

.method public registerCameraStateListener(Lcom/fimi/x8sdk/listener/CameraStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/CameraStateListener;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->cameraStateListener:Lcom/fimi/x8sdk/listener/CameraStateListener;

    .line 367
    return-void
.end method

.method public registerConnectListener(Lcom/fimi/x8sdk/listener/ConnectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/ConnectListener;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->connectListener:Lcom/fimi/x8sdk/listener/ConnectListener;

    .line 363
    return-void
.end method

.method public registerFCBattery(Lcom/fimi/x8sdk/listener/FcBatteryListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/FcBatteryListener;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->fcBatteryListeners:Lcom/fimi/x8sdk/listener/FcBatteryListener;

    .line 336
    return-void
.end method

.method public registerFcSingalListener(Lcom/fimi/x8sdk/listener/FcSingalListener;)V
    .locals 0
    .param p1, "singalListener"    # Lcom/fimi/x8sdk/listener/FcSingalListener;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->fcSingalListener:Lcom/fimi/x8sdk/listener/FcSingalListener;

    .line 355
    return-void
.end method

.method public registerHomeListener(Lcom/fimi/x8sdk/listener/HomeInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/HomeInfoListener;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->homeInfoListeners:Lcom/fimi/x8sdk/listener/HomeInfoListener;

    .line 351
    return-void
.end method

.method public registerListener(Lcom/fimi/x8sdk/listener/FcHeartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/FcHeartListener;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->fcHeartListener:Lcom/fimi/x8sdk/listener/FcHeartListener;

    .line 327
    return-void
.end method

.method public registerNavigationStateListener(Lcom/fimi/x8sdk/listener/NavigationStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/NavigationStateListener;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mNavigationStateListeners:Lcom/fimi/x8sdk/listener/NavigationStateListener;

    .line 319
    return-void
.end method

.method public registerNoFlyListener(Lcom/fimi/x8sdk/listener/NoFlyLinstener;)V
    .locals 0
    .param p1, "linstener"    # Lcom/fimi/x8sdk/listener/NoFlyLinstener;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->noFlyLinstener:Lcom/fimi/x8sdk/listener/NoFlyLinstener;

    .line 323
    return-void
.end method

.method public registerRcMatchListener(Lcom/fimi/x8sdk/listener/RcMatchStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/RcMatchStateListener;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->rcMatchStateListener:Lcom/fimi/x8sdk/listener/RcMatchStateListener;

    .line 340
    return-void
.end method

.method public registerRelayHeartListener(Lcom/fimi/x8sdk/listener/RelayHeartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/RelayHeartListener;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->relayHeartListener:Lcom/fimi/x8sdk/listener/RelayHeartListener;

    .line 359
    return-void
.end method

.method public registerRightRollerListener(Lcom/fimi/x8sdk/listener/RightRollerLinstener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/RightRollerLinstener;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->rightRollerLinstener:Lcom/fimi/x8sdk/listener/RightRollerLinstener;

    .line 304
    return-void
.end method

.method public registerSportState(Lcom/fimi/x8sdk/listener/FcSportStateListener;)V
    .locals 0
    .param p1, "sportStateListener"    # Lcom/fimi/x8sdk/listener/FcSportStateListener;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->sportStateListeners:Lcom/fimi/x8sdk/listener/FcSportStateListener;

    .line 315
    return-void
.end method

.method public registerVcTrackListener(Lcom/fimi/x8sdk/listener/IX8VcTrackListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/IX8VcTrackListener;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->vcTrackListener:Lcom/fimi/x8sdk/listener/IX8VcTrackListener;

    .line 311
    return-void
.end method

.method public registerX8ErrorCodeListener(Lcom/fimi/x8sdk/listener/IX8ErrorCodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/IX8ErrorCodeListener;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mX8ErrorCodeListener:Lcom/fimi/x8sdk/listener/IX8ErrorCodeListener;

    .line 308
    return-void
.end method

.method public removeAllListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    iput-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->sportStateListeners:Lcom/fimi/x8sdk/listener/FcSportStateListener;

    .line 283
    iput-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mNavigationStateListeners:Lcom/fimi/x8sdk/listener/NavigationStateListener;

    .line 284
    iput-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->noFlyLinstener:Lcom/fimi/x8sdk/listener/NoFlyLinstener;

    .line 285
    iput-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->fcHeartListener:Lcom/fimi/x8sdk/listener/FcHeartListener;

    .line 286
    iput-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->fcBatteryListeners:Lcom/fimi/x8sdk/listener/FcBatteryListener;

    .line 287
    iput-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->homeInfoListeners:Lcom/fimi/x8sdk/listener/HomeInfoListener;

    .line 288
    iput-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->fcSingalListener:Lcom/fimi/x8sdk/listener/FcSingalListener;

    .line 289
    iput-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->relayHeartListener:Lcom/fimi/x8sdk/listener/RelayHeartListener;

    .line 290
    iput-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->connectListener:Lcom/fimi/x8sdk/listener/ConnectListener;

    .line 291
    iput-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->cameraStateListener:Lcom/fimi/x8sdk/listener/CameraStateListener;

    .line 292
    iput-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->vcTrackListener:Lcom/fimi/x8sdk/listener/IX8VcTrackListener;

    .line 293
    iput-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->rcMatchStateListener:Lcom/fimi/x8sdk/listener/RcMatchStateListener;

    .line 294
    iput-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->powerListener:Lcom/fimi/x8sdk/listener/IX8PowerListener;

    .line 295
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mX8ErrorCodeListener:Lcom/fimi/x8sdk/listener/IX8ErrorCodeListener;

    iput-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mX8ErrorCodeListener:Lcom/fimi/x8sdk/listener/IX8ErrorCodeListener;

    .line 296
    iput-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->rightRollerLinstener:Lcom/fimi/x8sdk/listener/RightRollerLinstener;

    .line 297
    iput-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->ix8PanoramicInformationListener:Lcom/fimi/x8sdk/listener/IX8PanoramicInformationListener;

    .line 299
    return-void
.end method

.method public setAckRightRoller(Lcom/fimi/x8sdk/dataparser/AckRightRoller;)V
    .locals 4
    .param p1, "ackRightRoller"    # Lcom/fimi/x8sdk/dataparser/AckRightRoller;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->ackRightRoller:Lcom/fimi/x8sdk/dataparser/AckRightRoller;

    .line 180
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->cruTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->cruTime:J

    .line 182
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    :cond_0
    return-void
.end method

.method public setCameraToken(I)V
    .locals 2
    .param p1, "token"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->relayState:Lcom/fimi/x8sdk/modulestate/RelayState;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/RelayState;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->relayHeartListener:Lcom/fimi/x8sdk/listener/RelayHeartListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->relayState:Lcom/fimi/x8sdk/modulestate/RelayState;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/RelayState;->getRelayHeart()Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->relayHeartListener:Lcom/fimi/x8sdk/listener/RelayHeartListener;

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/fimi/x8sdk/listener/RelayHeartListener;->cameraStatusListener(Z)V

    .line 396
    :cond_0
    return-void

    .line 393
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIs4KResolution(Ljava/lang/String;)V
    .locals 1
    .param p1, "is4KResolution"    # Ljava/lang/String;

    .prologue
    .line 423
    const-string v0, "4K"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->is4KResolution:Z

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->is4KResolution:Z

    goto :goto_0
.end method

.method public setIx8PanoramicInformationListener(Lcom/fimi/x8sdk/listener/IX8PanoramicInformationListener;)V
    .locals 0
    .param p1, "ix8PanoramicInformationListener"    # Lcom/fimi/x8sdk/listener/IX8PanoramicInformationListener;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->ix8PanoramicInformationListener:Lcom/fimi/x8sdk/listener/IX8PanoramicInformationListener;

    .line 272
    return-void
.end method

.method public setPowerListener(Lcom/fimi/x8sdk/listener/IX8PowerListener;)V
    .locals 0
    .param p1, "powerListener"    # Lcom/fimi/x8sdk/listener/IX8PowerListener;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->powerListener:Lcom/fimi/x8sdk/listener/IX8PowerListener;

    .line 268
    return-void
.end method

.method public startUpdateTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/session/SessionManager;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 377
    :cond_0
    return-void
.end method

.method public stopUpdateTimer()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/StateManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    :cond_0
    return-void
.end method
