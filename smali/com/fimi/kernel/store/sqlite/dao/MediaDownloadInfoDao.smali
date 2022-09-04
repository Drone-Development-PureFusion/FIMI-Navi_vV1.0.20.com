.class public Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "MediaDownloadInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao",
        "<",
        "Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "MEDIA_DOWNLOAD_INFO"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/fimi/kernel/store/sqlite/dao/DaoSession;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 41
    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 3
    .param p0, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 45
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 46
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"MEDIA_DOWNLOAD_INFO\" (\"_id\" INTEGER PRIMARY KEY ,\"START_POS\" INTEGER NOT NULL ,\"END_POS\" INTEGER NOT NULL ,\"COMPELETE_ZIZE\" INTEGER NOT NULL ,\"URL\" TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 52
    return-void

    .line 45
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
    .line 56
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

    const-string v2, "\"MEDIA_DOWNLOAD_INFO\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "sql":Ljava/lang/String;
    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 58
    return-void

    .line 56
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;)V
    .locals 6
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 82
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 83
    .local v0, "id":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 86
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getStartPos()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 87
    const/4 v2, 0x3

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getEndPos()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 88
    const/4 v2, 0x4

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getCompeleteZize()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 90
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 92
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 94
    :cond_1
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;)V
    .locals 6
    .param p1, "stmt"    # Lorg/greenrobot/greendao/database/DatabaseStatement;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .prologue
    .line 62
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 64
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 65
    .local v0, "id":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 68
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getStartPos()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 69
    const/4 v2, 0x3

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getEndPos()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 70
    const/4 v2, 0x4

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getCompeleteZize()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 72
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 74
    const/4 v2, 0x5

    invoke-interface {p1, v2, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 76
    :cond_1
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;)V

    return-void
.end method

.method public getKey(Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;)Ljava/lang/Long;
    .locals 1
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 133
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
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    invoke-virtual {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->getKey(Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hasKey(Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;)Z
    .locals 1
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    invoke-virtual {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->hasKey(Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;)Z

    move-result v0

    return v0
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    const/4 v8, 0x0

    .line 103
    new-instance v0, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    add-int/lit8 v1, p2, 0x0

    .line 104
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v8

    :goto_0
    add-int/lit8 v2, p2, 0x1

    .line 105
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    add-int/lit8 v4, p2, 0x2

    .line 106
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-int/lit8 v6, p2, 0x3

    .line 107
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    add-int/lit8 v9, p2, 0x4

    .line 108
    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    :goto_1
    invoke-direct/range {v0 .. v8}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;-><init>(Ljava/lang/Long;JJJLjava/lang/String;)V

    .line 110
    .local v0, "entity":Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;
    return-object v0

    .line 104
    .end local v0    # "entity":Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;
    :cond_0
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_1
    add-int/lit8 v8, p2, 0x4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 115
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setId(Ljava/lang/Long;)V

    .line 116
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setStartPos(J)V

    .line 117
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setEndPos(J)V

    .line 118
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setCompeleteZize(J)V

    .line 119
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p2, v1}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 120
    return-void

    .line 115
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_1
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->readEntity(Landroid/database/Cursor;Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 98
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
    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final updateKeyAfterInsert(Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;J)Ljava/lang/Long;
    .locals 2
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;
    .param p2, "rowId"    # J

    .prologue
    .line 124
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setId(Ljava/lang/Long;)V

    .line 125
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 18
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/kernel/store/sqlite/dao/MediaDownloadInfoDao;->updateKeyAfterInsert(Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
