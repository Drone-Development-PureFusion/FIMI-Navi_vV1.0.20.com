.class public Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;
.super Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;
.source "X8AiAutoPhotoExcuteConfirmModule.java"


# instance fields
.field private mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Landroid/view/View;II)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "type"    # I
    .param p4, "angle"    # I

    .prologue
    .line 20
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;-><init>(Landroid/app/Activity;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    .line 21
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 1
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->setFcHeart(ZZ)V

    .line 26
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .param p2, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;
    .param p3, "mX8AiAutoPhototExcuteController"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)V

    .line 30
    return-void
.end method

.method public setValue()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->setValue()V

    .line 34
    return-void
.end method

.method public startAiAutoPhoto(Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;)V
    .locals 1
    .param p1, "excuteListener"    # Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAutoPhotoExcuteConfirmUi;->setAiAutoPhotoValueCmd(Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;)V

    .line 38
    return-void
.end method
