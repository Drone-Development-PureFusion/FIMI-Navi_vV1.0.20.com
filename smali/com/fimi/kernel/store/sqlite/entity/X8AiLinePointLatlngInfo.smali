.class public Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
.super Ljava/lang/Object;
.source "X8AiLinePointLatlngInfo.java"


# instance fields
.field private altitude:I

.field private altitudePOI:I

.field private gimbalMode:I

.field private gimbalPitch:I

.field public id:Ljava/lang/Long;

.field private latitude:D

.field private latitudePOI:D

.field public lineId:J

.field private longitude:D

.field private longitudePOI:D

.field private missionFinishAction:I

.field private number:I

.field private pointActionCmd:I

.field private rCLostAction:I

.field private roration:I

.field private speed:I

.field private totalnumber:I

.field private trajectoryMode:I

.field private yaw:F

.field private yawMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;IIDDIFIIIIIIIDDIJII)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "number"    # I
    .param p3, "totalnumber"    # I
    .param p4, "longitude"    # D
    .param p6, "latitude"    # D
    .param p8, "altitude"    # I
    .param p9, "yaw"    # F
    .param p10, "gimbalPitch"    # I
    .param p11, "speed"    # I
    .param p12, "yawMode"    # I
    .param p13, "gimbalMode"    # I
    .param p14, "trajectoryMode"    # I
    .param p15, "missionFinishAction"    # I
    .param p16, "rCLostAction"    # I
    .param p17, "longitudePOI"    # D
    .param p19, "latitudePOI"    # D
    .param p21, "altitudePOI"    # I
    .param p22, "lineId"    # J
    .param p24, "pointActionCmd"    # I
    .param p25, "roration"    # I

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->id:Ljava/lang/Long;

    .line 215
    iput p2, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->number:I

    .line 216
    iput p3, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->totalnumber:I

    .line 217
    iput-wide p4, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->longitude:D

    .line 218
    iput-wide p6, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->latitude:D

    .line 219
    iput p8, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->altitude:I

    .line 220
    iput p9, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->yaw:F

    .line 221
    iput p10, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->gimbalPitch:I

    .line 222
    iput p11, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->speed:I

    .line 223
    iput p12, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->yawMode:I

    .line 224
    iput p13, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->gimbalMode:I

    .line 225
    move/from16 v0, p14

    iput v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->trajectoryMode:I

    .line 226
    move/from16 v0, p15

    iput v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->missionFinishAction:I

    .line 227
    move/from16 v0, p16

    iput v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->rCLostAction:I

    .line 228
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->longitudePOI:D

    .line 229
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->latitudePOI:D

    .line 230
    move/from16 v0, p21

    iput v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->altitudePOI:I

    .line 231
    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->lineId:J

    .line 232
    move/from16 v0, p24

    iput v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->pointActionCmd:I

    .line 233
    move/from16 v0, p25

    iput v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->roration:I

    .line 234
    return-void
.end method


# virtual methods
.method public getAltitude()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->altitude:I

    return v0
.end method

.method public getAltitudePOI()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->altitudePOI:I

    return v0
.end method

.method public getGimbalMode()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->gimbalMode:I

    return v0
.end method

.method public getGimbalPitch()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->gimbalPitch:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->latitude:D

    return-wide v0
.end method

.method public getLatitudePOI()D
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->latitudePOI:D

    return-wide v0
.end method

.method public getLineId()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->lineId:J

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->longitude:D

    return-wide v0
.end method

.method public getLongitudePOI()D
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->longitudePOI:D

    return-wide v0
.end method

.method public getMissionFinishAction()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->missionFinishAction:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->number:I

    return v0
.end method

.method public getPointActionCmd()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->pointActionCmd:I

    return v0
.end method

.method public getRCLostAction()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->rCLostAction:I

    return v0
.end method

.method public getRoration()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->roration:I

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->speed:I

    return v0
.end method

.method public getTotalnumber()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->totalnumber:I

    return v0
.end method

.method public getTrajectoryMode()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->trajectoryMode:I

    return v0
.end method

.method public getYaw()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->yaw:F

    return v0
.end method

.method public getYawMode()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->yawMode:I

    return v0
.end method

.method public getrCLostAction()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->rCLostAction:I

    return v0
.end method

.method public setAltitude(I)V
    .locals 0
    .param p1, "altitude"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->altitude:I

    .line 90
    return-void
.end method

.method public setAltitudePOI(I)V
    .locals 0
    .param p1, "altitudePOI"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->altitudePOI:I

    .line 178
    return-void
.end method

.method public setGimbalMode(I)V
    .locals 0
    .param p1, "gimbalMode"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->gimbalMode:I

    .line 130
    return-void
.end method

.method public setGimbalPitch(I)V
    .locals 0
    .param p1, "gimbalPitch"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->gimbalPitch:I

    .line 106
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->id:Ljava/lang/Long;

    .line 50
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->latitude:D

    .line 82
    return-void
.end method

.method public setLatitudePOI(D)V
    .locals 1
    .param p1, "latitudePOI"    # D

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->latitudePOI:D

    .line 170
    return-void
.end method

.method public setLineId(J)V
    .locals 1
    .param p1, "lineId"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->lineId:J

    .line 41
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->longitude:D

    .line 74
    return-void
.end method

.method public setLongitudePOI(D)V
    .locals 1
    .param p1, "longitudePOI"    # D

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->longitudePOI:D

    .line 162
    return-void
.end method

.method public setMissionFinishAction(I)V
    .locals 0
    .param p1, "missionFinishAction"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->missionFinishAction:I

    .line 146
    return-void
.end method

.method public setNumber(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->number:I

    .line 58
    return-void
.end method

.method public setPointActionCmd(I)V
    .locals 0
    .param p1, "pointActionCmd"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->pointActionCmd:I

    .line 202
    return-void
.end method

.method public setRCLostAction(I)V
    .locals 0
    .param p1, "rCLostAction"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->rCLostAction:I

    .line 186
    return-void
.end method

.method public setRoration(I)V
    .locals 0
    .param p1, "roration"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->roration:I

    .line 194
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->speed:I

    .line 114
    return-void
.end method

.method public setTotalnumber(I)V
    .locals 0
    .param p1, "totalnumber"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->totalnumber:I

    .line 66
    return-void
.end method

.method public setTrajectoryMode(I)V
    .locals 0
    .param p1, "trajectoryMode"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->trajectoryMode:I

    .line 138
    return-void
.end method

.method public setYaw(F)V
    .locals 0
    .param p1, "yaw"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->yaw:F

    .line 98
    return-void
.end method

.method public setYawMode(I)V
    .locals 0
    .param p1, "yawMode"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->yawMode:I

    .line 122
    return-void
.end method

.method public setrCLostAction(I)V
    .locals 0
    .param p1, "rCLostAction"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->rCLostAction:I

    .line 154
    return-void
.end method
