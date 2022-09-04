.class public Lcom/fimi/app/x8s/interfaces/AbsX8BaseConnectView;
.super Ljava/lang/Object;
.source "AbsX8BaseConnectView.java"


# instance fields
.field protected isConect:Z

.field protected isInSky:Z

.field protected isLowpower:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/interfaces/AbsX8BaseConnectView;->isConect:Z

    .line 19
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/interfaces/AbsX8BaseConnectView;->isInSky:Z

    .line 20
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getErrorCodeState()Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->isLowPower()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/interfaces/AbsX8BaseConnectView;->isLowpower:Z

    .line 21
    return-void
.end method
