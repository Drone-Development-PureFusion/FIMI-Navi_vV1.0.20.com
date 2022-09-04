.class public Lcom/fimi/album/presenter/VideoPlayerPresneter;
.super Ljava/lang/Object;
.source "VideoPlayerPresneter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final TIME:I = 0x1


# instance fields
.field private mIVideoPlayer:Lcom/fimi/album/iview/IVideoPlayer;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/fimi/album/iview/IVideoPlayer;)V
    .locals 1
    .param p1, "mIVideoPlayer"    # Lcom/fimi/album/iview/IVideoPlayer;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/fimi/album/presenter/VideoPlayerPresneter;->mIVideoPlayer:Lcom/fimi/album/iview/IVideoPlayer;

    .line 23
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInMainThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/presenter/VideoPlayerPresneter;->mainHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/fimi/album/presenter/VideoPlayerPresneter;->mIVideoPlayer:Lcom/fimi/album/iview/IVideoPlayer;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/fimi/album/presenter/VideoPlayerPresneter;->mIVideoPlayer:Lcom/fimi/album/iview/IVideoPlayer;

    invoke-interface {v0}, Lcom/fimi/album/iview/IVideoPlayer;->timeFunction()V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/fimi/album/presenter/VideoPlayerPresneter;->mainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 42
    :cond_1
    return v1
.end method

.method public removeCallBack()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/album/presenter/VideoPlayerPresneter;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public startPlay()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/album/presenter/VideoPlayerPresneter;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 28
    return-void
.end method
