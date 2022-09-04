.class public final enum Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;
.super Ljava/lang/Enum;
.source "X8AircraftCalibrationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GaliStete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

.field public static final enum GET_CAIL_ORTH:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

.field public static final enum GET_CALI_SIX_POINT:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

.field public static final enum IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

.field public static final enum SEND_CAIL_ORTH:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

.field public static final enum SEND_CALI_SIX_POINT:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

.field public static final enum SEND_RESTART_CALI_SIX_POINT:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 814
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 815
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    const-string v1, "SEND_CALI_SIX_POINT"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->SEND_CALI_SIX_POINT:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 816
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    const-string v1, "GET_CALI_SIX_POINT"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->GET_CALI_SIX_POINT:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 817
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    const-string v1, "SEND_CAIL_ORTH"

    invoke-direct {v0, v1, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->SEND_CAIL_ORTH:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 818
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    const-string v1, "GET_CAIL_ORTH"

    invoke-direct {v0, v1, v7}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->GET_CAIL_ORTH:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 819
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    const-string v1, "SEND_RESTART_CALI_SIX_POINT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->SEND_RESTART_CALI_SIX_POINT:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 813
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->SEND_CALI_SIX_POINT:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->GET_CALI_SIX_POINT:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->SEND_CAIL_ORTH:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->GET_CAIL_ORTH:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->SEND_RESTART_CALI_SIX_POINT:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

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
    .line 813
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 813
    const-class v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;
    .locals 1

    .prologue
    .line 813
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    return-object v0
.end method
