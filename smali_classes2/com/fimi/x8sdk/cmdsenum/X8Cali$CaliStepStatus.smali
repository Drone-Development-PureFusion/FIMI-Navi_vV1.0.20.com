.class public final enum Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;
.super Ljava/lang/Enum;
.source "X8Cali.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/cmdsenum/X8Cali;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaliStepStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

.field public static final enum CALI_STA_COMPUTING:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

.field public static final enum CALI_STA_DONE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

.field public static final enum CALI_STA_ERR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

.field public static final enum CALI_STA_HANG_UP:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

.field public static final enum CALI_STA_IDLE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

.field public static final enum CALI_STA_OBSERVERING:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

.field public static final enum CALI_STA_QUIT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

.field public static final enum CALI_STA_SAMPLED:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

.field public static final enum CALI_STA_SAMPLE_DONE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

.field public static final enum CALI_STA_SAMPLING:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

.field public static final enum CALI_STA_SAVING:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

.field public static final enum CALI_STA_WAIT_NEXT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    const-string v1, "CALI_STA_IDLE"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_IDLE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    .line 40
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    const-string v1, "CALI_STA_OBSERVERING"

    invoke-direct {v0, v1, v4}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_OBSERVERING:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    .line 41
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    const-string v1, "CALI_STA_SAMPLING"

    invoke-direct {v0, v1, v5}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_SAMPLING:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    .line 42
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    const-string v1, "CALI_STA_COMPUTING"

    invoke-direct {v0, v1, v6}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_COMPUTING:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    .line 43
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    const-string v1, "CALI_STA_SAVING"

    invoke-direct {v0, v1, v7}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_SAVING:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    .line 44
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    const-string v1, "CALI_STA_WAIT_NEXT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_WAIT_NEXT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    .line 45
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    const-string v1, "CALI_STA_QUIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_QUIT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    .line 46
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    const-string v1, "CALI_STA_HANG_UP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_HANG_UP:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    .line 47
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    const-string v1, "CALI_STA_DONE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_DONE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    .line 48
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    const-string v1, "CALI_STA_ERR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_ERR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    .line 49
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    const-string v1, "CALI_STA_SAMPLED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_SAMPLED:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    .line 50
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    const-string v1, "CALI_STA_SAMPLE_DONE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_SAMPLE_DONE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    .line 38
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_IDLE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_OBSERVERING:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_SAMPLING:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_COMPUTING:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_SAVING:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_WAIT_NEXT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_QUIT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_HANG_UP:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_DONE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_ERR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_SAMPLED:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_SAMPLE_DONE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    return-object v0
.end method
