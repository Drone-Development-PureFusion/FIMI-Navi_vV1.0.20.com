.class public final enum Lcom/fimi/app/x8s/enums/X8AiFollowState;
.super Ljava/lang/Enum;
.source "X8AiFollowState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/enums/X8AiFollowState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/enums/X8AiFollowState;

.field public static final enum DETECTION:Lcom/fimi/app/x8s/enums/X8AiFollowState;

.field public static final enum IDLE:Lcom/fimi/app/x8s/enums/X8AiFollowState;

.field public static final enum OEPNVIEW:Lcom/fimi/app/x8s/enums/X8AiFollowState;

.field public static final enum RUNNING:Lcom/fimi/app/x8s/enums/X8AiFollowState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8AiFollowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;

    const-string v1, "OEPNVIEW"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/enums/X8AiFollowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;->OEPNVIEW:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;

    const-string v1, "DETECTION"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/enums/X8AiFollowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;->DETECTION:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/enums/X8AiFollowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fimi/app/x8s/enums/X8AiFollowState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFollowState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFollowState;->OEPNVIEW:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFollowState;->DETECTION:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFollowState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;->$VALUES:[Lcom/fimi/app/x8s/enums/X8AiFollowState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/enums/X8AiFollowState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/enums/X8AiFollowState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiFollowState;->$VALUES:[Lcom/fimi/app/x8s/enums/X8AiFollowState;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/enums/X8AiFollowState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/enums/X8AiFollowState;

    return-object v0
.end method
