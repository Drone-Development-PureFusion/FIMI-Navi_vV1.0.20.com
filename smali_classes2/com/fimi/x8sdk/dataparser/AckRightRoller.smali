.class public Lcom/fimi/x8sdk/dataparser/AckRightRoller;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckRightRoller.java"


# instance fields
.field private moveDireciton:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getMoveDireciton()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckRightRoller;->moveDireciton:I

    return v0
.end method

.method public isMoveDown()Z
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckRightRoller;->moveDireciton:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMoveUp()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 27
    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckRightRoller;->moveDireciton:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMoveDireciton(I)V
    .locals 0
    .param p1, "moveDireciton"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckRightRoller;->moveDireciton:I

    .line 24
    return-void
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 1
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 15
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckRightRoller;->moveDireciton:I

    .line 16
    return-void
.end method
