.class public Lcom/fimi/app/x8s/ui/album/x8s/X8FimiPlayerActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "X8FimiPlayerActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer$OnActivityHander;


# instance fields
.field private mediaPlayer:Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public doTrans()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/fimi/app/x8s/R$layout;->activity_x8_fimi_player:I

    return v0
.end method

.method public initData()V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 26
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 27
    invoke-static {}, Lcom/fimi/kernel/permission/PermissionManager;->requestFind_LocationPermissions()V

    .line 28
    invoke-static {}, Lcom/fimi/kernel/permission/PermissionManager;->requestCoarseLocationPermissions()V

    .line 29
    invoke-static {}, Lcom/fimi/kernel/permission/PermissionManager;->requestStoragePermissions()V

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8FimiPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "FmMediaPlayer_FmMediaInfo"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;

    .line 34
    .local v1, "info":Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8FimiPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 36
    sget v3, Lcom/fimi/app/x8s/R$id;->media_layout:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/ui/album/x8s/X8FimiPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "controlView":Landroid/view/View;
    sget v3, Lcom/fimi/app/x8s/R$id;->fimi_video:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/ui/album/x8s/X8FimiPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/player/widget/FimiVideoView;

    .line 38
    .local v2, "videoView":Lcom/fimi/player/widget/FimiVideoView;
    new-instance v3, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;

    invoke-direct {v3, v2, v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;-><init>(Lcom/fimi/player/widget/FimiVideoView;Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer$OnActivityHander;)V

    iput-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8FimiPlayerActivity;->mediaPlayer:Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;

    .line 39
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8FimiPlayerActivity;->mediaPlayer:Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;

    invoke-virtual {v3, p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->initFmPlayer(Landroid/content/Context;Landroid/view/View;)V

    .line 40
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8FimiPlayerActivity;->mediaPlayer:Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->startPlay()V

    .line 41
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8FimiPlayerActivity;->mediaPlayer:Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->setShowContoller(Z)V

    .line 42
    return-void
.end method

.method public onBack()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8FimiPlayerActivity;->finish()V

    .line 57
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8FimiPlayerActivity;->mediaPlayer:Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8FimiPlayerActivity;->mediaPlayer:Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->onDestroy()V

    .line 66
    :cond_0
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
