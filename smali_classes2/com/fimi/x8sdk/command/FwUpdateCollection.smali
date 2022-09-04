.class public Lcom/fimi/x8sdk/command/FwUpdateCollection;
.super Lcom/fimi/x8sdk/command/X8BaseCmd;
.source "FwUpdateCollection.java"


# static fields
.field public static final MSG_GROUP_FW_UPDATE:B = 0x10t

.field public static final MSG_ID_CHECK_CUR_STATUS:B = 0x5t

.field public static final MSG_ID_GET_START_UPDATE:B = 0x2t

.field public static final MSG_ID_GET_VERSION:B = -0x4ft

.field public static final MSG_ID_NOTIFY_UPGRADE:B = 0x4t

.field public static final MSG_ID_PUT_FILE:B = 0x3t

.field public static final MSG_ID_UPDATE_STATUS:B = 0x6t


# instance fields
.field private personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

.field private uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/fimi/x8sdk/command/X8BaseCmd;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 0
    .param p1, "callBack"    # Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/fimi/x8sdk/command/X8BaseCmd;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/fimi/x8sdk/command/FwUpdateCollection;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .line 47
    iput-object p2, p0, Lcom/fimi/x8sdk/command/FwUpdateCollection;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .line 48
    return-void
.end method

.method private getUpdateBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4
    .param p1, "moduleName"    # B

    .prologue
    .line 71
    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;-><init>()V

    .line 72
    .local v0, "packet4":Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setType(B)V

    .line 73
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setEncryptType(B)V

    .line 74
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GCS:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setSrcId(B)V

    .line 75
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setDestId(B)V

    .line 76
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    iget-short v3, p0, Lcom/fimi/x8sdk/command/FwUpdateCollection;->seqIndex:S

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setSeq(S)V

    .line 77
    new-instance v1, Lcom/fimi/x8sdk/command/X8SendCmd;

    invoke-direct {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;-><init>(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 78
    .local v1, "x8SendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    iget-object v2, p0, Lcom/fimi/x8sdk/command/FwUpdateCollection;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPersonalDataCallBack(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V

    .line 79
    iget-object v2, p0, Lcom/fimi/x8sdk/command/FwUpdateCollection;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setUiCallBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 80
    return-object v1
.end method


# virtual methods
.method public getCameraVer()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 85
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CAMERA:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->getUpdateBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 86
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v0, v4, [B

    .line 87
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/16 v3, 0x10

    aput-byte v3, v0, v2

    .line 88
    const/4 v2, 0x1

    const/16 v3, -0x4f

    aput-byte v3, v0, v2

    .line 89
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 90
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 92
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 93
    return-object v1
.end method

.method public getVersion(BB)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "moduleName"    # B
    .param p2, "type"    # B

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->getUpdateBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 51
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v2, 0xc

    new-array v0, v2, [B

    .line 52
    .local v0, "payload":[B
    const/16 v2, 0x10

    aput-byte v2, v0, v4

    .line 53
    const/16 v2, -0x4f

    aput-byte v2, v0, v3

    .line 54
    aput-byte v4, v0, v5

    .line 55
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 56
    const/4 v2, 0x4

    aput-byte p2, v0, v2

    .line 57
    const/4 v2, 0x5

    aput-byte v4, v0, v2

    .line 58
    const/4 v2, 0x6

    aput-byte v4, v0, v2

    .line 59
    const/4 v2, 0x7

    aput-byte v4, v0, v2

    .line 60
    const/16 v2, 0x8

    aput-byte v3, v0, v2

    .line 61
    const/16 v2, 0x9

    const/4 v3, -0x1

    aput-byte v3, v0, v2

    .line 62
    const/16 v2, 0xa

    aput-byte v5, v0, v2

    .line 63
    const/16 v2, 0xb

    aput-byte v4, v0, v2

    .line 64
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 65
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 66
    return-object v1
.end method

.method public queryCurSystemStatus()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 185
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CAMERA:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->getUpdateBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 186
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 187
    .local v0, "payload":[B
    const/16 v2, 0x10

    aput-byte v2, v0, v3

    .line 188
    const/4 v2, 0x1

    aput-byte v4, v0, v2

    .line 189
    const/4 v2, 0x2

    aput-byte v3, v0, v2

    .line 190
    const/4 v2, 0x3

    aput-byte v3, v0, v2

    .line 191
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 192
    sget-object v2, Lcom/fimi/kernel/connect/usb/LinkMsgType;->FmLink4:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    invoke-virtual {v1, v4, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd(ILcom/fimi/kernel/connect/usb/LinkMsgType;)V

    .line 193
    return-object v1
.end method

.method public queryCurUpdateStatus()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 202
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CAMERA:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->getUpdateBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 203
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 204
    .local v0, "payload":[B
    const/16 v2, 0x10

    aput-byte v2, v0, v4

    .line 205
    const/4 v2, 0x1

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    .line 206
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 207
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 208
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 209
    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/command/X8SendCmd;->setReSendNum(I)V

    .line 210
    const/4 v2, 0x5

    sget-object v3, Lcom/fimi/kernel/connect/usb/LinkMsgType;->FmLink4:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    invoke-virtual {v1, v2, v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd(ILcom/fimi/kernel/connect/usb/LinkMsgType;)V

    .line 211
    return-object v1
.end method

.method public requestStartUpdate()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 102
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CAMERA:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->getUpdateBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 103
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 104
    .local v0, "payload":[B
    const/16 v2, 0x10

    aput-byte v2, v0, v3

    .line 105
    const/4 v2, 0x1

    aput-byte v4, v0, v2

    .line 106
    aput-byte v3, v0, v4

    .line 107
    const/4 v2, 0x3

    aput-byte v3, v0, v2

    .line 108
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 109
    invoke-virtual {v1, v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->setReSendNum(I)V

    .line 110
    const/4 v2, 0x5

    sget-object v3, Lcom/fimi/kernel/connect/usb/LinkMsgType;->FmLink4:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    invoke-virtual {v1, v2, v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd(ILcom/fimi/kernel/connect/usb/LinkMsgType;)V

    .line 111
    return-object v1
.end method

.method public requestUploadFile([B[B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5
    .param p1, "fileSize"    # [B
    .param p2, "crc"    # [B

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 122
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CAMERA:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->getUpdateBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 123
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v2, 0xc

    new-array v0, v2, [B

    .line 124
    .local v0, "payload":[B
    const/16 v2, 0x10

    aput-byte v2, v0, v4

    .line 125
    const/4 v2, 0x1

    aput-byte v3, v0, v2

    .line 126
    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 127
    aput-byte v4, v0, v3

    .line 128
    const/4 v2, 0x4

    array-length v3, p1

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    const/16 v2, 0x8

    array-length v3, p2

    invoke-static {p2, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 131
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setReSendNum(I)V

    .line 132
    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setOutTime(I)V

    .line 133
    const/4 v2, 0x5

    sget-object v3, Lcom/fimi/kernel/connect/usb/LinkMsgType;->FmLink4:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    invoke-virtual {v1, v2, v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd(ILcom/fimi/kernel/connect/usb/LinkMsgType;)V

    .line 134
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alanqiu  =========="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 135
    return-object v1
.end method

.method public sendFwFileContent(I[B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 9
    .param p1, "fileOffset"    # I
    .param p2, "payLoad"    # [B

    .prologue
    .line 146
    array-length v8, p2

    add-int/lit8 v5, v8, 0xc

    .line 147
    .local v5, "msgLen":I
    array-length v8, p2

    int-to-short v6, v8

    .line 148
    .local v6, "payloadLen":S
    new-array v1, v5, [B

    .line 149
    .local v1, "content":[B
    const/4 v2, 0x0

    .line 150
    .local v2, "i":I
    const/4 v0, 0x0

    .line 151
    .local v0, "checksum":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    shr-int/lit8 v8, v5, 0x0

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 152
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    shr-int/lit8 v8, v5, 0x8

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    .line 153
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    shr-int/lit8 v8, v5, 0x10

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 154
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    shr-int/lit8 v8, v5, 0x18

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    .line 156
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    shr-int/lit8 v8, p1, 0x0

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 157
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    shr-int/lit8 v8, p1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    .line 158
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    shr-int/lit8 v8, p1, 0x10

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 159
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    shr-int/lit8 v8, p1, 0x18

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    .line 161
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    shr-int/lit8 v8, v6, 0x0

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 162
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    shr-int/lit8 v8, v6, 0x8

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    .line 164
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    array-length v8, p2

    if-ge v4, v8, :cond_0

    .line 165
    aget-byte v8, p2, v4

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v0, v8

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    shr-int/lit8 v8, v0, 0x0

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 168
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    shr-int/lit8 v8, v0, 0x8

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    .line 170
    const/4 v8, 0x0

    invoke-static {p2, v8, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    new-instance v7, Lcom/fimi/x8sdk/command/X8SendCmd;

    invoke-direct {v7}, Lcom/fimi/x8sdk/command/X8SendCmd;-><init>()V

    .line 172
    .local v7, "x8SendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    add-int v8, p1, v6

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/command/X8SendCmd;->setFileOffset(I)V

    .line 174
    const/4 v8, 0x6

    invoke-virtual {v7, v1, v8}, Lcom/fimi/x8sdk/command/X8SendCmd;->addUSBHeader([BI)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/command/X8SendCmd;->setCmdData([B)V

    .line 175
    sget-object v8, Lcom/fimi/kernel/connect/usb/LinkMsgType;->FwUploadData:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    invoke-virtual {v7, v8}, Lcom/fimi/x8sdk/command/X8SendCmd;->setLinkMsgType(Lcom/fimi/kernel/connect/usb/LinkMsgType;)V

    .line 176
    return-object v7
.end method
