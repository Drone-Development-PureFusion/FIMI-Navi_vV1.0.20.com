.class public Lcom/fimi/x8sdk/process/RelayProcess;
.super Ljava/lang/Object;
.source "RelayProcess.java"

# interfaces
.implements Lcom/fimi/kernel/connect/session/JsonListener;


# static fields
.field private static volatile relayProcess:Lcom/fimi/x8sdk/process/RelayProcess;


# instance fields
.field private MAXFW:I

.field private cameraState:I

.field private countFw:I

.field private curTime:J

.field private fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private getSetting:Z

.field private isShowUpdateView:Z

.field monitorThread:Lcom/fimi/x8sdk/connect/DeviceMonitorThread;

.field relayHeart:Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/x8sdk/process/RelayProcess;->relayProcess:Lcom/fimi/x8sdk/process/RelayProcess;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->countFw:I

    .line 53
    const/16 v0, 0xb

    iput v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->MAXFW:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->isShowUpdateView:Z

    .line 75
    return-void
.end method

.method public static getRelayProcess()Lcom/fimi/x8sdk/process/RelayProcess;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/fimi/x8sdk/process/RelayProcess;->relayProcess:Lcom/fimi/x8sdk/process/RelayProcess;

    if-nez v0, :cond_1

    .line 80
    const-class v1, Lcom/fimi/x8sdk/process/RelayProcess;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcom/fimi/x8sdk/process/RelayProcess;->relayProcess:Lcom/fimi/x8sdk/process/RelayProcess;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/fimi/x8sdk/process/RelayProcess;

    invoke-direct {v0}, Lcom/fimi/x8sdk/process/RelayProcess;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/process/RelayProcess;->relayProcess:Lcom/fimi/x8sdk/process/RelayProcess;

    .line 84
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_1
    sget-object v0, Lcom/fimi/x8sdk/process/RelayProcess;->relayProcess:Lcom/fimi/x8sdk/process/RelayProcess;

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAllSetting()V
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->getSetting:Z

    if-eqz v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/controller/AllSettingManager;->getInstance()Lcom/fimi/x8sdk/controller/AllSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/controller/AllSettingManager;->getAllSetting()V

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->getSetting:Z

    goto :goto_0
.end method

.method public getAllVersion()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    if-nez v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    if-nez v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_REPEATER_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    const/16 v2, 0xb

    new-instance v3, Lcom/fimi/x8sdk/process/RelayProcess$1;

    invoke-direct {v3, p0}, Lcom/fimi/x8sdk/process/RelayProcess$1;-><init>(Lcom/fimi/x8sdk/process/RelayProcess;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcManager;->getFwVersion(BBLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 208
    :cond_2
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    if-nez v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    new-instance v3, Lcom/fimi/x8sdk/process/RelayProcess$2;

    invoke-direct {v3, p0}, Lcom/fimi/x8sdk/process/RelayProcess$2;-><init>(Lcom/fimi/x8sdk/process/RelayProcess;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcManager;->getFwVersion(BBLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 225
    :cond_3
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterVehicleVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    if-nez v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_REPEATER_VEHICLE:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    const/16 v2, 0xc

    new-instance v3, Lcom/fimi/x8sdk/process/RelayProcess$3;

    invoke-direct {v3, p0}, Lcom/fimi/x8sdk/process/RelayProcess$3;-><init>(Lcom/fimi/x8sdk/process/RelayProcess;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcManager;->getFwVersion(BBLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 241
    :cond_4
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleEscVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    if-nez v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_ESC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    const/16 v2, 0xe

    new-instance v3, Lcom/fimi/x8sdk/process/RelayProcess$4;

    invoke-direct {v3, p0}, Lcom/fimi/x8sdk/process/RelayProcess$4;-><init>(Lcom/fimi/x8sdk/process/RelayProcess;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcManager;->getFwVersion(BBLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 257
    :cond_5
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleGimbalVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    if-nez v0, :cond_6

    .line 258
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x3

    new-instance v3, Lcom/fimi/x8sdk/process/RelayProcess$5;

    invoke-direct {v3, p0}, Lcom/fimi/x8sdk/process/RelayProcess$5;-><init>(Lcom/fimi/x8sdk/process/RelayProcess;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcManager;->getFwVersion(BBLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 272
    :cond_6
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleBatteryVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    if-nez v0, :cond_7

    .line 273
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_BATTERY:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x5

    new-instance v3, Lcom/fimi/x8sdk/process/RelayProcess$6;

    invoke-direct {v3, p0}, Lcom/fimi/x8sdk/process/RelayProcess$6;-><init>(Lcom/fimi/x8sdk/process/RelayProcess;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcManager;->getFwVersion(BBLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 288
    :cond_7
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleNfzVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    if-nez v0, :cond_8

    .line 289
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_NFZ:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    const/16 v2, 0xa

    new-instance v3, Lcom/fimi/x8sdk/process/RelayProcess$7;

    invoke-direct {v3, p0}, Lcom/fimi/x8sdk/process/RelayProcess$7;-><init>(Lcom/fimi/x8sdk/process/RelayProcess;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcManager;->getFwVersion(BBLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 303
    :cond_8
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleUltrasonic()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    if-nez v0, :cond_9

    .line 304
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_ULTRASONIC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    const/16 v2, 0xd

    new-instance v3, Lcom/fimi/x8sdk/process/RelayProcess$8;

    invoke-direct {v3, p0}, Lcom/fimi/x8sdk/process/RelayProcess$8;-><init>(Lcom/fimi/x8sdk/process/RelayProcess;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcManager;->getFwVersion(BBLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 319
    :cond_9
    sget-boolean v0, Lcom/fimi/x8sdk/rtp/X8Rtp;->simulationTest:Z

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fimi/x8sdk/process/RelayProcess$9;

    invoke-direct {v3, p0}, Lcom/fimi/x8sdk/process/RelayProcess$9;-><init>(Lcom/fimi/x8sdk/process/RelayProcess;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcManager;->getFwVersion(BBLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto/16 :goto_0
.end method

.method getCameraVersion()V
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    if-nez v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCameraVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    if-nez v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CAMERA:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x4

    new-instance v3, Lcom/fimi/x8sdk/process/RelayProcess$10;

    invoke-direct {v3, p0}, Lcom/fimi/x8sdk/process/RelayProcess$10;-><init>(Lcom/fimi/x8sdk/process/RelayProcess;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcManager;->getFwVersion(BBLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 380
    :cond_2
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCvVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CV:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    const/16 v2, 0x9

    new-instance v3, Lcom/fimi/x8sdk/process/RelayProcess$11;

    invoke-direct {v3, p0}, Lcom/fimi/x8sdk/process/RelayProcess$11;-><init>(Lcom/fimi/x8sdk/process/RelayProcess;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/x8sdk/controller/FcManager;->getFwVersion(BBLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0
.end method

.method public getRelayHeart()Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->relayHeart:Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

    return-object v0
.end method

.method public isShowUpdateView()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->isShowUpdateView:Z

    return v0
.end method

.method public onGetVersionResult()V
    .locals 7

    .prologue
    .line 407
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    .line 408
    .local v0, "versionState":Lcom/fimi/x8sdk/modulestate/VersionState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleFcAckVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v1

    if-nez v1, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    new-instance v1, Lcom/fimi/host/LocalFwEntity;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleFcAckVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v2

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleFcAckVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v3

    .line 410
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleFcAckVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct/range {v1 .. v6}, Lcom/fimi/host/LocalFwEntity;-><init>(IIJLjava/lang/String;)V

    .line 409
    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveLocalFirmware(Lcom/fimi/host/LocalFwEntity;)V

    .line 412
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 413
    new-instance v1, Lcom/fimi/host/LocalFwEntity;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v2

    .line 414
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct/range {v1 .. v6}, Lcom/fimi/host/LocalFwEntity;-><init>(IIJLjava/lang/String;)V

    .line 413
    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveLocalFirmware(Lcom/fimi/host/LocalFwEntity;)V

    .line 416
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCvVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 417
    new-instance v1, Lcom/fimi/host/LocalFwEntity;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCvVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v2

    .line 418
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCvVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCvVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct/range {v1 .. v6}, Lcom/fimi/host/LocalFwEntity;-><init>(IIJLjava/lang/String;)V

    .line 417
    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveLocalFirmware(Lcom/fimi/host/LocalFwEntity;)V

    .line 420
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 421
    new-instance v1, Lcom/fimi/host/LocalFwEntity;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v2

    .line 422
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct/range {v1 .. v6}, Lcom/fimi/host/LocalFwEntity;-><init>(IIJLjava/lang/String;)V

    .line 421
    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveLocalFirmware(Lcom/fimi/host/LocalFwEntity;)V

    .line 424
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterVehicleVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 425
    new-instance v1, Lcom/fimi/host/LocalFwEntity;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterVehicleVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v2

    .line 426
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterVehicleVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterVehicleVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct/range {v1 .. v6}, Lcom/fimi/host/LocalFwEntity;-><init>(IIJLjava/lang/String;)V

    .line 425
    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveLocalFirmware(Lcom/fimi/host/LocalFwEntity;)V

    .line 428
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleEscVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 429
    new-instance v1, Lcom/fimi/host/LocalFwEntity;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleEscVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v2

    .line 430
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleEscVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleEscVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct/range {v1 .. v6}, Lcom/fimi/host/LocalFwEntity;-><init>(IIJLjava/lang/String;)V

    .line 429
    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveLocalFirmware(Lcom/fimi/host/LocalFwEntity;)V

    .line 432
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleGimbalVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 433
    new-instance v1, Lcom/fimi/host/LocalFwEntity;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleGimbalVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v2

    .line 434
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleGimbalVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleGimbalVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct/range {v1 .. v6}, Lcom/fimi/host/LocalFwEntity;-><init>(IIJLjava/lang/String;)V

    .line 433
    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveLocalFirmware(Lcom/fimi/host/LocalFwEntity;)V

    .line 436
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleBatteryVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 437
    new-instance v1, Lcom/fimi/host/LocalFwEntity;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleBatteryVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v2

    .line 438
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleBatteryVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleBatteryVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct/range {v1 .. v6}, Lcom/fimi/host/LocalFwEntity;-><init>(IIJLjava/lang/String;)V

    .line 437
    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveLocalFirmware(Lcom/fimi/host/LocalFwEntity;)V

    .line 440
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleNfzVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 441
    new-instance v1, Lcom/fimi/host/LocalFwEntity;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleNfzVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v2

    .line 442
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleNfzVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleNfzVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct/range {v1 .. v6}, Lcom/fimi/host/LocalFwEntity;-><init>(IIJLjava/lang/String;)V

    .line 441
    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveLocalFirmware(Lcom/fimi/host/LocalFwEntity;)V

    .line 444
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCameraVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 445
    new-instance v1, Lcom/fimi/host/LocalFwEntity;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCameraVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v2

    .line 446
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCameraVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCameraVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct/range {v1 .. v6}, Lcom/fimi/host/LocalFwEntity;-><init>(IIJLjava/lang/String;)V

    .line 445
    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveLocalFirmware(Lcom/fimi/host/LocalFwEntity;)V

    .line 448
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleUltrasonic()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 449
    new-instance v1, Lcom/fimi/host/LocalFwEntity;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleUltrasonic()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getType()I

    move-result v2

    .line 450
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleUltrasonic()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getModel()I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleUltrasonic()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct/range {v1 .. v6}, Lcom/fimi/host/LocalFwEntity;-><init>(IIJLjava/lang/String;)V

    .line 449
    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveLocalFirmware(Lcom/fimi/host/LocalFwEntity;)V

    .line 453
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fimi/kernel/connect/session/SessionManager;->onDeviveState(I)V

    goto/16 :goto_0
.end method

.method public onProcess(ILcom/alibaba/fastjson/JSONObject;)V
    .locals 7
    .param p1, "msgId"    # I
    .param p2, "json"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 148
    if-nez p2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;

    .line 152
    .local v0, "jsonInfo":Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getRval()I

    move-result v2

    .line 153
    .local v2, "retVal":I
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getType()Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;->getParam()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "param":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 156
    const/16 v5, 0x101

    if-ne p1, v5, :cond_2

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 158
    .local v3, "token":I
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/fimi/x8sdk/modulestate/CameraState;->setToken(I)V

    .line 159
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->setCameraToken(I)V

    goto :goto_0

    .line 160
    .end local v3    # "token":I
    :cond_2
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    goto :goto_0
.end method

.method public registerListener(Lcom/fimi/x8sdk/listener/RelayHeartListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/RelayHeartListener;

    .prologue
    .line 91
    new-instance v0, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;

    invoke-direct {v0}, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->monitorThread:Lcom/fimi/x8sdk/connect/DeviceMonitorThread;

    .line 92
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->monitorThread:Lcom/fimi/x8sdk/connect/DeviceMonitorThread;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->start()V

    .line 93
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/kernel/connect/session/NoticeManager;->addJsonListener(Lcom/fimi/kernel/connect/session/JsonListener;)V

    .line 94
    return-void
.end method

.method public removeListener(Lcom/fimi/x8sdk/listener/RelayHeartListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/RelayHeartListener;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->monitorThread:Lcom/fimi/x8sdk/connect/DeviceMonitorThread;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess;->monitorThread:Lcom/fimi/x8sdk/connect/DeviceMonitorThread;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/connect/DeviceMonitorThread;->exit()V

    .line 101
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/kernel/connect/session/NoticeManager;->removeJsonListener(Lcom/fimi/kernel/connect/session/JsonListener;)V

    .line 102
    return-void
.end method

.method public sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/connect/session/SessionManager;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcManager;)V
    .locals 0
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/fimi/x8sdk/process/RelayProcess;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 463
    return-void
.end method

.method public setRelayHeart(Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;)V
    .locals 12
    .param p1, "relayHeart"    # Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

    .prologue
    const/4 v6, 0x0

    .line 107
    iput-object p1, p0, Lcom/fimi/x8sdk/process/RelayProcess;->relayHeart:Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

    .line 108
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->getStatus()S

    move-result v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/fimi/kernel/utils/BitUtil;->getBitByByte(II)I

    move-result v3

    .line 110
    .local v3, "isConnect":I
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v5

    .line 112
    .local v5, "token":I
    if-lez v3, :cond_5

    if-gtz v5, :cond_5

    const/4 v4, 0x1

    .line 116
    .local v4, "isQuestToken":Z
    :goto_0
    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/fimi/x8sdk/process/RelayProcess;->curTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x7d0

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/fimi/x8sdk/process/RelayProcess;->curTime:J

    .line 118
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v7

    new-instance v8, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v8}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v8}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->startSession()Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fimi/kernel/connect/session/SessionManager;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 122
    :cond_0
    if-gtz v3, :cond_1

    .line 123
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/modulestate/CameraState;->setToken(I)V

    .line 126
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCameraVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v2

    .line 127
    .local v2, "ackVersionCamera":Lcom/fimi/x8sdk/dataparser/AckVersion;
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCvVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v1

    .line 128
    .local v1, "ackVersionCV":Lcom/fimi/x8sdk/dataparser/AckVersion;
    if-eqz v2, :cond_2

    if-nez v1, :cond_3

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/x8sdk/process/RelayProcess;->getCameraVersion()V

    .line 132
    :cond_3
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fimi/x8sdk/modulestate/DroneState;->getVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    .line 133
    .local v0, "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    if-nez v0, :cond_4

    .line 134
    invoke-virtual {p0}, Lcom/fimi/x8sdk/process/RelayProcess;->getAllVersion()V

    .line 135
    iput-boolean v6, p0, Lcom/fimi/x8sdk/process/RelayProcess;->getSetting:Z

    .line 137
    :cond_4
    invoke-virtual {p0}, Lcom/fimi/x8sdk/process/RelayProcess;->getAllSetting()V

    .line 139
    return-void

    .end local v0    # "ackVersion":Lcom/fimi/x8sdk/dataparser/AckVersion;
    .end local v1    # "ackVersionCV":Lcom/fimi/x8sdk/dataparser/AckVersion;
    .end local v2    # "ackVersionCamera":Lcom/fimi/x8sdk/dataparser/AckVersion;
    .end local v4    # "isQuestToken":Z
    :cond_5
    move v4, v6

    .line 112
    goto :goto_0
.end method

.method public setShowUpdateView(Z)V
    .locals 0
    .param p1, "showUpdateView"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/fimi/x8sdk/process/RelayProcess;->isShowUpdateView:Z

    .line 64
    return-void
.end method
