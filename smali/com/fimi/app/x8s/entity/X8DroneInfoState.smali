.class public Lcom/fimi/app/x8s/entity/X8DroneInfoState;
.super Ljava/lang/Object;
.source "X8DroneInfoState.java"


# instance fields
.field private errorEvent:I

.field private info:Ljava/lang/String;

.field private mode:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

.field private name:Ljava/lang/String;

.field private state:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorEvent()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->errorEvent:I

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->mode:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->state:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    return-object v0
.end method

.method public setErrorEvent(I)V
    .locals 0
    .param p1, "errorEvent"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->errorEvent:I

    .line 57
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->info:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setMode(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;)V
    .locals 0
    .param p1, "mode"    # Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->mode:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    .line 30
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->name:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setState(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;)V
    .locals 0
    .param p1, "state"    # Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->state:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    .line 20
    return-void
.end method
