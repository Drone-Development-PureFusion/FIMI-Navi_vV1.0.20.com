.class public Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;
.super Ljava/lang/Object;
.source "X8AiLinePointInfoHelper.java"


# static fields
.field private static instance:Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;


# instance fields
.field private lineDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

.field private pointDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    invoke-direct {v0}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;-><init>()V

    sput-object v0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->instance:Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->getDaoSession()Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->getX8AiLinePointInfoDao()Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->lineDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    .line 23
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->getDaoSession()Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->getX8AiLinePointLatlngInfoDao()Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->pointDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;

    return-void
.end method

.method public static getIntance()Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->instance:Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    return-object v0
.end method


# virtual methods
.method public addLineDatas(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "line"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;>;"
    const/4 v3, 0x0

    .line 33
    .local v3, "ret":Z
    iget-object v6, p0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->lineDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    invoke-virtual {v6}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->getSession()Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v6

    invoke-virtual {v6}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    .line 35
    .local v0, "db":Lorg/greenrobot/greendao/database/Database;
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 37
    :try_start_0
    iget-object v6, p0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->lineDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    invoke-virtual {v6, p1}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->insert(Ljava/lang/Object;)J

    move-result-wide v4

    .line 38
    .local v4, "lineId":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 39
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    .line 40
    .local v2, "latlng":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    invoke-virtual {v2, v4, v5}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setLineId(J)V

    .line 41
    iget-object v6, p0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->pointDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;

    invoke-virtual {v6, v2}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;->insert(Ljava/lang/Object;)J

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v2    # "latlng":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    :cond_0
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    const/4 v3, 0x1

    .line 48
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 50
    return v3

    .line 48
    .end local v1    # "i":I
    .end local v4    # "lineId":J
    :catchall_0
    move-exception v6

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 49
    throw v6
.end method

.method public getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v2, p0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->lineDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    invoke-virtual {v2}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 90
    .local v1, "qb":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;>;"
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 91
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;>;"
    return-object v0
.end method

.method public getLastItem(I)Ljava/util/List;
    .locals 2
    .param p1, "mapType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getLastItem(IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastItem(IIZ)Ljava/util/List;
    .locals 8
    .param p1, "count"    # I
    .param p2, "mapType"    # I
    .param p3, "isFavorites"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 55
    iget-object v4, p0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->lineDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    invoke-virtual {v4}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 56
    .local v1, "qb":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;>;"
    if-eqz p3, :cond_0

    .line 57
    sget-object v4, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->MapType:Lorg/greenrobot/greendao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    .line 58
    .local v2, "where":Lorg/greenrobot/greendao/query/WhereCondition;
    sget-object v4, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->SaveFlag:Lorg/greenrobot/greendao/Property;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    .line 59
    .local v3, "where1":Lorg/greenrobot/greendao/query/WhereCondition;
    new-array v4, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    aput-object v3, v4, v6

    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    .line 64
    .end local v3    # "where1":Lorg/greenrobot/greendao/query/WhereCondition;
    :goto_0
    new-array v4, v7, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v6

    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 65
    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 66
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;>;"
    return-object v0

    .line 61
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;>;"
    .end local v2    # "where":Lorg/greenrobot/greendao/query/WhereCondition;
    :cond_0
    sget-object v4, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->MapType:Lorg/greenrobot/greendao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    .line 62
    .restart local v2    # "where":Lorg/greenrobot/greendao/query/WhereCondition;
    new-array v4, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    goto :goto_0
.end method

.method public getLastItem(IZI)Ljava/util/List;
    .locals 1
    .param p1, "mapType"    # I
    .param p2, "isFavorites"    # Z
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZI)",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0, p3, p1, p2}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getLastItem(IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLatlngByLineId(IJ)Ljava/util/List;
    .locals 6
    .param p1, "mapType"    # I
    .param p2, "lineId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v3, p0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->pointDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;

    invoke-virtual {v3}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 96
    .local v1, "qb":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;>;"
    sget-object v3, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->LineId:Lorg/greenrobot/greendao/Property;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    .line 97
    .local v2, "where":Lorg/greenrobot/greendao/query/WhereCondition;
    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 98
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;>;"
    return-object v0
.end method

.method public getLineInfoById(J)Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    .locals 7
    .param p1, "lineId"    # J

    .prologue
    const/4 v5, 0x0

    .line 79
    iget-object v3, p0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->lineDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    invoke-virtual {v3}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 80
    .local v1, "qb":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;>;"
    sget-object v3, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    .line 81
    .local v2, "where":Lorg/greenrobot/greendao/query/WhereCondition;
    new-array v3, v5, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 82
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 83
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;>;"
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    return-object v3
.end method

.method public updateLineName(Ljava/lang/String;J)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lineId"    # J

    .prologue
    .line 111
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->lineDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    invoke-virtual {v1}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .line 112
    .local v0, "find":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setName(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->lineDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    invoke-virtual {v1, v0}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->update(Ljava/lang/Object;)V

    .line 116
    :cond_0
    return-void
.end method

.method public updatelineSaveFlag(IJ)V
    .locals 4
    .param p1, "saveFlag"    # I
    .param p2, "lineId"    # J

    .prologue
    .line 103
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->lineDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    invoke-virtual {v1}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .line 104
    .local v0, "find":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setSaveFlag(I)V

    .line 106
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->lineDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    invoke-virtual {v1, v0}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->update(Ljava/lang/Object;)V

    .line 108
    :cond_0
    return-void
.end method
