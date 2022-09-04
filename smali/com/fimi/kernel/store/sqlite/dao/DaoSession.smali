.class public Lcom/fimi/kernel/store/sqlite/dao/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final dataStaticInfoDao:Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;

.field private final dataStaticInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final gH2DataStaticInfoDao:Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;

.field private final gH2DataStaticInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final mediaDownloadInfoDao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

.field private final mediaDownloadInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final studentDao:Lcom/fimi/kernel/store/sqlite/dao/StudentDao;

.field private final studentDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final x8AiLinePointInfoDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

.field private final x8AiLinePointInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final x8AiLinePointLatlngInfoDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;

.field private final x8AiLinePointLatlngInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 2
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p2, "type"    # Lorg/greenrobot/greendao/identityscope/IdentityScopeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p3, "daoConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;Lorg/greenrobot/greendao/internal/DaoConfig;>;"
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 52
    const-class v0, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->dataStaticInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 53
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->dataStaticInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 55
    const-class v0, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->gH2DataStaticInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 56
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->gH2DataStaticInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 58
    const-class v0, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->mediaDownloadInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 59
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->mediaDownloadInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 61
    const-class v0, Lcom/fimi/kernel/store/sqlite/dao/StudentDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->studentDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 62
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->studentDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 64
    const-class v0, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->x8AiLinePointInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 65
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->x8AiLinePointInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 67
    const-class v0, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->x8AiLinePointLatlngInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 68
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->x8AiLinePointLatlngInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 70
    new-instance v0, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->dataStaticInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/fimi/kernel/store/sqlite/dao/DaoSession;)V

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->dataStaticInfoDao:Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;

    .line 71
    new-instance v0, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->gH2DataStaticInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/fimi/kernel/store/sqlite/dao/DaoSession;)V

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->gH2DataStaticInfoDao:Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;

    .line 72
    new-instance v0, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->mediaDownloadInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/fimi/kernel/store/sqlite/dao/DaoSession;)V

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->mediaDownloadInfoDao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    .line 73
    new-instance v0, Lcom/fimi/kernel/store/sqlite/dao/StudentDao;

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->studentDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/fimi/kernel/store/sqlite/dao/StudentDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/fimi/kernel/store/sqlite/dao/DaoSession;)V

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->studentDao:Lcom/fimi/kernel/store/sqlite/dao/StudentDao;

    .line 74
    new-instance v0, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->x8AiLinePointInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/fimi/kernel/store/sqlite/dao/DaoSession;)V

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->x8AiLinePointInfoDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    .line 75
    new-instance v0, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->x8AiLinePointLatlngInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/fimi/kernel/store/sqlite/dao/DaoSession;)V

    iput-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->x8AiLinePointLatlngInfoDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;

    .line 77
    const-class v0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->dataStaticInfoDao:Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 78
    const-class v0, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->gH2DataStaticInfoDao:Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 79
    const-class v0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->mediaDownloadInfoDao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 80
    const-class v0, Lcom/fimi/kernel/store/sqlite/entity/Student;

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->studentDao:Lcom/fimi/kernel/store/sqlite/dao/StudentDao;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 81
    const-class v0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->x8AiLinePointInfoDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 82
    const-class v0, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->x8AiLinePointLatlngInfoDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 83
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->dataStaticInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 87
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->gH2DataStaticInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 88
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->mediaDownloadInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 89
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->studentDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 90
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->x8AiLinePointInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 91
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->x8AiLinePointLatlngInfoDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 92
    return-void
.end method

.method public getDataStaticInfoDao()Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->dataStaticInfoDao:Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;

    return-object v0
.end method

.method public getGH2DataStaticInfoDao()Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->gH2DataStaticInfoDao:Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;

    return-object v0
.end method

.method public getMediaDownloadInfoDao()Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->mediaDownloadInfoDao:Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    return-object v0
.end method

.method public getStudentDao()Lcom/fimi/kernel/store/sqlite/dao/StudentDao;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->studentDao:Lcom/fimi/kernel/store/sqlite/dao/StudentDao;

    return-object v0
.end method

.method public getX8AiLinePointInfoDao()Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->x8AiLinePointInfoDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    return-object v0
.end method

.method public getX8AiLinePointLatlngInfoDao()Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->x8AiLinePointLatlngInfoDao:Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;

    return-object v0
.end method
