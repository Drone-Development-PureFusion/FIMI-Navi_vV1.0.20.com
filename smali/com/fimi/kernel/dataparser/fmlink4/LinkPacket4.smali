.class public Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
.super Ljava/lang/Object;
.source "LinkPacket4.java"


# instance fields
.field private header4:Lcom/fimi/kernel/dataparser/fmlink4/Header4;

.field private payLoad4:Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

.field private personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

.field sendCmd:[B

.field private uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->header4:Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    .line 23
    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->payLoad4:Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    .line 24
    return-void
.end method


# virtual methods
.method public getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->header4:Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    return-object v0
.end method

.method public getPacketData()[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 77
    iget-object v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->header4:Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->onPacket()[B

    move-result-object v2

    .line 79
    .local v2, "header":[B
    iget-object v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->payLoad4:Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->size()I

    move-result v3

    .line 80
    .local v3, "len":I
    array-length v4, v2

    add-int v1, v4, v3

    .line 81
    .local v1, "count":I
    new-array v0, v1, [B

    .line 82
    .local v0, "bytes":[B
    array-length v4, v2

    invoke-static {v2, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->payLoad4:Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    iget-object v4, v4, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v5, v2

    invoke-static {v4, v6, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    return-object v0
.end method

.method public getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->payLoad4:Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    return-object v0
.end method

.method public getPersonalDataCallBack()Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    return-object v0
.end method

.method public getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    return-object v0
.end method

.method public packCmd()[B
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 35
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->payLoad4:Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->size()I

    move-result v2

    .line 36
    .local v2, "payloadLen":I
    add-int/lit8 v1, v2, 0x10

    .line 37
    .local v1, "len":I
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->header4:Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    invoke-virtual {v3, v2}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setPayloadLen(I)V

    .line 38
    new-array v3, v1, [B

    iput-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->sendCmd:[B

    .line 39
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->header4:Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    invoke-virtual {v3, v1}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setLen(I)V

    .line 41
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->header4:Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    iget-object v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->payLoad4:Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    iget-object v5, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->sendCmd:[B

    invoke-virtual {v4, v5, v7}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getIntCRC([BI)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->setCrcFrame(I)V

    .line 42
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->header4:Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->onPacket()[B

    move-result-object v0

    .line 43
    .local v0, "headBytes":[B
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->sendCmd:[B

    invoke-static {v0, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget-object v3, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->sendCmd:[B

    return-object v3
.end method

.method public setPersonalDataCallBack(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V
    .locals 0
    .param p1, "personalDataCallBack"    # Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .line 61
    return-void
.end method

.method public setUiCallBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 0
    .param p1, "uiCallBack"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .line 69
    return-void
.end method

.method public showPayload()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 49
    iget-object v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->header4:Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->onPacket()[B

    move-result-object v1

    .line 50
    .local v1, "d":[B
    invoke-static {v1}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "hex":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->payLoad4:Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->size()I

    move-result v3

    .line 52
    .local v3, "len":I
    new-array v0, v3, [B

    .line 53
    .local v0, "bytes":[B
    iget-object v4, p0, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->payLoad4:Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    iget-object v4, v4, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    return-object v2
.end method
