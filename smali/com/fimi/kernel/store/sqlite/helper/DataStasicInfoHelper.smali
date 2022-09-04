.class public Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;
.super Ljava/lang/Object;
.source "DataStasicInfoHelper.java"


# static fields
.field private static sDataStasicInfoHelper:Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;


# instance fields
.field private dao:Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;

    invoke-direct {v0}, Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;-><init>()V

    sput-object v0, Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;->sDataStasicInfoHelper:Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->getDaoSession()Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->getDataStaticInfoDao()Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;

    return-void
.end method

.method public static getInstance()Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;->sDataStasicInfoHelper:Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;

    return-object v0
.end method


# virtual methods
.method public addRecord(Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;)V
    .locals 5
    .param p1, "dataStaticInfo"    # Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;

    .prologue
    const/4 v4, 0x0

    .line 25
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;

    invoke-virtual {v1}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->CurrentTime:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->Type:Lorg/greenrobot/greendao/Property;

    .line 26
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->DeviceType:Lorg/greenrobot/greendao/Property;

    .line 27
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getDeviceType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;

    .line 28
    .local v0, "unique":Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;
    if-eqz v0, :cond_0

    .line 29
    const-string v1, "record"

    const-string v2, "addRecord: 1"

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getUseTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setUseTime(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getFlyTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setFlyTime(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;

    invoke-virtual {v1, v0}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->update(Ljava/lang/Object;)V

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string v1, "record"

    const-string v2, "addRecord: 2"

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;

    invoke-virtual {v1, p1}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->insert(Ljava/lang/Object;)J

    goto :goto_0
.end method

.method public deleteList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "notes":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;>;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->deleteInTx(Ljava/lang/Iterable;)V

    .line 58
    return-void
.end method

.method public queryX9FlyTime()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 40
    iget-object v2, p0, Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;

    invoke-virtual {v2}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 41
    .local v1, "qb":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;>;"
    sget-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->Type:Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->DeviceType:Lorg/greenrobot/greendao/Property;

    .line 42
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 43
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 44
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;>;"
    return-object v0
.end method

.method public queryX9UseTime()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 48
    iget-object v2, p0, Lcom/fimi/kernel/store/sqlite/helper/DataStasicInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;

    invoke-virtual {v2}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 49
    .local v1, "qb":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;>;"
    sget-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->Type:Lorg/greenrobot/greendao/Property;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->DeviceType:Lorg/greenrobot/greendao/Property;

    .line 50
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 52
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 53
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;>;"
    return-object v0
.end method
