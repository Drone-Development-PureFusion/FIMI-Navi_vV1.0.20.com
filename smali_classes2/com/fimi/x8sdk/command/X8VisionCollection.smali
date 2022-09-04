.class public Lcom/fimi/x8sdk/command/X8VisionCollection;
.super Lcom/fimi/x8sdk/command/X8BaseCmd;
.source "X8VisionCollection.java"


# static fields
.field public static final MSG_GROUP_VISION_0F:B = 0xft

.field public static final MSG_SET_FPV_LOST_SEQ:B = 0x11t

.field public static final MSG_SET_FPV_MODE:B = 0x10t

.field public static final MSG_SET_RECTF:B = 0x3t

.field public static final MSG_TRACKING_RECTF:B = 0x4t


# instance fields
.field private personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

.field private uiCallBackListener:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fimi/x8sdk/command/X8BaseCmd;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 0
    .param p1, "callBack"    # Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;
    .param p2, "uiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fimi/x8sdk/command/X8BaseCmd;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/fimi/x8sdk/command/X8VisionCollection;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .line 25
    iput-object p2, p0, Lcom/fimi/x8sdk/command/X8VisionCollection;->uiCallBackListener:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .line 26
    return-void
.end method

.method private getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 4
    .param p1, "moduleName"    # B

    .prologue
    .line 28
    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;-><init>()V

    .line 29
    .local v0, "packet4":Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setType(B)V

    .line 30
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setEncryptType(B)V

    .line 31
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GCS:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setSrcId(B)V

    .line 32
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setDestId(B)V

    .line 33
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v2

    iget-short v3, p0, Lcom/fimi/x8sdk/command/X8VisionCollection;->seqIndex:S

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setSeq(S)V

    .line 34
    new-instance v1, Lcom/fimi/x8sdk/command/X8SendCmd;

    invoke-direct {v1, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;-><init>(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 35
    .local v1, "x8SendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    iget-object v2, p0, Lcom/fimi/x8sdk/command/X8VisionCollection;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPersonalDataCallBack(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V

    .line 36
    iget-object v2, p0, Lcom/fimi/x8sdk/command/X8VisionCollection;->uiCallBackListener:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setUiCallBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 37
    return-object v1
.end method


# virtual methods
.method public setVcFpvLostSeq(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "seq"    # I

    .prologue
    const/4 v5, 0x0

    .line 88
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CV:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/X8VisionCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 89
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0x8

    new-array v2, v4, [B

    .line 90
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 91
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xf

    aput-byte v4, v2, v0

    .line 92
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x11

    aput-byte v4, v2, v1

    .line 93
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 94
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 95
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 96
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 97
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 98
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 99
    invoke-virtual {v3, v5}, Lcom/fimi/x8sdk/command/X8SendCmd;->setAddToSendQueue(Z)V

    .line 100
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 101
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 102
    return-object v3
.end method

.method public setVcFpvMode(I)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "vcFpvMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 74
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CV:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/X8VisionCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 75
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/4 v4, 0x5

    new-array v2, v4, [B

    .line 76
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 77
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xf

    aput-byte v4, v2, v0

    .line 78
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/16 v4, 0x10

    aput-byte v4, v2, v1

    .line 79
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 80
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 81
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 82
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 83
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 84
    return-object v3
.end method

.method public setVcRectF(IIIII)Lcom/fimi/x8sdk/command/X8SendCmd;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "classfier"    # I

    .prologue
    const/4 v5, 0x0

    .line 49
    sget-object v4, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CV:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lcom/fimi/x8sdk/command/X8VisionCollection;->getFCBase(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v3

    .line 50
    .local v3, "sendCmd":Lcom/fimi/x8sdk/command/X8SendCmd;
    const/16 v4, 0xe

    new-array v2, v4, [B

    .line 51
    .local v2, "payload":[B
    const/4 v0, 0x0

    .line 52
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v4, 0xf

    aput-byte v4, v2, v0

    .line 53
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v4, 0x3

    aput-byte v4, v2, v1

    .line 54
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-byte v5, v2, v0

    .line 55
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-byte v5, v2, v1

    .line 56
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 57
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 58
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    and-int/lit16 v4, p2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 59
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    shr-int/lit8 v4, p2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 60
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    and-int/lit16 v4, p3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 61
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    shr-int/lit8 v4, p3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 62
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    and-int/lit16 v4, p4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 63
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    shr-int/lit8 v4, p4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 64
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    and-int/lit16 v4, p5, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 65
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    shr-int/lit8 v4, p5, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 66
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setPayLoad([B)V

    .line 67
    invoke-virtual {v3}, Lcom/fimi/x8sdk/command/X8SendCmd;->packSendCmd()V

    .line 69
    return-object v3
.end method
