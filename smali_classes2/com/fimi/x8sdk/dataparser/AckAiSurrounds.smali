.class public Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckAiSurrounds.java"


# instance fields
.field private orientation:I

.field private speed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;->orientation:I

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;->speed:I

    return v0
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;->orientation:I

    .line 30
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;->speed:I

    .line 22
    return-void
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 35
    invoke-virtual {p0}, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;->getMsgId()I

    move-result v0

    .line 36
    .local v0, "msgId":I
    const/16 v1, 0x47

    if-ne v0, v1, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;->speed:I

    .line 38
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 39
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const/16 v1, 0x49

    if-ne v0, v1, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;->orientation:I

    .line 42
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 43
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 44
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    goto :goto_0
.end method
