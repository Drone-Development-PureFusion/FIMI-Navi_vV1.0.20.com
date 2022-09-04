.class public final enum Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;
.super Ljava/lang/Enum;
.source "X8Cali.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/cmdsenum/X8Cali;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaliStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

.field public static final enum CALI_STEP_DATA_PROCESS:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

.field public static final enum CALI_STEP_ENVIRONMENT_CHECK:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

.field public static final enum CALI_STEP_HORIZONTAL:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

.field public static final enum CALI_STEP_IDLE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

.field public static final enum CALI_STEP_ORTH:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

.field public static final enum CALI_STEP_VERTICAL:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

.field public static final enum CALI_STEP_X_NAGITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

.field public static final enum CALI_STEP_X_POSITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

.field public static final enum CALI_STEP_Y_NAGITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

.field public static final enum CALI_STEP_Y_POSITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

.field public static final enum CALI_STEP_Z_NAGITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

.field public static final enum CALI_STEP_Z_POSITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    const-string v1, "CALI_STEP_IDLE"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_IDLE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    .line 55
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    const-string v1, "CALI_STEP_HORIZONTAL"

    invoke-direct {v0, v1, v4}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_HORIZONTAL:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    .line 56
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    const-string v1, "CALI_STEP_VERTICAL"

    invoke-direct {v0, v1, v5}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_VERTICAL:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    .line 57
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    const-string v1, "CALI_STEP_ORTH"

    invoke-direct {v0, v1, v6}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_ORTH:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    .line 58
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    const-string v1, "CALI_STEP_X_POSITIVE_DIR"

    invoke-direct {v0, v1, v7}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_X_POSITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    .line 59
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    const-string v1, "CALI_STEP_X_NAGITIVE_DIR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_X_NAGITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    .line 60
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    const-string v1, "CALI_STEP_Y_POSITIVE_DIR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_Y_POSITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    .line 61
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    const-string v1, "CALI_STEP_Y_NAGITIVE_DIR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_Y_NAGITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    .line 62
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    const-string v1, "CALI_STEP_Z_POSITIVE_DIR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_Z_POSITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    .line 63
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    const-string v1, "CALI_STEP_Z_NAGITIVE_DIR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_Z_NAGITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    .line 64
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    const-string v1, "CALI_STEP_ENVIRONMENT_CHECK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_ENVIRONMENT_CHECK:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    .line 65
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    const-string v1, "CALI_STEP_DATA_PROCESS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_DATA_PROCESS:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    .line 53
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_IDLE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_HORIZONTAL:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_VERTICAL:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_ORTH:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_X_POSITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_X_NAGITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_Y_POSITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_Y_NAGITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_Z_POSITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_Z_NAGITIVE_DIR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_ENVIRONMENT_CHECK:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_DATA_PROCESS:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    return-object v0
.end method
