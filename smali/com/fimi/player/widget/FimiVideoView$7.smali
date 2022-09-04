.class Lcom/fimi/player/widget/FimiVideoView$7;
.super Ljava/lang/Object;
.source "FimiVideoView.java"

# interfaces
.implements Lcom/fimi/player/widget/IRenderView$IRenderCallback;


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
    .line 690
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 693
    invoke-interface {p1}, Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;->getRenderView()Lcom/fimi/player/widget/IRenderView;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v5}, Lcom/fimi/player/widget/FimiVideoView;->access$400(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IRenderView;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 694
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v2}, Lcom/fimi/player/widget/FimiVideoView;->access$1800(Lcom/fimi/player/widget/FimiVideoView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onSurfaceChanged: unmatched render callback\n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v4, p3}, Lcom/fimi/player/widget/FimiVideoView;->access$1002(Lcom/fimi/player/widget/FimiVideoView;I)I

    .line 699
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v4, p4}, Lcom/fimi/player/widget/FimiVideoView;->access$1102(Lcom/fimi/player/widget/FimiVideoView;I)I

    .line 700
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/player/widget/FimiVideoView;->access$1200(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 701
    .local v1, "isValidState":Z
    :goto_1
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/player/widget/FimiVideoView;->access$400(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IRenderView;

    move-result-object v4

    invoke-interface {v4}, Lcom/fimi/player/widget/IRenderView;->shouldWaitForResize()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/player/widget/FimiVideoView;->access$000(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v4

    if-ne v4, p3, :cond_5

    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/player/widget/FimiVideoView;->access$100(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v4

    if-ne v4, p4, :cond_5

    :cond_2
    move v0, v2

    .line 702
    .local v0, "hasValidSize":Z
    :goto_2
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$700(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 703
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$900(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 704
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v4}, Lcom/fimi/player/widget/FimiVideoView;->access$900(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fimi/player/widget/FimiVideoView;->seekTo(I)V

    .line 706
    :cond_3
    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v3}, Lcom/fimi/player/widget/FimiVideoView;->access$700(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/fimi/player/IMediaPlayer;->setPreview(I)V

    .line 707
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-virtual {v2}, Lcom/fimi/player/widget/FimiVideoView;->start()V

    goto :goto_0

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_4
    move v1, v3

    .line 700
    goto :goto_1

    .restart local v1    # "isValidState":Z
    :cond_5
    move v0, v3

    .line 701
    goto :goto_2
.end method

.method public onSurfaceCreated(Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;II)V
    .locals 3
    .param p1, "holder"    # Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 713
    invoke-interface {p1}, Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;->getRenderView()Lcom/fimi/player/widget/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v1}, Lcom/fimi/player/widget/FimiVideoView;->access$400(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 714
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$1800(Lcom/fimi/player/widget/FimiVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceCreated: unmatched render callback\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0, p1}, Lcom/fimi/player/widget/FimiVideoView;->access$2102(Lcom/fimi/player/widget/FimiVideoView;Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;)Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

    .line 719
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v1}, Lcom/fimi/player/widget/FimiVideoView;->access$700(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/fimi/player/widget/FimiVideoView;->access$2200(Lcom/fimi/player/widget/FimiVideoView;Lcom/fimi/player/IMediaPlayer;Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;)V

    .line 720
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$500(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v0

    if-nez v0, :cond_4

    .line 721
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v1}, Lcom/fimi/player/widget/FimiVideoView;->access$2300(Lcom/fimi/player/widget/FimiVideoView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fimi/player/widget/FimiVideoView;->access$2400(Lcom/fimi/player/widget/FimiVideoView;I)V

    .line 722
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$700(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$700(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/fimi/player/IMediaPlayer;->setPreview(I)V

    .line 728
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$1500(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 729
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$1500(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;->onSurfaceState(I)V

    .line 730
    :cond_3
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$2500(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/FimiVideoView$OnFimiFileCallBackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$2500(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/FimiVideoView$OnFimiFileCallBackListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/fimi/player/widget/FimiVideoView$OnFimiFileCallBackListener;->onSurfaceState(I)V

    goto :goto_0

    .line 725
    :cond_4
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$700(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 726
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$700(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/fimi/player/IMediaPlayer;->setPreview(I)V

    goto :goto_1
.end method

.method public onSurfaceDestroyed(Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 739
    invoke-interface {p1}, Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;->getRenderView()Lcom/fimi/player/widget/IRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v1}, Lcom/fimi/player/widget/FimiVideoView;->access$400(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 740
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$1800(Lcom/fimi/player/widget/FimiVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceDestroyed: unmatched render callback\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$700(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$700(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/fimi/player/IMediaPlayer;->setPreview(I)V

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/player/widget/FimiVideoView;->access$2102(Lcom/fimi/player/widget/FimiVideoView;Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;)Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

    .line 747
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$1500(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$7;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$1500(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;->onSurfaceState(I)V

    goto :goto_0
.end method
