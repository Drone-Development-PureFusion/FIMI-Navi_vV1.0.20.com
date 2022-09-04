.class public Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointExcuteConfirmModule;
.super Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;
.source "X8AiSurroundToPointExcuteConfirmModule.java"


# instance fields
.field private mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Landroid/view/View;F)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "radius"    # F

    .prologue
    .line 15
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    invoke-direct {v0, p1, p2, p3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;-><init>(Landroid/app/Activity;Landroid/view/View;F)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    .line 16
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 1
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->setFcHeart(ZZ)V

    .line 21
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .param p2, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;
    .param p3, "x8AiSurroundExcuteController"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiSurroundToPointExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiSurroundToPointExcuteConfirmUi;->setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V

    .line 26
    return-void
.end method
