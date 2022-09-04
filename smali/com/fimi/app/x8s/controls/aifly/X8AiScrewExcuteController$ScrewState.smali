.class public final enum Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;
.super Ljava/lang/Enum;
.source "X8AiScrewExcuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

.field public static final enum IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

.field public static final enum RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

.field public static final enum SETDOT:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

.field public static final enum SETRADIUS:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    const-string v1, "SETDOT"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->SETDOT:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    const-string v1, "SETRADIUS"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->SETRADIUS:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->SETDOT:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->SETRADIUS:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->$VALUES:[Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    const-class v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->$VALUES:[Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    return-object v0
.end method
