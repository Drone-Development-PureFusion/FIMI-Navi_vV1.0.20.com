.class public final enum Lcom/fimi/network/DownFwService$DownState;
.super Ljava/lang/Enum;
.source "DownFwService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/network/DownFwService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/network/DownFwService$DownState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/network/DownFwService$DownState;

.field public static final enum DownFail:Lcom/fimi/network/DownFwService$DownState;

.field public static final enum Downing:Lcom/fimi/network/DownFwService$DownState;

.field public static final enum Finish:Lcom/fimi/network/DownFwService$DownState;

.field public static final enum Start:Lcom/fimi/network/DownFwService$DownState;

.field public static final enum StopDown:Lcom/fimi/network/DownFwService$DownState;

.field public static final enum UnStart:Lcom/fimi/network/DownFwService$DownState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/fimi/network/DownFwService$DownState;

    const-string v1, "UnStart"

    invoke-direct {v0, v1, v3}, Lcom/fimi/network/DownFwService$DownState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/network/DownFwService$DownState;->UnStart:Lcom/fimi/network/DownFwService$DownState;

    new-instance v0, Lcom/fimi/network/DownFwService$DownState;

    const-string v1, "Start"

    invoke-direct {v0, v1, v4}, Lcom/fimi/network/DownFwService$DownState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/network/DownFwService$DownState;->Start:Lcom/fimi/network/DownFwService$DownState;

    new-instance v0, Lcom/fimi/network/DownFwService$DownState;

    const-string v1, "Downing"

    invoke-direct {v0, v1, v5}, Lcom/fimi/network/DownFwService$DownState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/network/DownFwService$DownState;->Downing:Lcom/fimi/network/DownFwService$DownState;

    new-instance v0, Lcom/fimi/network/DownFwService$DownState;

    const-string v1, "Finish"

    invoke-direct {v0, v1, v6}, Lcom/fimi/network/DownFwService$DownState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/network/DownFwService$DownState;->Finish:Lcom/fimi/network/DownFwService$DownState;

    new-instance v0, Lcom/fimi/network/DownFwService$DownState;

    const-string v1, "DownFail"

    invoke-direct {v0, v1, v7}, Lcom/fimi/network/DownFwService$DownState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/network/DownFwService$DownState;->DownFail:Lcom/fimi/network/DownFwService$DownState;

    new-instance v0, Lcom/fimi/network/DownFwService$DownState;

    const-string v1, "StopDown"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/network/DownFwService$DownState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/network/DownFwService$DownState;->StopDown:Lcom/fimi/network/DownFwService$DownState;

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fimi/network/DownFwService$DownState;

    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->UnStart:Lcom/fimi/network/DownFwService$DownState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->Start:Lcom/fimi/network/DownFwService$DownState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->Downing:Lcom/fimi/network/DownFwService$DownState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->Finish:Lcom/fimi/network/DownFwService$DownState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->DownFail:Lcom/fimi/network/DownFwService$DownState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/network/DownFwService$DownState;->StopDown:Lcom/fimi/network/DownFwService$DownState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/network/DownFwService$DownState;->$VALUES:[Lcom/fimi/network/DownFwService$DownState;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/network/DownFwService$DownState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/fimi/network/DownFwService$DownState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/DownFwService$DownState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/network/DownFwService$DownState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/fimi/network/DownFwService$DownState;->$VALUES:[Lcom/fimi/network/DownFwService$DownState;

    invoke-virtual {v0}, [Lcom/fimi/network/DownFwService$DownState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/network/DownFwService$DownState;

    return-object v0
.end method
