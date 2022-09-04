.class public Lcom/fimi/x8sdk/command/CameraCollection;
.super Lcom/fimi/x8sdk/command/X8BaseCmd;
.source "CameraCollection.java"


# static fields
.field public static final MSGID_CAMERA_INTEREST_METERING:B = 0xct

.field public static final MSGID_CAMERA_STATE:B = 0x15t

.field public static final MSGID_CAMERA_TF_CAP:B = 0x8t

.field public static final MSGID_CLOSE_CAMERA:B = 0x1t

.field public static final MSGID_START_RECORD:B = 0x2t

.field public static final MSGID_STOP_RECORD:B = 0x3t

.field public static final MSGID_STOP_TAKE_PHOTO:B = 0x5t

.field public static final MSGID_TAKE_PHOTO:B = 0x4t

.field public static final MSG_CAMERA_PHOTO_MODE:B = 0xat

.field public static final MSG_CAMERA_VIDEO_MODE:B = 0xbt

.field public static final MSG_GROUP_CAMERA:B = 0x2t


# instance fields
.field private personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

.field private uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/fimi/x8sdk/command/X8BaseCmd;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 0
    .param p1, "callBack"    # Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;
    .param p2, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fimi/x8sdk/command/X8BaseCmd;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/fimi/x8sdk/command/CameraCollection;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .line 46
    iput-object p2, p0, Lcom/fimi/x8sdk/command/CameraCollection;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .line 47
    return-void
.end method

.method private getCameraBase(S)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4
    .param p1, "seqIndex"    # S

    .prologue
    .line 51
    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;-><init>()V

    .line 52
    .local v0, "packet4":Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setType(B)V

    .line 53
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setEncryptType(B)V

    .line 54
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GCS:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setSrcId(B)V

    .line 55
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CAMERA:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setDestId(B)V

    .line 56
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setSeq(S)V

    .line 57
    new-instance v1, Lcom/fimi/x8sdk/command/X8SendCmd;

    invoke-direct {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;-><init>(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 58
    .local v1, "x8SendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    iget-object v2, p0, Lcom/fimi/x8sdk/command/CameraCollection;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPersonalDataCallBack(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V

    .line 59
    iget-object v2, p0, Lcom/fimi/x8sdk/command/CameraCollection;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setUiCallBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 61
    return-object v1
.end method


# virtual methods
.method public closeCamera()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 70
    iget-short v2, p0, Lcom/fimi/x8sdk/command/CameraCollection;->seqIndex:S

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/CameraCollection;->getCameraBase(S)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 71
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 72
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v0, v2

    .line 73
    aput-byte v4, v0, v4

    .line 74
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 75
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 77
    return-object v1
.end method

.method public getTFCardCAP()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4

    .prologue
    .line 144
    iget-short v2, p0, Lcom/fimi/x8sdk/command/CameraCollection;->seqIndex:S

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/CameraCollection;->getCameraBase(S)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 145
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 146
    .local v0, "payLoad":[B
    const/4 v2, 0x0

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    .line 147
    const/4 v2, 0x1

    const/4 v3, 0x5

    aput-byte v3, v0, v2

    .line 148
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 149
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 150
    return-object v1
.end method

.method public setInterestMetering(B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5
    .param p1, "meteringIndex"    # B

    .prologue
    const/4 v4, 0x2

    .line 175
    iget-short v2, p0, Lcom/fimi/x8sdk/command/CameraCollection;->seqIndex:S

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/CameraCollection;->getCameraBase(S)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 176
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 177
    .local v0, "payLoad":[B
    const/4 v2, 0x0

    aput-byte v4, v0, v2

    .line 178
    const/4 v2, 0x1

    const/16 v3, 0xc

    aput-byte v3, v0, v2

    .line 179
    aput-byte p1, v0, v4

    .line 180
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 181
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 182
    return-object v1
.end method

.method public startRecord()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 86
    iget-short v2, p0, Lcom/fimi/x8sdk/command/CameraCollection;->seqIndex:S

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/CameraCollection;->getCameraBase(S)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 87
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 88
    .local v0, "payload":[B
    const/4 v2, 0x0

    aput-byte v3, v0, v2

    .line 89
    const/4 v2, 0x1

    aput-byte v3, v0, v2

    .line 90
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 91
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 92
    return-object v1
.end method

.method public stopRecord()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4

    .prologue
    .line 100
    iget-short v2, p0, Lcom/fimi/x8sdk/command/CameraCollection;->seqIndex:S

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/CameraCollection;->getCameraBase(S)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 101
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 102
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v0, v2

    .line 103
    const/4 v2, 0x1

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 104
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 105
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 106
    return-object v1
.end method

.method public stopTakePhoto()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4

    .prologue
    .line 129
    iget-short v2, p0, Lcom/fimi/x8sdk/command/CameraCollection;->seqIndex:S

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/CameraCollection;->getCameraBase(S)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 130
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 131
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v0, v2

    .line 132
    const/4 v2, 0x1

    const/4 v3, 0x5

    aput-byte v3, v0, v2

    .line 133
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 134
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 135
    return-object v1
.end method

.method public switchPhotoMode()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4

    .prologue
    .line 192
    iget-short v2, p0, Lcom/fimi/x8sdk/command/CameraCollection;->seqIndex:S

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/CameraCollection;->getCameraBase(S)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 193
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 194
    .local v0, "payLoad":[B
    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v0, v2

    .line 195
    const/4 v2, 0x1

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    .line 196
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 197
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 198
    return-object v1
.end method

.method public switchVideoMode()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4

    .prologue
    .line 160
    iget-short v2, p0, Lcom/fimi/x8sdk/command/CameraCollection;->seqIndex:S

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/CameraCollection;->getCameraBase(S)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 161
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 162
    .local v0, "payLoad":[B
    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v0, v2

    .line 163
    const/4 v2, 0x1

    const/16 v3, 0xb

    aput-byte v3, v0, v2

    .line 164
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 165
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 166
    return-object v1
.end method

.method public takePhoto()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 114
    iget-short v2, p0, Lcom/fimi/x8sdk/command/CameraCollection;->seqIndex:S

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/CameraCollection;->getCameraBase(S)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 115
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v0, v4, [B

    .line 116
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v0, v2

    .line 117
    const/4 v2, 0x1

    aput-byte v4, v0, v2

    .line 118
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 119
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 121
    return-object v1
.end method
