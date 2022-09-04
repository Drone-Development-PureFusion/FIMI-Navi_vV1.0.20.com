.class public Lcom/fimi/x8sdk/dataparser/AutoFcSportState;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoFcSportState.java"


# instance fields
.field downVelocity:I

.field fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

.field groupSpeed:I

.field headingAngle:I

.field height:F

.field homeDistance:F

.field latitude:D

.field longitude:D

.field pitchAngle:I

.field reserve1:I

.field reserve2:I

.field rollAngle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    .line 29
    new-instance v0, Lcom/fimi/x8sdk/entity/FLatLng;

    invoke-direct {v0}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    return-void
.end method


# virtual methods
.method public getDeviceAngle()F
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->headingAngle:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getDeviceLatitude()D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->latitude:D

    return-wide v0
.end method

.method public getDeviceLongitude()D
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->longitude:D

    return-wide v0
.end method

.method public getDownVelocity()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->downVelocity:I

    return v0
.end method

.method public getGroupSpeed()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->groupSpeed:I

    return v0
.end method

.method public getHeadingAngle()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->headingAngle:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->height:F

    return v0
.end method

.method public getHomeDistance()F
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->homeDistance:F

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    return-wide v0
.end method

.method public getPitchAngle()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->pitchAngle:I

    return v0
.end method

.method public getReserve1()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->reserve1:I

    return v0
.end method

.method public getReserve2()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->reserve2:I

    return v0
.end method

.method public getRollAngle()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->rollAngle:I

    return v0
.end method

.method public setDownVelocity(I)V
    .locals 0
    .param p1, "downVelocity"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->downVelocity:I

    .line 98
    return-void
.end method

.method public setGroupSpeed(I)V
    .locals 0
    .param p1, "groupSpeed"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->groupSpeed:I

    .line 90
    return-void
.end method

.method public setHeadingAngle(I)V
    .locals 0
    .param p1, "headingAngle"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->headingAngle:I

    .line 125
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 81
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->height:F

    .line 82
    return-void
.end method

.method public setHomeDistance(F)V
    .locals 0
    .param p1, "homeDistance"    # F

    .prologue
    .line 148
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->homeDistance:F

    .line 149
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->latitude:D

    .line 74
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->longitude:D

    .line 58
    return-void
.end method

.method public setPitchAngle(I)V
    .locals 0
    .param p1, "pitchAngle"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->pitchAngle:I

    .line 114
    return-void
.end method

.method public setReserve1(I)V
    .locals 0
    .param p1, "reserve1"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->reserve1:I

    .line 133
    return-void
.end method

.method public setReserve2(I)V
    .locals 0
    .param p1, "reserve2"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->reserve2:I

    .line 141
    return-void
.end method

.method public setRollAngle(I)V
    .locals 0
    .param p1, "rollAngle"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->rollAngle:I

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoFcSportState{longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->groupSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->downVelocity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rollAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->rollAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pitchAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->pitchAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headingAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->headingAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reserve1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->reserve1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reserve2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->reserve2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", homeDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->homeDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fLatLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 4
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 34
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->longitude:D

    .line 35
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->latitude:D

    .line 37
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->latitude:D

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 39
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->height:F

    .line 40
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->groupSpeed:I

    .line 41
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->downVelocity:I

    .line 42
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->rollAngle:I

    .line 43
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->pitchAngle:I

    .line 44
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->headingAngle:I

    .line 45
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->reserve1:I

    .line 46
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->reserve2:I

    .line 48
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->homeDistance:F

    .line 50
    return-void
.end method
