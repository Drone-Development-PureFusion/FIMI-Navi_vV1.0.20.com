.class public abstract Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.super Ljava/lang/Object;
.source "AbsX8Controllers.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IControllers;


# instance fields
.field protected ctrlType:I

.field protected handleView:Landroid/view/View;

.field protected isConect:Z

.field protected isInSky:Z

.field protected isLowpower:Z

.field protected isRcConnect:Z

.field protected isShow:Z

.field protected rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->rootView:Landroid/view/View;

    .line 25
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->initViews(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->initActions()V

    .line 27
    invoke-virtual {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->getDroneState()V

    .line 28
    return-void
.end method


# virtual methods
.method public cancleByModeChange()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public closeItem()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public closeUi()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->handleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->handleView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :cond_0
    return-void
.end method

.method public getDroneState()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->isConect:Z

    .line 40
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->isInSky:Z

    .line 41
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlType()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->ctrlType:I

    .line 43
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getErrorCodeState()Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getErrorCodeState()Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->isLowPower()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->isLowpower:Z

    .line 46
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getConectState()Lcom/fimi/x8sdk/entity/ConectState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 47
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getConectState()Lcom/fimi/x8sdk/entity/ConectState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/ConectState;->isConnectRelay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->isRcConnect:Z

    .line 51
    :cond_2
    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isAtti()Z
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->getDroneState()V

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "ret":Z
    iget v1, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->ctrlType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 111
    :cond_0
    return v0
.end method

.method public isGpsOrVpu()Z
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "ret":Z
    iget v1, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->ctrlType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->ctrlType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x1

    .line 102
    :cond_1
    return v0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->isShow:Z

    return v0
.end method

.method public isTaskTimeOut()Z
    .locals 6

    .prologue
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    sget-wide v4, Lcom/fimi/x8sdk/modulestate/DroneState;->taskMadeChangeTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x258

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 86
    .local v0, "isTimeOut":Z
    :goto_0
    return v0

    .line 85
    .end local v0    # "isTimeOut":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVpu()Z
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->getDroneState()V

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "ret":Z
    iget v1, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->ctrlType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 118
    const/4 v0, 0x1

    .line 120
    :cond_0
    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 75
    return-void
.end method

.method public openUi()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->handleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->handleView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :cond_0
    return-void
.end method

.method public showItem()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
