.class public Lcom/fimi/x8sdk/dataparser/AckTakePhoto;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckTakePhoto.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 0
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 15
    return-void
.end method