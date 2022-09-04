.class public Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;
.super Ljava/lang/Object;
.source "FmMediaPlayer.java"

# interfaces
.implements Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;
.implements Lcom/fimi/player/IMediaPlayer$OnCompletionListener;
.implements Lcom/fimi/player/IMediaPlayer$OnPreparedListener;
.implements Lcom/fimi/player/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer$OnActivityHander;
    }
.end annotation


# static fields
.field public static final FM_MEDIA_INFO:Ljava/lang/String; = "FmMediaPlayer_FmMediaInfo"


# instance fields
.field public final STATE_COMPLETE:I

.field public final STATE_DESTROY:I

.field public final STATE_IDLE:I

.field public final STATE_PAUSE:I

.field public final STATE_PLAY:I

.field private info:Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;

.field private listener:Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer$OnActivityHander;

.field private mainVideo:Lcom/fimi/player/widget/FimiVideoView;

.field private mediaController:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

.field path:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>(Lcom/fimi/player/widget/FimiVideoView;Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer$OnActivityHander;)V
    .locals 2
    .param p1, "mainVideo"    # Lcom/fimi/player/widget/FimiVideoView;
    .param p2, "info"    # Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;
    .param p3, "listener"    # Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer$OnActivityHander;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "http://flv2.bn.netease.com/tvmrepo/2016/4/G/O/EBKQOA8GO/SD/EBKQOA8GO-mobile.mp4"

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->path:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->STATE_IDLE:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->STATE_PLAY:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->STATE_PAUSE:I

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->STATE_COMPLETE:I

    .line 34
    const/4 v0, 0x4

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->STATE_DESTROY:I

    .line 35
    iput v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->state:I

    .line 39
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mainVideo:Lcom/fimi/player/widget/FimiVideoView;

    .line 40
    iput-object p3, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->listener:Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer$OnActivityHander;

    .line 41
    iput-object p2, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->info:Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;

    .line 42
    invoke-virtual {p2}, Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->path:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mainVideo:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v0}, Lcom/fimi/player/widget/FimiVideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mainVideo:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v0}, Lcom/fimi/player/widget/FimiVideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public initAction()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mainVideo:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v0, p0}, Lcom/fimi/player/widget/FimiVideoView;->setOnCompletionListener(Lcom/fimi/player/IMediaPlayer$OnCompletionListener;)V

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mainVideo:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v0, p0}, Lcom/fimi/player/widget/FimiVideoView;->setOnPreparedListener(Lcom/fimi/player/IMediaPlayer$OnPreparedListener;)V

    .line 66
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mainVideo:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v0, p0}, Lcom/fimi/player/widget/FimiVideoView;->setOnErrorListener(Lcom/fimi/player/IMediaPlayer$OnErrorListener;)V

    .line 68
    return-void
.end method

.method public initFmPlayer(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mainVideo:Lcom/fimi/player/widget/FimiVideoView;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fimi/player/widget/FimiVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->initAction()V

    .line 48
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-direct {v0, p1, p2, p0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/fimi/app/x8s/ui/album/x8s/IFmMediaPlayer;)V

    .line 49
    .local v0, "mediaController":Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->info:Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->info:Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;->getDuration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->setNameAndDuration(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mediaController:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    .line 52
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mainVideo:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v0}, Lcom/fimi/player/widget/FimiVideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onCompletion(Lcom/fimi/player/IMediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Lcom/fimi/player/IMediaPlayer;
    .param p2, "code"    # I

    .prologue
    .line 136
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->state:I

    .line 137
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mediaController:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->reset()V

    .line 138
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 108
    iget v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->state:I

    if-eq v0, v1, :cond_0

    .line 109
    iput v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->state:I

    .line 110
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mediaController:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->reset()V

    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mainVideo:Lcom/fimi/player/widget/FimiVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/player/widget/FimiVideoView;->release(Z)V

    .line 112
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->listener:Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer$OnActivityHander;

    invoke-interface {v0}, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer$OnActivityHander;->onBack()V

    .line 114
    :cond_0
    return-void
.end method

.method public onError(Lcom/fimi/player/IMediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Lcom/fimi/player/IMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 129
    const-string v0, "istep"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mediaController:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->onError()V

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Lcom/fimi/player/IMediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Lcom/fimi/player/IMediaPlayer;

    .prologue
    .line 120
    return-void
.end method

.method public onStartStream()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mediaController:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->startSeekbar()V

    .line 125
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mainVideo:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v0}, Lcom/fimi/player/widget/FimiVideoView;->pause()V

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->state:I

    .line 104
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "m"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mainVideo:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v0, p1}, Lcom/fimi/player/widget/FimiVideoView;->seekTo(I)V

    .line 73
    return-void
.end method

.method public setShowContoller(Z)V
    .locals 1
    .param p1, "isShowContoller"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mediaController:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->setShowContoller(Z)V

    .line 56
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mainVideo:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v0}, Lcom/fimi/player/widget/FimiVideoView;->start()V

    .line 93
    iget v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->state:I

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mediaController:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->startSeekbar()V

    .line 96
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->state:I

    .line 98
    return-void
.end method

.method public startPlay()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/FmMediaPlayer;->mediaController:Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/CustomMediaContoller;->onPlay()V

    .line 60
    return-void
.end method
