.class public Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckGetAiSurroundPoint.java"


# instance fields
.field private altitude:F

.field private altitudeTakeoff:F

.field private fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

.field private fLatLngTakeoff:Lcom/fimi/x8sdk/entity/FLatLng;

.field private latitude:D

.field private latitudeTakeoff:D

.field private longitude:D

.field private longitudeTakeoff:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceLatitude()D
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->latitude:D

    return-wide v0
.end method

.method public getDeviceLatitudeTakeoff()D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->latitudeTakeoff:D

    return-wide v0
.end method

.method public getDeviceLongitude()D
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->longitude:D

    return-wide v0
.end method

.method public getDeviceLongitudeTakeoff()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->longitudeTakeoff:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    return-wide v0
.end method

.method public getLatitudeTakeoff()D
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->fLatLngTakeoff:Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    return-wide v0
.end method

.method public getLongitudeTakeoff()D
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->fLatLngTakeoff:Lcom/fimi/x8sdk/entity/FLatLng;

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckGetAiSurroundPoint{longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->altitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fLatLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitudeTakeoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->longitudeTakeoff:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitudeTakeoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->latitudeTakeoff:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", altitudeTakeoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->altitudeTakeoff:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fLatLngTakeoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->fLatLngTakeoff:Lcom/fimi/x8sdk/entity/FLatLng;

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
    .locals 5
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    const v4, 0xffff

    .line 27
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 28
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->longitude:D

    .line 29
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->latitude:D

    .line 30
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->latitude:D

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 31
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    and-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->altitude:F

    .line 32
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 33
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 36
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->longitudeTakeoff:D

    .line 37
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->latitudeTakeoff:D

    .line 38
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->latitudeTakeoff:D

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->longitudeTakeoff:D

    invoke-static {v0, v1, v2, v3}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->fLatLngTakeoff:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 39
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    and-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiSurroundPoint;->altitudeTakeoff:F

    .line 40
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 41
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 44
    return-void
.end method
