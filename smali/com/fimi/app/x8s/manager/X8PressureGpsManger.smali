.class public Lcom/fimi/app/x8s/manager/X8PressureGpsManger;
.super Ljava/lang/Object;
.source "X8PressureGpsManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;
    }
.end annotation


# instance fields
.field private fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field task:Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/manager/X8PressureGpsManger;)Lcom/fimi/x8sdk/controller/FcManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/manager/X8PressureGpsManger;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    return-object v0
.end method


# virtual methods
.method public sendGps()V
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->isHasLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v0, Lcom/fimi/x8sdk/entity/GpsInfoCmd;

    invoke-direct {v0}, Lcom/fimi/x8sdk/entity/GpsInfoCmd;-><init>()V

    .line 73
    .local v0, "cmd":Lcom/fimi/x8sdk/entity/GpsInfoCmd;
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getmLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/fimi/x8sdk/entity/GpsInfoCmd;->mLongitude:D

    .line 74
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getmLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/fimi/x8sdk/entity/GpsInfoCmd;->mLatitude:D

    .line 75
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getmAltitude()F

    move-result v1

    iput v1, v0, Lcom/fimi/x8sdk/entity/GpsInfoCmd;->mAltitude:F

    .line 76
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getmHorizontalAccuracyMeters()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/fimi/x8sdk/entity/GpsInfoCmd;->mHorizontalAccuracyMeters:I

    .line 77
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getmVerticalAccuracyMeters()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/fimi/x8sdk/entity/GpsInfoCmd;->mVerticalAccuracyMeters:I

    .line 78
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getmSpeed()F

    move-result v1

    iput v1, v0, Lcom/fimi/x8sdk/entity/GpsInfoCmd;->mSpeed:F

    .line 79
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getmBearing()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/fimi/x8sdk/entity/GpsInfoCmd;->mBearing:I

    .line 80
    iget-object v1, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/controller/FcManager;->setGpsInfo(Lcom/fimi/x8sdk/entity/GpsInfoCmd;)V

    .line 82
    .end local v0    # "cmd":Lcom/fimi/x8sdk/entity/GpsInfoCmd;
    :cond_0
    return-void
.end method

.method public sendPressure()V
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->isHasPressure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getmAltitude()F

    move-result v1

    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->gethPa()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcManager;->setPressureInfo(FF)V

    .line 68
    :cond_0
    return-void
.end method

.method public setFcManger(Lcom/fimi/x8sdk/controller/FcManager;)V
    .locals 0
    .param p1, "fc"    # Lcom/fimi/x8sdk/controller/FcManager;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 33
    return-void
.end method

.method public startTask()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x32

    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->timer:Ljava/util/Timer;

    .line 38
    new-instance v0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;-><init>(Lcom/fimi/app/x8s/manager/X8PressureGpsManger;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->task:Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;

    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->task:Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 41
    :cond_0
    return-void
.end method

.method public stopTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->task:Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->task:Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;->cancel()Z

    .line 50
    :cond_1
    iput-object v1, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->timer:Ljava/util/Timer;

    .line 51
    iput-object v1, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->task:Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;

    .line 52
    return-void
.end method
