.class final enum Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;
.super Ljava/lang/Enum;
.source "X8RCCalibrationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RcStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

.field public static final enum conBroken:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

.field public static final enum error:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

.field public static final enum fail:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

.field public static final enum finish:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

.field public static final enum ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

.field public static final enum joyModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

.field public static final enum midModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

.field public static final enum rollerModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    const-string v1, "ideal"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    const-string v1, "midModel"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->midModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    const-string v1, "joyModel"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->joyModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    const-string v1, "rollerModel"

    invoke-direct {v0, v1, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->rollerModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    const-string v1, "fail"

    invoke-direct {v0, v1, v7}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->fail:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    const-string v1, "finish"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->finish:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    const-string v1, "conBroken"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->conBroken:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    const-string v1, "error"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->error:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    .line 65
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->ideal:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->midModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->joyModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->rollerModel:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->fail:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->finish:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->conBroken:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->error:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$RcStatus;

    return-object v0
.end method
