.class public final enum Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;
.super Ljava/lang/Enum;
.source "X8AiGravitationExcuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "X8GravitationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

.field public static final enum IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

.field public static final enum RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

.field public static final enum RUNNING_DISCONNECT:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 458
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    .line 459
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    .line 460
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    const-string v1, "RUNNING_DISCONNECT"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->RUNNING_DISCONNECT:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    .line 457
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->RUNNING_DISCONNECT:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->$VALUES:[Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

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
    .line 457
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 457
    const-class v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;
    .locals 1

    .prologue
    .line 457
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->$VALUES:[Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    return-object v0
.end method
