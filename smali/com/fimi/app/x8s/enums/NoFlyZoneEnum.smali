.class public final enum Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;
.super Ljava/lang/Enum;
.source "NoFlyZoneEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

.field public static final enum CANDY:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

.field public static final enum CIRCLE:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

.field public static final enum IRREGULAR:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    const-string v1, "CANDY"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->CANDY:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    .line 7
    new-instance v0, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    const-string v1, "CIRCLE"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->CIRCLE:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    .line 9
    new-instance v0, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    const-string v1, "IRREGULAR"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->IRREGULAR:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    sget-object v1, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->CANDY:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->CIRCLE:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->IRREGULAR:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->$VALUES:[Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->$VALUES:[Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    return-object v0
.end method
