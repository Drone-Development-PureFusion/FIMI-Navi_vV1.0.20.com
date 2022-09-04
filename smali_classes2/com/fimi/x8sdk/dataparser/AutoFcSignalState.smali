.class public Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoFcSignalState.java"


# static fields
.field public static final REMOTESIGN_LOW:I = 0x1e

.field public static final REMOTESIGN_MID:I = 0x50


# instance fields
.field gpsHorizontal:I

.field gpsPosition:I

.field gpsSpeed:I

.field gpsVertical:I

.field magnetic:I

.field rfsignal:I

.field rptsRec:I

.field satelliteNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getGpsHorizontal()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->gpsHorizontal:I

    return v0
.end method

.method public getGpsPosition()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->gpsPosition:I

    return v0
.end method

.method public getGpsSpeed()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->gpsSpeed:I

    return v0
.end method

.method public getGpsVertical()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->gpsVertical:I

    return v0
.end method

.method public getMagnetic()I
    .locals 3

    .prologue
    .line 110
    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->magnetic:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float v0, v1, v2

    .line 111
    .local v0, "x":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getRfsignal()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->rfsignal:I

    return v0
.end method

.method public getRptsRec()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->rptsRec:I

    return v0
.end method

.method public getSatelliteNumber()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->satelliteNumber:I

    return v0
.end method

.method public getSatelliteState()Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->satelliteNumber:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 43
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;->LOW:Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    .line 49
    :goto_0
    return-object v0

    .line 44
    :cond_0
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->satelliteNumber:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->satelliteNumber:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 45
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;->MIDDLE:Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    goto :goto_0

    .line 46
    :cond_1
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->satelliteNumber:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_2

    .line 47
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;->STRONG:Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    goto :goto_0

    .line 49
    :cond_2
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;->STRONG:Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    goto :goto_0
.end method

.method public getX8HandleSignalState()Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->isStrong()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;->STRONG:Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    .line 138
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->isMiddle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;->MIDDLE:Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->isLow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;->LOW:Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    goto :goto_0

    .line 138
    :cond_2
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;->NOSIGNAL:Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    goto :goto_0
.end method

.method public isLow()Z
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->rptsRec:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiddle()Z
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->rptsRec:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->rptsRec:I

    const/16 v1, 0x50

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStrong()Z
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->rptsRec:I

    const/16 v1, 0x50

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGpsHorizontal(I)V
    .locals 0
    .param p1, "gpsHorizontal"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->gpsHorizontal:I

    .line 74
    return-void
.end method

.method public setGpsPosition(I)V
    .locals 0
    .param p1, "gpsPosition"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->gpsPosition:I

    .line 82
    return-void
.end method

.method public setGpsSpeed(I)V
    .locals 0
    .param p1, "gpsSpeed"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->gpsSpeed:I

    .line 90
    return-void
.end method

.method public setGpsVertical(I)V
    .locals 0
    .param p1, "gpsVertical"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->gpsVertical:I

    .line 66
    return-void
.end method

.method public setMagnetic(I)V
    .locals 0
    .param p1, "magnetic"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->magnetic:I

    .line 116
    return-void
.end method

.method public setRfsignal(I)V
    .locals 0
    .param p1, "rfsignal"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->rfsignal:I

    .line 98
    return-void
.end method

.method public setRptsRec(I)V
    .locals 0
    .param p1, "rptsRec"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->rptsRec:I

    .line 106
    return-void
.end method

.method public setSatelliteNumber(I)V
    .locals 0
    .param p1, "satelliteNumber"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->satelliteNumber:I

    .line 58
    return-void
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 1
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 31
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->satelliteNumber:I

    .line 32
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->gpsVertical:I

    .line 33
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->gpsHorizontal:I

    .line 34
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->gpsPosition:I

    .line 35
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->gpsSpeed:I

    .line 36
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->rfsignal:I

    .line 37
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->rptsRec:I

    .line 38
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->magnetic:I

    .line 39
    return-void
.end method
