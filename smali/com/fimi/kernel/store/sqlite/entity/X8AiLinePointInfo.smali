.class public Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
.super Ljava/lang/Object;
.source "X8AiLinePointInfo.java"


# instance fields
.field private autoRecord:I

.field private disconnectType:I

.field private distance:F

.field private excuteEnd:I

.field public id:Ljava/lang/Long;

.field private isCurve:I

.field private locality:Ljava/lang/String;

.field private mapType:I

.field private name:Ljava/lang/String;

.field private runByMapOrVedio:I

.field private saveFlag:I

.field private speed:I

.field private time:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->name:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;JLjava/lang/String;IIIFIIIIIILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "time"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "speed"    # I
    .param p7, "saveFlag"    # I
    .param p8, "distance"    # F
    .param p9, "isCurve"    # I
    .param p10, "mapType"    # I
    .param p11, "runByMapOrVedio"    # I
    .param p12, "disconnectType"    # I
    .param p13, "excuteEnd"    # I
    .param p14, "autoRecord"    # I
    .param p15, "locality"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v1, ""

    iput-object v1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->name:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->id:Ljava/lang/Long;

    .line 124
    iput-wide p2, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->time:J

    .line 125
    iput-object p4, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->name:Ljava/lang/String;

    .line 126
    iput p5, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->type:I

    .line 127
    iput p6, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->speed:I

    .line 128
    iput p7, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->saveFlag:I

    .line 129
    iput p8, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->distance:F

    .line 130
    iput p9, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->isCurve:I

    .line 131
    iput p10, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->mapType:I

    .line 132
    iput p11, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->runByMapOrVedio:I

    .line 133
    iput p12, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->disconnectType:I

    .line 134
    iput p13, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->excuteEnd:I

    .line 135
    move/from16 v0, p14

    iput v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->autoRecord:I

    .line 136
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->locality:Ljava/lang/String;

    .line 137
    return-void
.end method


# virtual methods
.method public getAutoRecord()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->autoRecord:I

    return v0
.end method

.method public getDisconnectType()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->disconnectType:I

    return v0
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->distance:F

    return v0
.end method

.method public getExcuteEnd()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->excuteEnd:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsCurve()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->isCurve:I

    return v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->locality:Ljava/lang/String;

    return-object v0
.end method

.method public getMapType()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->mapType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRunByMapOrVedio()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->runByMapOrVedio:I

    return v0
.end method

.method public getSaveFlag()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->saveFlag:I

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->speed:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->time:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->type:I

    return v0
.end method

.method public setAutoRecord(I)V
    .locals 0
    .param p1, "autoRecord"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->autoRecord:I

    .line 165
    return-void
.end method

.method public setDisconnectType(I)V
    .locals 0
    .param p1, "disconnectType"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->disconnectType:I

    .line 181
    return-void
.end method

.method public setDistance(F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    .line 108
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->distance:F

    .line 109
    return-void
.end method

.method public setExcuteEnd(I)V
    .locals 0
    .param p1, "excuteEnd"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->excuteEnd:I

    .line 173
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->id:Ljava/lang/Long;

    .line 61
    return-void
.end method

.method public setIsCurve(I)V
    .locals 0
    .param p1, "isCurve"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->isCurve:I

    .line 117
    return-void
.end method

.method public setLocality(Ljava/lang/String;)V
    .locals 0
    .param p1, "locality"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->locality:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setMapType(I)V
    .locals 0
    .param p1, "mapType"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->mapType:I

    .line 52
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setRunByMapOrVedio(I)V
    .locals 0
    .param p1, "runByMapOrVedio"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->runByMapOrVedio:I

    .line 44
    return-void
.end method

.method public setSaveFlag(I)V
    .locals 0
    .param p1, "saveFlag"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->saveFlag:I

    .line 101
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->speed:I

    .line 93
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->time:J

    .line 69
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->type:I

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X8AiLinePointInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->speed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", saveFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->saveFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->distance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCurve="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->isCurve:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mapType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->mapType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", runByMapOrVedio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->runByMapOrVedio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
