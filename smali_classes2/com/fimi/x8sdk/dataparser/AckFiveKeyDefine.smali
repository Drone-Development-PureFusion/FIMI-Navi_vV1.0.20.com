.class public Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckFiveKeyDefine.java"


# instance fields
.field adckeyAction:B

.field adckeyIndex:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdckeyAction()B
    .locals 1

    .prologue
    .line 28
    iget-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->adckeyAction:B

    return v0
.end method

.method public getAdckeyIndex()B
    .locals 1

    .prologue
    .line 20
    iget-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->adckeyIndex:B

    return v0
.end method

.method public setAdckeyAction(B)V
    .locals 0
    .param p1, "adckeyAction"    # B

    .prologue
    .line 32
    iput-byte p1, p0, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->adckeyAction:B

    .line 33
    return-void
.end method

.method public setAdckeyIndex(B)V
    .locals 0
    .param p1, "adckeyIndex"    # B

    .prologue
    .line 24
    iput-byte p1, p0, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->adckeyIndex:B

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckFiveKeyDefine{adckeyIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->adckeyIndex:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adckeyAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->adckeyAction:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 1
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 15
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->adckeyIndex:B

    .line 16
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->adckeyAction:B

    .line 17
    return-void
.end method
