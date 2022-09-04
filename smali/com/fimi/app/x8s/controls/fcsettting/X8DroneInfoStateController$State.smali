.class public final enum Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;
.super Ljava/lang/Enum;
.source "X8DroneInfoStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

.field public static final enum ERROR:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

.field public static final enum MIDDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

.field public static final enum NA:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

.field public static final enum NORMAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    const-string v1, "NA"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->NA:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->NORMAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->MIDDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->ERROR:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->NA:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->NORMAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->MIDDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->ERROR:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->$VALUES:[Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    return-object v0
.end method
