.class public Lcom/fimi/x8sdk/dataparser/AckCloudParams;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckCloudParams.java"


# instance fields
.field private data0:I

.field private param1:D

.field private param2:D

.field private param3:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getParam1()D
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParams;->param1:D

    return-wide v0
.end method

.method public getParam2()D
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParams;->param2:D

    return-wide v0
.end method

.method public getParam3()D
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParams;->param3:D

    return-wide v0
.end method

.method public setParam1(D)V
    .locals 1
    .param p1, "param1"    # D

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParams;->param1:D

    .line 32
    return-void
.end method

.method public setParam2(D)V
    .locals 1
    .param p1, "param2"    # D

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParams;->param2:D

    .line 40
    return-void
.end method

.method public setParam3(D)V
    .locals 1
    .param p1, "param3"    # D

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParams;->param3:D

    .line 48
    return-void
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 20
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParams;->data0:I

    .line 21
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParams;->param1:D

    .line 22
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParams;->param2:D

    .line 23
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckCloudParams;->param3:D

    .line 24
    return-void
.end method
