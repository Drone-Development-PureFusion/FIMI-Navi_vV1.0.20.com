.class Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$1;
.super Landroid/os/Handler;
.source "VideoControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;
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
    .line 46
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$1;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0x3e9

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$1;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->player:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$1;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->updateProgress()V

    .line 54
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$1;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->updateStateControl()V

    .line 55
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$1;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$1;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->player:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 57
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
