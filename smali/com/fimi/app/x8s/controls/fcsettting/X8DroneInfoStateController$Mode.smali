.class public final enum Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;
.super Ljava/lang/Enum;
.source "X8DroneInfoStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

.field public static final enum BATTERY:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

.field public static final enum CAMP:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

.field public static final enum GIMBAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

.field public static final enum GPS:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

.field public static final enum IMU:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

.field public static final enum MAGNETIC:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    const-string v1, "GPS"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->GPS:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    const-string v1, "CAMP"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->CAMP:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    const-string v1, "MAGNETIC"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->MAGNETIC:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    const-string v1, "IMU"

    invoke-direct {v0, v1, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->IMU:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    const-string v1, "BATTERY"

    invoke-direct {v0, v1, v7}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->BATTERY:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    const-string v1, "GIMBAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->GIMBAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->GPS:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->CAMP:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->MAGNETIC:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->IMU:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->BATTERY:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->GIMBAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    return-object v0
.end method
