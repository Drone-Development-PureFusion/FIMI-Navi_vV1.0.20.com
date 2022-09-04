.class public Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;
.super Ljava/lang/Object;
.source "GH2DataStaticInfo.java"


# instance fields
.field public createTime:Ljava/lang/String;

.field public gimbalVersion:I

.field public handleVersion:I

.field public id:Ljava/lang/Long;

.field public latitude:D

.field public longitude:D

.field public productModel:Ljava/lang/String;

.field public useTime:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;IIDDDLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "productModel"    # Ljava/lang/String;
    .param p3, "handleVersion"    # I
    .param p4, "gimbalVersion"    # I
    .param p5, "useTime"    # D
    .param p7, "longitude"    # D
    .param p9, "latitude"    # D
    .param p11, "createTime"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->id:Ljava/lang/Long;

    .line 74
    iput-object p2, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->productModel:Ljava/lang/String;

    .line 75
    iput p3, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->handleVersion:I

    .line 76
    iput p4, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->gimbalVersion:I

    .line 77
    iput-wide p5, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->useTime:D

    .line 78
    iput-wide p7, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->longitude:D

    .line 79
    iput-wide p9, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->latitude:D

    .line 80
    iput-object p11, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->createTime:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGimbalVersion()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->gimbalVersion:I

    return v0
.end method

.method public getHandleVersion()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->handleVersion:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->longitude:D

    return-wide v0
.end method

.method public getProductModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->productModel:Ljava/lang/String;

    return-object v0
.end method

.method public getUseTime()D
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->useTime:D

    return-wide v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "createTime"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->createTime:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setGimbalVersion(I)V
    .locals 0
    .param p1, "gimbalVersion"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->gimbalVersion:I

    .line 50
    return-void
.end method

.method public setHandleVersion(I)V
    .locals 0
    .param p1, "handleVersion"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->handleVersion:I

    .line 56
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->id:Ljava/lang/Long;

    .line 68
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->latitude:D

    .line 32
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->longitude:D

    .line 38
    return-void
.end method

.method public setProductModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "productModel"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->productModel:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setUseTime(D)V
    .locals 1
    .param p1, "useTime"    # D

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->useTime:D

    .line 44
    return-void
.end method
