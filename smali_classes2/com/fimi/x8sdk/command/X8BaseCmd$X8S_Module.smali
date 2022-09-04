.class public final enum Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;
.super Ljava/lang/Enum;
.source "X8BaseCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/command/X8BaseCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "X8S_Module"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_BATTERY:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_BLACKBOX:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_CAMERA:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_CV:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_Default0X14:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_Default0X15:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_ESC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_GCS:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_HTTP:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_IDLE:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_NFZ:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_OBSAVOID:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_OPTFLOW:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_REPEATER_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_REPEATER_VEHICLE:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_SERVO:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_SV_DWN:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_SV_FW:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_UAV:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

.field public static final enum MODULE_ULTRASONIC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_IDLE"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_IDLE:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 51
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_UAV"

    invoke-direct {v0, v1, v4}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_UAV:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 52
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_FC"

    invoke-direct {v0, v1, v5}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 53
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_CAMERA"

    invoke-direct {v0, v1, v6}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CAMERA:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 54
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_OPTFLOW"

    invoke-direct {v0, v1, v7}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_OPTFLOW:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 55
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_OBSAVOID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_OBSAVOID:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 56
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_HTTP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_HTTP:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 57
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_GCS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GCS:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 58
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_GIMBAL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 59
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_BLACKBOX"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_BLACKBOX:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 60
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_CV"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CV:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 61
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_SV_DWN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_SV_DWN:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 62
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_SV_FW"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_SV_FW:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 63
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_RC"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 64
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_REPEATER_VEHICLE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_REPEATER_VEHICLE:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 65
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_BATTERY"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_BATTERY:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 66
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_REPEATER_RC"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_REPEATER_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 67
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_NFZ"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_NFZ:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 68
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_ESC"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_ESC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 69
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_SERVO"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_SERVO:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 70
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_Default0X14"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_Default0X14:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 71
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_Default0X15"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_Default0X15:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 72
    new-instance v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    const-string v1, "MODULE_ULTRASONIC"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_ULTRASONIC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    .line 49
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_IDLE:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_UAV:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_FC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CAMERA:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_OPTFLOW:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_OBSAVOID:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_HTTP:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GCS:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_GIMBAL:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_BLACKBOX:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_CV:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_SV_DWN:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_SV_FW:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_REPEATER_VEHICLE:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_BATTERY:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_REPEATER_RC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_NFZ:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_ESC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_SERVO:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_Default0X14:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_Default0X15:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->MODULE_ULTRASONIC:Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->$VALUES:[Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->$VALUES:[Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/command/X8BaseCmd$X8S_Module;

    return-object v0
.end method
