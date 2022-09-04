.class public Lcom/fimi/x8sdk/appsetting/DeviceVersionFactory;
.super Ljava/lang/Object;
.source "DeviceVersionFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static etRcRelay()Lcom/fimi/x8sdk/appsetting/Describe;
    .locals 5

    .prologue
    .line 134
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v2

    .line 135
    .local v2, "v":Lcom/fimi/x8sdk/modulestate/VersionState;
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    .line 136
    .local v3, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    new-instance v0, Lcom/fimi/x8sdk/appsetting/Describe;

    invoke-direct {v0}, Lcom/fimi/x8sdk/appsetting/Describe;-><init>()V

    .line 137
    .local v0, "describe":Lcom/fimi/x8sdk/appsetting/Describe;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 140
    :try_start_0
    new-instance v1, Lcom/fimi/x8sdk/appsetting/IdInfoJson;

    invoke-direct {v1}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;-><init>()V

    .line 141
    .local v1, "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdA()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setA(I)V

    .line 142
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdB()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setB(I)V

    .line 143
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdC()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setC(I)V

    .line 144
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdD()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setD(I)V

    .line 145
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getShowDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setDescribe(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/appsetting/Describe;->setIdInfo(Lcom/fimi/x8sdk/appsetting/IdInfoJson;)V

    .line 147
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getAllDataJsonString()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 279
    .local v0, "allObjcet":Lcom/alibaba/fastjson/JSONObject;
    const-string v3, "speedLimit"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->speedLimit:F

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v3, "distanceLimit"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->distanceLimit:F

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v3, "heightLimit"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->heightLimit:F

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v3, "returnHeight"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->returnHeight:F

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v3, "pilotMode"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueBoolean;

    sget-boolean v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->pilotMode:Z

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueBoolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v3, "sportMode"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueBoolean;

    sget-boolean v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->sportMode:Z

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueBoolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v3, "lostAction"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->lostAction:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v3, "accLand"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueBoolean;

    sget-boolean v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->accurateLanding:Z

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueBoolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v3, "followRP"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueBoolean;

    sget-boolean v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->followRP:Z

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueBoolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v3, "followAB"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueBoolean;

    sget-boolean v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->followAB:Z

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueBoolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v3, "lowPower"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->lowPower:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
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

    .line 292
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

    .line 293
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

    .line 294
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

    .line 297
    const-string v3, "cc"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->CC:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v3, "uvc"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->UVC:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v3, "totalCapacity"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->TOTALCAPACITY:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v3, "rcNotUpdateCnt"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->RCNOTUPDATECNT:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v3, "sysErrorCode"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->SYSERRORCODE:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v3, "sysState"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->SYSSTATE:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 306
    .local v1, "dataObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v3, "data"

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v3, "startupTime"

    new-instance v4, Lcom/fimi/x8sdk/appsetting/ValueFloat;

    sget v5, Lcom/fimi/x8sdk/entity/X8AppSettingLog;->STARTUPTIME:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Lcom/fimi/x8sdk/appsetting/ValueFloat;-><init>(F)V

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v3, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4, v5, v6}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x0

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "json":Ljava/lang/String;
    return-object v2
.end method

.method public static getBattery()Lcom/fimi/x8sdk/appsetting/Describe;
    .locals 5

    .prologue
    .line 112
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v2

    .line 113
    .local v2, "v":Lcom/fimi/x8sdk/modulestate/VersionState;
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleBatteryVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    .line 114
    .local v3, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    new-instance v0, Lcom/fimi/x8sdk/appsetting/Describe;

    invoke-direct {v0}, Lcom/fimi/x8sdk/appsetting/Describe;-><init>()V

    .line 115
    .local v0, "describe":Lcom/fimi/x8sdk/appsetting/Describe;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 118
    :try_start_0
    new-instance v1, Lcom/fimi/x8sdk/appsetting/IdInfoJson;

    invoke-direct {v1}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;-><init>()V

    .line 119
    .local v1, "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdA()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setA(I)V

    .line 120
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdB()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setB(I)V

    .line 121
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdC()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setC(I)V

    .line 122
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdD()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setD(I)V

    .line 123
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getShowDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setDescribe(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/appsetting/Describe;->setIdInfo(Lcom/fimi/x8sdk/appsetting/IdInfoJson;)V

    .line 125
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1    # "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    :cond_0
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getCamera()Lcom/fimi/x8sdk/appsetting/Describe;
    .locals 5

    .prologue
    .line 46
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v2

    .line 47
    .local v2, "v":Lcom/fimi/x8sdk/modulestate/VersionState;
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCameraVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    .line 48
    .local v3, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    new-instance v0, Lcom/fimi/x8sdk/appsetting/Describe;

    invoke-direct {v0}, Lcom/fimi/x8sdk/appsetting/Describe;-><init>()V

    .line 49
    .local v0, "describe":Lcom/fimi/x8sdk/appsetting/Describe;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 52
    :try_start_0
    new-instance v1, Lcom/fimi/x8sdk/appsetting/IdInfoJson;

    invoke-direct {v1}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;-><init>()V

    .line 53
    .local v1, "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdA()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setA(I)V

    .line 54
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdB()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setB(I)V

    .line 55
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdC()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setC(I)V

    .line 56
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdD()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setD(I)V

    .line 57
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getShowDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setDescribe(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/appsetting/Describe;->setIdInfo(Lcom/fimi/x8sdk/appsetting/IdInfoJson;)V

    .line 59
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getComputerVision()Lcom/fimi/x8sdk/appsetting/Describe;
    .locals 5

    .prologue
    .line 156
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v2

    .line 157
    .local v2, "v":Lcom/fimi/x8sdk/modulestate/VersionState;
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleCvVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    .line 158
    .local v3, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    new-instance v0, Lcom/fimi/x8sdk/appsetting/Describe;

    invoke-direct {v0}, Lcom/fimi/x8sdk/appsetting/Describe;-><init>()V

    .line 159
    .local v0, "describe":Lcom/fimi/x8sdk/appsetting/Describe;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 162
    :try_start_0
    new-instance v1, Lcom/fimi/x8sdk/appsetting/IdInfoJson;

    invoke-direct {v1}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;-><init>()V

    .line 163
    .local v1, "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdA()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setA(I)V

    .line 164
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdB()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setB(I)V

    .line 165
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdC()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setC(I)V

    .line 166
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdD()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setD(I)V

    .line 167
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getShowDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setDescribe(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/appsetting/Describe;->setIdInfo(Lcom/fimi/x8sdk/appsetting/IdInfoJson;)V

    .line 169
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1    # "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    :cond_0
    :goto_0
    return-object v0

    .line 171
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getEsc()Lcom/fimi/x8sdk/appsetting/Describe;
    .locals 5

    .prologue
    .line 200
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v2

    .line 201
    .local v2, "v":Lcom/fimi/x8sdk/modulestate/VersionState;
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleEscVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    .line 202
    .local v3, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    new-instance v0, Lcom/fimi/x8sdk/appsetting/Describe;

    invoke-direct {v0}, Lcom/fimi/x8sdk/appsetting/Describe;-><init>()V

    .line 203
    .local v0, "describe":Lcom/fimi/x8sdk/appsetting/Describe;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 206
    :try_start_0
    new-instance v1, Lcom/fimi/x8sdk/appsetting/IdInfoJson;

    invoke-direct {v1}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;-><init>()V

    .line 207
    .local v1, "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdA()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setA(I)V

    .line 208
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdB()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setB(I)V

    .line 209
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdC()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setC(I)V

    .line 210
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdD()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setD(I)V

    .line 211
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getShowDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setDescribe(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/appsetting/Describe;->setIdInfo(Lcom/fimi/x8sdk/appsetting/IdInfoJson;)V

    .line 213
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v1    # "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    :cond_0
    :goto_0
    return-object v0

    .line 215
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getFc()Lcom/fimi/x8sdk/appsetting/Describe;
    .locals 5

    .prologue
    .line 22
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v2

    .line 23
    .local v2, "v":Lcom/fimi/x8sdk/modulestate/VersionState;
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleFcAckVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    .line 24
    .local v3, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    new-instance v0, Lcom/fimi/x8sdk/appsetting/Describe;

    invoke-direct {v0}, Lcom/fimi/x8sdk/appsetting/Describe;-><init>()V

    .line 25
    .local v0, "describe":Lcom/fimi/x8sdk/appsetting/Describe;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 28
    :try_start_0
    new-instance v1, Lcom/fimi/x8sdk/appsetting/IdInfoJson;

    invoke-direct {v1}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;-><init>()V

    .line 29
    .local v1, "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdA()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setA(I)V

    .line 30
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdB()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setB(I)V

    .line 31
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdC()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setC(I)V

    .line 32
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdD()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setD(I)V

    .line 33
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getShowDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setDescribe(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/appsetting/Describe;->setIdInfo(Lcom/fimi/x8sdk/appsetting/IdInfoJson;)V

    .line 35
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v1    # "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    :cond_0
    :goto_0
    return-object v0

    .line 37
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getFcRelay()Lcom/fimi/x8sdk/appsetting/Describe;
    .locals 5

    .prologue
    .line 178
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v2

    .line 179
    .local v2, "v":Lcom/fimi/x8sdk/modulestate/VersionState;
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterVehicleVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    .line 180
    .local v3, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    new-instance v0, Lcom/fimi/x8sdk/appsetting/Describe;

    invoke-direct {v0}, Lcom/fimi/x8sdk/appsetting/Describe;-><init>()V

    .line 181
    .local v0, "describe":Lcom/fimi/x8sdk/appsetting/Describe;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 184
    :try_start_0
    new-instance v1, Lcom/fimi/x8sdk/appsetting/IdInfoJson;

    invoke-direct {v1}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;-><init>()V

    .line 185
    .local v1, "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdA()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setA(I)V

    .line 186
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdB()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setB(I)V

    .line 187
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdC()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setC(I)V

    .line 188
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdD()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setD(I)V

    .line 189
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getShowDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setDescribe(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/appsetting/Describe;->setIdInfo(Lcom/fimi/x8sdk/appsetting/IdInfoJson;)V

    .line 191
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v1    # "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    :cond_0
    :goto_0
    return-object v0

    .line 193
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getGimbal()Lcom/fimi/x8sdk/appsetting/Describe;
    .locals 5

    .prologue
    .line 68
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v2

    .line 69
    .local v2, "v":Lcom/fimi/x8sdk/modulestate/VersionState;
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleGimbalVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    .line 70
    .local v3, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    new-instance v0, Lcom/fimi/x8sdk/appsetting/Describe;

    invoke-direct {v0}, Lcom/fimi/x8sdk/appsetting/Describe;-><init>()V

    .line 71
    .local v0, "describe":Lcom/fimi/x8sdk/appsetting/Describe;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 74
    :try_start_0
    new-instance v1, Lcom/fimi/x8sdk/appsetting/IdInfoJson;

    invoke-direct {v1}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;-><init>()V

    .line 75
    .local v1, "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdA()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setA(I)V

    .line 76
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdB()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setB(I)V

    .line 77
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdC()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setC(I)V

    .line 78
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdD()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setD(I)V

    .line 79
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getShowDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setDescribe(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/appsetting/Describe;->setIdInfo(Lcom/fimi/x8sdk/appsetting/IdInfoJson;)V

    .line 81
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    :cond_0
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getNfz()Lcom/fimi/x8sdk/appsetting/Describe;
    .locals 5

    .prologue
    .line 222
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v2

    .line 223
    .local v2, "v":Lcom/fimi/x8sdk/modulestate/VersionState;
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleNfzVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    .line 224
    .local v3, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    new-instance v0, Lcom/fimi/x8sdk/appsetting/Describe;

    invoke-direct {v0}, Lcom/fimi/x8sdk/appsetting/Describe;-><init>()V

    .line 225
    .local v0, "describe":Lcom/fimi/x8sdk/appsetting/Describe;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 228
    :try_start_0
    new-instance v1, Lcom/fimi/x8sdk/appsetting/IdInfoJson;

    invoke-direct {v1}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;-><init>()V

    .line 229
    .local v1, "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdA()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setA(I)V

    .line 230
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdB()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setB(I)V

    .line 231
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdC()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setC(I)V

    .line 232
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdD()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setD(I)V

    .line 233
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getShowDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setDescribe(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/appsetting/Describe;->setIdInfo(Lcom/fimi/x8sdk/appsetting/IdInfoJson;)V

    .line 235
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v1    # "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    :cond_0
    :goto_0
    return-object v0

    .line 237
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getRc()Lcom/fimi/x8sdk/appsetting/Describe;
    .locals 5

    .prologue
    .line 90
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v2

    .line 91
    .local v2, "v":Lcom/fimi/x8sdk/modulestate/VersionState;
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    .line 92
    .local v3, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    new-instance v0, Lcom/fimi/x8sdk/appsetting/Describe;

    invoke-direct {v0}, Lcom/fimi/x8sdk/appsetting/Describe;-><init>()V

    .line 93
    .local v0, "describe":Lcom/fimi/x8sdk/appsetting/Describe;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 96
    :try_start_0
    new-instance v1, Lcom/fimi/x8sdk/appsetting/IdInfoJson;

    invoke-direct {v1}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;-><init>()V

    .line 97
    .local v1, "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdA()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setA(I)V

    .line 98
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdB()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setB(I)V

    .line 99
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdC()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setC(I)V

    .line 100
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdD()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setD(I)V

    .line 101
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getShowDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setDescribe(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/appsetting/Describe;->setIdInfo(Lcom/fimi/x8sdk/appsetting/IdInfoJson;)V

    .line 103
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    :cond_0
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getUltrasonic()Lcom/fimi/x8sdk/appsetting/Describe;
    .locals 5

    .prologue
    .line 244
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v2

    .line 245
    .local v2, "v":Lcom/fimi/x8sdk/modulestate/VersionState;
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleUltrasonic()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v3

    .line 246
    .local v3, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    new-instance v0, Lcom/fimi/x8sdk/appsetting/Describe;

    invoke-direct {v0}, Lcom/fimi/x8sdk/appsetting/Describe;-><init>()V

    .line 247
    .local v0, "describe":Lcom/fimi/x8sdk/appsetting/Describe;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 249
    :try_start_0
    new-instance v1, Lcom/fimi/x8sdk/appsetting/IdInfoJson;

    invoke-direct {v1}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;-><init>()V

    .line 250
    .local v1, "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdA()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setA(I)V

    .line 251
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdB()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setB(I)V

    .line 252
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdC()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setC(I)V

    .line 253
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getIdD()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->setD(I)V

    .line 254
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getShowDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setDescribe(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/appsetting/Describe;->setIdInfo(Lcom/fimi/x8sdk/appsetting/IdInfoJson;)V

    .line 256
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/appsetting/Describe;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v1    # "info":Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    :cond_0
    :goto_0
    return-object v0

    .line 257
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "a"    # [Ljava/lang/String;

    .prologue
    .line 265
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/fimi/x8sdk/appsetting/DeviceVersionFactory;->getAllDataJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 268
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
