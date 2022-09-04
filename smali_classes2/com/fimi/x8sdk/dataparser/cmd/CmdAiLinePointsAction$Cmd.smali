.class public final enum Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;
.super Ljava/lang/Enum;
.source "CmdAiLinePointsAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

.field public static final enum HOVER:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

.field public static final enum NULL:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

.field public static final enum PANORAMA:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

.field public static final enum PHOTO:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

.field public static final enum SLOW_VIDEO:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

.field public static final enum VIDEO:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    const-string v1, "NULL"

    invoke-direct {v0, v1, v3}, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->NULL:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    new-instance v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    const-string v1, "HOVER"

    invoke-direct {v0, v1, v4}, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->HOVER:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    new-instance v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v5}, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->PHOTO:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    new-instance v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->VIDEO:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    new-instance v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    const-string v1, "SLOW_VIDEO"

    invoke-direct {v0, v1, v7}, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->SLOW_VIDEO:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    new-instance v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    const-string v1, "PANORAMA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->PANORAMA:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    sget-object v1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->NULL:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->HOVER:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->PHOTO:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->VIDEO:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->SLOW_VIDEO:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->PANORAMA:Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->$VALUES:[Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    return-object v0
.end method

.method public static values()[Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->$VALUES:[Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    invoke-virtual {v0}, [Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction$Cmd;

    return-object v0
.end method
