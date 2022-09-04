.class public final enum Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;
.super Ljava/lang/Enum;
.source "X8Cali.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/cmdsenum/X8Cali;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaliType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

.field public static final enum CALI_ACC_SIX_POINT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

.field public static final enum CALI_IMU_ORTH:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

.field public static final enum CALI_MAG:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

.field public static final enum CALI_TYPE_IDLE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    const-string v1, "CALI_TYPE_IDLE"

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_TYPE_IDLE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    .line 10
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    const-string v1, "CALI_MAG"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_MAG:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    .line 11
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    const-string v1, "CALI_ACC_SIX_POINT"

    invoke-direct {v0, v1, v4}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_ACC_SIX_POINT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    .line 12
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    const-string v1, "CALI_IMU_ORTH"

    invoke-direct {v0, v1, v5}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_IMU_ORTH:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_TYPE_IDLE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_MAG:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_ACC_SIX_POINT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->CALI_IMU_ORTH:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliType;

    return-object v0
.end method
