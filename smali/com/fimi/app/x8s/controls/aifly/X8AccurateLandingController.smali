.class public Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;
.super Ljava/lang/Object;
.source "X8AccurateLandingController.java"


# instance fields
.field private mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

.field private root:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;->root:Landroid/view/View;

    .line 20
    sget v0, Lcom/fimi/app/x8s/R$id;->v_accurate_landing_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    .line 22
    return-void
.end method


# virtual methods
.method public onDroneConnected(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 25
    if-nez p1, :cond_1

    .line 26
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setClose(Z)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;->isTimeOut()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setClose(Z)V

    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->isClose()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isAutoLandingCheckObj()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;->root:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_accurate_check_obj1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 42
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    goto :goto_0

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AccurateLandingController;->root:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_accurate_check_obj0:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    goto :goto_1
.end method
