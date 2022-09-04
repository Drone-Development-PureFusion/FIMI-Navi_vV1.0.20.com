.class Lcom/fimi/soul/media/player/widget/FmMediaController$5;
.super Ljava/lang/Object;
.source "FmMediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/soul/media/player/widget/FmMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;


# direct methods
.method constructor <init>(Lcom/fimi/soul/media/player/widget/FmMediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/soul/media/player/widget/FmMediaController;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "bar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromuser"    # Z

    .prologue
    .line 615
    const-string v4, "player"

    const-string v5, "onProgressChanged"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    if-nez p3, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-static {v4}, Lcom/fimi/soul/media/player/widget/FmMediaController;->access$700(Lcom/fimi/soul/media/player/widget/FmMediaController;)Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->getDuration()I

    move-result v4

    int-to-long v0, v4

    .line 623
    .local v0, "duration":J
    int-to-long v4, p2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 624
    .local v2, "newposition":J
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-static {v4}, Lcom/fimi/soul/media/player/widget/FmMediaController;->access$700(Lcom/fimi/soul/media/player/widget/FmMediaController;)Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;

    move-result-object v4

    long-to-int v5, v2

    invoke-interface {v4, v5}, Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;->seekTo(I)V

    .line 625
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-static {v4}, Lcom/fimi/soul/media/player/widget/FmMediaController;->access$1100(Lcom/fimi/soul/media/player/widget/FmMediaController;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 626
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-static {v4}, Lcom/fimi/soul/media/player/widget/FmMediaController;->access$1100(Lcom/fimi/soul/media/player/widget/FmMediaController;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    long-to-int v6, v2

    invoke-static {v5, v6}, Lcom/fimi/soul/media/player/widget/FmMediaController;->access$1200(Lcom/fimi/soul/media/player/widget/FmMediaController;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    .line 601
    const-string v0, "player"

    const-string v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Lcom/fimi/soul/media/player/widget/FmMediaController;->show(I)V

    .line 604
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/soul/media/player/widget/FmMediaController;->access$602(Lcom/fimi/soul/media/player/widget/FmMediaController;Z)Z

    .line 611
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-static {v0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->access$1000(Lcom/fimi/soul/media/player/widget/FmMediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 612
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    .line 630
    const-string v0, "player"

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/soul/media/player/widget/FmMediaController;->access$602(Lcom/fimi/soul/media/player/widget/FmMediaController;Z)Z

    .line 632
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-static {v0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->access$500(Lcom/fimi/soul/media/player/widget/FmMediaController;)I

    .line 633
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-static {v0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->access$1300(Lcom/fimi/soul/media/player/widget/FmMediaController;)V

    .line 634
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/fimi/soul/media/player/widget/FmMediaController;->show(I)V

    .line 639
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FmMediaController$5;->this$0:Lcom/fimi/soul/media/player/widget/FmMediaController;

    invoke-static {v0}, Lcom/fimi/soul/media/player/widget/FmMediaController;->access$1000(Lcom/fimi/soul/media/player/widget/FmMediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 640
    return-void
.end method
