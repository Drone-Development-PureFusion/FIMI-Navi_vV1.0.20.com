.class public Lcom/fimi/kernel/store/sqlite/dao/StudentDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "StudentDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/store/sqlite/dao/StudentDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao",
        "<",
        "Lcom/fimi/kernel/store/sqlite/entity/Student;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "STUDENT"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/fimi/kernel/store/sqlite/dao/DaoSession;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 40
    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 3
    .param p0, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 44
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 45
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"STUDENT\" (\"_id\" INTEGER PRIMARY KEY ,\"NAME\" TEXT,\"AGE\" TEXT,\"NUMBER\" TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 50
    return-void

    .line 44
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
    .line 54
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

    const-string v2, "\"STUDENT\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "sql":Ljava/lang/String;
    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 56
    return-void

    .line 54
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/fimi/kernel/store/sqlite/entity/Student;)V
    .locals 8
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/Student;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 87
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/Student;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 88
    .local v1, "id":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 89
    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 92
    :cond_0
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/Student;->getName()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 94
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 97
    :cond_1
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/Student;->getAge()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "age":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 99
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 102
    :cond_2
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/Student;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "number":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 104
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 106
    :cond_3
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/Student;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/StudentDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/fimi/kernel/store/sqlite/entity/Student;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/fimi/kernel/store/sqlite/entity/Student;)V
    .locals 8
    .param p1, "stmt"    # Lorg/greenrobot/greendao/database/DatabaseStatement;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/Student;

    .prologue
    .line 60
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 62
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/Student;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 63
    .local v1, "id":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 64
    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {p1, v4, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 67
    :cond_0
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/Student;->getName()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 69
    const/4 v4, 0x2

    invoke-interface {p1, v4, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 72
    :cond_1
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/Student;->getAge()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "age":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 74
    const/4 v4, 0x3

    invoke-interface {p1, v4, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 77
    :cond_2
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/Student;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "number":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 79
    const/4 v4, 0x4

    invoke-interface {p1, v4, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 81
    :cond_3
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/Student;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/StudentDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/fimi/kernel/store/sqlite/entity/Student;)V

    return-void
.end method

.method public getKey(Lcom/fimi/kernel/store/sqlite/entity/Student;)Ljava/lang/Long;
    .locals 1
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/Student;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/Student;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 143
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
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/Student;

    invoke-virtual {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/StudentDao;->getKey(Lcom/fimi/kernel/store/sqlite/entity/Student;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hasKey(Lcom/fimi/kernel/store/sqlite/entity/Student;)Z
    .locals 1
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/Student;

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/Student;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/Student;

    invoke-virtual {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/StudentDao;->hasKey(Lcom/fimi/kernel/store/sqlite/entity/Student;)Z

    move-result v0

    return v0
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/fimi/kernel/store/sqlite/entity/Student;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/fimi/kernel/store/sqlite/entity/Student;

    add-int/lit8 v1, p2, 0x0

    .line 116
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 117
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    :goto_1
    add-int/lit8 v4, p2, 0x2

    .line 118
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    :goto_2
    add-int/lit8 v5, p2, 0x3

    .line 119
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_3
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/fimi/kernel/store/sqlite/entity/Student;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v0, "entity":Lcom/fimi/kernel/store/sqlite/entity/Student;
    return-object v0

    .line 116
    .end local v0    # "entity":Lcom/fimi/kernel/store/sqlite/entity/Student;
    :cond_0
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 117
    :cond_1
    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 118
    :cond_2
    add-int/lit8 v4, p2, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 119
    :cond_3
    add-int/lit8 v2, p2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/StudentDao;->readEntity(Landroid/database/Cursor;I)Lcom/fimi/kernel/store/sqlite/entity/Student;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/fimi/kernel/store/sqlite/entity/Student;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/Student;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 126
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/Student;->setId(Ljava/lang/Long;)V

    .line 127
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/Student;->setName(Ljava/lang/String;)V

    .line 128
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/Student;->setAge(Ljava/lang/String;)V

    .line 129
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p2, v1}, Lcom/fimi/kernel/store/sqlite/entity/Student;->setNumber(Ljava/lang/String;)V

    .line 130
    return-void

    .line 126
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 128
    :cond_2
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 129
    :cond_3
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/Student;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/kernel/store/sqlite/dao/StudentDao;->readEntity(Landroid/database/Cursor;Lcom/fimi/kernel/store/sqlite/entity/Student;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 110
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
    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/StudentDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final updateKeyAfterInsert(Lcom/fimi/kernel/store/sqlite/entity/Student;J)Ljava/lang/Long;
    .locals 2
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/Student;
    .param p2, "rowId"    # J

    .prologue
    .line 134
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fimi/kernel/store/sqlite/entity/Student;->setId(Ljava/lang/Long;)V

    .line 135
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 18
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/Student;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/kernel/store/sqlite/dao/StudentDao;->updateKeyAfterInsert(Lcom/fimi/kernel/store/sqlite/entity/Student;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
