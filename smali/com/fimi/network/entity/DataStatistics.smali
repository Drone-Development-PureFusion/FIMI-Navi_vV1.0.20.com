.class public Lcom/fimi/network/entity/DataStatistics;
.super Ljava/lang/Object;
.source "DataStatistics.java"


# instance fields
.field private appType:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private flyDistance:Ljava/lang/String;

.field private flyHeight:Ljava/lang/String;

.field private flyTime:Ljava/lang/String;

.field private gimbalVersion:Ljava/lang/String;

.field private handleVersion:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private mcuVersion:Ljava/lang/String;

.field private productModel:Ljava/lang/String;

.field private sysVersion:Ljava/lang/String;

.field private useTime:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/network/entity/DataStatistics;->appType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fimi/network/entity/DataStatistics;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFlyDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fimi/network/entity/DataStatistics;->flyDistance:Ljava/lang/String;

    return-object v0
.end method

.method public getFlyHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fimi/network/entity/DataStatistics;->flyHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getFlyTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fimi/network/entity/DataStatistics;->flyTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGimbalVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fimi/network/entity/DataStatistics;->gimbalVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHandleVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/network/entity/DataStatistics;->handleVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fimi/network/entity/DataStatistics;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fimi/network/entity/DataStatistics;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMcuVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fimi/network/entity/DataStatistics;->mcuVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProductModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fimi/network/entity/DataStatistics;->productModel:Ljava/lang/String;

    return-object v0
.end method

.method public getSysVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fimi/network/entity/DataStatistics;->sysVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUseTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/network/entity/DataStatistics;->useTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/network/entity/DataStatistics;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppType(Ljava/lang/String;)V
    .locals 0
    .param p1, "appType"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fimi/network/entity/DataStatistics;->appType:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "createTime"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/fimi/network/entity/DataStatistics;->createTime:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setFlyDistance(Ljava/lang/String;)V
    .locals 0
    .param p1, "flyDistance"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/fimi/network/entity/DataStatistics;->flyDistance:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setFlyHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "flyHeight"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/fimi/network/entity/DataStatistics;->flyHeight:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setFlyTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "flyTime"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/fimi/network/entity/DataStatistics;->flyTime:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setGimbalVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "gimbalVersion"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fimi/network/entity/DataStatistics;->gimbalVersion:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setHandleVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "handleVersion"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fimi/network/entity/DataStatistics;->handleVersion:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fimi/network/entity/DataStatistics;->latitude:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fimi/network/entity/DataStatistics;->longitude:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setMcuVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mcuVersion"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fimi/network/entity/DataStatistics;->mcuVersion:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setProductModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "productModel"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/fimi/network/entity/DataStatistics;->productModel:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setSysVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "sysVersion"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/fimi/network/entity/DataStatistics;->sysVersion:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setUseTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "useTime"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fimi/network/entity/DataStatistics;->useTime:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fimi/network/entity/DataStatistics;->userId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataStatistics{appType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/DataStatistics;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/DataStatistics;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", handleVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/DataStatistics;->handleVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gimbalVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/DataStatistics;->gimbalVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/DataStatistics;->useTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/DataStatistics;->longitude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/DataStatistics;->latitude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productModel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/DataStatistics;->productModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sysVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/DataStatistics;->sysVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mcuVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/DataStatistics;->mcuVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flyTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/DataStatistics;->flyTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flyDistance=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/DataStatistics;->flyDistance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flyHeight=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/DataStatistics;->flyHeight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/network/entity/DataStatistics;->createTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
