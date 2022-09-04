.class public Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoHomeInfo.java"


# instance fields
.field height:F

.field homeLatitude:D

.field homeLongitude:D

.field homePointAccuracy:I

.field homePointStatus:I

.field homePointType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getFLatLng()Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 4

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homeLatitude:D

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homeLongitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->height:F

    return v0
.end method

.method public getHomeLatitude()D
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homeLatitude:D

    return-wide v0
.end method

.method public getHomeLongitude()D
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homeLongitude:D

    return-wide v0
.end method

.method public getHomePointAccuracy()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homePointAccuracy:I

    return v0
.end method

.method public getHomePointStatus()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homePointStatus:I

    return v0
.end method

.method public getHomePointType()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homePointType:I

    return v0
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 58
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->height:F

    .line 59
    return-void
.end method

.method public setHomeLatitude(D)V
    .locals 1
    .param p1, "homeLatitude"    # D

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homeLatitude:D

    .line 51
    return-void
.end method

.method public setHomeLongitude(D)V
    .locals 1
    .param p1, "homeLongitude"    # D

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homeLongitude:D

    .line 43
    return-void
.end method

.method public setHomePointAccuracy(I)V
    .locals 0
    .param p1, "homePointAccuracy"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homePointAccuracy:I

    .line 67
    return-void
.end method

.method public setHomePointStatus(I)V
    .locals 0
    .param p1, "homePointStatus"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homePointStatus:I

    .line 83
    return-void
.end method

.method public setHomePointType(I)V
    .locals 0
    .param p1, "homePointType"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homePointType:I

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoHomeInfo{homeLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homeLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", homeLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homeLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", homePointAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homePointAccuracy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", homePointType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homePointType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", homePointStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homePointStatus:I

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
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 24
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homeLongitude:D

    .line 25
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homeLatitude:D

    .line 26
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->height:F

    .line 27
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homePointAccuracy:I

    .line 28
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homePointType:I

    .line 29
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->homePointStatus:I

    .line 31
    return-void
.end method
