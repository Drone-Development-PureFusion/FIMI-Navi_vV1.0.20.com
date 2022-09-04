.class public Lcom/fimi/x8sdk/dataparser/AckAiFollowGetEnableBack;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckAiFollowGetEnableBack.java"


# instance fields
.field private enable:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnable()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetEnableBack;->enable:I

    return v0
.end method

.method public setEnable(I)V
    .locals 0
    .param p1, "enable"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetEnableBack;->enable:I

    .line 16
    return-void
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 1
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 22
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetEnableBack;->enable:I

    .line 23
    return-void
.end method
