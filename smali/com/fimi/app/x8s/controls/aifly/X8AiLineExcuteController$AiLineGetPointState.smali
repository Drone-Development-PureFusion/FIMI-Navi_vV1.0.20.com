.class final enum Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;
.super Ljava/lang/Enum;
.source "X8AiLineExcuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AiLineGetPointState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

.field public static final enum ALL:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

.field public static final enum ALL_VALUE:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

.field public static final enum END:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

.field public static final enum FIRST:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

.field public static final enum IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    const-string v1, "FIRST"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->FIRST:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->ALL:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    const-string v1, "ALL_VALUE"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->ALL_VALUE:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    const-string v1, "END"

    invoke-direct {v0, v1, v6}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->END:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    .line 120
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->FIRST:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->ALL:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->ALL_VALUE:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->END:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->$VALUES:[Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

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
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    const-class v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->$VALUES:[Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    return-object v0
.end method
