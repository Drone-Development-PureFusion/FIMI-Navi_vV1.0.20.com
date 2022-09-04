.class Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    .line 419
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 422
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v4, p3}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$702(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I

    .line 423
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v4, p4}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$802(Lcom/twitter/sdk/android/tweetui/internal/VideoView;I)I

    .line 424
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v4}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$900(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 425
    .local v1, "isValidState":Z
    :goto_0
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v4}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$000(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v4}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$100(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 426
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$400(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 427
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$600(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v3}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$600(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->seekTo(I)V

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->start()V

    .line 431
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$500(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 432
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$500(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->show()V

    .line 435
    :cond_1
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_2
    move v1, v3

    .line 424
    goto :goto_0

    .restart local v1    # "isValidState":Z
    :cond_3
    move v0, v3

    .line 425
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$1702(Lcom/twitter/sdk/android/tweetui/internal/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 439
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$1800(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)V

    .line 440
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$1702(Lcom/twitter/sdk/android/tweetui/internal/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 445
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$500(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$500(Lcom/twitter/sdk/android/tweetui/internal/VideoView;)Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->hide()V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/VideoView$8;->this$0:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->access$1900(Lcom/twitter/sdk/android/tweetui/internal/VideoView;Z)V

    .line 447
    return-void
.end method
