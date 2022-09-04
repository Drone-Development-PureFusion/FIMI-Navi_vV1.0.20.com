.class public Lcom/fimi/x8sdk/modulestate/GimbalState;
.super Lcom/fimi/x8sdk/modulestate/BaseState;
.source "GimbalState.java"


# instance fields
.field public errorCode:I

.field public pitchAngle:I

.field public rollAngle:I

.field public stateCode:I

.field public yawAnagle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fimi/x8sdk/modulestate/BaseState;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/GimbalState;->errorCode:I

    return v0
.end method

.method public getPitchAngle()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/GimbalState;->pitchAngle:I

    return v0
.end method

.method public getRollAngle()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/GimbalState;->rollAngle:I

    return v0
.end method

.method public getStateCode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/GimbalState;->stateCode:I

    return v0
.end method

.method public getYawAnagle()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/GimbalState;->yawAnagle:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoGimbalState(Lcom/fimi/x8sdk/dataparser/AutoGimbalState;)V
    .locals 1
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoGimbalState;

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/GimbalState;->errorCode:I

    .line 47
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->getStateCode()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/GimbalState;->stateCode:I

    .line 48
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->getRollAngle()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/GimbalState;->rollAngle:I

    .line 49
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->getPitchAngle()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/GimbalState;->pitchAngle:I

    .line 50
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoGimbalState;->getYawAnagle()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/GimbalState;->yawAnagle:I

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GimbalState{errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/modulestate/GimbalState;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stateCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/modulestate/GimbalState;->stateCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rollAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/modulestate/GimbalState;->rollAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pitchAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/modulestate/GimbalState;->pitchAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yawAnagle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/modulestate/GimbalState;->yawAnagle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
