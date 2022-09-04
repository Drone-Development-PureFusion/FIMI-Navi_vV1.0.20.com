.class public final enum Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;
.super Ljava/lang/Enum;
.source "X8AiModeState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/entity/X8AiModeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AiModeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

.field public static final enum IDLE:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

.field public static final enum READY:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

.field public static final enum RUNNING:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;->IDLE:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    new-instance v0, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;->READY:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    new-instance v0, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;->RUNNING:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    sget-object v1, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;->IDLE:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;->READY:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;->RUNNING:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;->$VALUES:[Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;->$VALUES:[Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    return-object v0
.end method
