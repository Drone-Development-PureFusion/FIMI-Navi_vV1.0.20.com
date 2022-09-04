.class public Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;
.super Ljava/lang/Object;
.source "X8AiLinePointInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AutoRecord:Lorg/greenrobot/greendao/Property;

.field public static final DisconnectType:Lorg/greenrobot/greendao/Property;

.field public static final Distance:Lorg/greenrobot/greendao/Property;

.field public static final ExcuteEnd:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final IsCurve:Lorg/greenrobot/greendao/Property;

.field public static final Locality:Lorg/greenrobot/greendao/Property;

.field public static final MapType:Lorg/greenrobot/greendao/Property;

.field public static final Name:Lorg/greenrobot/greendao/Property;

.field public static final RunByMapOrVedio:Lorg/greenrobot/greendao/Property;

.field public static final SaveFlag:Lorg/greenrobot/greendao/Property;

.field public static final Speed:Lorg/greenrobot/greendao/Property;

.field public static final Time:Lorg/greenrobot/greendao/Property;

.field public static final Type:Lorg/greenrobot/greendao/Property;


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

    sput-object v0, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v3, Lorg/greenrobot/greendao/Property;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string/jumbo v6, "time"

    const-string v8, "TIME"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->Time:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "name"

    const-string v7, "NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    .line 30
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v5, "type"

    const-string v7, "TYPE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->Type:Lorg/greenrobot/greendao/Property;

    .line 31
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "speed"

    const-string v7, "SPEED"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->Speed:Lorg/greenrobot/greendao/Property;

    .line 32
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "saveFlag"

    const-string v7, "SAVE_FLAG"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->SaveFlag:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v5, "distance"

    const-string v7, "DISTANCE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->Distance:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "isCurve"

    const-string v7, "IS_CURVE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->IsCurve:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0x8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "mapType"

    const-string v7, "MAP_TYPE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->MapType:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0x9

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "runByMapOrVedio"

    const-string v7, "RUN_BY_MAP_OR_VEDIO"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->RunByMapOrVedio:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0xa

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "disconnectType"

    const-string v7, "DISCONNECT_TYPE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->DisconnectType:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0xb

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "excuteEnd"

    const-string v7, "EXCUTE_END"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->ExcuteEnd:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0xc

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "autoRecord"

    const-string v7, "AUTO_RECORD"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->AutoRecord:Lorg/greenrobot/greendao/Property;

    .line 40
    new-instance v2, Lorg/greenrobot/greendao/Property;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/String;

    const-string v5, "locality"

    const-string v7, "LOCALITY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/fimi/kernel/store/sqlite/dao/X8AiLinePointInfoDao$Properties;->Locality:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
