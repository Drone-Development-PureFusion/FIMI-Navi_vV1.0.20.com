.class Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v4, 0x3

    .line 270
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$202(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I

    .line 272
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$300(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$300(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$400(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$500(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$500(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setEnabled(Z)V

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$002(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I

    .line 279
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$102(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I

    .line 280
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$600(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v0

    .line 282
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_2

    .line 283
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->seekTo(I)V

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$000(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$100(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 287
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$000(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v3}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$100(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 288
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$700(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$000(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$800(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$100(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 292
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$900(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 293
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->start()V

    .line 294
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$500(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 295
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$500(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->show()V

    .line 313
    :cond_3
    :goto_0
    return-void

    .line 297
    :cond_4
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    .line 298
    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 299
    :cond_5
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$500(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 302
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$500(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->show()V

    goto :goto_0

    .line 309
    :cond_6
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$900(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 310
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->start()V

    goto :goto_0
.end method
