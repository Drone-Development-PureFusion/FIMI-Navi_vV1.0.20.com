.class Lcom/fimi/soul/media/player/widget/FimiVideoView$2;
.super Ljava/lang/Object;
.source "FimiVideoView.java"

# interfaces
.implements Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/soul/media/player/widget/FimiVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;


# direct methods
.method constructor <init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/fimi/soul/media/player/IMediaPlayer;)V
    .locals 8
    .param p1, "mp"    # Lcom/fimi/soul/media/player/IMediaPlayer;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 408
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$502(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)I

    .line 413
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$600(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 414
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$600(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$700(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/IMediaPlayer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/fimi/soul/media/player/IMediaPlayer;)V

    .line 416
    :cond_0
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$800(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IMediaController;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 417
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$800(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IMediaController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/fimi/soul/media/player/widget/IMediaController;->setEnabled(Z)V

    .line 419
    :cond_1
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-interface {p1}, Lcom/fimi/soul/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-static {v3, v4}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$002(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)I

    .line 420
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-interface {p1}, Lcom/fimi/soul/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$102(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)I

    .line 422
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$900(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v1

    .line 423
    .local v1, "seekToPosition":I
    if-eqz v1, :cond_2

    .line 424
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-virtual {v3, v1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->seekTo(I)V

    .line 426
    :cond_2
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$000(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$100(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v3

    if-eqz v3, :cond_8

    .line 429
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$400(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IRenderView;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 430
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$400(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IRenderView;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$000(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v4

    iget-object v5, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v5}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$100(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/fimi/soul/media/player/widget/IRenderView;->setVideoSize(II)V

    .line 431
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$400(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IRenderView;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$200(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v4

    iget-object v5, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v5}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$300(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/fimi/soul/media/player/widget/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 432
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$400(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IRenderView;

    move-result-object v3

    invoke-interface {v3}, Lcom/fimi/soul/media/player/widget/IRenderView;->shouldWaitForResize()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$1000(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v3

    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$000(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$1100(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v3

    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$100(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 436
    :cond_3
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$1200(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 437
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-virtual {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->start()V

    .line 438
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$800(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IMediaController;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 439
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$800(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IMediaController;

    move-result-object v3

    invoke-interface {v3}, Lcom/fimi/soul/media/player/widget/IMediaController;->show()V

    .line 457
    :cond_4
    :goto_0
    invoke-interface {p1}, Lcom/fimi/soul/media/player/IMediaPlayer;->getDataSource()Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "url":Ljava/lang/String;
    const-string v3, "rtsp:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 459
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-virtual {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v3, "resetRTSP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "resetRstp":Landroid/content/Intent;
    const-string v3, "rtsp"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$1300(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 464
    .end local v0    # "resetRstp":Landroid/content/Intent;
    :cond_5
    return-void

    .line 441
    .end local v2    # "url":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-virtual {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v1, :cond_7

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .line 442
    invoke-virtual {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->getCurrentPosition()I

    move-result v3

    if-lez v3, :cond_4

    .line 443
    :cond_7
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$800(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IMediaController;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 445
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$800(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IMediaController;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/fimi/soul/media/player/widget/IMediaController;->show(I)V

    goto :goto_0

    .line 453
    :cond_8
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$1200(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 454
    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-virtual {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->start()V

    goto :goto_0
.end method
