.class public Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoRockerStatePlayback.java"


# instance fields
.field private rc0:S

.field private rc1:S

.field private rc2:S

.field private rc3:S

.field private rc4:S

.field private rc5:S

.field private rockerKeyMessage:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getRc0()S
    .locals 1

    .prologue
    .line 15
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc0:S

    return v0
.end method

.method public getRc1()S
    .locals 1

    .prologue
    .line 19
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc1:S

    return v0
.end method

.method public getRc2()S
    .locals 1

    .prologue
    .line 23
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc2:S

    return v0
.end method

.method public getRc3()S
    .locals 1

    .prologue
    .line 27
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc3:S

    return v0
.end method

.method public getRc4()S
    .locals 1

    .prologue
    .line 31
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc4:S

    return v0
.end method

.method public getRc5()S
    .locals 1

    .prologue
    .line 35
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc5:S

    return v0
.end method

.method public getRockerKeyMessage()S
    .locals 1

    .prologue
    .line 39
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rockerKeyMessage:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoRockerStatePlayback{rc0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc0:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rc1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc1:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rc2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc2:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rc3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc3:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rc4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc4:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rc5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc5:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rockerKeyMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rockerKeyMessage:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 1
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 46
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc0:S

    .line 47
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc1:S

    .line 48
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc2:S

    .line 49
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc3:S

    .line 50
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc4:S

    .line 51
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rc5:S

    .line 52
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRockerStatePlayback;->rockerKeyMessage:S

    .line 54
    return-void
.end method
