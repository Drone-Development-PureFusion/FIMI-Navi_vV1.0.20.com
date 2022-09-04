.class Lcom/fimi/soul/media/player/widget/FimiVideoView$7;
.super Ljava/lang/Object;
.source "FimiVideoView.java"

# interfaces
.implements Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;


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
    .line 587
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 590
    invoke-interface {p1}, Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;->getRenderView()Lcom/fimi/soul/media/player/widget/IRenderView;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v5}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$400(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IRenderView;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 591
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v2}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$1700(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onSurfaceChanged: unmatched render callback\n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v4, p3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$1002(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)I

    .line 596
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v4, p4}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$1102(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)I

    .line 597
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$1200(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 598
    .local v1, "isValidState":Z
    :goto_1
    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$400(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IRenderView;

    move-result-object v4

    invoke-interface {v4}, Lcom/fimi/soul/media/player/widget/IRenderView;->shouldWaitForResize()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$000(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v4

    if-ne v4, p3, :cond_5

    iget-object v4, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$100(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v4

    if-ne v4, p4, :cond_5

    :cond_2
    move v0, v2

    .line 599
    .local v0, "hasValidSize":Z
    :goto_2
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v2}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$700(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/IMediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 600
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v2}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$900(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 601
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$900(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->seekTo(I)V

    .line 603
    :cond_3
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-virtual {v2}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->start()V

    goto :goto_0

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_4
    move v1, v3

    .line 597
    goto :goto_1

    .restart local v1    # "isValidState":Z
    :cond_5
    move v0, v3

    .line 598
    goto :goto_2
.end method

.method public onSurfaceCreated(Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;II)V
    .locals 2
    .param p1, "holder"    # Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 609
    invoke-interface {p1}, Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;->getRenderView()Lcom/fimi/soul/media/player/widget/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$400(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$1700(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceCreated: unmatched render callback\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v0, p1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$2002(Lcom/fimi/soul/media/player/widget/FimiVideoView;Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;)Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;

    .line 615
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$700(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$700(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/IMediaPlayer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$2100(Lcom/fimi/soul/media/player/widget/FimiVideoView;Lcom/fimi/soul/media/player/IMediaPlayer;Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$2200(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$2300(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)V

    goto :goto_0
.end method

.method public onSurfaceDestroyed(Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 623
    invoke-interface {p1}, Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;->getRenderView()Lcom/fimi/soul/media/player/widget/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$400(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 624
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$1700(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceDestroyed: unmatched render callback\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->access$2002(Lcom/fimi/soul/media/player/widget/FimiVideoView;Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;)Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;

    .line 632
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/soul/media/player/widget/FimiVideoView;

    invoke-virtual {v0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->releaseWithoutStop()V

    goto :goto_0
.end method
