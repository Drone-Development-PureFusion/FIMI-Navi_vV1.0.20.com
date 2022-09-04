.class public Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;
.super Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;
.source "X8AiScrewNextModule.java"


# instance fields
.field private mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 22
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    invoke-direct {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    .line 23
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 0
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 28
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;FF)V
    .locals 6
    .param p1, "mIX8NextViewListener"    # Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .param p2, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;
    .param p3, "x8AiScrewExcuteController"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;
    .param p4, "radius"    # F
    .param p5, "height"    # F

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;FF)V

    .line 39
    return-void
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 1
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiScrewNextModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 34
    return-void
.end method
