.class public Lcom/fimi/x8sdk/appsetting/DataJsonFactory;
.super Ljava/lang/Object;
.source "DataJsonFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appValueSensityChange(Ljava/lang/String;Lcom/fimi/x8sdk/appsetting/ValueSensity;Lcom/fimi/x8sdk/appsetting/ValueSensity;)Ljava/lang/String;
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "oldV"    # Lcom/fimi/x8sdk/appsetting/ValueSensity;
    .param p2, "newV"    # Lcom/fimi/x8sdk/appsetting/ValueSensity;

    .prologue
    .line 95
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 96
    .local v0, "dataObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, ""

    .line 98
    .local v1, "json":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 99
    .local v2, "object":Lcom/alibaba/fastjson/JSONObject;
    new-instance v3, Lcom/fimi/x8sdk/appsetting/SensityJsonChange;

    invoke-direct {v3, p1, p2}, Lcom/fimi/x8sdk/appsetting/SensityJsonChange;-><init>(Lcom/fimi/x8sdk/appsetting/ValueSensity;Lcom/fimi/x8sdk/appsetting/ValueSensity;)V

    .line 100
    .local v3, "s":Lcom/fimi/x8sdk/appsetting/SensityJsonChange;
    invoke-virtual {v2, p0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v4, "data"

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v4, "startupTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->STARTUPTIME:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v4, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v6, v7, v5}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v5, 0x0

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 107
    return-object v1
.end method

.method public static getAllDataJsonString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 17
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 19
    .local v0, "allObjcet":Lcom/alibaba/fastjson/JSONObject;
    const-string v3, "flightController"

    invoke-static {}, Lcom/fimi/x8sdk/appsetting/DeviceVersionFactory;->getFc()Lcom/fimi/x8sdk/appsetting/Describe;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v3, "camera"

    invoke-static {}, Lcom/fimi/x8sdk/appsetting/DeviceVersionFactory;->getCamera()Lcom/fimi/x8sdk/appsetting/Describe;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v3, "gimbal"

    invoke-static {}, Lcom/fimi/x8sdk/appsetting/DeviceVersionFactory;->getGimbal()Lcom/fimi/x8sdk/appsetting/Describe;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v3, "remoteController"

    invoke-static {}, Lcom/fimi/x8sdk/appsetting/DeviceVersionFactory;->getRc()Lcom/fimi/x8sdk/appsetting/Describe;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v3, "battery"

    invoke-static {}, Lcom/fimi/x8sdk/appsetting/DeviceVersionFactory;->getBattery()Lcom/fimi/x8sdk/appsetting/Describe;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v3, "rcRelay"

    invoke-static {}, Lcom/fimi/x8sdk/appsetting/DeviceVersionFactory;->etRcRelay()Lcom/fimi/x8sdk/appsetting/Describe;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v3, "computerVision"

    invoke-static {}, Lcom/fimi/x8sdk/appsetting/DeviceVersionFactory;->getComputerVision()Lcom/fimi/x8sdk/appsetting/Describe;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v3, "fcRelay"

    invoke-static {}, Lcom/fimi/x8sdk/appsetting/DeviceVersionFactory;->getFcRelay()Lcom/fimi/x8sdk/appsetting/Describe;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v3, "esc"

    invoke-static {}, Lcom/fimi/x8sdk/appsetting/DeviceVersionFactory;->getEsc()Lcom/fimi/x8sdk/appsetting/Describe;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v3, "nfz"

    invoke-static {}, Lcom/fimi/x8sdk/appsetting/DeviceVersionFactory;->getNfz()Lcom/fimi/x8sdk/appsetting/Describe;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v3, "Ultrasonic"

    invoke-static {}, Lcom/fimi/x8sdk/appsetting/DeviceVersionFactory;->getUltrasonic()Lcom/fimi/x8sdk/appsetting/Describe;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v3, "speedLimit"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->speedLimit:F

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v3, "distanceLimit"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->distanceLimit:F

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v3, "heightLimit"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->heightLimit:F

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v3, "returnHeight"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->returnHeight:F

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v3, "pilotMode"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueBoolean;

    sget-boolean v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->pilotMode:Z

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueBoolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v3, "sportMode"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueBoolean;

    sget-boolean v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->sportMode:Z

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueBoolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v3, "lostAction"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->lostAction:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v3, "accLand"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueBoolean;

    sget-boolean v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->accurateLanding:Z

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueBoolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v3, "followRP"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueBoolean;

    sget-boolean v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->followRP:Z

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueBoolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v3, "followAB"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueBoolean;

    sget-boolean v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->followAB:Z

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueBoolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v3, "lowPower"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->lowPower:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v3, "feelSensitivity"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/SensityJson;

    new-instance v5, Lcom/fimi/x8sdk/appsetting/ValueSensity;

    sget v6, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_pitch:I

    int-to-float v6, v6

    sget v7, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_roll:I

    int-to-float v7, v7

    sget v8, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_thro:I

    int-to-float v8, v8

    sget v9, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FS_yaw:I

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/fimi/x8sdk/appsetting/ValueSensity;-><init>(FFFF)V

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/SensityJson;-><init>(Lcom/fimi/x8sdk/appsetting/ValueSensity;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v3, "feelBrake"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/SensityJson;

    new-instance v5, Lcom/fimi/x8sdk/appsetting/ValueSensity;

    sget v6, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_pitch:I

    int-to-float v6, v6

    sget v7, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_roll:I

    int-to-float v7, v7

    sget v8, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_thro:I

    int-to-float v8, v8

    sget v9, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FB_yaw:I

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/fimi/x8sdk/appsetting/ValueSensity;-><init>(FFFF)V

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/SensityJson;-><init>(Lcom/fimi/x8sdk/appsetting/ValueSensity;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v3, "feelYawTrip"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/SensityJson;

    new-instance v5, Lcom/fimi/x8sdk/appsetting/ValueSensity;

    sget v6, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_pitch:I

    int-to-float v6, v6

    sget v7, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_roll:I

    int-to-float v7, v7

    sget v8, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_thro:I

    int-to-float v8, v8

    sget v9, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FY_yaw:I

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/fimi/x8sdk/appsetting/ValueSensity;-><init>(FFFF)V

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/SensityJson;-><init>(Lcom/fimi/x8sdk/appsetting/ValueSensity;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v3, "feelExp"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/SensityJson;

    new-instance v5, Lcom/fimi/x8sdk/appsetting/ValueSensity;

    sget v6, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FE_pitch:I

    int-to-float v6, v6

    sget v7, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FE_roll:I

    int-to-float v7, v7

    sget v8, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FE_thro:I

    int-to-float v8, v8

    sget v9, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->FE_yaw:I

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/fimi/x8sdk/appsetting/ValueSensity;-><init>(FFFF)V

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/SensityJson;-><init>(Lcom/fimi/x8sdk/appsetting/ValueSensity;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v3, "cc"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->CC:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v3, "uvc"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->UVC:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v3, "totalCapacity"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->TOTALCAPACITY:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "rcNotUpdateCnt"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->RCNOTUPDATECNT:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v3, "sysErrorCode"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->SYSERRORCODE:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v3, "sysState"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->SYSSTATE:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v3, "gpsTimestamp"

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/TimeStampState;->getInstance()Lcom/fimi/x8sdk/modulestate/TimeStampState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/TimeStampState;->getTimeStamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 59
    .local v1, "dataObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v3, "data"

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v3, "startupTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->STARTUPTIME:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v3, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4, v5, v6}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x0

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "json":Ljava/lang/String;
    return-object v2
.end method

.method public static onValueBooleanChange(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "oldV"    # Z
    .param p2, "newV"    # Z

    .prologue
    .line 81
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 82
    .local v0, "dataObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, ""

    .line 83
    .local v1, "json":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 84
    .local v2, "object":Lcom/alibaba/fastjson/JSONObject;
    new-instance v3, Lcom/fimi/x8sdk/appsetting/ValueBooleanChange;

    invoke-direct {v3, p1, p2}, Lcom/fimi/x8sdk/appsetting/ValueBooleanChange;-><init>(ZZ)V

    invoke-virtual {v2, p0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v3, "startupTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->STARTUPTIME:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v3, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4, v5, v6}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x0

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 91
    return-object v1
.end method

.method public static onValueChange(Ljava/lang/String;FF)Ljava/lang/String;
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "oldV"    # F
    .param p2, "newV"    # F

    .prologue
    .line 67
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 68
    .local v0, "dataObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, ""

    .line 69
    .local v1, "json":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 70
    .local v2, "object":Lcom/alibaba/fastjson/JSONObject;
    new-instance v3, Lcom/fimi/x8sdk/appsetting/ValueFloatChange;

    invoke-direct {v3, p1, p2}, Lcom/fimi/x8sdk/appsetting/ValueFloatChange;-><init>(FF)V

    invoke-virtual {v2, p0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v3, "startupTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->STARTUPTIME:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v3, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4, v5, v6}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x0

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 77
    return-object v1
.end method
