.class public Lcom/fimi/album/ui/VideoPlayActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;
.implements Lcom/fimi/album/iview/IVideoPlayer;


# instance fields
.field private mCustomVideoView:Lcom/fimi/album/widget/CustomVideoView;

.field private mRl:Landroid/widget/RelativeLayout;

.field private mUrl:Ljava/lang/String;

.field private mVideoPlayerPresneter:Lcom/fimi/album/presenter/VideoPlayerPresneter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public doTrans()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/example/album/R$layout;->album_activity_video_play:I

    return v0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 32
    sget v0, Lcom/example/album/R$id;->activity_video_play:I

    invoke-virtual {p0, v0}, Lcom/fimi/album/ui/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mRl:Landroid/widget/RelativeLayout;

    .line 33
    invoke-virtual {p0}, Lcom/fimi/album/ui/VideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "videoPlayUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mUrl:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/fimi/album/presenter/VideoPlayerPresneter;

    invoke-direct {v0, p0}, Lcom/fimi/album/presenter/VideoPlayerPresneter;-><init>(Lcom/fimi/album/iview/IVideoPlayer;)V

    iput-object v0, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mVideoPlayerPresneter:Lcom/fimi/album/presenter/VideoPlayerPresneter;

    .line 35
    new-instance v0, Lcom/fimi/album/widget/CustomVideoView;

    iget-object v1, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mRl:Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1}, Lcom/fimi/album/widget/CustomVideoView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mCustomVideoView:Lcom/fimi/album/widget/CustomVideoView;

    .line 36
    iget-object v0, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mCustomVideoView:Lcom/fimi/album/widget/CustomVideoView;

    iget-object v1, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fimi/album/widget/CustomVideoView;->setDataSource(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mCustomVideoView:Lcom/fimi/album/widget/CustomVideoView;

    invoke-virtual {v0, p0}, Lcom/fimi/album/widget/CustomVideoView;->setListener(Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;)V

    .line 38
    iget-object v0, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mRl:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mCustomVideoView:Lcom/fimi/album/widget/CustomVideoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public onAdVideoLoadComplete()V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/fimi/album/ui/VideoPlayActivity;->finish()V

    .line 121
    return-void
.end method

.method public onAdVideoLoadFailed()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onAdVideoLoadSuccess()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onBufferUpdate(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onClickBackBtn()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/fimi/album/ui/VideoPlayActivity;->finish()V

    .line 101
    return-void
.end method

.method public onClickFullScreenBtn()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onClickPlay()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onClickVideo()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mCustomVideoView:Lcom/fimi/album/widget/CustomVideoView;

    invoke-virtual {v0}, Lcom/fimi/album/widget/CustomVideoView;->destory()V

    .line 72
    iget-object v0, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mRl:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mCustomVideoView:Lcom/fimi/album/widget/CustomVideoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 77
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/fimi/album/ui/VideoPlayActivity;->finish()V

    .line 80
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fimi/kernel/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onResume()V

    .line 54
    iget-object v0, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mVideoPlayerPresneter:Lcom/fimi/album/presenter/VideoPlayerPresneter;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mVideoPlayerPresneter:Lcom/fimi/album/presenter/VideoPlayerPresneter;

    invoke-virtual {v0}, Lcom/fimi/album/presenter/VideoPlayerPresneter;->startPlay()V

    .line 57
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onStop()V

    .line 62
    iget-object v0, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mVideoPlayerPresneter:Lcom/fimi/album/presenter/VideoPlayerPresneter;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mVideoPlayerPresneter:Lcom/fimi/album/presenter/VideoPlayerPresneter;

    invoke-virtual {v0}, Lcom/fimi/album/presenter/VideoPlayerPresneter;->removeCallBack()V

    .line 65
    :cond_0
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public timeFunction()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mCustomVideoView:Lcom/fimi/album/widget/CustomVideoView;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/fimi/album/ui/VideoPlayActivity;->mCustomVideoView:Lcom/fimi/album/widget/CustomVideoView;

    invoke-virtual {v0}, Lcom/fimi/album/widget/CustomVideoView;->timeFunction()V

    .line 128
    :cond_0
    return-void
.end method
