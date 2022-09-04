.class public Lcom/fimi/kernel/store/sqlite/helper/core/UpgradeOpenHelper;
.super Lcom/fimi/kernel/store/sqlite/dao/DaoMaster$OpenHelper;
.source "UpgradeOpenHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
    .locals 4
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 21
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;->getInstance()Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/fimi/kernel/store/sqlite/dao/StudentDao;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;->migrate(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    .line 36
    return-void
.end method
