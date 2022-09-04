.class public Lcom/fimi/x8sdk/dataparser/AutoBlackBox30;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoBlackBox30.java"


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
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 13
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/fimi/x8sdk/dataparser/AutoBlackBox30;->getPayloadData(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/X8FcLogManager;->fcLogWrite([B)V

    .line 14
    return-void
.end method
