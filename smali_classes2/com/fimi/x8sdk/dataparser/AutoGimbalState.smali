.class public Lcom/fimi/x8sdk/dataparser/AutoGimbalState;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoGimbalState.java"


# instance fields
.field private errorCode:I

.field private pitchAngle:I

.field private rollAngle:I

.field private stateCode:I

.field private yawAnagle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->errorCode:I

    return v0
.end method

.method public getPitchAngle()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->pitchAngle:I

    return v0
.end method

.method public getRollAngle()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->rollAngle:I

    return v0
.end method

.method public getStateCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->stateCode:I

    return v0
.end method

.method public getYawAnagle()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->yawAnagle:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->errorCode:I

    .line 37
    return-void
.end method

.method public setPitchAngle(I)V
    .locals 0
    .param p1, "pitchAngle"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->pitchAngle:I

    .line 61
    return-void
.end method

.method public setRollAngle(I)V
    .locals 0
    .param p1, "rollAngle"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->rollAngle:I

    .line 53
    return-void
.end method

.method public setStateCode(I)V
    .locals 0
    .param p1, "stateCode"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->stateCode:I

    .line 45
    return-void
.end method

.method public setYawAnagle(I)V
    .locals 0
    .param p1, "yawAnagle"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->yawAnagle:I

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoGimbalState{errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stateCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->stateCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rollAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->rollAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pitchAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->pitchAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yawAnagle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->yawAnagle:I

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
    .line 20
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 21
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->errorCode:I

    .line 22
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->stateCode:I

    .line 23
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 24
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->rollAngle:I

    .line 25
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->pitchAngle:I

    .line 26
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->yawAnagle:I

    .line 29
    return-void
.end method
