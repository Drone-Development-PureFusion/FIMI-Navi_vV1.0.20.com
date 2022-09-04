.class public final enum Lcom/fimi/app/x8s/enums/X8AiSuroundState;
.super Ljava/lang/Enum;
.source "X8AiSuroundState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/enums/X8AiSuroundState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/enums/X8AiSuroundState;

.field public static final enum GET_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

.field public static final enum IDLE:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

.field public static final enum RUNNING:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

.field public static final enum SET_CIRCLE_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

.field public static final enum SET_PARAMETER:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

.field public static final enum SET_TAKE_OFF_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

.field public static final enum STOP:Lcom/fimi/app/x8s/enums/X8AiSuroundState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/enums/X8AiSuroundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .line 10
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    const-string v1, "GET_POINT"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/enums/X8AiSuroundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->GET_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .line 12
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    const-string v1, "SET_CIRCLE_POINT"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/enums/X8AiSuroundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_CIRCLE_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .line 14
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    const-string v1, "SET_TAKE_OFF_POINT"

    invoke-direct {v0, v1, v6}, Lcom/fimi/app/x8s/enums/X8AiSuroundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_TAKE_OFF_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .line 16
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    const-string v1, "SET_PARAMETER"

    invoke-direct {v0, v1, v7}, Lcom/fimi/app/x8s/enums/X8AiSuroundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_PARAMETER:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .line 18
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    const-string v1, "RUNNING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8AiSuroundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .line 19
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    const-string v1, "STOP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8AiSuroundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->STOP:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->GET_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_CIRCLE_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_TAKE_OFF_POINT:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->SET_PARAMETER:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->STOP:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->$VALUES:[Lcom/fimi/app/x8s/enums/X8AiSuroundState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/enums/X8AiSuroundState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/enums/X8AiSuroundState;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->$VALUES:[Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/enums/X8AiSuroundState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    return-object v0
.end method
