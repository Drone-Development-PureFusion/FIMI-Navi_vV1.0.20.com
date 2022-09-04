.class public Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/store/sqlite/dao/DaoMaster$DevOpenHelper;,
        Lcom/fimi/kernel/store/sqlite/dao/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 53
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .locals 1
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    .line 58
    const-class v0, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 59
    const-class v0, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 60
    const-class v0, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 61
    const-class v0, Lcom/fimi/kernel/store/sqlite/dao/StudentDao;

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 62
    const-class v0, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 63
    const-class v0, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 64
    return-void
.end method

.method public static createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0
    .param p0, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 25
    invoke-static {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 26
    invoke-static {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 27
    invoke-static {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/StudentDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 28
    invoke-static {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 29
    invoke-static {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 30
    return-void
.end method

.method public static dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0
    .param p0, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p1, "ifExists"    # Z

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 35
    invoke-static {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 36
    invoke-static {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 37
    invoke-static {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/StudentDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 38
    invoke-static {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 39
    invoke-static {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 40
    return-void
.end method

.method public static newDevSession(Landroid/content/Context;Ljava/lang/String;)Lcom/fimi/kernel/store/sqlite/dao/DaoSession;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v2, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster$DevOpenHelper;

    invoke-direct {v2, p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster$DevOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    .line 48
    .local v1, "db":Lorg/greenrobot/greendao/database/Database;
    new-instance v0, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;

    invoke-direct {v0, v1}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 49
    .local v0, "daoMaster":Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;
    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->newSession()Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public newSession()Lcom/fimi/kernel/store/sqlite/dao/DaoSession;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/fimi/kernel/store/sqlite/dao/DaoSession;
    .locals 3
    .param p1, "type"    # Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    .prologue
    .line 71
    new-instance v0, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    iget-object v1, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v2, p0, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->newSession()Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    move-result-object v0

    return-object v0
.end method
