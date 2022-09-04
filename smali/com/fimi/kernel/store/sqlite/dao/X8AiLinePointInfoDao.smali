.class public Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "X8AiLinePointInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao",
        "<",
        "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "X8_AI_LINE_POINT_INFO"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/fimi/kernel/store/sqlite/dao/DaoSession;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 50
    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 3
    .param p0, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 54
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 55
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"X8_AI_LINE_POINT_INFO\" (\"_id\" INTEGER PRIMARY KEY ,\"TIME\" INTEGER NOT NULL ,\"NAME\" TEXT,\"TYPE\" INTEGER NOT NULL ,\"SPEED\" INTEGER NOT NULL ,\"SAVE_FLAG\" INTEGER NOT NULL ,\"DISTANCE\" REAL NOT NULL ,\"IS_CURVE\" INTEGER NOT NULL ,\"MAP_TYPE\" INTEGER NOT NULL ,\"RUN_BY_MAP_OR_VEDIO\" INTEGER NOT NULL ,\"DISCONNECT_TYPE\" INTEGER NOT NULL ,\"EXCUTE_END\" INTEGER NOT NULL ,\"AUTO_RECORD\" INTEGER NOT NULL ,\"LOCALITY\" TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 70
    return-void

    .line 54
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
    .line 74
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

    const-string v2, "\"X8_AI_LINE_POINT_INFO\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "sql":Ljava/lang/String;
    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 76
    return-void

    .line 74
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V
    .locals 6
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 113
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 114
    .local v0, "id":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 115
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 117
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 119
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 121
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 123
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getType()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 124
    const/4 v3, 0x5

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getSpeed()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 125
    const/4 v3, 0x6

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getSaveFlag()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 126
    const/4 v3, 0x7

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getDistance()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 127
    const/16 v3, 0x8

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getIsCurve()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 128
    const/16 v3, 0x9

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getMapType()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 129
    const/16 v3, 0xa

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getRunByMapOrVedio()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 130
    const/16 v3, 0xb

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getDisconnectType()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 131
    const/16 v3, 0xc

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getExcuteEnd()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 132
    const/16 v3, 0xd

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getAutoRecord()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 134
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "locality":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 136
    const/16 v3, 0xe

    invoke-virtual {p1, v3, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 138
    :cond_2
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V
    .locals 6
    .param p1, "stmt"    # Lorg/greenrobot/greendao/database/DatabaseStatement;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .prologue
    .line 80
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 82
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 83
    .local v0, "id":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 84
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 86
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getTime()J

    move-result-wide v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 88
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 90
    const/4 v3, 0x3

    invoke-interface {p1, v3, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 92
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getType()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 93
    const/4 v3, 0x5

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getSpeed()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 94
    const/4 v3, 0x6

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getSaveFlag()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 95
    const/4 v3, 0x7

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getDistance()F

    move-result v4

    float-to-double v4, v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 96
    const/16 v3, 0x8

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getIsCurve()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 97
    const/16 v3, 0x9

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getMapType()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 98
    const/16 v3, 0xa

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getRunByMapOrVedio()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 99
    const/16 v3, 0xb

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getDisconnectType()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 100
    const/16 v3, 0xc

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getExcuteEnd()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 101
    const/16 v3, 0xd

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getAutoRecord()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 103
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "locality":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 105
    const/16 v3, 0xe

    invoke-interface {p1, v3, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 107
    :cond_2
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V

    return-void
.end method

.method public getKey(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)Ljava/lang/Long;
    .locals 1
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 195
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
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->getKey(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hasKey(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)Z
    .locals 1
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->hasKey(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)Z

    move-result v0

    return v0
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    .locals 18
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 147
    new-instance v2, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    add-int/lit8 v3, p2, 0x0

    .line 148
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, p2, 0x1

    .line 149
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-int/lit8 v6, p2, 0x2

    .line 150
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v7, p2, 0x3

    .line 151
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v8, p2, 0x4

    .line 152
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v9, p2, 0x5

    .line 153
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v10, p2, 0x6

    .line 154
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v10

    add-int/lit8 v11, p2, 0x7

    .line 155
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    add-int/lit8 v12, p2, 0x8

    .line 156
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v13, p2, 0x9

    .line 157
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    add-int/lit8 v14, p2, 0xa

    .line 158
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    add-int/lit8 v15, p2, 0xb

    .line 159
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    add-int/lit8 v16, p2, 0xc

    .line 160
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    add-int/lit8 v17, p2, 0xd

    .line 161
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x0

    :goto_2
    invoke-direct/range {v2 .. v17}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;-><init>(Ljava/lang/Long;JLjava/lang/String;IIIFIIIIIILjava/lang/String;)V

    .line 163
    .local v2, "entity":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    return-object v2

    .line 148
    .end local v2    # "entity":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    :cond_0
    add-int/lit8 v3, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_0

    .line 150
    :cond_1
    add-int/lit8 v6, p2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 161
    :cond_2
    add-int/lit8 v17, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_2
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 168
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setId(Ljava/lang/Long;)V

    .line 169
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setTime(J)V

    .line 170
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setName(Ljava/lang/String;)V

    .line 171
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setType(I)V

    .line 172
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setSpeed(I)V

    .line 173
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setSaveFlag(I)V

    .line 174
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setDistance(F)V

    .line 175
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setIsCurve(I)V

    .line 176
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setMapType(I)V

    .line 177
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setRunByMapOrVedio(I)V

    .line 178
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setDisconnectType(I)V

    .line 179
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setExcuteEnd(I)V

    .line 180
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setAutoRecord(I)V

    .line 181
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p2, v1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setLocality(Ljava/lang/String;)V

    .line 182
    return-void

    .line 168
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 170
    :cond_1
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 181
    :cond_2
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->readEntity(Landroid/database/Cursor;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 142
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
    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final updateKeyAfterInsert(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;J)Ljava/lang/Long;
    .locals 2
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    .param p2, "rowId"    # J

    .prologue
    .line 186
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setId(Ljava/lang/Long;)V

    .line 187
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 18
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;->updateKeyAfterInsert(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
