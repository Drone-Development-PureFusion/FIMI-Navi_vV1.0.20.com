.class public Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoFixedwingState.java"


# instance fields
.field private fixedwingErroCode:I

.field private fixedwingPhase:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getFixedwingErroCode()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;->fixedwingErroCode:I

    return v0
.end method

.method public getFixedwingphase()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;->fixedwingPhase:I

    return v0
.end method

.method public setFixedwingErroCode(I)V
    .locals 0
    .param p1, "fixedwingErroCode"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;->fixedwingErroCode:I

    .line 27
    return-void
.end method

.method public setFixedwingphase(I)V
    .locals 0
    .param p1, "fixedwingphase"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;->fixedwingPhase:I

    .line 19
    return-void
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

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;->fixedwingPhase:I

    .line 33
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;->fixedwingErroCode:I

    .line 34
    return-void
.end method
