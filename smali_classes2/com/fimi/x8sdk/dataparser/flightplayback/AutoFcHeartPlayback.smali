.class public Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoFcHeartPlayback.java"


# static fields
.field public static final VEHICLE_CTRL_TYPE_ACRO:I = 0x5

.field public static final VEHICLE_CTRL_TYPE_ASSITED:I = 0x4

.field public static final VEHICLE_CTRL_TYPE_ATTI:I = 0x1

.field public static final VEHICLE_CTRL_TYPE_GLOBAL_AUTO:I = 0x2

.field public static final VEHICLE_CTRL_TYPE_LOCAL_AUTO:I = 0x3

.field public static final VEHICLE_PHASE_AERIAL:I = 0x3

.field public static final VEHICLE_PHASE_LANDED:I = 0x5

.field public static final VEHICLE_PHASE_LANDING:I = 0x4

.field public static final VEHICLE_PHASE_NULL:I = 0x0

.field public static final VEHICLE_PHASE_PRE_FLIGHT:I = 0x1

.field public static final VEHICLE_PHASE_TAKE_OFF:I = 0x2


# instance fields
.field autoTakeOffCap:I

.field candidateCtrlType:I

.field ctrlModel:I

.field ctrlType:I

.field disarmCount:I

.field flightPhase:I

.field flightTime:I

.field powerConRate:I

.field startUpTime:I

.field systenPhase:I

.field takeOffCap:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoTakeOffCap()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->autoTakeOffCap:I

    return v0
.end method

.method public getCandidateCtrlType()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->candidateCtrlType:I

    return v0
.end method

.method public getCtrlModel()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->ctrlModel:I

    return v0
.end method

.method public getCtrlType()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->ctrlType:I

    return v0
.end method

.method public getDisarmCount()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->disarmCount:I

    return v0
.end method

.method public getFcMode()I
    .locals 2

    .prologue
    .line 61
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_ctrl_type_na:I

    .line 62
    .local v0, "temp":I
    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->ctrlType:I

    packed-switch v1, :pswitch_data_0

    .line 79
    :goto_0
    return v0

    .line 64
    :pswitch_0
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_ctrl_type_atti:I

    .line 65
    goto :goto_0

    .line 67
    :pswitch_1
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_ctrl_type_global_auto:I

    .line 68
    goto :goto_0

    .line 70
    :pswitch_2
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_ctrl_type_local_auto:I

    .line 71
    goto :goto_0

    .line 73
    :pswitch_3
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_ctrl_type_assited:I

    .line 74
    goto :goto_0

    .line 76
    :pswitch_4
    sget v0, Lcom/fimi/x8sdk/R$string;->x8_ctrl_type_acro:I

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getFlightPhase()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->flightPhase:I

    return v0
.end method

.method public getFlightTime()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->flightTime:I

    return v0
.end method

.method public getPowerConRate()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->powerConRate:I

    return v0
.end method

.method public getStartUpTime()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->startUpTime:I

    return v0
.end method

.method public getSystenPhase()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->systenPhase:I

    return v0
.end method

.method public getTakeOffCap()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->takeOffCap:I

    return v0
.end method

.method public setAutoTakeOffCap(I)V
    .locals 0
    .param p1, "autoTakeOffCap"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->autoTakeOffCap:I

    .line 188
    return-void
.end method

.method public setCandidateCtrlType(I)V
    .locals 0
    .param p1, "candidateCtrlType"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->candidateCtrlType:I

    .line 115
    return-void
.end method

.method public setCtrlModel(I)V
    .locals 0
    .param p1, "ctrlModel"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->ctrlModel:I

    .line 131
    return-void
.end method

.method public setCtrlType(I)V
    .locals 0
    .param p1, "ctrlType"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->ctrlType:I

    .line 107
    return-void
.end method

.method public setDisarmCount(I)V
    .locals 0
    .param p1, "disarmCount"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->disarmCount:I

    .line 164
    return-void
.end method

.method public setFlightPhase(I)V
    .locals 0
    .param p1, "flightPhase"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->flightPhase:I

    .line 123
    return-void
.end method

.method public setFlightTime(I)V
    .locals 0
    .param p1, "flightTime"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->flightTime:I

    .line 89
    return-void
.end method

.method public setPowerConRate(I)V
    .locals 0
    .param p1, "powerConRate"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->powerConRate:I

    .line 172
    return-void
.end method

.method public setStartUpTime(I)V
    .locals 0
    .param p1, "startUpTime"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->startUpTime:I

    .line 97
    return-void
.end method

.method public setSystenPhase(I)V
    .locals 0
    .param p1, "systenPhase"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->systenPhase:I

    .line 139
    return-void
.end method

.method public setTakeOffCap(I)V
    .locals 0
    .param p1, "takeOffCap"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->takeOffCap:I

    .line 180
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoFcHeartPlayback{flightTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->flightTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startUpTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->startUpTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ctrlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->ctrlType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", candidateCtrlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->candidateCtrlType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flightPhase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->flightPhase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ctrlModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->ctrlModel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", systenPhase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->systenPhase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disarmCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->disarmCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", powerConRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->powerConRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", takeOffCap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->takeOffCap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoTakeOffCap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->autoTakeOffCap:I

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
    .line 44
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 45
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->flightTime:I

    .line 46
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->startUpTime:I

    .line 47
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->ctrlType:I

    .line 48
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->candidateCtrlType:I

    .line 49
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->flightPhase:I

    .line 50
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->ctrlModel:I

    .line 51
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->systenPhase:I

    .line 52
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->disarmCount:I

    .line 53
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->powerConRate:I

    .line 54
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->takeOffCap:I

    .line 55
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->autoTakeOffCap:I

    .line 57
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoFcHeartPlayback;->startUpTime:I

    invoke-static {v0}, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->setStartUpTime(I)V

    .line 58
    return-void
.end method
