.class public Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "X8AiLinePointLatlngInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao",
        "<",
        "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "X8_AI_LINE_POINT_LATLNG_INFO"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/fimi/kernel/store/sqlite/dao/DaoSession;)V
    .locals 0
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/fimi/kernel/store/sqlite/dao/DaoSession;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 56
    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 3
    .param p0, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 60
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 61
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"X8_AI_LINE_POINT_LATLNG_INFO\" (\"_id\" INTEGER PRIMARY KEY ,\"NUMBER\" INTEGER NOT NULL ,\"TOTALNUMBER\" INTEGER NOT NULL ,\"LONGITUDE\" REAL NOT NULL ,\"LATITUDE\" REAL NOT NULL ,\"ALTITUDE\" INTEGER NOT NULL ,\"YAW\" REAL NOT NULL ,\"GIMBAL_PITCH\" INTEGER NOT NULL ,\"SPEED\" INTEGER NOT NULL ,\"YAW_MODE\" INTEGER NOT NULL ,\"GIMBAL_MODE\" INTEGER NOT NULL ,\"TRAJECTORY_MODE\" INTEGER NOT NULL ,\"MISSION_FINISH_ACTION\" INTEGER NOT NULL ,\"R_CLOST_ACTION\" INTEGER NOT NULL ,\"LONGITUDE_POI\" REAL NOT NULL ,\"LATITUDE_POI\" REAL NOT NULL ,\"ALTITUDE_POI\" INTEGER NOT NULL ,\"LINE_ID\" INTEGER NOT NULL ,\"POINT_ACTION_CMD\" INTEGER NOT NULL ,\"RORATION\" INTEGER NOT NULL );"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 82
    return-void

    .line 60
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
    .line 86
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

    const-string v2, "\"X8_AI_LINE_POINT_LATLNG_INFO\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "sql":Ljava/lang/String;
    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 88
    return-void

    .line 86
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;)V
    .locals 4
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 123
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 124
    .local v0, "id":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 125
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 127
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getNumber()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 128
    const/4 v1, 0x3

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getTotalnumber()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 129
    const/4 v1, 0x4

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 130
    const/4 v1, 0x5

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 131
    const/4 v1, 0x6

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getAltitude()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 132
    const/4 v1, 0x7

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getYaw()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 133
    const/16 v1, 0x8

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getGimbalPitch()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 134
    const/16 v1, 0x9

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getSpeed()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 135
    const/16 v1, 0xa

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getYawMode()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 136
    const/16 v1, 0xb

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getGimbalMode()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 137
    const/16 v1, 0xc

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getTrajectoryMode()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 138
    const/16 v1, 0xd

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getMissionFinishAction()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 139
    const/16 v1, 0xe

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getRCLostAction()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 140
    const/16 v1, 0xf

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLongitudePOI()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 141
    const/16 v1, 0x10

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLatitudePOI()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 142
    const/16 v1, 0x11

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getAltitudePOI()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 143
    const/16 v1, 0x12

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLineId()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 144
    const/16 v1, 0x13

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getPointActionCmd()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 145
    const/16 v1, 0x14

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getRoration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 146
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;)V
    .locals 4
    .param p1, "stmt"    # Lorg/greenrobot/greendao/database/DatabaseStatement;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    .prologue
    .line 92
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 94
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 95
    .local v0, "id":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 96
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 98
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getNumber()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 99
    const/4 v1, 0x3

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getTotalnumber()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 100
    const/4 v1, 0x4

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLongitude()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 101
    const/4 v1, 0x5

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLatitude()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 102
    const/4 v1, 0x6

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getAltitude()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 103
    const/4 v1, 0x7

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getYaw()F

    move-result v2

    float-to-double v2, v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 104
    const/16 v1, 0x8

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getGimbalPitch()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 105
    const/16 v1, 0x9

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getSpeed()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 106
    const/16 v1, 0xa

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getYawMode()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 107
    const/16 v1, 0xb

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getGimbalMode()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 108
    const/16 v1, 0xc

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getTrajectoryMode()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 109
    const/16 v1, 0xd

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getMissionFinishAction()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 110
    const/16 v1, 0xe

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getRCLostAction()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 111
    const/16 v1, 0xf

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLongitudePOI()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 112
    const/16 v1, 0x10

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLatitudePOI()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 113
    const/16 v1, 0x11

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getAltitudePOI()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 114
    const/16 v1, 0x12

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getLineId()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 115
    const/16 v1, 0x13

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getPointActionCmd()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 116
    const/16 v1, 0x14

    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getRoration()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 117
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;)V

    return-void
.end method

.method public getKey(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;)Ljava/lang/Long;
    .locals 1
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 215
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
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    invoke-virtual {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;->getKey(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hasKey(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;)Z
    .locals 1
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    .prologue
    .line 221
    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->getId()Ljava/lang/Long;

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
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    invoke-virtual {p0, p1}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;->hasKey(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;)Z

    move-result v0

    return v0
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    .locals 28
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 155
    new-instance v2, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    add-int/lit8 v3, p2, 0x0

    .line 156
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, p2, 0x1

    .line 157
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v5, p2, 0x2

    .line 158
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v6, p2, 0x3

    .line 159
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    add-int/lit8 v8, p2, 0x4

    .line 160
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    add-int/lit8 v10, p2, 0x5

    .line 161
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v11, p2, 0x6

    .line 162
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    add-int/lit8 v12, p2, 0x7

    .line 163
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v13, p2, 0x8

    .line 164
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    add-int/lit8 v14, p2, 0x9

    .line 165
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    add-int/lit8 v15, p2, 0xa

    .line 166
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    add-int/lit8 v16, p2, 0xb

    .line 167
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    add-int/lit8 v17, p2, 0xc

    .line 168
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    add-int/lit8 v18, p2, 0xd

    .line 169
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    add-int/lit8 v19, p2, 0xe

    .line 170
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v19

    add-int/lit8 v21, p2, 0xf

    .line 171
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v21

    add-int/lit8 v23, p2, 0x10

    .line 172
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    add-int/lit8 v24, p2, 0x11

    .line 173
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    add-int/lit8 v26, p2, 0x12

    .line 174
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    add-int/lit8 v27, p2, 0x13

    .line 175
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-direct/range {v2 .. v27}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;-><init>(Ljava/lang/Long;IIDDIFIIIIIIIDDIJII)V

    .line 177
    .local v2, "entity":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    return-object v2

    .line 156
    .end local v2    # "entity":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    :cond_0
    add-int/lit8 v3, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    .param p3, "offset"    # I

    .prologue
    .line 182
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setId(Ljava/lang/Long;)V

    .line 183
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setNumber(I)V

    .line 184
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setTotalnumber(I)V

    .line 185
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setLongitude(D)V

    .line 186
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setLatitude(D)V

    .line 187
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setAltitude(I)V

    .line 188
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setYaw(F)V

    .line 189
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setGimbalPitch(I)V

    .line 190
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setSpeed(I)V

    .line 191
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setYawMode(I)V

    .line 192
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setGimbalMode(I)V

    .line 193
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setTrajectoryMode(I)V

    .line 194
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setMissionFinishAction(I)V

    .line 195
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setRCLostAction(I)V

    .line 196
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setLongitudePOI(D)V

    .line 197
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setLatitudePOI(D)V

    .line 198
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setAltitudePOI(I)V

    .line 199
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setLineId(J)V

    .line 200
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setPointActionCmd(I)V

    .line 201
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setRoration(I)V

    .line 202
    return-void

    .line 182
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;->readEntity(Landroid/database/Cursor;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 150
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
    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final updateKeyAfterInsert(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;J)Ljava/lang/Long;
    .locals 2
    .param p1, "entity"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;
    .param p2, "rowId"    # J

    .prologue
    .line 206
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;->setId(Ljava/lang/Long;)V

    .line 207
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 18
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;->updateKeyAfterInsert(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointLatlngInfo;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
