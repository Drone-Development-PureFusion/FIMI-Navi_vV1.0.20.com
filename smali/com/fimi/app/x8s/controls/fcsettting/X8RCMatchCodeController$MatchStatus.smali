.class public final enum Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;
.super Ljava/lang/Enum;
.source "X8RCMatchCodeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

.field public static final enum doing:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

.field public static final enum ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    const-string v1, "ideal"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    const-string v1, "doing"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8RCMatchCodeController$MatchStatus;

    return-object v0
.end method
