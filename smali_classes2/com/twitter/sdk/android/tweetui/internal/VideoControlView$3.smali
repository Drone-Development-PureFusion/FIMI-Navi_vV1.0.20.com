.class Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$3;
.super Ljava/lang/Object;
.source "VideoControlView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->createProgressChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$3;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 122
    if-nez p3, :cond_0

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$3;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->player:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;

    invoke-interface {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 127
    .local v0, "duration":I
    mul-int v1, v0, p2

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 128
    .local v2, "position":J
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$3;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->player:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;

    long-to-int v4, v2

    invoke-interface {v1, v4}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;->seekTo(I)V

    .line 129
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$3;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    long-to-int v4, v2

    invoke-virtual {v1, v4}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setCurrentTime(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$3;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->access$000(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$3;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->access$000(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    return-void
.end method
