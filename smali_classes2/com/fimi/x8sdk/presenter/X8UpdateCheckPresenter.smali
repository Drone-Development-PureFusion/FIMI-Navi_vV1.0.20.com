.class public Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;
.super Lcom/fimi/x8sdk/common/BasePresenter;
.source "X8UpdateCheckPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;
    }
.end annotation


# static fields
.field private static final CHECK_UPDATE:I = 0x1

.field private static final CHECK_UPDATE_ERR:I = 0x2


# instance fields
.field private ackUpdateRequest:Lcom/fimi/x8sdk/dataparser/AckUpdateRequest;

.field private ackUpdateSystemStatus:Lcom/fimi/x8sdk/dataparser/AckUpdateSystemStatus;

.field private checkTimer:Ljava/util/Timer;

.field private context:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field private haveLockMotor:Z

.field private iUpdateCheckAction:Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;

.field private updateCheckState:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

.field private updateStates:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/fimi/x8sdk/common/BasePresenter;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->haveLockMotor:Z

    .line 39
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->checkTimer:Ljava/util/Timer;

    .line 46
    sget-object v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->updateInit:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->updateCheckState:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    .line 47
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->updateStates:[B

    .line 183
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$3;

    invoke-direct {v0, p0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$3;-><init>(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->handler:Landroid/os/Handler;

    .line 50
    invoke-virtual {p0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->addNoticeListener()V

    .line 51
    invoke-virtual {p0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->intCheckUpdateStatus()V

    .line 52
    return-void

    .line 47
    :array_0
    .array-data 1
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
    .end array-data
.end method

.method static synthetic access$000(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;)Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->updateCheckState:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->checkUpdateVersion()V

    return-void
.end method

.method static synthetic access$202(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->haveLockMotor:Z

    return p1
.end method

.method static synthetic access$300(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;)Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->iUpdateCheckAction:Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;

    return-object v0
.end method

.method private checkCameraState()V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->ackUpdateSystemStatus:Lcom/fimi/x8sdk/dataparser/AckUpdateSystemStatus;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AckUpdateSystemStatus;->getStatus()I

    move-result v0

    .line 108
    .local v0, "status":I
    if-nez v0, :cond_1

    .line 109
    iget-boolean v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->haveLockMotor:Z

    if-eqz v1, :cond_0

    .line 110
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->setPresenterLockMotor(I)V

    .line 112
    :cond_0
    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->readyUpgrade:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    iput-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->updateCheckState:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    .line 113
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->requestStartUpdate(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 122
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-direct {p0, v0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->checkUpdatingState(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    iget-boolean v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->haveLockMotor:Z

    if-nez v1, :cond_2

    .line 116
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->setPresenterLockMotor(I)V

    .line 118
    :cond_2
    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->updating:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    iput-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->updateCheckState:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    goto :goto_0

    .line 120
    :cond_3
    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->upgradeEnd:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    iput-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->updateCheckState:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    goto :goto_0
.end method

.method private checkUpdateVersion()V
    .locals 5

    .prologue
    .line 126
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/CameraState;->getAutoCameraStateADV()Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    move-result-object v2

    .line 127
    .local v2, "stateADV":Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;
    const/4 v1, 0x0

    .line 128
    .local v1, "resId":I
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v3

    if-nez v3, :cond_1

    .line 129
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_update_err_connect:I

    .line 143
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 144
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v0, Landroid/os/Message;->what:I

    .line 145
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 146
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    return-void

    .line 130
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_update_err_insky:I

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v3

    if-gtz v3, :cond_3

    .line 133
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_update_err_a12ununited:I

    goto :goto_0

    .line 134
    :cond_3
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->updateCheckState:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    sget-object v4, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->updating:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    if-ne v3, v4, :cond_4

    .line 135
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_update_err_updating:I

    .line 136
    sget-object v3, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->upgradeEnd:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    iput-object v3, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->updateCheckState:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    goto :goto_0

    .line 137
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->getInfo()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 138
    sget v1, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_3:I

    goto :goto_0

    .line 139
    :cond_5
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->ackUpdateRequest:Lcom/fimi/x8sdk/dataparser/AckUpdateRequest;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->ackUpdateRequest:Lcom/fimi/x8sdk/dataparser/AckUpdateRequest;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckUpdateRequest;->isResultSucceed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->ackUpdateRequest:Lcom/fimi/x8sdk/dataparser/AckUpdateRequest;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/dataparser/AckUpdateRequest;->getMsgRpt()I

    move-result v4

    invoke-static {v3, v4}, Lcom/fimi/x8sdk/update/UpdateUtil;->getErrorCodeString(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0
.end method

.method private checkUpdatingState(I)Z
    .locals 3
    .param p1, "updateState"    # I

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 198
    .local v1, "isUpdateState":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->updateStates:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->updateStates:[B

    aget-byte v2, v2, v0

    if-ne p1, v2, :cond_1

    .line 200
    const/4 v1, 0x1

    .line 206
    :cond_0
    return v1

    .line 203
    :cond_1
    const/4 v1, 0x0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public intCheckUpdateStatus()V
    .locals 6

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->checkTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->checkTimer:Ljava/util/Timer;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->checkTimer:Ljava/util/Timer;

    new-instance v1, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$1;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$1;-><init>(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 75
    return-void
.end method

.method public onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 79
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 80
    return-void
.end method

.method public queryCurSystemStatus()V
    .locals 2

    .prologue
    .line 159
    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->updateInit:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    iput-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->updateCheckState:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    .line 160
    new-instance v1, Lcom/fimi/x8sdk/command/FwUpdateCollection;

    invoke-direct {v1}, Lcom/fimi/x8sdk/command/FwUpdateCollection;-><init>()V

    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->queryCurSystemStatus()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 161
    .local v0, "command":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 162
    return-void
.end method

.method protected reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 4
    .param p1, "isAck"    # Z
    .param p2, "group"    # I
    .param p3, "msgId"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p5, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/4 v3, 0x2

    .line 84
    invoke-super/range {p0 .. p5}, Lcom/fimi/x8sdk/common/BasePresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 85
    const/16 v1, 0x10

    if-ne p2, v1, :cond_0

    .line 86
    const/4 v1, 0x5

    if-ne p3, v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->updateCheckState:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    sget-object v2, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->updateInit:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    if-eq v1, v2, :cond_1

    .line 104
    .end local p4    # "packet":Lcom/fimi/kernel/dataparser/ILinkMessage;
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local p4    # "packet":Lcom/fimi/kernel/dataparser/ILinkMessage;
    :cond_1
    check-cast p4, Lcom/fimi/x8sdk/dataparser/AckUpdateSystemStatus;

    .end local p4    # "packet":Lcom/fimi/kernel/dataparser/ILinkMessage;
    iput-object p4, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->ackUpdateSystemStatus:Lcom/fimi/x8sdk/dataparser/AckUpdateSystemStatus;

    .line 89
    invoke-direct {p0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->checkCameraState()V

    goto :goto_0

    .line 91
    .restart local p4    # "packet":Lcom/fimi/kernel/dataparser/ILinkMessage;
    :cond_2
    if-ne p3, v3, :cond_0

    .line 92
    check-cast p4, Lcom/fimi/x8sdk/dataparser/AckUpdateRequest;

    .end local p4    # "packet":Lcom/fimi/kernel/dataparser/ILinkMessage;
    iput-object p4, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->ackUpdateRequest:Lcom/fimi/x8sdk/dataparser/AckUpdateRequest;

    .line 94
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->ackUpdateRequest:Lcom/fimi/x8sdk/dataparser/AckUpdateRequest;

    if-eqz v1, :cond_0

    .line 96
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v1

    const-string v2, "sp_key_update_check"

    invoke-virtual {v1, v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 97
    .local v0, "isCheckUpdate":I
    if-eq v0, v3, :cond_3

    invoke-static {}, Lcom/fimi/x8sdk/update/UpdateUtil;->isForceUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public requestStartUpdate(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 152
    new-instance v1, Lcom/fimi/x8sdk/command/FwUpdateCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FwUpdateCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 153
    .local v1, "fwUpdateCollection":Lcom/fimi/x8sdk/command/FwUpdateCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->requestStartUpdate()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 154
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 155
    return-void
.end method

.method public setIUpdateCheckAction(Landroid/content/Context;Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iUpdateCheckAction"    # Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->context:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->iUpdateCheckAction:Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;

    .line 57
    return-void
.end method

.method public setPresenterLockMotor(I)V
    .locals 3
    .param p1, "lock"    # I

    .prologue
    .line 165
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    new-instance v2, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$2;

    invoke-direct {v2, p0, p1}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$2;-><init>(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;I)V

    invoke-direct {v1, p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 177
    .local v1, "fcCollection":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setLockMotor(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 178
    .local v0, "baseCommand":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 179
    return-void
.end method
