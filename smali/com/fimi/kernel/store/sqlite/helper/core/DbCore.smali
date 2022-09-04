.class public Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;
.super Ljava/lang/Object;
.source "DbCore.java"


# static fields
.field private static DB_NAME:Ljava/lang/String; = null

.field private static final DEFAULT_DB_NAME:Ljava/lang/String; = "_sql.db"

.field private static daoMaster:Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;

.field private static daoSession:Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDaoMaster()Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;
    .locals 3

    .prologue
    .line 33
    sget-object v1, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->daoMaster:Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;

    if-nez v1, :cond_0

    .line 36
    new-instance v0, Lcom/fimi/kernel/store/sqlite/helper/core/UpgradeOpenHelper;

    sget-object v1, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->DB_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/store/sqlite/helper/core/UpgradeOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    .local v0, "helper":Lcom/fimi/kernel/store/sqlite/dao/DaoMaster$OpenHelper;
    new-instance v1, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster$OpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    sput-object v1, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->daoMaster:Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;

    .line 39
    :cond_0
    sget-object v1, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->daoMaster:Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;

    return-object v1
.end method

.method public static getDaoSession()Lcom/fimi/kernel/store/sqlite/dao/DaoSession;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->daoSession:Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    if-nez v0, :cond_1

    .line 44
    sget-object v0, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->daoMaster:Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->getDaoMaster()Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->daoMaster:Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;

    .line 47
    :cond_0
    sget-object v0, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->daoMaster:Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->newSession()Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->daoSession:Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    .line 49
    :cond_1
    sget-object v0, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->daoSession:Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const-string v0, "_sql.db"

    invoke-static {p0, v0}, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->mContext:Landroid/content/Context;

    .line 29
    sput-object p1, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->DB_NAME:Ljava/lang/String;

    .line 30
    return-void
.end method
