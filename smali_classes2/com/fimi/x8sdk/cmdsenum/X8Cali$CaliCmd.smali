.class public final enum Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;
.super Ljava/lang/Enum;
.source "X8Cali.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/cmdsenum/X8Cali;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaliCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

.field public static final enum CALI_CMD_ALL_DONE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

.field public static final enum CALI_CMD_IDLE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

.field public static final enum CALI_CMD_NEXT_STEP:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

.field public static final enum CALI_CMD_QUIT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

.field public static final enum CALI_CMD_RESTART:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

.field public static final enum CALI_CMD_START:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    const-string v1, "CALI_CMD_IDLE"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_IDLE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    .line 17
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    const-string v1, "CALI_CMD_START"

    invoke-direct {v0, v1, v4}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_START:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    .line 18
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    const-string v1, "CALI_CMD_RESTART"

    invoke-direct {v0, v1, v5}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_RESTART:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    .line 19
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    const-string v1, "CALI_CMD_NEXT_STEP"

    invoke-direct {v0, v1, v6}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_NEXT_STEP:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    .line 20
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    const-string v1, "CALI_CMD_QUIT"

    invoke-direct {v0, v1, v7}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_QUIT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    .line 21
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    const-string v1, "CALI_CMD_ALL_DONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_ALL_DONE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_IDLE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_START:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_RESTART:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_NEXT_STEP:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_QUIT:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->CALI_CMD_ALL_DONE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliCmd;

    return-object v0
.end method
