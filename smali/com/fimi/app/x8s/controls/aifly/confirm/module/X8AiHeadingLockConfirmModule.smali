.class public Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiHeadingLockConfirmModule;
.super Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;
.source "X8AiHeadingLockConfirmModule.java"


# instance fields
.field private mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiHeadingLockConfirmUi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 18
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiHeadingLockConfirmUi;

    invoke-direct {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiHeadingLockConfirmUi;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiHeadingLockConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiHeadingLockConfirmUi;

    .line 19
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 1
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiHeadingLockConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiHeadingLockConfirmUi;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiHeadingLockConfirmUi;->setFcHeart(ZZ)V

    .line 24
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V
    .locals 1
    .param p1, "mX8MainAiFlyController"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiHeadingLockConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiHeadingLockConfirmUi;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiHeadingLockConfirmUi;->setX8MainAiFlyController(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V

    .line 28
    return-void
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 1
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiHeadingLockConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiHeadingLockConfirmUi;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiHeadingLockConfirmUi;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 32
    return-void
.end method
