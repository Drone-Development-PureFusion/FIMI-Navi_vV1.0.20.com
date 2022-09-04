.class public Lcom/fimi/x8sdk/dataparser/AckGetFcParam;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckGetFcParam.java"


# instance fields
.field paramData:F

.field paramIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getParamData()F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetFcParam;->paramData:F

    return v0
.end method

.method public getParamIndex()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetFcParam;->paramIndex:I

    return v0
.end method

.method public setParamData(F)V
    .locals 0
    .param p1, "paramData"    # F

    .prologue
    .line 26
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetFcParam;->paramData:F

    .line 27
    return-void
.end method

.method public setParamIndex(I)V
    .locals 0
    .param p1, "paramIndex"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetFcParam;->paramIndex:I

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->toString()Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckGetFcParam{paramData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetFcParam;->paramData:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paramIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetFcParam;->paramIndex:I

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
    .line 16
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 17
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetFcParam;->paramIndex:I

    .line 18
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetFcParam;->paramData:F

    .line 19
    return-void
.end method
