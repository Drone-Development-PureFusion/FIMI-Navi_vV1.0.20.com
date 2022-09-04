.class public Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;
.super Ljava/lang/Object;
.source "MediaDownloadInfoHelper.java"


# static fields
.field private static mMediaDownloadInfoHelper:Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;


# instance fields
.field private dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;

    invoke-direct {v0}, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;-><init>()V

    sput-object v0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->mMediaDownloadInfoHelper:Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->getDaoSession()Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->getMediaDownloadInfoDao()Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    return-void
.end method

.method private add()V
    .locals 4

    .prologue
    .line 116
    new-instance v0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    invoke-direct {v0}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;-><init>()V

    .line 117
    .local v0, "st":Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;
    const-string v1, "ddd"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 118
    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setCompeleteZize(J)V

    .line 119
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {v1, v0}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->insert(Ljava/lang/Object;)J

    .line 120
    return-void
.end method

.method private delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {v1}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao$Properties;->Url:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .line 66
    .local v0, "findUser":Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->deleteByKey(Ljava/lang/Object;)V

    .line 70
    :cond_0
    return-void
.end method

.method public static getIntance()Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->mMediaDownloadInfoHelper:Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;

    return-object v0
.end method

.method private queryAllList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v2, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {v2}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 87
    .local v1, "qb":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;>;"
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;>;"
    return-object v0
.end method

.method private queryList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v2, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {v2}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 95
    .local v1, "qb":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;>;"
    sget-object v2, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao$Properties;->Url:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 96
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;>;"
    return-object v0
.end method

.method private update(Ljava/lang/String;Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {v1}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao$Properties;->Url:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .line 74
    .local v0, "findUser":Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getCompeleteZize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setCompeleteZize(J)V

    .line 77
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getEndPos()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setEndPos(J)V

    .line 78
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getStartPos()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setStartPos(J)V

    .line 79
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {v1, v0}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->update(Ljava/lang/Object;)V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public addMediaDownloadInfo(Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->insert(Ljava/lang/Object;)J

    .line 26
    return-void
.end method

.method public deleteAll()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->deleteAll()V

    .line 60
    return-void
.end method

.method public deleteByUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from MEDIA_DOWNLOAD_INFO where URL=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {v1}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public deleteMediaDownloadInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {v1}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao$Properties;->Url:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .line 41
    .local v0, "findUser":Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;
    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->deleteByKey(Ljava/lang/Object;)V

    .line 45
    :cond_0
    return-void
.end method

.method public queryMediaDownloadInfo(Ljava/lang/String;)Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {v1}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao$Properties;->Url:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .line 49
    .local v0, "findUser":Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;
    return-object v0
.end method

.method public test()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->queryAllList()Ljava/util/List;

    .line 113
    return-void
.end method

.method public updateMediaDownloadInfo(Ljava/lang/String;Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .prologue
    .line 29
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {v1}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao$Properties;->Url:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .line 30
    .local v0, "findUser":Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getCompeleteZize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setCompeleteZize(J)V

    .line 33
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getEndPos()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setEndPos(J)V

    .line 34
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getStartPos()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setStartPos(J)V

    .line 35
    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->dao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {v1, v0}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->update(Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-void
.end method
