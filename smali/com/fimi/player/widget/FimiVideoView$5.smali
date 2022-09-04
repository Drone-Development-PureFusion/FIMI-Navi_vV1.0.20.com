.class Lcom/fimi/player/widget/FimiVideoView$5;
.super Ljava/lang/Object;
.source "FimiVideoView.java"

# interfaces
.implements Lcom/fimi/player/IMediaPlayer$OnErrorListener;


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
    .line 599
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView$5;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/fimi/player/IMediaPlayer;II)Z
    .locals 7
    .param p1, "mp"    # Lcom/fimi/player/IMediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    .line 601
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$5;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$1800(Lcom/fimi/player/widget/FimiVideoView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$5;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3, v6}, Lcom/fimi/player/widget/FimiVideoView;->access$502(Lcom/fimi/player/widget/FimiVideoView;I)I

    .line 603
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$5;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3, v6}, Lcom/fimi/player/widget/FimiVideoView;->access$1202(Lcom/fimi/player/widget/FimiVideoView;I)I

    .line 604
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$5;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$800(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IMediaController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 605
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$5;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$800(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IMediaController;

    move-result-object v3

    invoke-interface {v3}, Lcom/fimi/player/widget/IMediaController;->hide()V

    .line 608
    :cond_0
    invoke-interface {p1}, Lcom/fimi/player/IMediaPlayer;->getDataSource()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "url":Ljava/lang/String;
    const-string v3, "rtsp:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 610
    new-instance v0, Landroid/content/Intent;

    const-string v3, "resetRTSP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, "resetRstp":Landroid/content/Intent;
    const-string v3, "rtsp"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$5;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$1300(Lcom/fimi/player/widget/FimiVideoView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 615
    .end local v0    # "resetRstp":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$5;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$1900(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 616
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$5;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$1900(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView$5;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/player/widget/FimiVideoView;->access$700(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3}, Lcom/fimi/player/IMediaPlayer$OnErrorListener;->onError(Lcom/fimi/player/IMediaPlayer;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 620
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
