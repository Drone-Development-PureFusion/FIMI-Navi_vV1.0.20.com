.class public Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;
.super Ljava/lang/Object;
.source "DataStaticInfo.java"


# instance fields
.field private currentTime:Ljava/lang/String;

.field private deviceType:B

.field private flyDistance:Ljava/lang/String;

.field private flyHeight:Ljava/lang/String;

.field private flyTime:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private mcuVersion:Ljava/lang/String;

.field private sysVersion:Ljava/lang/String;

.field private type:B

.field private useTime:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "currentTime"    # Ljava/lang/String;
    .param p3, "flyTime"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/String;
    .param p5, "useTime"    # Ljava/lang/String;
    .param p6, "type"    # B
    .param p7, "deviceType"    # B
    .param p8, "sysVersion"    # Ljava/lang/String;
    .param p9, "mcuVersion"    # Ljava/lang/String;
    .param p10, "flyDistance"    # Ljava/lang/String;
    .param p11, "flyHeight"    # Ljava/lang/String;
    .param p12, "longitude"    # Ljava/lang/String;
    .param p13, "latitude"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->id:Ljava/lang/Long;

    .line 110
    iput-object p2, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->currentTime:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->flyTime:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->userId:Ljava/lang/String;

    .line 113
    iput-object p5, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->useTime:Ljava/lang/String;

    .line 114
    iput-byte p6, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->type:B

    .line 115
    iput-byte p7, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->deviceType:B

    .line 116
    iput-object p8, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->sysVersion:Ljava/lang/String;

    .line 117
    iput-object p9, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->mcuVersion:Ljava/lang/String;

    .line 118
    iput-object p10, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->flyDistance:Ljava/lang/String;

    .line 119
    iput-object p11, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->flyHeight:Ljava/lang/String;

    .line 120
    iput-object p12, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->longitude:Ljava/lang/String;

    .line 121
    iput-object p13, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->latitude:Ljava/lang/String;

    .line 122
    return-void
.end method


# virtual methods
.method public getCurrentTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->currentTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()B
    .locals 1

    .prologue
    .line 27
    iget-byte v0, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->deviceType:B

    return v0
.end method

.method public getFlyDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->flyDistance:Ljava/lang/String;

    return-object v0
.end method

.method public getFlyHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->flyHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getFlyTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->flyTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMcuVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->mcuVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSysVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->sysVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 33
    iget-byte v0, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->type:B

    return v0
.end method

.method public getUseTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->useTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentTime"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->currentTime:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setDeviceType(B)V
    .locals 0
    .param p1, "deviceType"    # B

    .prologue
    .line 30
    iput-byte p1, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->deviceType:B

    .line 31
    return-void
.end method

.method public setFlyDistance(Ljava/lang/String;)V
    .locals 0
    .param p1, "flyDistance"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->flyDistance:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setFlyHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "flyHeight"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->flyHeight:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setFlyTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "flyTime"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->flyTime:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->id:Ljava/lang/Long;

    .line 67
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->latitude:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->longitude:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setMcuVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mcuVersion"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->mcuVersion:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setSysVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "sysVersion"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->sysVersion:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setType(B)V
    .locals 0
    .param p1, "type"    # B

    .prologue
    .line 36
    iput-byte p1, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->type:B

    .line 37
    return-void
.end method

.method public setUseTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "useTime"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->useTime:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->userId:Ljava/lang/String;

    .line 49
    return-void
.end method
