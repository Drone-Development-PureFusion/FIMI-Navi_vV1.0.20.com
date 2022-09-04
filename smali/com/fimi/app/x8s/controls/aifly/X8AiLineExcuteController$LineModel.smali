.class public final enum Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;
.super Ljava/lang/Enum;
.source "X8AiLineExcuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

.field public static final enum HISTORY:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

.field public static final enum MAP:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

.field public static final enum VEDIO:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 257
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->MAP:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    const-string v1, "VEDIO"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->VEDIO:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    const-string v1, "HISTORY"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->HISTORY:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    .line 256
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->MAP:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->VEDIO:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->HISTORY:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->$VALUES:[Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

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
    .line 256
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 256
    const-class v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->$VALUES:[Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;

    return-object v0
.end method
