.class public Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationExcuteConfirmModule;
.super Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;
.source "X8AiGravitationExcuteConfirmModule.java"


# instance fields
.field private mX8AiGravitationExcuteComfirmUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 1
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 21
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-direct {v0, p1, p2, p3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/x8sdk/controller/CameraManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationExcuteConfirmModule;->mX8AiGravitationExcuteComfirmUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    .line 22
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 1
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationExcuteConfirmModule;->mX8AiGravitationExcuteComfirmUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->setFcHeart(ZZ)V

    .line 27
    return-void
.end method

.method public setsetListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .param p2, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationExcuteConfirmModule;->mX8AiGravitationExcuteComfirmUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;)V

    .line 31
    return-void
.end method
