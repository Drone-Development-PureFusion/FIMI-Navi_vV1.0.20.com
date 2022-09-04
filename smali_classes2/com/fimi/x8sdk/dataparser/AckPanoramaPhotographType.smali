.class public Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckPanoramaPhotographType.java"


# instance fields
.field private currentNum:B

.field private mode:B

.field private totalNum:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentNum()B
    .locals 1

    .prologue
    .line 30
    iget-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->currentNum:B

    return v0
.end method

.method public getMode()B
    .locals 1

    .prologue
    .line 22
    iget-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->mode:B

    return v0
.end method

.method public getTotalNum()B
    .locals 1

    .prologue
    .line 38
    iget-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->totalNum:B

    return v0
.end method

.method public setCurrentNum(B)V
    .locals 0
    .param p1, "currentNum"    # B

    .prologue
    .line 34
    iput-byte p1, p0, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->currentNum:B

    .line 35
    return-void
.end method

.method public setMode(B)V
    .locals 0
    .param p1, "mode"    # B

    .prologue
    .line 26
    iput-byte p1, p0, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->mode:B

    .line 27
    return-void
.end method

.method public setTotalNum(B)V
    .locals 0
    .param p1, "totalNum"    # B

    .prologue
    .line 42
    iput-byte p1, p0, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->totalNum:B

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckPanoramaPhotographType{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->mode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->currentNum:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->totalNum:B

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
    .line 15
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 16
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->mode:B

    .line 17
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->currentNum:B

    .line 18
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->totalNum:B

    .line 19
    return-void
.end method
