.class public Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;
.super Ljava/lang/Object;
.source "DataStaticInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final CurrentTime:Lorg/greenrobot/greendao/Property;

.field public static final DeviceType:Lorg/greenrobot/greendao/Property;

.field public static final FlyDistance:Lorg/greenrobot/greendao/Property;

.field public static final FlyHeight:Lorg/greenrobot/greendao/Property;

.field public static final FlyTime:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final Latitude:Lorg/greenrobot/greendao/Property;

.field public static final Longitude:Lorg/greenrobot/greendao/Property;

.field public static final McuVersion:Lorg/greenrobot/greendao/Property;

.field public static final SysVersion:Lorg/greenrobot/greendao/Property;

.field public static final Type:Lorg/greenrobot/greendao/Property;

.field public static final UseTime:Lorg/greenrobot/greendao/Property;

.field public static final UserId:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 27
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/Long;

    const-string v3, "id"

    const-string v5, "_id"

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v3, Lorg/greenrobot/greendao/Property;

    const-class v5, Ljava/lang/String;

    const-string v6, "currentTime"

    const-string v8, "CURRENT_TIME"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->CurrentTime:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "flyTime"

    const-string v7, "FLY_TIME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->FlyTime:Lorg/greenrobot/greendao/Property;

    .line 30
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string/jumbo v5, "userId"

    const-string v7, "USER_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->UserId:Lorg/greenrobot/greendao/Property;

    .line 31
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    const-string/jumbo v5, "useTime"

    const-string v7, "USE_TIME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->UseTime:Lorg/greenrobot/greendao/Property;

    .line 32
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string/jumbo v5, "type"

    const-string v7, "TYPE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->Type:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v5, "deviceType"

    const-string v7, "DEVICE_TYPE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->DeviceType:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    const-string v5, "sysVersion"

    const-string v7, "SYS_VERSION"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->SysVersion:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/String;

    const-string v5, "mcuVersion"

    const-string v7, "MCU_VERSION"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->McuVersion:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    const-string v5, "flyDistance"

    const-string v7, "FLY_DISTANCE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->FlyDistance:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "flyHeight"

    const-string v7, "FLY_HEIGHT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->FlyHeight:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/String;

    const-string v5, "longitude"

    const-string v7, "LONGITUDE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->Longitude:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/String;

    const-string v5, "latitude"

    const-string v7, "LATITUDE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/DataStaticInfoDao$Properties;->Latitude:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
