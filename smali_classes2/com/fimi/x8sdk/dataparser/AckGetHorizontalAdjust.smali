.class public Lcom/fimi/x8sdk/dataparser/AckGetHorizontalAdjust;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckGetHorizontalAdjust.java"


# instance fields
.field angle:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetHorizontalAdjust;->angle:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 30
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetHorizontalAdjust;->angle:F

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckGetHorizontalAdjust{angle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetHorizontalAdjust;->angle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 7
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    const/4 v6, 0x0

    .line 17
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 18
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    .line 19
    .local v0, "byte0":B
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    .line 20
    .local v1, "byte1":B
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v2

    .line 21
    .local v2, "byte2":B
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v3

    .line 22
    .local v3, "byte3":B
    const/4 v4, 0x4

    new-array v4, v4, [B

    aput-byte v0, v4, v6

    const/4 v5, 0x1

    aput-byte v1, v4, v5

    const/4 v5, 0x2

    aput-byte v2, v4, v5

    const/4 v5, 0x3

    aput-byte v3, v4, v5

    invoke-static {v4, v6}, Lcom/fimi/kernel/utils/ByteUtil;->byte2float([BI)F

    move-result v4

    iput v4, p0, Lcom/fimi/x8sdk/dataparser/AckGetHorizontalAdjust;->angle:F

    .line 23
    return-void
.end method
