.class public Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8MainErrorCodePowerPitchAngleController.java"


# instance fields
.field private mX8ErrorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 26
    return-void
.end method


# virtual methods
.method public closeUi()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public getmX8ErrorCodeController()Lcom/fimi/app/x8s/controls/X8ErrorCodeController;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->mX8ErrorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    return-object v0
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 30
    sget v0, Lcom/fimi/app/x8s/R$id;->main_left_tools:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->handleView:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-direct {v0, p1}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->mX8ErrorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->mX8ErrorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->mX8ErrorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->initSpeak()V

    .line 35
    :cond_0
    return-void
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->mX8ErrorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->mX8ErrorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->onDroneConnected(Z)V

    .line 72
    :cond_0
    return-void
.end method

.method public onErrorCode(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8ErrorCodeInfo;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->mX8ErrorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->mX8ErrorCodeController:Lcom/fimi/app/x8s/controls/X8ErrorCodeController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8ErrorCodeController;->onErrorCode(Ljava/util/List;)V

    .line 64
    :cond_0
    return-void
.end method

.method public openUi()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public setErrorViewEnableShow(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 78
    return-void
.end method
