.class public Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;
.super Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;
.source "X8AiReturnConfirmModule.java"


# instance fields
.field private mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 19
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;

    invoke-direct {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;

    .line 20
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 0
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 25
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 1
    .param p1, "mX8MainAiFlyController"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;
    .param p2, "mFcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->setX8MainAiFlyController(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;Lcom/fimi/x8sdk/controller/FcCtrlManager;)V

    .line 29
    return-void
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 1
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiReturnConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 33
    return-void
.end method
