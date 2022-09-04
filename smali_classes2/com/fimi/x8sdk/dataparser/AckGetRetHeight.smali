.class public Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckGetRetHeight.java"


# instance fields
.field height:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;->height:F

    return v0
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;->height:F

    .line 26
    return-void
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 1
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 16
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;->height:F

    .line 17
    return-void
.end method
