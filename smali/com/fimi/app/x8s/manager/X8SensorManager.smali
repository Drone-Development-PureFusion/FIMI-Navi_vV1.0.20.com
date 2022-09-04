.class public Lcom/fimi/app/x8s/manager/X8SensorManager;
.super Ljava/lang/Object;
.source "X8SensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private listener:Lcom/fimi/app/x8s/interfaces/IX8SensorListener;

.field private mPressure:Landroid/hardware/Sensor;

.field private mSM:Landroid/hardware/SensorManager;

.field private mSensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/fimi/app/x8s/interfaces/IX8SensorListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8SensorListener;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->listener:Lcom/fimi/app/x8s/interfaces/IX8SensorListener;

    .line 29
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mSM:Landroid/hardware/SensorManager;

    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mSM:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mSensor:Landroid/hardware/Sensor;

    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mSM:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mPressure:Landroid/hardware/Sensor;

    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mPressure:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 34
    const-string v0, "istep"

    const-string/jumbo v1, "\u60a8\u7684\u624b\u673a\u4e0d\u652f\u6301\u6c14\u538b\u4f20\u611f\u5668\uff0c\u65e0\u6cd5\u4f7f\u7528\u672c\u8f6f\u4ef6\u529f\u80fd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    return-void
.end method

.method private getTypeString(Landroid/hardware/Sensor;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Landroid/hardware/Sensor;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 164
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5176\u5b83\u4f20\u611f\u5668"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "type":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 83
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "\u52a0\u901f\u5ea6\u4f20\u611f\u5668"

    .line 84
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 86
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "\u78c1\u573a\u4f20\u611f\u5668"

    .line 87
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 89
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "\u65b9\u5411\u4f20\u611f\u5668"

    .line 90
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 92
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "\u9640\u87ba\u4eea\u4f20\u611f\u5668"

    .line 93
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 95
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "\u5149\u7ebf\u4f20\u611f\u5668"

    .line 96
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 98
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "\u538b\u529b\u4f20\u611f\u5668"

    .line 99
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 101
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "\u6e29\u5ea6\u4f20\u611f\u5668"

    .line 102
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 104
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v0, "\u63a5\u8fd1\u4f20\u611f\u5668"

    .line 105
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 107
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "\u91cd\u529b\u4f20\u611f\u5668"

    .line 108
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 110
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v0, "\u7ebf\u6027\u52a0\u901f\u5ea6\u4f20\u611f\u5668"

    .line 111
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 113
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v0, "\u65cb\u8f6c\u77e2\u91cf\u4f20\u611f\u5668"

    .line 114
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 116
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v0, "\u76f8\u5bf9\u6e7f\u5ea6\u4f20\u611f\u5668"

    .line 117
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 119
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v0, "\u73af\u5883\u6e29\u5ea6\u4f20\u611f\u5668"

    .line 120
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_e
    const-string/jumbo v0, "\u78c1\u573a\u4f20\u611f\u5668(\u672a\u7ecf\u6821\u51c6)"

    .line 123
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 125
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_f
    const-string/jumbo v0, "\u6e38\u620f\u65cb\u8f6c\u77e2\u91cf\u4f20\u611f\u5668"

    .line 126
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_10
    const-string/jumbo v0, "\u9640\u87ba\u4eea\u4f20\u611f\u5668(\u672a\u7ecf\u6821\u51c6)"

    .line 129
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_11
    const-string/jumbo v0, "\u7279\u6b8a\u52a8\u4f5c\u89e6\u53d1\u4f20\u611f\u5668"

    .line 132
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 134
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_12
    const-string/jumbo v0, "\u6b65\u6570\u63a2\u6d4b\u4f20\u611f\u5668"

    .line 135
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 137
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_13
    const-string/jumbo v0, "\u6b65\u6570\u8ba1\u6570\u4f20\u611f\u5668"

    .line 138
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 140
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_14
    const-string/jumbo v0, "\u5730\u78c1\u65cb\u8f6c\u77e2\u91cf\u4f20\u611f\u5668"

    .line 141
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_15
    const-string/jumbo v0, "\u5fc3\u7387\u4f20\u611f\u5668"

    .line 144
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 146
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_16
    const-string v0, "POSE_6DOF\u4f20\u611f\u5668"

    .line 147
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 149
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_17
    const-string/jumbo v0, "\u9759\u6b62\u68c0\u6d4b\u4f20\u611f\u5668"

    .line 150
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_18
    const-string/jumbo v0, "\u8fd0\u52a8\u68c0\u6d4b\u4f20\u611f\u5668"

    .line 153
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 155
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_19
    const-string/jumbo v0, "\u5fc3\u8df3\u4f20\u611f\u5668"

    .line 156
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 158
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_1a
    const-string/jumbo v0, "\u4f4e\u5ef6\u8fdf\u8eab\u4f53\u68c0\u6d4b\u4f20\u611f\u5668"

    .line 159
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 161
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_1b
    const-string/jumbo v0, "\u52a0\u901f\u5ea6\u4f20\u611f\u5668(\u672a\u7ecf\u6821\u51c6)"

    .line 162
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .prologue
    .line 77
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 65
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v4

    .line 66
    .local v0, "degree":F
    iget-object v2, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->listener:Lcom/fimi/app/x8s/interfaces/IX8SensorListener;

    invoke-interface {v2, v0}, Lcom/fimi/app/x8s/interfaces/IX8SensorListener;->onSensorChanged(F)V

    .line 72
    .end local v0    # "degree":F
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 68
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v4

    .line 69
    .local v1, "sPV":F
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->sethPa(F)V

    .line 70
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->setHasPressure(Z)V

    goto :goto_0
.end method

.method public registerListener()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mSM:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mPressure:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mSM:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mPressure:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 53
    :cond_0
    return-void
.end method

.method public showAllSensor()V
    .locals 6

    .prologue
    .line 41
    iget-object v2, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mSM:Landroid/hardware/SensorManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 42
    .local v1, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 43
    .local v0, "sensor":Landroid/hardware/Sensor;
    const-string v3, "istep"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/manager/X8SensorManager;->getTypeString(Landroid/hardware/Sensor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    return-void
.end method

.method public unRegisterListener()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mSM:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mPressure:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mSM:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/manager/X8SensorManager;->mPressure:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 59
    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->setHasPressure(Z)V

    .line 61
    :cond_0
    return-void
.end method
