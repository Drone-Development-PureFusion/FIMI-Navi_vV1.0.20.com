.class public Lcom/fimi/kernel/store/sqlite/helper/GH2DataStasicInfoHelper;
.super Ljava/lang/Object;
.source "GH2DataStasicInfoHelper.java"


# static fields
.field private static sDataStasicInfoHelper:Lcom/fimi/kernel/store/sqlite/helper/GH2DataStasicInfoHelper;


# instance fields
.field private gh2DataStaticInfoDao:Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/fimi/kernel/store/sqlite/helper/GH2DataStasicInfoHelper;

    invoke-direct {v0}, Lcom/fimi/kernel/store/sqlite/helper/GH2DataStasicInfoHelper;-><init>()V

    sput-object v0, Lcom/fimi/kernel/store/sqlite/helper/GH2DataStasicInfoHelper;->sDataStasicInfoHelper:Lcom/fimi/kernel/store/sqlite/helper/GH2DataStasicInfoHelper;

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

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->getGH2DataStaticInfoDao()Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/GH2DataStasicInfoHelper;->gh2DataStaticInfoDao:Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;

    return-void
.end method

.method public static getInstance()Lcom/fimi/kernel/store/sqlite/helper/GH2DataStasicInfoHelper;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fimi/kernel/store/sqlite/helper/GH2DataStasicInfoHelper;->sDataStasicInfoHelper:Lcom/fimi/kernel/store/sqlite/helper/GH2DataStasicInfoHelper;

    return-object v0
.end method


# virtual methods
.method public addRecord(Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;)V
    .locals 4
    .param p1, "gh2DataStaticInfo"    # Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;

    .prologue
    .line 25
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/GH2DataStasicInfoHelper;->gh2DataStaticInfoDao:Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;

    invoke-virtual {v1}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao$Properties;->CreateTime:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;

    .line 28
    .local v0, "unique":Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;
    if-eqz v0, :cond_0

    .line 29
    const-string v1, "record"

    const-string v2, "addRecord: 1"

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getUseTime()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->setUseTime(D)V

    .line 31
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->setCreateTime(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/GH2DataStasicInfoHelper;->gh2DataStaticInfoDao:Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;

    invoke-virtual {v1, v0}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;->update(Ljava/lang/Object;)V

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string v1, "record"

    const-string v2, "addRecord: 2"

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/GH2DataStasicInfoHelper;->gh2DataStaticInfoDao:Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;

    invoke-virtual {v1, p1}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;->insert(Ljava/lang/Object;)J

    goto :goto_0
.end method

.method public deleteList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "notes":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;>;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/GH2DataStasicInfoHelper;->gh2DataStaticInfoDao:Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;->deleteInTx(Ljava/lang/Iterable;)V

    .line 48
    return-void
.end method

.method public queryGH2UseTime()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v2, p0, Lcom/fimi/kernel/store/sqlite/helper/GH2DataStasicInfoHelper;->gh2DataStaticInfoDao:Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;

    invoke-virtual {v2}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 42
    .local v1, "qb":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;>;"
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;>;"
    return-object v0
.end method
