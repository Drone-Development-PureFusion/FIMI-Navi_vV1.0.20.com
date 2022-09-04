.class public final enum Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;
.super Ljava/lang/Enum;
.source "X8CloudCalibrationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GimbalStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

.field public static final enum conBroken:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

.field public static final enum doing:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

.field public static final enum fail:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

.field public static final enum finish:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

.field public static final enum ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    const-string v1, "ideal"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    const-string v1, "doing"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    const-string v1, "fail"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->fail:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    const-string v1, "conBroken"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->conBroken:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    const-string v1, "finish"

    invoke-direct {v0, v1, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->finish:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->fail:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->conBroken:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->finish:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    return-object v0
.end method
