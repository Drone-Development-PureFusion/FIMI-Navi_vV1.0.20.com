.class final enum Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;
.super Ljava/lang/Enum;
.source "X8AiD2PExcuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AiGetPointState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

.field public static final enum END:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

.field public static final enum GET_POINT:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

.field public static final enum IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    const-string v1, "GET_POINT"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;->GET_POINT:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    const-string v1, "END"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;->END:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;->GET_POINT:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;->END:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;->$VALUES:[Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;->$VALUES:[Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    return-object v0
.end method
