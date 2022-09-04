.class public Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckCloudCaliState.java"


# instance fields
.field private caliErrorCode:I

.field private progress:I

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaliErrorCode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->caliErrorCode:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->progress:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->status:I

    return v0
.end method

.method public isNeedLeveling10()Z
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->caliErrorCode:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/BitUtil;->getBitByByte(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedLeveling11()Z
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->caliErrorCode:I

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/BitUtil;->getBitByByte(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedLeveling123()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 52
    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->caliErrorCode:I

    invoke-static {v1, v0}, Lcom/fimi/kernel/utils/BitUtil;->getBitByByte(II)I

    move-result v1

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->caliErrorCode:I

    const/4 v2, 0x2

    .line 53
    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/BitUtil;->getBitByByte(II)I

    move-result v1

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->caliErrorCode:I

    const/4 v2, 0x3

    .line 54
    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/BitUtil;->getBitByByte(II)I

    move-result v1

    if-lez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedLeveling4()Z
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->caliErrorCode:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/BitUtil;->getBitByByte(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedLeveling5()Z
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->caliErrorCode:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/BitUtil;->getBitByByte(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedLeveling6()Z
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->caliErrorCode:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/BitUtil;->getBitByByte(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedLeveling7()Z
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->caliErrorCode:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/BitUtil;->getBitByByte(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedLeveling8()Z
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->caliErrorCode:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/BitUtil;->getBitByByte(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedLeveling9()Z
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->caliErrorCode:I

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/BitUtil;->getBitByByte(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTempeOverErr()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 42
    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->caliErrorCode:I

    invoke-static {v1, v0}, Lcom/fimi/kernel/utils/BitUtil;->getBitByByte(II)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckCloudCaliState{progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caliErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->caliErrorCode:I

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
    .line 31
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 32
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->progress:I

    .line 33
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->status:I

    .line 34
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->caliErrorCode:I

    .line 35
    return-void
.end method
