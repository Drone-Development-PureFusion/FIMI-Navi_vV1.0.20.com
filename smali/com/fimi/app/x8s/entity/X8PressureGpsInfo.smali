.class public Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;
.super Ljava/lang/Object;
.source "X8PressureGpsInfo.java"


# static fields
.field private static instance:Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;


# instance fields
.field private hPa:F

.field private hasLocation:Z

.field private hasPressure:Z

.field private mAltitude:F

.field private mBearing:F

.field private mHorizontalAccuracyMeters:F

.field private mLatitude:D

.field private mLongitude:D

.field private mSpeed:F

.field private mVerticalAccuracyMeters:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    invoke-direct {v0}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;-><init>()V

    sput-object v0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->instance:Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->instance:Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->hasPressure:Z

    .line 24
    iput-boolean v1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->hasLocation:Z

    .line 25
    iput v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->hPa:F

    .line 26
    iput-wide v2, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mLongitude:D

    .line 27
    iput-wide v2, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mLatitude:D

    .line 28
    iput v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mAltitude:F

    .line 29
    iput v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mHorizontalAccuracyMeters:F

    .line 30
    iput v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mVerticalAccuracyMeters:F

    .line 31
    iput v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mSpeed:F

    .line 32
    iput v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mBearing:F

    .line 33
    return-void
.end method

.method public gethPa()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->hPa:F

    return v0
.end method

.method public getmAltitude()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mAltitude:F

    return v0
.end method

.method public getmBearing()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mBearing:F

    return v0
.end method

.method public getmHorizontalAccuracyMeters()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mHorizontalAccuracyMeters:F

    return v0
.end method

.method public getmLatitude()D
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mLatitude:D

    return-wide v0
.end method

.method public getmLongitude()D
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mLongitude:D

    return-wide v0
.end method

.method public getmSpeed()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mSpeed:F

    return v0
.end method

.method public getmVerticalAccuracyMeters()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mVerticalAccuracyMeters:F

    return v0
.end method

.method public isHasLocation()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->hasLocation:Z

    return v0
.end method

.method public isHasPressure()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->hasPressure:Z

    return v0
.end method

.method public setHasLocation(Z)V
    .locals 0
    .param p1, "hasLocation"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->hasLocation:Z

    .line 53
    return-void
.end method

.method public setHasPressure(Z)V
    .locals 0
    .param p1, "hasPressure"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->hasPressure:Z

    .line 45
    return-void
.end method

.method public sethPa(F)V
    .locals 0
    .param p1, "hPa"    # F

    .prologue
    .line 60
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->hPa:F

    .line 61
    return-void
.end method

.method public setmAltitude(D)V
    .locals 1
    .param p1, "mAltitude"    # D

    .prologue
    .line 84
    double-to-float v0, p1

    iput v0, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mAltitude:F

    .line 85
    return-void
.end method

.method public setmBearing(F)V
    .locals 0
    .param p1, "mBearing"    # F

    .prologue
    .line 116
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mBearing:F

    .line 117
    return-void
.end method

.method public setmHorizontalAccuracyMeters(F)V
    .locals 0
    .param p1, "mHorizontalAccuracyMeters"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mHorizontalAccuracyMeters:F

    .line 93
    return-void
.end method

.method public setmLatitude(D)V
    .locals 1
    .param p1, "mLatitude"    # D

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mLatitude:D

    .line 77
    return-void
.end method

.method public setmLongitude(D)V
    .locals 1
    .param p1, "mLongitude"    # D

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mLongitude:D

    .line 69
    return-void
.end method

.method public setmSpeed(F)V
    .locals 0
    .param p1, "mSpeed"    # F

    .prologue
    .line 108
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mSpeed:F

    .line 109
    return-void
.end method

.method public setmVerticalAccuracyMeters(F)V
    .locals 0
    .param p1, "mVerticalAccuracyMeters"    # F

    .prologue
    .line 100
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mVerticalAccuracyMeters:F

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X8PressureGpsInfo{hasPressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->hasPressure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->hasLocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hPa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->hPa:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAltitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mAltitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHorizontalAccuracyMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mHorizontalAccuracyMeters:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVerticalAccuracyMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mVerticalAccuracyMeters:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->mBearing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
