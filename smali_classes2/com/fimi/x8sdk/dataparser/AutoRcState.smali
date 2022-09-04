.class public Lcom/fimi/x8sdk/dataparser/AutoRcState;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoRcState.java"


# instance fields
.field private erroCode:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getErroCode()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoRcState;->erroCode:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoRcState;->state:I

    return v0
.end method

.method public setErroCode(I)V
    .locals 0
    .param p1, "erroCode"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoRcState;->erroCode:I

    .line 40
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoRcState;->state:I

    .line 32
    return-void
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 1
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 20
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoRcState;->state:I

    .line 21
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoRcState;->erroCode:I

    .line 22
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoRcState;->state:I

    invoke-static {v0}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setRcState(I)V

    .line 23
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoRcState;->erroCode:I

    invoke-static {v0}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setRcErrorState(I)V

    .line 24
    return-void
.end method
