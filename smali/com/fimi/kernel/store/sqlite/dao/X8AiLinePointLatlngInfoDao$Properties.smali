.class public Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;
.super Ljava/lang/Object;
.source "X8AiLinePointLatlngInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final Altitude:Lorg/greenrobot/greendao/Property;

.field public static final AltitudePOI:Lorg/greenrobot/greendao/Property;

.field public static final GimbalMode:Lorg/greenrobot/greendao/Property;

.field public static final GimbalPitch:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final Latitude:Lorg/greenrobot/greendao/Property;

.field public static final LatitudePOI:Lorg/greenrobot/greendao/Property;

.field public static final LineId:Lorg/greenrobot/greendao/Property;

.field public static final Longitude:Lorg/greenrobot/greendao/Property;

.field public static final LongitudePOI:Lorg/greenrobot/greendao/Property;

.field public static final MissionFinishAction:Lorg/greenrobot/greendao/Property;

.field public static final Number:Lorg/greenrobot/greendao/Property;

.field public static final PointActionCmd:Lorg/greenrobot/greendao/Property;

.field public static final RCLostAction:Lorg/greenrobot/greendao/Property;

.field public static final Roration:Lorg/greenrobot/greendao/Property;

.field public static final Speed:Lorg/greenrobot/greendao/Property;

.field public static final Totalnumber:Lorg/greenrobot/greendao/Property;

.field public static final TrajectoryMode:Lorg/greenrobot/greendao/Property;

.field public static final Yaw:Lorg/greenrobot/greendao/Property;

.field public static final YawMode:Lorg/greenrobot/greendao/Property;


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

    sput-object v0, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v3, Lorg/greenrobot/greendao/Property;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "number"

    const-string v8, "NUMBER"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->Number:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v5, "totalnumber"

    const-string v7, "TOTALNUMBER"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->Totalnumber:Lorg/greenrobot/greendao/Property;

    .line 30
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v5, "longitude"

    const-string v7, "LONGITUDE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->Longitude:Lorg/greenrobot/greendao/Property;

    .line 31
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v5, "latitude"

    const-string v7, "LATITUDE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->Latitude:Lorg/greenrobot/greendao/Property;

    .line 32
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "altitude"

    const-string v7, "ALTITUDE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->Altitude:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string/jumbo v5, "yaw"

    const-string v7, "YAW"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->Yaw:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "gimbalPitch"

    const-string v7, "GIMBAL_PITCH"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->GimbalPitch:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0x8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "speed"

    const-string v7, "SPEED"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->Speed:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0x9

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v5, "yawMode"

    const-string v7, "YAW_MODE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->YawMode:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0xa

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "gimbalMode"

    const-string v7, "GIMBAL_MODE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->GimbalMode:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0xb

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v5, "trajectoryMode"

    const-string v7, "TRAJECTORY_MODE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->TrajectoryMode:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0xc

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "missionFinishAction"

    const-string v7, "MISSION_FINISH_ACTION"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->MissionFinishAction:Lorg/greenrobot/greendao/Property;

    .line 40
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0xd

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "rCLostAction"

    const-string v7, "R_CLOST_ACTION"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->RCLostAction:Lorg/greenrobot/greendao/Property;

    .line 41
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0xe

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v5, "longitudePOI"

    const-string v7, "LONGITUDE_POI"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->LongitudePOI:Lorg/greenrobot/greendao/Property;

    .line 42
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0xf

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v5, "latitudePOI"

    const-string v7, "LATITUDE_POI"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->LatitudePOI:Lorg/greenrobot/greendao/Property;

    .line 43
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0x10

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "altitudePOI"

    const-string v7, "ALTITUDE_POI"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->AltitudePOI:Lorg/greenrobot/greendao/Property;

    .line 44
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0x11

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v5, "lineId"

    const-string v7, "LINE_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->LineId:Lorg/greenrobot/greendao/Property;

    .line 45
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0x12

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "pointActionCmd"

    const-string v7, "POINT_ACTION_CMD"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->PointActionCmd:Lorg/greenrobot/greendao/Property;

    .line 46
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0x13

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "roration"

    const-string v7, "RORATION"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointLatlngInfoDao$Properties;->Roration:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
