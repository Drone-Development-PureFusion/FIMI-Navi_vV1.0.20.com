.class public Lcom/fimi/x8sdk/dataparser/AckSetCloudParams;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckSetCloudParams.java"


# instance fields
.field private data0:I

.field private param1:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getData0()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckSetCloudParams;->data0:I

    return v0
.end method

.method public getParam1()D
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckSetCloudParams;->param1:D

    return-wide v0
.end method

.method public setParam1(D)V
    .locals 1
    .param p1, "param1"    # D

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckSetCloudParams;->param1:D

    .line 33
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

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckSetCloudParams;->data0:I

    .line 19
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckSetCloudParams;->param1:D

    .line 21
    return-void
.end method
