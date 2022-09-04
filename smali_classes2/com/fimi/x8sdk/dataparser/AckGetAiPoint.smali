.class public Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckGetAiPoint.java"


# instance fields
.field private altitude:I

.field private distance:F

.field private fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

.field private isSelect:Z

.field private latitude:D

.field private longitude:D

.field private speed:I

.field private yaw:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getAltitude()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->altitude:I

    return v0
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->distance:F

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->speed:I

    return v0
.end method

.method public getYaw()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->yaw:I

    return v0
.end method

.method public getfLatLng()Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->isSelect:Z

    return v0
.end method

.method public setAltitude(I)V
    .locals 0
    .param p1, "altitude"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->altitude:I

    .line 81
    return-void
.end method

.method public setDistance(F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    .line 72
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->distance:F

    .line 73
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "select"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->isSelect:Z

    .line 65
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->speed:I

    .line 36
    return-void
.end method

.method public setYaw(I)V
    .locals 0
    .param p1, "yaw"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->yaw:I

    .line 28
    return-void
.end method

.method public setfLatLng(Lcom/fimi/x8sdk/entity/FLatLng;)V
    .locals 0
    .param p1, "fLatLng"    # Lcom/fimi/x8sdk/entity/FLatLng;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 44
    return-void
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 5
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    const v4, 0xffff

    .line 50
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 51
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->longitude:D

    .line 52
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->latitude:D

    .line 53
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->latitude:D

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->fLatLng:Lcom/fimi/x8sdk/entity/FLatLng;

    .line 54
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    and-int/2addr v0, v4

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->altitude:I

    .line 55
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    and-int/2addr v0, v4

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->yaw:I

    .line 56
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiPoint;->speed:I

    .line 57
    return-void
.end method
