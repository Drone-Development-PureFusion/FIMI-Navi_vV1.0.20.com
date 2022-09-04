.class public Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "GH2DataStaticInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao",
        "<",
        "Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "GH2_DATA_STATIC_INFO"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/fimi/kernel/store/sqlite/dao/DaoSession;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 44
    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 3
    .param p0, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 48
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 49
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"GH2_DATA_STATIC_INFO\" (\"_id\" INTEGER PRIMARY KEY ,\"PRODUCT_MODEL\" TEXT,\"HANDLE_VERSION\" INTEGER NOT NULL ,\"GIMBAL_VERSION\" INTEGER NOT NULL ,\"USE_TIME\" REAL NOT NULL ,\"LONGITUDE\" REAL NOT NULL ,\"LATITUDE\" REAL NOT NULL ,\"CREATE_TIME\" TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 58
    return-void

    .line 48
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 3
    .param p0, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p1, "ifExists"    # Z

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v1, "IF EXISTS "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"GH2_DATA_STATIC_INFO\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "sql":Ljava/lang/String;
    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 64
    return-void

    .line 62
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;)V
    .locals 6
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 95
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 96
    .local v1, "id":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 97
    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 100
    :cond_0
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getProductModel()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "productModel":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 102
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 104
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getHandleVersion()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 105
    const/4 v3, 0x4

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getGimbalVersion()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 106
    const/4 v3, 0x5

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getUseTime()D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 107
    const/4 v3, 0x6

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 108
    const/4 v3, 0x7

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 110
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "createTime":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 112
    const/16 v3, 0x8

    invoke-virtual {p1, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 114
    :cond_2
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;)V
    .locals 6
    .param p1, "stmt"    # Lorg/greenrobot/greendao/database/DatabaseStatement;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;

    .prologue
    .line 68
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 70
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 71
    .local v1, "id":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 72
    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 75
    :cond_0
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getProductModel()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "productModel":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 77
    const/4 v3, 0x2

    invoke-interface {p1, v3, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 79
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getHandleVersion()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 80
    const/4 v3, 0x4

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getGimbalVersion()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 81
    const/4 v3, 0x5

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getUseTime()D

    move-result-wide v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 82
    const/4 v3, 0x6

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getLongitude()D

    move-result-wide v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 83
    const/4 v3, 0x7

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getLatitude()D

    move-result-wide v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 85
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "createTime":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 87
    const/16 v3, 0x8

    invoke-interface {p1, v3, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 89
    :cond_2
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;)V

    return-void
.end method

.method public getKey(Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;)Ljava/lang/Long;
    .locals 1
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;

    invoke-virtual {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;->getKey(Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hasKey(Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;)Z
    .locals 1
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;

    invoke-virtual {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;->hasKey(Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;)Z

    move-result v0

    return v0
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    const/4 v0, 0x0

    .line 123
    new-instance v1, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;

    add-int/lit8 v2, p2, 0x0

    .line 124
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 125
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    :goto_1
    add-int/lit8 v4, p2, 0x2

    .line 126
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v5, p2, 0x3

    .line 127
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v6, p2, 0x4

    .line 128
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    add-int/lit8 v8, p2, 0x5

    .line 129
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    add-int/lit8 v10, p2, 0x6

    .line 130
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    add-int/lit8 v12, p2, 0x7

    .line 131
    invoke-interface {p1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v12, v0

    :goto_2
    invoke-direct/range {v1 .. v12}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;-><init>(Ljava/lang/Long;Ljava/lang/String;IIDDDLjava/lang/String;)V

    .line 133
    .local v1, "entity":Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;
    return-object v1

    .line 124
    .end local v1    # "entity":Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;
    :cond_0
    add-int/lit8 v2, p2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 125
    :cond_1
    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 131
    :cond_2
    add-int/lit8 v0, p2, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 138
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->setId(Ljava/lang/Long;)V

    .line 139
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->setProductModel(Ljava/lang/String;)V

    .line 140
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->setHandleVersion(I)V

    .line 141
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->setGimbalVersion(I)V

    .line 142
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->setUseTime(D)V

    .line 143
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->setLongitude(D)V

    .line 144
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->setLatitude(D)V

    .line 145
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p2, v1}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->setCreateTime(Ljava/lang/String;)V

    .line 146
    return-void

    .line 138
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 145
    :cond_2
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;->readEntity(Landroid/database/Cursor;Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 118
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final updateKeyAfterInsert(Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;J)Ljava/lang/Long;
    .locals 2
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;
    .param p2, "rowId"    # J

    .prologue
    .line 150
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;->setId(Ljava/lang/Long;)V

    .line 151
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 18
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/kernel/store/sqlite/dao/GH2DataStaticInfoDao;->updateKeyAfterInsert(Lcom/fimi/kernel/store/sqlite/entity/GH2DataStaticInfo;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
