.class public Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckGetSensitivity.java"


# instance fields
.field pitchPercent:I

.field rollPercent:I

.field throPercent:I

.field yawPercent:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getPitchPercent()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->pitchPercent:I

    return v0
.end method

.method public getRollPercent()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->rollPercent:I

    return v0
.end method

.method public getThroPercent()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->throPercent:I

    return v0
.end method

.method public getYawPercent()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->yawPercent:I

    return v0
.end method

.method public setPitchPercent(I)V
    .locals 0
    .param p1, "pitchPercent"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->pitchPercent:I

    .line 40
    return-void
.end method

.method public setRollPercent(I)V
    .locals 0
    .param p1, "rollPercent"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->rollPercent:I

    .line 32
    return-void
.end method

.method public setThroPercent(I)V
    .locals 0
    .param p1, "throPercent"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->throPercent:I

    .line 56
    return-void
.end method

.method public setYawPercent(I)V
    .locals 0
    .param p1, "yawPercent"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->yawPercent:I

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckGetSensitivity{rollPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->rollPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pitchPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->pitchPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yawPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->yawPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", throPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->throPercent:I

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
    .line 18
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 19
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->rollPercent:I

    .line 20
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->pitchPercent:I

    .line 21
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->yawPercent:I

    .line 22
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetSensitivity;->throPercent:I

    .line 23
    return-void
.end method
