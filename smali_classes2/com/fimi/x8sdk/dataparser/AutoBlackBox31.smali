.class public Lcom/fimi/x8sdk/dataparser/AutoBlackBox31;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoBlackBox31.java"


# instance fields
.field private isFc:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 0
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 13
    return-void
.end method

.method public unPacketIsFc(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;Z)V
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;
    .param p2, "isFc"    # Z

    .prologue
    .line 16
    iput-boolean p2, p0, Lcom/fimi/x8sdk/dataparser/AutoBlackBox31;->isFc:Z

    .line 17
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPacketData()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/fimi/x8sdk/X8FcLogManager;->flightPlaybackLogWrite([BZ)V

    .line 19
    return-void
.end method
