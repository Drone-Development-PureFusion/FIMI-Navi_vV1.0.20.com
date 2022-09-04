.class public Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckGetAiLinePoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fimi/x8sdk/dataparser/X8BaseMessage;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;",
        ">;"
    }
.end annotation


# instance fields
.field private altitude:I

.field private altitudePOI:D

.field private angle:F

.field private fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

.field private gimbalMode:B

.field private gimbalPitch:I

.field private latitude:D

.field private latitudePOI:D

.field private longitude:D

.field private longitudePOI:D

.field private missionFinishAction:B

.field private number:I

.field private rCLostAction:B

.field private roration:I

.field private speed:I

.field private totalnumber:I

.field private trajectoryMode:B

.field private yaw:I

.field private yawMode:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;)I
    .locals 2
    .param p1, "o"    # Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getNumber()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    check-cast p1, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;

    invoke-virtual {p0, p1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->compareTo(Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;)I

    move-result v0

    return v0
.end method

.method public getAltitude()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->altitude:I

    return v0
.end method

.method public getAltitudePOI()D
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->altitudePOI:D

    return-wide v0
.end method

.method public getAngle()F
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->yaw:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->angle:F

    return v0
.end method

.method public getGimbalMode()B
    .locals 1

    .prologue
    .line 121
    iget-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->gimbalMode:B

    return v0
.end method

.method public getGimbalPitch()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->gimbalPitch:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->latitude:D

    return-wide v0
.end method

.method public getLatitudePOI()D
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->latitudePOI:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->longitude:D

    return-wide v0
.end method

.method public getLongitudePOI()D
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->longitudePOI:D

    return-wide v0
.end method

.method public getMissionFinishAction()B
    .locals 1

    .prologue
    .line 137
    iget-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->missionFinishAction:B

    return v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->number:I

    return v0
.end method

.method public getRoration()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->roration:I

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->speed:I

    return v0
.end method

.method public getTotalnumber()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->totalnumber:I

    return v0
.end method

.method public getTrajectoryMode()B
    .locals 1

    .prologue
    .line 129
    iget-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->trajectoryMode:B

    return v0
.end method

.method public getYaw()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->yaw:I

    return v0
.end method

.method public getYawMode()B
    .locals 1

    .prologue
    .line 113
    iget-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->yawMode:B

    return v0
.end method

.method public getfLatLng()Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    return-object v0
.end method

.method public getrCLostAction()B
    .locals 1

    .prologue
    .line 145
    iget-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->rCLostAction:B

    return v0
.end method

.method public hasInterrestPoint()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 258
    const/4 v0, 0x1

    .line 259
    .local v0, "ret":Z
    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->longitudePOI:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->latitudePOI:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->altitudePOI:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 262
    :cond_0
    return v0
.end method

.method public setAltitude(I)V
    .locals 0
    .param p1, "altitude"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->altitude:I

    .line 86
    return-void
.end method

.method public setAltitudePOI(D)V
    .locals 1
    .param p1, "altitudePOI"    # D

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->altitudePOI:D

    .line 174
    return-void
.end method

.method public setGimbalMode(B)V
    .locals 0
    .param p1, "gimbalMode"    # B

    .prologue
    .line 125
    iput-byte p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->gimbalMode:B

    .line 126
    return-void
.end method

.method public setGimbalPitch(I)V
    .locals 0
    .param p1, "gimbalPitch"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->gimbalPitch:I

    .line 102
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->latitude:D

    .line 70
    return-void
.end method

.method public setLatitudePOI(D)V
    .locals 1
    .param p1, "latitudePOI"    # D

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->latitudePOI:D

    .line 166
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->longitude:D

    .line 62
    return-void
.end method

.method public setLongitudePOI(D)V
    .locals 1
    .param p1, "longitudePOI"    # D

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->longitudePOI:D

    .line 158
    return-void
.end method

.method public setMissionFinishAction(B)V
    .locals 0
    .param p1, "missionFinishAction"    # B

    .prologue
    .line 141
    iput-byte p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->missionFinishAction:B

    .line 142
    return-void
.end method

.method public setNumber(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->number:I

    .line 46
    return-void
.end method

.method public setRoration(I)V
    .locals 0
    .param p1, "roration"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->roration:I

    .line 182
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->speed:I

    .line 110
    return-void
.end method

.method public setTotalnumber(I)V
    .locals 0
    .param p1, "totalnumber"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->totalnumber:I

    .line 54
    return-void
.end method

.method public setTrajectoryMode(B)V
    .locals 0
    .param p1, "trajectoryMode"    # B

    .prologue
    .line 133
    iput-byte p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->trajectoryMode:B

    .line 134
    return-void
.end method

.method public setYaw(I)V
    .locals 0
    .param p1, "yaw"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->yaw:I

    .line 94
    return-void
.end method

.method public setYawMode(B)V
    .locals 0
    .param p1, "yawMode"    # B

    .prologue
    .line 117
    iput-byte p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->yawMode:B

    .line 118
    return-void
.end method

.method public setfLatLng(Lcom/fimi/x8sdk/entity/FLatLng;)V
    .locals 0
    .param p1, "fLatLng"    # Lcom/fimi/x8sdk/entity/FLatLng;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 78
    return-void
.end method

.method public setrCLostAction(B)V
    .locals 0
    .param p1, "rCLostAction"    # B

    .prologue
    .line 149
    iput-byte p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->rCLostAction:B

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckGetAiLinePoint{number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalnumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->totalnumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fLatLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->altitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->yaw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gimbalPitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->gimbalPitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->speed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yawMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->yawMode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gimbalMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->gimbalMode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trajectoryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->trajectoryMode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", missionFinishAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->missionFinishAction:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rCLostAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->rCLostAction:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitudePOI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->longitudePOI:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitudePOI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->latitudePOI:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", altitudePOI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->altitudePOI:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", angle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->angle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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
    .line 186
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 187
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->number:I

    .line 188
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->totalnumber:I

    .line 189
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 190
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 191
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->longitude:D

    .line 192
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->latitude:D

    .line 193
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->latitude:D

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 194
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->altitude:I

    .line 195
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->altitude:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->altitude:I

    .line 196
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->yaw:I

    .line 198
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->gimbalPitch:I

    .line 199
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->speed:I

    .line 200
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 201
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 202
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 203
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 204
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->yawMode:B

    .line 206
    iget-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->yawMode:B

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->roration:I

    .line 207
    iget-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->yawMode:B

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->yawMode:B

    .line 209
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->gimbalMode:B

    .line 210
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->trajectoryMode:B

    .line 211
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->missionFinishAction:B

    .line 212
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->rCLostAction:B

    .line 213
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->longitudePOI:D

    .line 214
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->latitudePOI:D

    .line 215
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->altitudePOI:D

    .line 220
    return-void
.end method
