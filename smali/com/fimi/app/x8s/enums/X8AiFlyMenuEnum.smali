.class public final enum Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;
.super Ljava/lang/Enum;
.source "X8AiFlyMenuEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum AI_AERIALPHOTOGRAPH:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum AI_AUTO_PHOTO_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum AI_FIXEDWING:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum AI_FLY_GRAVITATION:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum AI_FOLLOW_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum AI_HEADINGLOCK:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum AI_LANDING:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum AI_LINE_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum AI_POINT2POINT_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum AI_RETURN:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum AI_SAR:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum AI_SCREW:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum AI_SURROUNDPOINT_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum AI_TAKE_OFF:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum AI_TTIPOD:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

.field public static final enum ALL_ITEMS:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "ALL_ITEMS"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->ALL_ITEMS:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 5
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "AI_TAKE_OFF"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_TAKE_OFF:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 6
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "AI_LANDING"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_LANDING:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 7
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "AI_RETURN"

    invoke-direct {v0, v1, v6}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_RETURN:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 8
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "AI_FOLLOW_CONFIRM"

    invoke-direct {v0, v1, v7}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_FOLLOW_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 9
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "AI_POINT2POINT_CONFIRM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_POINT2POINT_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 10
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "AI_SURROUNDPOINT_CONFIRM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_SURROUNDPOINT_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 11
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "AI_LINE_CONFIRM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_LINE_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 12
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "AI_AUTO_PHOTO_CONFIRM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_AUTO_PHOTO_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 13
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "AI_TTIPOD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_TTIPOD:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 14
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "AI_AERIALPHOTOGRAPH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_AERIALPHOTOGRAPH:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 15
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "AI_FIXEDWING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_FIXEDWING:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 16
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "AI_HEADINGLOCK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_HEADINGLOCK:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 17
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "AI_SCREW"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_SCREW:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 18
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "AI_SAR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_SAR:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 19
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    const-string v1, "AI_FLY_GRAVITATION"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_FLY_GRAVITATION:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    .line 3
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->ALL_ITEMS:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_TAKE_OFF:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_LANDING:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_RETURN:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_FOLLOW_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_POINT2POINT_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_SURROUNDPOINT_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_LINE_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_AUTO_PHOTO_CONFIRM:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_TTIPOD:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_AERIALPHOTOGRAPH:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_FIXEDWING:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_HEADINGLOCK:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_SCREW:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_SAR:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->AI_FLY_GRAVITATION:Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->$VALUES:[Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->$VALUES:[Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/enums/X8AiFlyMenuEnum;

    return-object v0
.end method
