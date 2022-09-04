.class public Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;
.super Ljava/lang/Object;
.source "MediaFileDownLoadPacket.java"


# instance fields
.field private cmdType:B

.field private crcFlag:I

.field private errorCode:S

.field private fileName:Ljava/lang/String;

.field private msgLen:I

.field private nameLen:S

.field private offSet:I

.field private playData:[B

.field private playloadSize:S

.field private resultFlag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmdType()B
    .locals 1

    .prologue
    .line 63
    iget-byte v0, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->cmdType:B

    return v0
.end method

.method public getCrcFlag()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->crcFlag:I

    return v0
.end method

.method public getErrorCode()S
    .locals 1

    .prologue
    .line 79
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->errorCode:S

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(I[B)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "data"    # [B

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "result":I
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 49
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 50
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 51
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public getMsgLen()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->msgLen:I

    return v0
.end method

.method public getNameLen()S
    .locals 1

    .prologue
    .line 95
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->nameLen:S

    return v0
.end method

.method public getOffSet()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->offSet:I

    return v0
.end method

.method public getPlayData()[B
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->playData:[B

    return-object v0
.end method

.method public getPlayloadSize()S
    .locals 1

    .prologue
    .line 111
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->playloadSize:S

    return v0
.end method

.method public getResultFlag()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->resultFlag:I

    return v0
.end method

.method public getShort(I[B)S
    .locals 2
    .param p1, "index"    # I
    .param p2, "data"    # [B

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "result":S
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 58
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 59
    return v0
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 136
    iget v1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->resultFlag:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCmdType(B)V
    .locals 0
    .param p1, "cmdType"    # B

    .prologue
    .line 67
    iput-byte p1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->cmdType:B

    .line 68
    return-void
.end method

.method public setCrcFlag(I)V
    .locals 0
    .param p1, "crcFlag"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->crcFlag:I

    .line 149
    return-void
.end method

.method public setErrorCode(S)V
    .locals 0
    .param p1, "errorCode"    # S

    .prologue
    .line 83
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->errorCode:S

    .line 84
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->fileName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setMsgLen(I)V
    .locals 0
    .param p1, "msgLen"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->msgLen:I

    .line 76
    return-void
.end method

.method public setNameLen(S)V
    .locals 0
    .param p1, "nameLen"    # S

    .prologue
    .line 99
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->nameLen:S

    .line 100
    return-void
.end method

.method public setOffSet(I)V
    .locals 0
    .param p1, "offSet"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->offSet:I

    .line 92
    return-void
.end method

.method public setPlayData([B)V
    .locals 0
    .param p1, "playData"    # [B

    .prologue
    .line 123
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->playData:[B

    .line 124
    return-void
.end method

.method public setPlayloadSize(S)V
    .locals 0
    .param p1, "playloadSize"    # S

    .prologue
    .line 115
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->playloadSize:S

    .line 116
    return-void
.end method

.method public setResultFlag(I)V
    .locals 0
    .param p1, "resultFlag"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->resultFlag:I

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaFileDownLoadPacket{cmdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->cmdType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->msgLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->errorCode:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->offSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->resultFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", crcFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->crcFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nameLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->nameLen:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playloadSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->playloadSize:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->playData:[B

    .line 163
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    return-object v0
.end method

.method public unPacket([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 25
    aget-byte v2, p1, v2

    iput-byte v2, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->cmdType:B

    .line 26
    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getInt(I[B)I

    move-result v2

    iput v2, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->msgLen:I

    .line 27
    const/4 v2, 0x5

    invoke-virtual {p0, v2, p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getShort(I[B)S

    move-result v2

    iput-short v2, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->errorCode:S

    .line 28
    const/4 v2, 0x7

    invoke-virtual {p0, v2, p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getInt(I[B)I

    move-result v2

    iput v2, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->offSet:I

    .line 29
    const/16 v2, 0xb

    aget-byte v2, p1, v2

    iput v2, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->resultFlag:I

    .line 30
    const/16 v2, 0xc

    invoke-virtual {p0, v2, p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getShort(I[B)S

    move-result v2

    iput v2, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->crcFlag:I

    .line 31
    const/16 v2, 0xe

    invoke-virtual {p0, v2, p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getShort(I[B)S

    move-result v2

    iput-short v2, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->nameLen:S

    .line 32
    iget-short v2, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->nameLen:S

    new-array v1, v2, [B

    .line 34
    .local v1, "nameArray":[B
    const/16 v2, 0x10

    const/4 v3, 0x0

    :try_start_0
    array-length v4, v1

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->fileName:Ljava/lang/String;

    .line 37
    array-length v2, v1

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2, p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getShort(I[B)S

    move-result v2

    iput-short v2, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->playloadSize:S

    .line 38
    iget-short v2, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->playloadSize:S

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->playData:[B

    .line 39
    array-length v2, v1

    add-int/lit8 v2, v2, 0x12

    iget-object v3, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->playData:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->playData:[B

    array-length v5, v5

    invoke-static {p1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alanqiu ======Exception unPacket:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/fimi/x8sdk/update/fwpack/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
