.class public final enum Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;
.super Ljava/lang/Enum;
.source "X8Cali.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/cmdsenum/X8Cali;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SensorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

.field public static final enum IDLE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

.field public static final enum IMUM:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

.field public static final enum IMUS:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

.field public static final enum MAGM:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

.field public static final enum MAGS:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->IDLE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    .line 32
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    const-string v1, "IMUM"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->IMUM:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    .line 33
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    const-string v1, "IMUS"

    invoke-direct {v0, v1, v4}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->IMUS:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    .line 34
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    const-string v1, "MAGM"

    invoke-direct {v0, v1, v5}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->MAGM:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    .line 35
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    const-string v1, "MAGS"

    invoke-direct {v0, v1, v6}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->MAGS:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->IDLE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->IMUM:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->IMUS:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->MAGM:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->MAGS:Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$SensorType;

    return-object v0
.end method
