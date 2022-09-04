.class public Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;
.super Ljava/lang/Object;
.source "X8MediaFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;
    }
.end annotation


# instance fields
.field private cmdType:B

.field private error_code:S

.field private fileName:Ljava/lang/String;

.field private fileSize:I

.field mediaFileType:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

.field private msg_len:I

.field private nameLen:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;->NormalFile:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    iput-object v0, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->mediaFileType:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    return-void
.end method


# virtual methods
.method public getCmdType()B
    .locals 1

    .prologue
    .line 52
    iget-byte v0, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->cmdType:B

    return v0
.end method

.method public getError_code()S
    .locals 1

    .prologue
    .line 68
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->error_code:S

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->fileSize:I

    return v0
.end method

.method public getInt(I[B)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "data"    # [B

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "result":I
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 38
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 39
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 40
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 41
    return v0
.end method

.method public getMediaFileType()Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->mediaFileType:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    return-object v0
.end method

.method public getMsg_len()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->msg_len:I

    return v0
.end method

.method public getNameLen()S
    .locals 1

    .prologue
    .line 84
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->nameLen:S

    return v0
.end method

.method public getShort(I[B)S
    .locals 2
    .param p1, "index"    # I
    .param p2, "data"    # [B

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "result":S
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 47
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 48
    return v0
.end method

.method public setCmdType(B)V
    .locals 0
    .param p1, "cmdType"    # B

    .prologue
    .line 56
    iput-byte p1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->cmdType:B

    .line 57
    return-void
.end method

.method public setError_code(S)V
    .locals 0
    .param p1, "error_code"    # S

    .prologue
    .line 72
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->error_code:S

    .line 73
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->fileName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setFileSize(I)V
    .locals 0
    .param p1, "fileSize"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->fileSize:I

    .line 81
    return-void
.end method

.method public setMediaFileType(Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;)V
    .locals 0
    .param p1, "mediaFileType"    # Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->mediaFileType:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    .line 107
    return-void
.end method

.method public setMsg_len(I)V
    .locals 0
    .param p1, "msg_len"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->msg_len:I

    .line 65
    return-void
.end method

.method public setNameLen(S)V
    .locals 0
    .param p1, "nameLen"    # S

    .prologue
    .line 88
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->nameLen:S

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X8MediaFileInfo{cmdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->cmdType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->msg_len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->error_code:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->fileSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nameLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->nameLen:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unPacket([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 25
    aget-byte v1, p1, v3

    iput-byte v1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->cmdType:B

    .line 26
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->getInt(I[B)I

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->msg_len:I

    .line 27
    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->getShort(I[B)S

    move-result v1

    iput-short v1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->error_code:S

    .line 28
    const/4 v1, 0x7

    invoke-virtual {p0, v1, p1}, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->getInt(I[B)I

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->fileSize:I

    .line 29
    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1}, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->getShort(I[B)S

    move-result v1

    iput-short v1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->nameLen:S

    .line 30
    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->nameLen:S

    new-array v0, v1, [B

    .line 31
    .local v0, "nameArray":[B
    const/16 v1, 0xd

    iget-short v2, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->nameLen:S

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->fileName:Ljava/lang/String;

    .line 33
    return-void
.end method
