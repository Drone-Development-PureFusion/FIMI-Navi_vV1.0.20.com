.class public Lcom/fimi/kernel/connect/model/UpdateDateMessage;
.super Ljava/lang/Object;
.source "UpdateDateMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field faultMessage:B

.field fileOffset:I

.field msgLen:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFaultMessage()B
    .locals 1

    .prologue
    .line 26
    iget-byte v0, p0, Lcom/fimi/kernel/connect/model/UpdateDateMessage;->faultMessage:B

    return v0
.end method

.method public getFileOffset()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/fimi/kernel/connect/model/UpdateDateMessage;->fileOffset:I

    return v0
.end method

.method public getMsgLen()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/fimi/kernel/connect/model/UpdateDateMessage;->msgLen:I

    return v0
.end method

.method public setFaultMessage(B)V
    .locals 0
    .param p1, "faultMessage"    # B

    .prologue
    .line 30
    iput-byte p1, p0, Lcom/fimi/kernel/connect/model/UpdateDateMessage;->faultMessage:B

    .line 31
    return-void
.end method

.method public setFileOffset(I)V
    .locals 0
    .param p1, "fileOffset"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/fimi/kernel/connect/model/UpdateDateMessage;->fileOffset:I

    .line 39
    return-void
.end method

.method public setMsgLen(I)V
    .locals 0
    .param p1, "msgLen"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/fimi/kernel/connect/model/UpdateDateMessage;->msgLen:I

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateDateMessage{msgLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/kernel/connect/model/UpdateDateMessage;->msgLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", faultMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/kernel/connect/model/UpdateDateMessage;->faultMessage:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/kernel/connect/model/UpdateDateMessage;->fileOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
