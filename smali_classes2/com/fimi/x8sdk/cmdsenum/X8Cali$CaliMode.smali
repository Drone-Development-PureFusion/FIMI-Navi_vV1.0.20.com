.class public final enum Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;
.super Ljava/lang/Enum;
.source "X8Cali.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/cmdsenum/X8Cali;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaliMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

.field public static final enum CALI_MODE_AUTO:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

.field public static final enum CALI_MODE_MANUALLY:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

.field public static final enum CALI_MODE_NULL:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    const-string v1, "CALI_MODE_NULL"

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_NULL:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    .line 26
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    const-string v1, "CALI_MODE_AUTO"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_AUTO:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    .line 27
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    const-string v1, "CALI_MODE_MANUALLY"

    invoke-direct {v0, v1, v4}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_MANUALLY:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_NULL:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_AUTO:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->CALI_MODE_MANUALLY:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliMode;

    return-object v0
.end method
