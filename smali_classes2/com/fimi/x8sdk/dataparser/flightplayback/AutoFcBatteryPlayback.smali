.class public Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoFcBatteryPlayback.java"


# instance fields
.field private cc:I

.field private cell1Voltage:I

.field private cell2Voltage:I

.field private cell3Voltage:I

.field private cell4Voltage:I

.field private currentCapacity:I

.field private currents:I

.field private landingCapacity:I

.field private rcNotUpdateCnt:I

.field private remainPercentage:I

.field private remainingTime:I

.field private reserve:I

.field private rhtCapacity:I

.field private temperature:I

.field private totalCapacity:I

.field private uvc:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getCc()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cc:I

    return v0
.end method

.method public getCell1Voltage()D
    .locals 4

    .prologue
    .line 163
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell1Voltage:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getCell2Voltage()D
    .locals 4

    .prologue
    .line 166
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell2Voltage:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getCell3Voltage()D
    .locals 4

    .prologue
    .line 169
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell3Voltage:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getCell4Voltage()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell4Voltage:I

    return v0
.end method

.method public getCurrentCapacity()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->currentCapacity:I

    return v0
.end method

.method public getCurrents()F
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->currents:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getDisChargeCnt()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cc:I

    return v0
.end method

.method public getLandingCapacity()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->landingCapacity:I

    return v0
.end method

.method public getRcNotUpdateCnt()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->rcNotUpdateCnt:I

    return v0
.end method

.method public getRemainPercentage()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->remainPercentage:I

    return v0
.end method

.method public getRemainingTime()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->remainingTime:I

    return v0
.end method

.method public getRhtCapacity()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->rhtCapacity:I

    return v0
.end method

.method public getTemperature()F
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->temperature:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getTotalCapacity()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->totalCapacity:I

    return v0
.end method

.method public getUvc()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->uvc:I

    return v0
.end method

.method public getVoltage()Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 178
    iget v8, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell1Voltage:I

    int-to-double v8, v8

    div-double/2addr v8, v12

    add-double v0, v8, v10

    .line 179
    .local v0, "cell1":D
    iget v8, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell2Voltage:I

    int-to-double v8, v8

    div-double/2addr v8, v12

    add-double v2, v8, v10

    .line 180
    .local v2, "cell2":D
    iget v8, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell3Voltage:I

    int-to-double v8, v8

    div-double/2addr v8, v12

    add-double v4, v8, v10

    .line 181
    .local v4, "cell3":D
    add-double v8, v0, v2

    add-double v6, v8, v4

    .line 182
    .local v6, "tmp":D
    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public setCell1Voltage(I)V
    .locals 0
    .param p1, "cell1Voltage"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell1Voltage:I

    .line 83
    return-void
.end method

.method public setCell2Voltage(I)V
    .locals 0
    .param p1, "cell2Voltage"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell2Voltage:I

    .line 88
    return-void
.end method

.method public setCell3Voltage(I)V
    .locals 0
    .param p1, "cell3Voltage"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell3Voltage:I

    .line 93
    return-void
.end method

.method public setCell4Voltage(I)V
    .locals 0
    .param p1, "cell4Voltage"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell4Voltage:I

    .line 101
    return-void
.end method

.method public setCurrentCapacity(I)V
    .locals 0
    .param p1, "currentCapacity"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->currentCapacity:I

    .line 110
    return-void
.end method

.method public setCurrents(I)V
    .locals 0
    .param p1, "currents"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->currents:I

    .line 118
    return-void
.end method

.method public setLandingCapacity(I)V
    .locals 0
    .param p1, "landingCapacity"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->landingCapacity:I

    .line 40
    return-void
.end method

.method public setRcNotUpdateCnt(I)V
    .locals 0
    .param p1, "rcNotUpdateCnt"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->rcNotUpdateCnt:I

    .line 149
    return-void
.end method

.method public setRemainPercentage(I)V
    .locals 0
    .param p1, "remainPercentage"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->remainPercentage:I

    .line 159
    return-void
.end method

.method public setRemainingTime(I)V
    .locals 0
    .param p1, "remainingTime"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->remainingTime:I

    .line 133
    return-void
.end method

.method public setRhtCapacity(I)V
    .locals 0
    .param p1, "rhtCapacity"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->rhtCapacity:I

    .line 196
    return-void
.end method

.method public setTemperature(I)V
    .locals 0
    .param p1, "temperature"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->temperature:I

    .line 125
    return-void
.end method

.method public setTotalCapacity(I)V
    .locals 0
    .param p1, "totalCapacity"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->totalCapacity:I

    .line 78
    return-void
.end method

.method public setUvc(I)V
    .locals 0
    .param p1, "uvc"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->uvc:I

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoFcBatteryPlayback{cell1Voltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell1Voltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cell2Voltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell2Voltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cell3Voltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell3Voltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cell4Voltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell4Voltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->currentCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->totalCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->currents:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->temperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remainingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->remainingTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remainPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->remainPercentage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uvc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->uvc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rcNotUpdateCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->rcNotUpdateCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cc:I

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
    .line 44
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 45
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    .line 46
    .local v0, "payLoad4":Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell1Voltage:I

    .line 47
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell2Voltage:I

    .line 48
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell3Voltage:I

    .line 49
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cell4Voltage:I

    .line 50
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->currentCapacity:I

    .line 51
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->totalCapacity:I

    .line 52
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->currents:I

    .line 53
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->temperature:I

    .line 54
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->remainingTime:I

    .line 55
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->remainPercentage:I

    .line 56
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->uvc:I

    .line 57
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->rcNotUpdateCnt:I

    .line 59
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->reserve:I

    .line 60
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->rhtCapacity:I

    .line 61
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->landingCapacity:I

    .line 62
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->cc:I

    .line 63
    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->currents:I

    xor-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcBatteryPlayback;->currents:I

    .line 70
    return-void
.end method
