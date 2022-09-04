.class public Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckCloudParamsNew.java"


# instance fields
.field private param1:D

.field private param2:D

.field private param3:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getParam1()D
    .locals 4

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;->param1:D

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getParam2()D
    .locals 4

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;->param2:D

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getParam3()D
    .locals 4

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;->param3:D

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public setParam1(D)V
    .locals 1
    .param p1, "param1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;->param1:D

    .line 29
    return-void
.end method

.method public setParam2(D)V
    .locals 1
    .param p1, "param2"    # D

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;->param2:D

    .line 37
    return-void
.end method

.method public setParam3(D)V
    .locals 1
    .param p1, "param3"    # D

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;->param3:D

    .line 45
    return-void
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 18
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;->param1:D

    .line 19
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;->param2:D

    .line 20
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;->param3:D

    .line 21
    return-void
.end method
