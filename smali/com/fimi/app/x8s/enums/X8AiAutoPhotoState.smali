.class public final enum Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;
.super Ljava/lang/Enum;
.source "X8AiAutoPhotoState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

.field public static final enum IDLE:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

.field public static final enum RUNNING:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

.field public static final enum STOP:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    .line 9
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    .line 10
    new-instance v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->STOP:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->STOP:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->$VALUES:[Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->$VALUES:[Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    return-object v0
.end method
