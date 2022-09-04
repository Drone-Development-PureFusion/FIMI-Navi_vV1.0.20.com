.class Lcom/fimi/player/widget/FimiVideoView$2;
.super Ljava/lang/Object;
.source "FimiVideoView.java"

# interfaces
.implements Lcom/fimi/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/player/widget/FimiVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/player/widget/FimiVideoView;


# direct methods
.method constructor <init>(Lcom/fimi/player/widget/FimiVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/fimi/player/IMediaPlayer;)V
    .locals 8
    .param p1, "mp"    # Lcom/fimi/player/IMediaPlayer;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 490
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/fimi/player/widget/FimiVideoView;->access$502(Lcom/fimi/player/widget/FimiVideoView;I)I

    .line 495
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$600(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 496
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$600(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/player/widget/FimiVideoView;->access$700(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/fimi/player/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/fimi/player/IMediaPlayer;)V

    .line 498
    :cond_0
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$800(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IMediaController;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 499
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$800(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IMediaController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/fimi/player/widget/IMediaController;->setEnabled(Z)V

    .line 501
    :cond_1
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-interface {p1}, Lcom/fimi/player/IMediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-static {v3, v4}, Lcom/fimi/player/widget/FimiVideoView;->access$002(Lcom/fimi/player/widget/FimiVideoView;I)I

    .line 502
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-interface {p1}, Lcom/fimi/player/IMediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/fimi/player/widget/FimiVideoView;->access$102(Lcom/fimi/player/widget/FimiVideoView;I)I

    .line 504
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$900(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v1

    .line 505
    .local v1, "seekToPosition":I
    if-eqz v1, :cond_2

    .line 506
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v3, v1}, Lcom/fimi/player/widget/FimiVideoView;->seekTo(I)V

    .line 508
    :cond_2
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$000(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$100(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v3

    if-eqz v3, :cond_8

    .line 511
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$400(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IRenderView;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 512
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$400(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IRenderView;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/player/widget/FimiVideoView;->access$000(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v4

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v5}, Lcom/fimi/player/widget/FimiVideoView;->access$100(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/fimi/player/widget/IRenderView;->setVideoSize(II)V

    .line 513
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$400(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IRenderView;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/player/widget/FimiVideoView;->access$200(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v4

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v5}, Lcom/fimi/player/widget/FimiVideoView;->access$300(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/fimi/player/widget/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 514
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$400(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IRenderView;

    move-result-object v3

    invoke-interface {v3}, Lcom/fimi/player/widget/IRenderView;->shouldWaitForResize()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$1000(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v3

    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/player/widget/FimiVideoView;->access$000(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$1100(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v3

    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/player/widget/FimiVideoView;->access$100(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 518
    :cond_3
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$1200(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 519
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v3}, Lcom/fimi/player/widget/FimiVideoView;->start()V

    .line 520
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$800(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IMediaController;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 521
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$800(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IMediaController;

    move-result-object v3

    invoke-interface {v3}, Lcom/fimi/player/widget/IMediaController;->show()V

    .line 539
    :cond_4
    :goto_0
    invoke-interface {p1}, Lcom/fimi/player/IMediaPlayer;->getDataSource()Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "url":Ljava/lang/String;
    const-string v3, "rtsp:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 541
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v3}, Lcom/fimi/player/widget/FimiVideoView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_9

    .line 551
    :cond_5
    :goto_1
    return-void

    .line 523
    .end local v2    # "url":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v3}, Lcom/fimi/player/widget/FimiVideoView;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v1, :cond_7

    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    .line 524
    invoke-virtual {v3}, Lcom/fimi/player/widget/FimiVideoView;->getCurrentPosition()I

    move-result v3

    if-lez v3, :cond_4

    .line 525
    :cond_7
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$800(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IMediaController;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 527
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$800(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IMediaController;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/fimi/player/widget/IMediaController;->show(I)V

    goto :goto_0

    .line 535
    :cond_8
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$1200(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 536
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v3}, Lcom/fimi/player/widget/FimiVideoView;->start()V

    goto :goto_0

    .line 544
    .restart local v2    # "url":Ljava/lang/String;
    :cond_9
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v3}, Lcom/fimi/player/widget/FimiVideoView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 545
    new-instance v0, Landroid/content/Intent;

    const-string v3, "resetRTSP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .local v0, "resetRstp":Landroid/content/Intent;
    const-string v3, "rtsp"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 547
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$1300(Lcom/fimi/player/widget/FimiVideoView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onStartStream()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$600(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$600(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/player/IMediaPlayer$OnPreparedListener;->onStartStream()V

    .line 558
    :cond_0
    return-void
.end method
