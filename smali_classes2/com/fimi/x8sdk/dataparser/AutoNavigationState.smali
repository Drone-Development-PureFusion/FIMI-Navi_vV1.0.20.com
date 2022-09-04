.class public Lcom/fimi/x8sdk/dataparser/AutoNavigationState;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoNavigationState.java"


# instance fields
.field private apStatus:I

.field private naviTaskSta:I

.field private taskMode:I

.field private wpNUM:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getApStatus()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->apStatus:I

    return v0
.end method

.method public getNaviTaskSta()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->naviTaskSta:I

    return v0
.end method

.method public getTaskMode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->taskMode:I

    return v0
.end method

.method public getWpNUM()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->wpNUM:I

    return v0
.end method

.method public setApStatus(I)V
    .locals 0
    .param p1, "apStatus"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->apStatus:I

    .line 28
    return-void
.end method

.method public setNaviTaskSta(I)V
    .locals 0
    .param p1, "naviTaskSta"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->naviTaskSta:I

    .line 44
    return-void
.end method

.method public setTaskMode(I)V
    .locals 0
    .param p1, "taskMode"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->taskMode:I

    .line 36
    return-void
.end method

.method public setWpNUM(I)V
    .locals 0
    .param p1, "wpNUM"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->wpNUM:I

    .line 52
    return-void
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 15
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->taskMode:I

    .line 16
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->naviTaskSta:I

    .line 17
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->apStatus:I

    .line 18
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoNavigationState;->wpNUM:I

    .line 20
    return-void
.end method
