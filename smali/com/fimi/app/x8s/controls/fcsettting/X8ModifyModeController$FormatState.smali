.class final enum Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;
.super Ljava/lang/Enum;
.source "X8ModifyModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FormatState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

.field public static final enum GET_FORMAT:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

.field public static final enum IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

.field public static final enum SEND_FORMAT_LOG:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

.field public static final enum SEND_FORMAT_UPGRADE:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 472
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    .line 473
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    const-string v1, "SEND_FORMAT_LOG"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->SEND_FORMAT_LOG:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    .line 474
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    const-string v1, "SEND_FORMAT_UPGRADE"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->SEND_FORMAT_UPGRADE:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    .line 475
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    const-string v1, "GET_FORMAT"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->GET_FORMAT:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    .line 471
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->SEND_FORMAT_LOG:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->SEND_FORMAT_UPGRADE:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->GET_FORMAT:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

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
    .line 471
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 471
    const-class v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;
    .locals 1

    .prologue
    .line 471
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    return-object v0
.end method
