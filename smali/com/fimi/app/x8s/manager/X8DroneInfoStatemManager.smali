.class public Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;
.super Ljava/lang/Object;
.source "X8DroneInfoStatemManager.java"


# static fields
.field private static final BAT:Ljava/lang/String; = "BAT"

.field private static final COMPASS:Ljava/lang/String; = "Compass"

.field private static final GC:Ljava/lang/String; = "GC"

.field private static final GPS:Ljava/lang/String; = "GPS"

.field private static final IMU:Ljava/lang/String; = "IMU"

.field private static errorCodeHandler:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBatteryError()Z
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "ret":Z
    sget-object v1, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->errorCodeHandler:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->getmX8ErrorCodeController()Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->errorCodeHandler:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->getmX8ErrorCodeController()Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    move-result-object v1

    const-string v2, "BAT"

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->isDroneStateErrorByLable(Ljava/lang/String;)Z

    move-result v0

    .line 51
    :cond_0
    return v0
.end method

.method public static isCompassError()Z
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "ret":Z
    sget-object v1, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->errorCodeHandler:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->getmX8ErrorCodeController()Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    sget-object v1, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->errorCodeHandler:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->getmX8ErrorCodeController()Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    move-result-object v1

    const-string v2, "Compass"

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->isDroneStateErrorByLable(Ljava/lang/String;)Z

    move-result v0

    .line 35
    :cond_0
    return v0
.end method

.method public static isGcError()Z
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "ret":Z
    sget-object v1, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->errorCodeHandler:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->getmX8ErrorCodeController()Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->errorCodeHandler:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->getmX8ErrorCodeController()Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    move-result-object v1

    const-string v2, "GC"

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->isDroneStateErrorByLable(Ljava/lang/String;)Z

    move-result v0

    .line 59
    :cond_0
    return v0
.end method

.method public static isGpsError()Z
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "ret":Z
    sget-object v1, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->errorCodeHandler:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->getmX8ErrorCodeController()Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    sget-object v1, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->errorCodeHandler:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->getmX8ErrorCodeController()Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    move-result-object v1

    const-string v2, "GPS"

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->isDroneStateErrorByLable(Ljava/lang/String;)Z

    move-result v0

    .line 27
    :cond_0
    return v0
.end method

.method public static isImuError()Z
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "ret":Z
    sget-object v1, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->errorCodeHandler:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->getmX8ErrorCodeController()Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->errorCodeHandler:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->getmX8ErrorCodeController()Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    move-result-object v1

    const-string v2, "IMU"

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->isDroneStateErrorByLable(Ljava/lang/String;)Z

    move-result v0

    .line 43
    :cond_0
    return v0
.end method

.method public static setErrorCodeHolder(Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;)V
    .locals 0
    .param p0, "holder"    # Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    .prologue
    .line 19
    sput-object p0, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->errorCodeHandler:Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    .line 20
    return-void
.end method
