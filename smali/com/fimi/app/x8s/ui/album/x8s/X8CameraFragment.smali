.class public Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;
.super Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;
.source "X8CameraFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;-><init>()V

    return-void
.end method

.method public static obtaion()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->obtaion(Landroid/os/Bundle;)Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v0

    return-object v0
.end method

.method public static obtaion(Landroid/os/Bundle;)Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 20
    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    invoke-direct {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;-><init>()V

    .line 21
    .local v1, "x8CameraFragment":Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;
    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 23
    .local v0, "bundle1":Landroid/os/Bundle;
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 25
    .end local v0    # "bundle1":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method


# virtual methods
.method getContentID()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/fimi/app/x8s/R$layout;->x8_fragment_camera:I

    return v0
.end method

.method judgeTypeCurrentFragment()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public onDisConnect()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->rlMediaSelectBottom:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->setEnterSelectMode(Z)V

    .line 60
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->onResume()V

    .line 42
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->registerDownloadListerner()V

    .line 43
    return-void
.end method

.method public unRegisterReciver()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->unRegisterReciver()V

    .line 50
    :cond_0
    return-void
.end method
