.class public Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckAiFollowGetSpeed.java"


# instance fields
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
.method public getSpeed()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;->speed:I

    return v0
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;->speed:I

    .line 27
    return-void
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 1
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 18
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;->speed:I

    .line 19
    return-void
.end method
