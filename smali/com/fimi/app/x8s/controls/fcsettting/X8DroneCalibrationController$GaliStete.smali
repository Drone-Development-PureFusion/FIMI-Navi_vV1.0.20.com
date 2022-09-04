.class public final enum Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;
.super Ljava/lang/Enum;
.source "X8DroneCalibrationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GaliStete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

.field public static final enum DISCONNECT_FAILED:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

.field public static final enum FAILED:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

.field public static final enum HORIZONTAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

.field public static final enum IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

.field public static final enum INTERRUPT:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

.field public static final enum NEXT_END:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

.field public static final enum NEXT_STEP:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

.field public static final enum SUCCESS:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

.field public static final enum VERTICAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

.field public static final enum WAITSTART:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;


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
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 67
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    const-string v1, "WAITSTART"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->WAITSTART:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 68
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->HORIZONTAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 69
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    const-string v1, "NEXT_STEP"

    invoke-direct {v0, v1, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->NEXT_STEP:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 70
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v7}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->VERTICAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 71
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    const-string v1, "NEXT_END"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->NEXT_END:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 72
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    const-string v1, "SUCCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->SUCCESS:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 73
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    const-string v1, "FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->FAILED:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 74
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    const-string v1, "INTERRUPT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->INTERRUPT:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 75
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    const-string v1, "DISCONNECT_FAILED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->DISCONNECT_FAILED:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 65
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->WAITSTART:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->HORIZONTAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->NEXT_STEP:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->VERTICAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->NEXT_END:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->SUCCESS:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->FAILED:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->INTERRUPT:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->DISCONNECT_FAILED:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    return-object v0
.end method
