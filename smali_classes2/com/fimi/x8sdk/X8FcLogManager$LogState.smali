.class public final enum Lcom/fimi/x8sdk/X8FcLogManager$LogState;
.super Ljava/lang/Enum;
.source "X8FcLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/X8FcLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/X8FcLogManager$LogState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/X8FcLogManager$LogState;

.field public static final enum INSKY:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

.field public static final enum ONGROUND:Lcom/fimi/x8sdk/X8FcLogManager$LogState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    const-string v1, "INSKY"

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/X8FcLogManager$LogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->INSKY:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    new-instance v0, Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    const-string v1, "ONGROUND"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/X8FcLogManager$LogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->ONGROUND:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    sget-object v1, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->INSKY:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->ONGROUND:Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->$VALUES:[Lcom/fimi/x8sdk/X8FcLogManager$LogState;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/X8FcLogManager$LogState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/X8FcLogManager$LogState;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/fimi/x8sdk/X8FcLogManager$LogState;->$VALUES:[Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/X8FcLogManager$LogState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/X8FcLogManager$LogState;

    return-object v0
.end method
