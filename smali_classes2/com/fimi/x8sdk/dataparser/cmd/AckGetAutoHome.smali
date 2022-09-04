.class public Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckGetAutoHome.java"


# instance fields
.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;->state:I

    return v0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;->state:I

    .line 17
    return-void
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 1
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 23
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;->state:I

    .line 25
    return-void
.end method
