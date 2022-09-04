.class public Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "DataStaticInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao",
        "<",
        "Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "DATA_STATIC_INFO"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/fimi/kernel/store/sqlite/dao/DaoSession;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 49
    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 3
    .param p0, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 53
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 54
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"DATA_STATIC_INFO\" (\"_id\" INTEGER PRIMARY KEY ,\"CURRENT_TIME\" TEXT,\"FLY_TIME\" TEXT,\"USER_ID\" TEXT,\"USE_TIME\" TEXT,\"TYPE\" INTEGER NOT NULL ,\"DEVICE_TYPE\" INTEGER NOT NULL ,\"SYS_VERSION\" TEXT,\"MCU_VERSION\" TEXT,\"FLY_DISTANCE\" TEXT,\"FLY_HEIGHT\" TEXT,\"LONGITUDE\" TEXT,\"LATITUDE\" TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 68
    return-void

    .line 53
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
    .line 72
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

    const-string v2, "\"DATA_STATIC_INFO\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "sql":Ljava/lang/String;
    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 74
    return-void

    .line 72
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;)V
    .locals 14
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 142
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getId()Ljava/lang/Long;

    move-result-object v4

    .line 143
    .local v4, "id":Ljava/lang/Long;
    if-eqz v4, :cond_0

    .line 144
    const/4 v11, 0x1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {p1, v11, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 147
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "currentTime":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 149
    const/4 v11, 0x2

    invoke-virtual {p1, v11, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 152
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getFlyTime()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "flyTime":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 154
    const/4 v11, 0x3

    invoke-virtual {p1, v11, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 157
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, "userId":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 159
    const/4 v11, 0x4

    invoke-virtual {p1, v11, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 162
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getUseTime()Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, "useTime":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 164
    const/4 v11, 0x5

    invoke-virtual {p1, v11, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 166
    :cond_4
    const/4 v11, 0x6

    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getType()B

    move-result v12

    int-to-long v12, v12

    invoke-virtual {p1, v11, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 167
    const/4 v11, 0x7

    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getDeviceType()B

    move-result v12

    int-to-long v12, v12

    invoke-virtual {p1, v11, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getSysVersion()Ljava/lang/String;

    move-result-object v8

    .line 170
    .local v8, "sysVersion":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 171
    const/16 v11, 0x8

    invoke-virtual {p1, v11, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 174
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getMcuVersion()Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "mcuVersion":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 176
    const/16 v11, 0x9

    invoke-virtual {p1, v11, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 179
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getFlyDistance()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "flyDistance":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 181
    const/16 v11, 0xa

    invoke-virtual {p1, v11, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 184
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getFlyHeight()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "flyHeight":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 186
    const/16 v11, 0xb

    invoke-virtual {p1, v11, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 189
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getLongitude()Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, "longitude":Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 191
    const/16 v11, 0xc

    invoke-virtual {p1, v11, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 194
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getLatitude()Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "latitude":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 196
    const/16 v11, 0xd

    invoke-virtual {p1, v11, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 198
    :cond_a
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;)V
    .locals 14
    .param p1, "stmt"    # Lorg/greenrobot/greendao/database/DatabaseStatement;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;

    .prologue
    .line 78
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 80
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getId()Ljava/lang/Long;

    move-result-object v4

    .line 81
    .local v4, "id":Ljava/lang/Long;
    if-eqz v4, :cond_0

    .line 82
    const/4 v11, 0x1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-interface {p1, v11, v12, v13}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 85
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "currentTime":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 87
    const/4 v11, 0x2

    invoke-interface {p1, v11, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 90
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getFlyTime()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "flyTime":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 92
    const/4 v11, 0x3

    invoke-interface {p1, v11, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 95
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, "userId":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 97
    const/4 v11, 0x4

    invoke-interface {p1, v11, v10}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 100
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getUseTime()Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, "useTime":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 102
    const/4 v11, 0x5

    invoke-interface {p1, v11, v9}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 104
    :cond_4
    const/4 v11, 0x6

    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getType()B

    move-result v12

    int-to-long v12, v12

    invoke-interface {p1, v11, v12, v13}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 105
    const/4 v11, 0x7

    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getDeviceType()B

    move-result v12

    int-to-long v12, v12

    invoke-interface {p1, v11, v12, v13}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getSysVersion()Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "sysVersion":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 109
    const/16 v11, 0x8

    invoke-interface {p1, v11, v8}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 112
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getMcuVersion()Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "mcuVersion":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 114
    const/16 v11, 0x9

    invoke-interface {p1, v11, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 117
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getFlyDistance()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "flyDistance":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 119
    const/16 v11, 0xa

    invoke-interface {p1, v11, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 122
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getFlyHeight()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "flyHeight":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 124
    const/16 v11, 0xb

    invoke-interface {p1, v11, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 127
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getLongitude()Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "longitude":Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 129
    const/16 v11, 0xc

    invoke-interface {p1, v11, v6}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 132
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getLatitude()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "latitude":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 134
    const/16 v11, 0xd

    invoke-interface {p1, v11, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 136
    :cond_a
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;)V

    return-void
.end method

.method public getKey(Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;)Ljava/lang/Long;
    .locals 1
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;

    .prologue
    .line 250
    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 253
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
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;

    invoke-virtual {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->getKey(Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hasKey(Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;)Z
    .locals 1
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;

    invoke-virtual {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->hasKey(Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;)Z

    move-result v0

    return v0
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 207
    new-instance v0, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;

    add-int/lit8 v1, p2, 0x0

    .line 208
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p2, 0x1

    .line 209
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v3, p2, 0x2

    .line 210
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v4, p2, 0x3

    .line 211
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_3
    add-int/lit8 v5, p2, 0x4

    .line 212
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :goto_4
    add-int/lit8 v6, p2, 0x5

    .line 213
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getShort(I)S

    move-result v6

    int-to-byte v6, v6

    add-int/lit8 v7, p2, 0x6

    .line 214
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    int-to-byte v7, v7

    add-int/lit8 v8, p2, 0x7

    .line 215
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    :goto_5
    add-int/lit8 v9, p2, 0x8

    .line 216
    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    :goto_6
    add-int/lit8 v10, p2, 0x9

    .line 217
    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    :goto_7
    add-int/lit8 v11, p2, 0xa

    .line 218
    invoke-interface {p1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    :goto_8
    add-int/lit8 v12, p2, 0xb

    .line 219
    invoke-interface {p1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    :goto_9
    add-int/lit8 v13, p2, 0xc

    .line 220
    invoke-interface {p1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    :goto_a
    invoke-direct/range {v0 .. v13}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .local v0, "entity":Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;
    return-object v0

    .line 208
    .end local v0    # "entity":Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;
    :cond_0
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 209
    :cond_1
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 210
    :cond_2
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 211
    :cond_3
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 212
    :cond_4
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 215
    :cond_5
    add-int/lit8 v8, p2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 216
    :cond_6
    add-int/lit8 v9, p2, 0x8

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    .line 217
    :cond_7
    add-int/lit8 v10, p2, 0x9

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    .line 218
    :cond_8
    add-int/lit8 v11, p2, 0xa

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    .line 219
    :cond_9
    add-int/lit8 v12, p2, 0xb

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    .line 220
    :cond_a
    add-int/lit8 v13, p2, 0xc

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_a
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 227
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setId(Ljava/lang/Long;)V

    .line 228
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setCurrentTime(Ljava/lang/String;)V

    .line 229
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setFlyTime(Ljava/lang/String;)V

    .line 230
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setUserId(Ljava/lang/String;)V

    .line 231
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setUseTime(Ljava/lang/String;)V

    .line 232
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setType(B)V

    .line 233
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setDeviceType(B)V

    .line 234
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_5
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setSysVersion(Ljava/lang/String;)V

    .line 235
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_6
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setMcuVersion(Ljava/lang/String;)V

    .line 236
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_7
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setFlyDistance(Ljava/lang/String;)V

    .line 237
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_8
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setFlyHeight(Ljava/lang/String;)V

    .line 238
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_9
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setLongitude(Ljava/lang/String;)V

    .line 239
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_a
    invoke-virtual {p2, v1}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setLatitude(Ljava/lang/String;)V

    .line 240
    return-void

    .line 227
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 228
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 229
    :cond_2
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 230
    :cond_3
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 231
    :cond_4
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 234
    :cond_5
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 235
    :cond_6
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 236
    :cond_7
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 237
    :cond_8
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 238
    :cond_9
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 239
    :cond_a
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->readEntity(Landroid/database/Cursor;Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 202
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
    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final updateKeyAfterInsert(Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;J)Ljava/lang/Long;
    .locals 2
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;
    .param p2, "rowId"    # J

    .prologue
    .line 244
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;->setId(Ljava/lang/Long;)V

    .line 245
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 18
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;->updateKeyAfterInsert(Lcom/fimi/kernel/store/sqlite/entity/DataStaticInfo;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
