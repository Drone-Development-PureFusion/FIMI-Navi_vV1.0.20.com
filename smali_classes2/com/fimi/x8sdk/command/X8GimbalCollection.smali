.class public Lcom/fimi/x8sdk/command/X8GimbalCollection;
.super Lcom/fimi/x8sdk/command/X8BaseCmd;
.source "X8GimbalCollection.java"


# static fields
.field public static final MSG_GET_GIMBAL_SENSOR:I = 0x60

.field public static final MSG_GROUP_FC_GIMBAL:B = 0x9t

.field public static final MSG_ID_GET_GC_PARAM:I = 0x6a

.field public static final MSG_ID_GET_GC_PARAM_NEW:I = 0x1d

.field public static final MSG_ID_GET_GIMBAL_GAIN:B = 0x1ft

.field public static final MSG_ID_GET_HORIZONTAL_ADJUST:I = 0x2b

.field public static final MSG_ID_GET_PITCH_SPEED:I = 0x29

.field public static final MSG_ID_POSRATE:I = 0x6

.field public static final MSG_ID_REST_GC_PARAM:I = 0x2f

.field public static final MSG_ID_SET_GC_PARAM:I = 0x69

.field public static final MSG_ID_SET_GC_PARAM_NEW:I = 0x1c

.field public static final MSG_ID_SET_GIMBAL_GAIN:B = 0x1et

.field public static final MSG_ID_SET_HORIZONTAL_ADJUST:I = 0x2a

.field public static final MSG_ID_SET_PITCH_SPEED:I = 0x28

.field public static final STATE:I = 0x1


# instance fields
.field private personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

.field private uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fimi/x8sdk/command/X8BaseCmd;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 0
    .param p1, "callBack"    # Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;
    .param p2, "uiCallBack"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/fimi/x8sdk/command/X8BaseCmd;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/fimi/x8sdk/command/X8GimbalCollection;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .line 50
    iput-object p2, p0, Lcom/fimi/x8sdk/command/X8GimbalCollection;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .line 51
    return-void
.end method

.method private getBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4
    .param p1, "moduleName"    # B

    .prologue
    .line 70
    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;-><init>()V

    .line 71
    .local v0, "packet4":Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setType(B)V

    .line 72
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setEncryptType(B)V

    .line 73
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GCS:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setSrcId(B)V

    .line 74
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setDestId(B)V

    .line 75
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    iget-short v3, p0, Lcom/fimi/x8sdk/command/X8GimbalCollection;->seqIndex:S

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setSeq(S)V

    .line 76
    new-instance v1, Lcom/fimi/x8sdk/command/X8SendCmd;

    invoke-direct {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;-><init>(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 77
    .local v1, "x8SendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    iget-object v2, p0, Lcom/fimi/x8sdk/command/X8GimbalCollection;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPersonalDataCallBack(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V

    .line 78
    iget-object v2, p0, Lcom/fimi/x8sdk/command/X8GimbalCollection;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setUiCallBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 79
    return-object v1
.end method


# virtual methods
.method public fetchGcGain()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4

    .prologue
    .line 316
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 317
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 318
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/16 v3, 0x9

    aput-byte v3, v0, v2

    .line 319
    const/4 v2, 0x1

    const/16 v3, 0x1f

    aput-byte v3, v0, v2

    .line 320
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 321
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 322
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v2

    const-string v3, "\u83b7\u53d6==="

    invoke-virtual {v2, v3}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 323
    return-object v1
.end method

.method public getGcParams()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    .line 221
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 222
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x5

    new-array v2, v4, [B

    .line 223
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 224
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0x9

    aput-byte v4, v2, v0

    .line 225
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x6a

    aput-byte v4, v2, v1

    .line 226
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 227
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 228
    return-object v3
.end method

.method public getGcParamsNew()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    .line 259
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 260
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 261
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 262
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0x9

    aput-byte v4, v2, v0

    .line 263
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x1d

    aput-byte v4, v2, v1

    .line 264
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 265
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 266
    return-object v3
.end method

.method public getGimbalSensorInfoCmd()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 57
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 58
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 59
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 60
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0x9

    aput-byte v4, v2, v0

    .line 61
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x60

    aput-byte v4, v2, v1

    .line 62
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 63
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 64
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 65
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 66
    return-object v3
.end method

.method public getHorizontalAdjust()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 148
    sget-object v5, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v5}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v5

    int-to-byte v5, v5

    invoke-direct {p0, v5}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 149
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v5, 0x4

    new-array v2, v5, [B

    .line 151
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 152
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v5, 0x9

    aput-byte v5, v2, v0

    .line 153
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v5, 0x2b

    aput-byte v5, v2, v1

    .line 154
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v6, v2, v0

    .line 155
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v6, v2, v1

    .line 156
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 157
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 158
    invoke-static {v2}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "sendString":Ljava/lang/String;
    return-object v3
.end method

.method public getPitchSpeed()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 186
    sget-object v5, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v5}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v5

    int-to-byte v5, v5

    invoke-direct {p0, v5}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 187
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v5, 0x4

    new-array v2, v5, [B

    .line 188
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 189
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v5, 0x9

    aput-byte v5, v2, v0

    .line 190
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v5, 0x29

    aput-byte v5, v2, v1

    .line 191
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v6, v2, v0

    .line 192
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v6, v2, v1

    .line 193
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 194
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 195
    invoke-static {v2}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "sendString":Ljava/lang/String;
    return-object v3
.end method

.method public restGcParams()Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 5

    .prologue
    .line 205
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 206
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 207
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 208
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0x9

    aput-byte v4, v2, v0

    .line 209
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x2f

    aput-byte v4, v2, v1

    .line 210
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 211
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 212
    return-object v3
.end method

.method public setAiAutoPhotoPitchAngle(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "aiAutoPhotoPitchAngle"    # I

    .prologue
    const/4 v5, 0x0

    .line 84
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 85
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0x11

    new-array v2, v4, [B

    .line 86
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 87
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0x9

    aput-byte v4, v2, v0

    .line 88
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v4, 0x6

    aput-byte v4, v2, v1

    .line 89
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 90
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 92
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const/16 v4, 0xa

    aput-byte v4, v2, v0

    .line 94
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 95
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 97
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 98
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 100
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 101
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 103
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 104
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 106
    mul-int/lit8 p1, p1, 0x64

    .line 107
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    shr-int/lit8 v4, p1, 0x0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 108
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 110
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 111
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 112
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 113
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 114
    return-object v3
.end method

.method public setGcGain(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4
    .param p1, "data"    # I

    .prologue
    .line 300
    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v1

    .line 301
    .local v1, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 302
    .local v0, "payload":[B
    const/4 v2, 0x0

    const/16 v3, 0x9

    aput-byte v3, v0, v2

    .line 303
    const/4 v2, 0x1

    const/16 v3, 0x1e

    aput-byte v3, v0, v2

    .line 304
    const/4 v2, 0x4

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 305
    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 306
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 307
    return-object v1
.end method

.method public setGcParams(IF)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 8
    .param p1, "model"    # I
    .param p2, "param"    # F

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x0

    .line 236
    sget-object v5, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v5}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v5

    int-to-byte v5, v5

    invoke-direct {p0, v5}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 237
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    new-array v2, v7, [B

    .line 238
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 239
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-byte v7, v2, v0

    .line 240
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v5, 0x69

    aput-byte v5, v2, v1

    .line 241
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v6, v2, v0

    .line 242
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v6, v2, v1

    .line 243
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v5, p1

    aput-byte v5, v2, v0

    .line 244
    invoke-static {p2}, Lcom/fimi/kernel/utils/ByteUtil;->float2byte(F)[B

    move-result-object v4

    .line 245
    .local v4, "temp":[B
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v5, v4, v6

    aput-byte v5, v2, v1

    .line 246
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const/4 v5, 0x1

    aget-byte v5, v4, v5

    aput-byte v5, v2, v0

    .line 247
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v5, 0x2

    aget-byte v5, v4, v5

    aput-byte v5, v2, v1

    .line 248
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const/4 v5, 0x3

    aget-byte v5, v4, v5

    aput-byte v5, v2, v0

    .line 249
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 250
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 251
    return-object v3
.end method

.method public setGcParamsNew(IFFF)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 7
    .param p1, "model"    # I
    .param p2, "param1"    # F
    .param p3, "param2"    # F
    .param p4, "param3"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    .line 278
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 279
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0x8

    new-array v2, v4, [B

    .line 280
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 281
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0x9

    aput-byte v4, v2, v0

    .line 282
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x1c

    aput-byte v4, v2, v1

    .line 283
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v6, v2, v0

    .line 284
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v6, v2, v1

    .line 285
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 286
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    mul-float v4, p2, v5

    float-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 287
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    mul-float v4, p3, v5

    float-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 288
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    mul-float v4, p4, v5

    float-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 289
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 290
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 291
    return-object v3
.end method

.method public setHorizontalAdjust(F)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 8
    .param p1, "angle"    # F

    .prologue
    const/4 v7, 0x0

    .line 124
    sget-object v6, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v6}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v6

    int-to-byte v6, v6

    invoke-direct {p0, v6}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 125
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v6, 0x8

    new-array v2, v6, [B

    .line 127
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 128
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v6, 0x9

    aput-byte v6, v2, v0

    .line 129
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v6, 0x2a

    aput-byte v6, v2, v1

    .line 130
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v7, v2, v0

    .line 131
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v7, v2, v1

    .line 133
    invoke-static {p1}, Lcom/fimi/kernel/utils/ByteUtil;->float2byte(F)[B

    move-result-object v5

    .line 134
    .local v5, "temp":[B
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-byte v6, v5, v7

    aput-byte v6, v2, v0

    .line 135
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v6, 0x1

    aget-byte v6, v5, v6

    aput-byte v6, v2, v1

    .line 136
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const/4 v6, 0x2

    aget-byte v6, v5, v6

    aput-byte v6, v2, v0

    .line 137
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v6, 0x3

    aget-byte v6, v5, v6

    aput-byte v6, v2, v1

    .line 138
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 139
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 140
    invoke-static {v2}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "sendString":Ljava/lang/String;
    return-object v3
.end method

.method public setPitchSpeed(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "speed"    # I

    .prologue
    const/4 v5, 0x0

    .line 168
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 169
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x5

    new-array v2, v4, [B

    .line 170
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 171
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0x9

    aput-byte v4, v2, v0

    .line 172
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x28

    aput-byte v4, v2, v1

    .line 173
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 174
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 175
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 176
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 177
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 178
    return-object v3
.end method
