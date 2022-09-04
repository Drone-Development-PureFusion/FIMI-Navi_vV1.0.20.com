.class public abstract Lcom/fimi/kernel/connect/BaseCommand;
.super Lcom/fimi/kernel/dataparser/milink/LinkMessage;
.source "BaseCommand.java"


# instance fields
.field public camKey:Ljava/lang/String;

.field private cmdData:[B

.field private createTime:J

.field private currentSendNum:I

.field private encryptData:[B

.field public fileOffset:I

.field private isAddToSendQueue:Z

.field private isTimerCmd:Z

.field private jsonUiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

.field private lastSendTime:J

.field linkMsgType:Lcom/fimi/kernel/connect/usb/LinkMsgType;

.field private linkPacket:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

.field private msgSeq:I

.field private outTime:I

.field private personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

.field private rawCmdData:[B

.field private reSendNum:I

.field private uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

.field private unEncryptData:[B

.field private usbCmdKey:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fimi/kernel/dataparser/milink/LinkMessage;-><init>()V

    .line 18
    sget-object v0, Lcom/fimi/kernel/connect/usb/LinkMsgType;->FmLink4:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    iput-object v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->linkMsgType:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    .line 20
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->outTime:I

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->reSendNum:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->isAddToSendQueue:Z

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->currentSendNum:I

    return-void
.end method


# virtual methods
.method public fillPayload(Lcom/fimi/kernel/dataparser/milink/LinkPacket;)V
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->encryptData:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p1, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    iget-object v1, p0, Lcom/fimi/kernel/connect/BaseCommand;->encryptData:[B

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->putBytes([B)V

    .line 144
    :cond_0
    return-void
.end method

.method public fillUnEncryptData(Lcom/fimi/kernel/dataparser/milink/LinkPacket;)V
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .prologue
    .line 84
    iget-object v0, p1, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p1, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    iget-object v1, p0, Lcom/fimi/kernel/connect/BaseCommand;->unEncryptData:[B

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->putBytes([B)V

    .line 86
    :cond_0
    return-void
.end method

.method public getCamKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->camKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdData()[B
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->cmdData:[B

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->createTime:J

    return-wide v0
.end method

.method public getCurrentSendNum()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->currentSendNum:I

    return v0
.end method

.method public getEncryptData()[B
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->encryptData:[B

    return-object v0
.end method

.method public getFileOffset()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->fileOffset:I

    return v0
.end method

.method public getJsonUiCallBackListener()Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->jsonUiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    return-object v0
.end method

.method public getLastSendTime()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->lastSendTime:J

    return-wide v0
.end method

.method public getLinkMsgType()Lcom/fimi/kernel/connect/usb/LinkMsgType;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->linkMsgType:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    return-object v0
.end method

.method public getLinkPacket()Lcom/fimi/kernel/dataparser/milink/LinkPacket;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->linkPacket:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    return-object v0
.end method

.method public getMsgSeq()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->msgSeq:I

    return v0
.end method

.method public getOutTime()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->outTime:I

    return v0
.end method

.method public getPersonalDataCallBack()Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    return-object v0
.end method

.method public getRawCmdData()[B
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->rawCmdData:[B

    return-object v0
.end method

.method public getReSendNum()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->reSendNum:I

    return v0
.end method

.method public getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    return-object v0
.end method

.method public getUnEncryptData()[B
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->unEncryptData:[B

    return-object v0
.end method

.method public getUsbCmdKey()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->usbCmdKey:I

    return v0
.end method

.method public isAddToSendQueue()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->isAddToSendQueue:Z

    return v0
.end method

.method public isTimerCmd()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/fimi/kernel/connect/BaseCommand;->isTimerCmd:Z

    return v0
.end method

.method public setAddToSendQueue(Z)V
    .locals 0
    .param p1, "addToSendQueue"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->isAddToSendQueue:Z

    .line 53
    return-void
.end method

.method public setCamKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "camKey"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->camKey:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setCmdData([B)V
    .locals 0
    .param p1, "cmdData"    # [B

    .prologue
    .line 97
    iput-object p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->cmdData:[B

    .line 98
    return-void
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->createTime:J

    .line 38
    return-void
.end method

.method public setCurrentSendNum(I)V
    .locals 0
    .param p1, "currentSendNum"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->currentSendNum:I

    .line 64
    return-void
.end method

.method public setEncryptData([B)V
    .locals 0
    .param p1, "encryptData"    # [B

    .prologue
    .line 152
    iput-object p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->encryptData:[B

    .line 153
    return-void
.end method

.method public setFileOffset(I)V
    .locals 0
    .param p1, "fileOffset"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->fileOffset:I

    .line 205
    return-void
.end method

.method public setJsonUiCallBackListener(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 0
    .param p1, "jsonUiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->jsonUiCallBackListener:Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .line 195
    return-void
.end method

.method public setLastSendTime(J)V
    .locals 1
    .param p1, "lastSendTime"    # J

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->lastSendTime:J

    .line 138
    return-void
.end method

.method public setLinkMsgType(Lcom/fimi/kernel/connect/usb/LinkMsgType;)V
    .locals 0
    .param p1, "linkMsgType"    # Lcom/fimi/kernel/connect/usb/LinkMsgType;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->linkMsgType:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    .line 223
    return-void
.end method

.method public setLinkPacket(Lcom/fimi/kernel/dataparser/milink/LinkPacket;)V
    .locals 0
    .param p1, "linkPacket"    # Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->linkPacket:Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .line 130
    return-void
.end method

.method public setMsgSeq(I)V
    .locals 0
    .param p1, "msgSeq"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->msgSeq:I

    .line 114
    return-void
.end method

.method public setOutTime(I)V
    .locals 0
    .param p1, "outTime"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->outTime:I

    .line 106
    return-void
.end method

.method public setPersonalDataCallBack(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V
    .locals 0
    .param p1, "personalDataCallBack"    # Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .line 171
    return-void
.end method

.method public setRawCmdData([B)V
    .locals 0
    .param p1, "rawCmdData"    # [B

    .prologue
    .line 162
    iput-object p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->rawCmdData:[B

    .line 163
    return-void
.end method

.method public setReSendNum(I)V
    .locals 0
    .param p1, "reSendNum"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->reSendNum:I

    .line 122
    return-void
.end method

.method public setTimerCmd(Z)V
    .locals 0
    .param p1, "timerCmd"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->isTimerCmd:Z

    .line 72
    return-void
.end method

.method public setUiCallBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 0
    .param p1, "uiCallBack"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .line 174
    return-void
.end method

.method public setUnEncryptData([B)V
    .locals 0
    .param p1, "unEncryptData"    # [B

    .prologue
    .line 89
    iput-object p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->unEncryptData:[B

    .line 90
    return-void
.end method

.method public setUsbCmdKey(I)V
    .locals 0
    .param p1, "usbCmdKey"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/fimi/kernel/connect/BaseCommand;->usbCmdKey:I

    .line 215
    return-void
.end method
