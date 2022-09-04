.class public final enum Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;
.super Ljava/lang/Enum;
.source "X8FpvSignalState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

.field public static final enum IDEL:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

.field public static final enum LOW:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

.field public static final enum MIDDLE:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

.field public static final enum STRONG:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    const-string v1, "IDEL"

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->IDEL:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    .line 9
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->STRONG:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    .line 10
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v4}, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->MIDDLE:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    .line 11
    new-instance v0, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v5}, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->LOW:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->IDEL:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->STRONG:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->MIDDLE:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->LOW:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->$VALUES:[Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    return-object v0
.end method
