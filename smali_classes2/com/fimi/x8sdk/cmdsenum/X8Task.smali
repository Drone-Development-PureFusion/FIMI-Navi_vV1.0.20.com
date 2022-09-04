.class public final enum Lcom/fimi/x8sdk/cmdsenum/X8Task;
.super Ljava/lang/Enum;
.source "X8Task.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/cmdsenum/X8Task;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_AERIAL_SHOT:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_AUTO_LANDING:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_AUTO_TAKE_OFF:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_EMERGENCY_LANDING:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_EMERGENCY_RTH:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_FIXWING:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_FLY_TO:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_FOLLOW:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_HEADING_FREE:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_INTEREST_POINT:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_MISSION:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_NORMAL:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_NULL:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_RTH:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_SELFIE:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_SPIRAL:Lcom/fimi/x8sdk/cmdsenum/X8Task;

.field public static final enum VCM_TRIPOD:Lcom/fimi/x8sdk/cmdsenum/X8Task;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_NULL"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_NULL:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 9
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_NORMAL:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 10
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_AUTO_TAKE_OFF"

    invoke-direct {v0, v1, v5}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_AUTO_TAKE_OFF:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 11
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_AUTO_LANDING"

    invoke-direct {v0, v1, v6}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_AUTO_LANDING:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 12
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_FLY_TO"

    invoke-direct {v0, v1, v7}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_FLY_TO:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 13
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_INTEREST_POINT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_INTEREST_POINT:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 14
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_MISSION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_MISSION:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 15
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_RTH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_RTH:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 16
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_EMERGENCY_RTH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_EMERGENCY_RTH:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 17
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_EMERGENCY_LANDING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_EMERGENCY_LANDING:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 18
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_SELFIE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_SELFIE:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 19
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_FOLLOW"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_FOLLOW:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 20
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_HEADING_FREE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_HEADING_FREE:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 21
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_FIXWING"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_FIXWING:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 22
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_SPIRAL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_SPIRAL:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 23
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_TRIPOD"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_TRIPOD:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 24
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    const-string v1, "VCM_AERIAL_SHOT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_AERIAL_SHOT:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 7
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/fimi/x8sdk/cmdsenum/X8Task;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_NULL:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_NORMAL:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_AUTO_TAKE_OFF:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_AUTO_LANDING:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_FLY_TO:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_INTEREST_POINT:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_MISSION:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_RTH:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_EMERGENCY_RTH:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_EMERGENCY_LANDING:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_SELFIE:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_FOLLOW:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_HEADING_FREE:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_FIXWING:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_SPIRAL:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_TRIPOD:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_AERIAL_SHOT:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Task;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/cmdsenum/X8Task;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/cmdsenum/X8Task;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Task;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Task;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/cmdsenum/X8Task;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/cmdsenum/X8Task;

    return-object v0
.end method
