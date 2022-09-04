.class public Lcom/fimi/kernel/store/sqlite/helper/core/DbUtil;
.super Ljava/lang/Object;
.source "DbUtil.java"


# static fields
.field private static sStudentHelper:Lcom/fimi/kernel/store/sqlite/helper/StudentHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDriverDao()Lcom/fimi/kernel/store/sqlite/dao/StudentDao;
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->getDaoSession()Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoSession;->getStudentDao()Lcom/fimi/kernel/store/sqlite/dao/StudentDao;

    move-result-object v0

    return-object v0
.end method

.method public static getDriverHelper()Lcom/fimi/kernel/store/sqlite/helper/StudentHelper;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/fimi/kernel/store/sqlite/helper/core/DbUtil;->sStudentHelper:Lcom/fimi/kernel/store/sqlite/helper/StudentHelper;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/fimi/kernel/store/sqlite/helper/StudentHelper;

    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/core/DbUtil;->getDriverDao()Lcom/fimi/kernel/store/sqlite/dao/StudentDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fimi/kernel/store/sqlite/helper/StudentHelper;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    sput-object v0, Lcom/fimi/kernel/store/sqlite/helper/core/DbUtil;->sStudentHelper:Lcom/fimi/kernel/store/sqlite/helper/StudentHelper;

    .line 23
    :cond_0
    sget-object v0, Lcom/fimi/kernel/store/sqlite/helper/core/DbUtil;->sStudentHelper:Lcom/fimi/kernel/store/sqlite/helper/StudentHelper;

    return-object v0
.end method
