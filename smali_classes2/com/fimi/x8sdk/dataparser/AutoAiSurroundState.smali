.class public Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoAiSurroundState.java"


# instance fields
.field private altitude:I

.field private radius:I

.field private speed:I

.field private states:I

.field private yawMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getAltitude()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->altitude:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->radius:I

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->speed:I

    return v0
.end method

.method public getStates()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->states:I

    return v0
.end method

.method public getYawMode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->yawMode:I

    return v0
.end method

.method public setAltitude(I)V
    .locals 0
    .param p1, "altitude"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->altitude:I

    .line 38
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->radius:I

    .line 22
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->speed:I

    .line 30
    return-void
.end method

.method public setStates(I)V
    .locals 0
    .param p1, "states"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->states:I

    .line 54
    return-void
.end method

.method public setYawMode(I)V
    .locals 0
    .param p1, "yawMode"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->yawMode:I

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->speed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->altitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yawMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->yawMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", states="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->states:I

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
    .line 58
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 59
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->radius:I

    .line 60
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->speed:I

    .line 61
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->altitude:I

    .line 62
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->yawMode:I

    .line 63
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoAiSurroundState;->states:I

    .line 64
    return-void
.end method
