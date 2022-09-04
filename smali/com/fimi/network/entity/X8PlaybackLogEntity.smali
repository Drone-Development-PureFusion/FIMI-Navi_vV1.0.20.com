.class public Lcom/fimi/network/entity/X8PlaybackLogEntity;
.super Ljava/lang/Object;
.source "X8PlaybackLogEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private createTime:J

.field private fimiId:Ljava/lang/String;

.field private flieName:Ljava/lang/String;

.field private flightTime:J

.field private flyDistance:I

.field private flyDuration:I

.field private id:I

.field private logFileSize:I

.field private logFileUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->createTime:J

    return-wide v0
.end method

.method public getFimiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->fimiId:Ljava/lang/String;

    return-object v0
.end method

.method public getFlieName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->flieName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightTime()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->flightTime:J

    return-wide v0
.end method

.method public getFlyDistance()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->flyDistance:I

    return v0
.end method

.method public getFlyDuration()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->flyDuration:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->id:I

    return v0
.end method

.method public getLogFileSize()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->logFileSize:I

    return v0
.end method

.method public getLogFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->logFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->createTime:J

    .line 26
    return-void
.end method

.method public setFimiId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fimiId"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->fimiId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setFlieName(Ljava/lang/String;)V
    .locals 0
    .param p1, "flieName"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->flieName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setFlightTime(J)V
    .locals 1
    .param p1, "flightTime"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->flightTime:J

    .line 42
    return-void
.end method

.method public setFlyDistance(I)V
    .locals 0
    .param p1, "flyDistance"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->flyDistance:I

    .line 50
    return-void
.end method

.method public setFlyDuration(I)V
    .locals 0
    .param p1, "flyDuration"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->flyDuration:I

    .line 58
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->id:I

    .line 66
    return-void
.end method

.method public setLogFileSize(I)V
    .locals 0
    .param p1, "logFileSize"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->logFileSize:I

    .line 74
    return-void
.end method

.method public setLogFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "logFileUrl"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fimi/network/entity/X8PlaybackLogEntity;->logFileUrl:Ljava/lang/String;

    .line 82
    return-void
.end method
