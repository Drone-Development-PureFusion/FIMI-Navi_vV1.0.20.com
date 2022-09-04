.class Lcom/fimi/player/widget/FimiVideoView$3;
.super Ljava/lang/Object;
.source "FimiVideoView.java"

# interfaces
.implements Lcom/fimi/player/IMediaPlayer$OnCompletionListener;


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
    .line 562
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView$3;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/fimi/player/IMediaPlayer;I)V
    .locals 3
    .param p1, "mp"    # Lcom/fimi/player/IMediaPlayer;
    .param p2, "code"    # I

    .prologue
    const/4 v2, 0x5

    .line 564
    const-string v0, "moweiru"

    const-string v1, "mCurrentState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$3;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0, v2}, Lcom/fimi/player/widget/FimiVideoView;->access$502(Lcom/fimi/player/widget/FimiVideoView;I)I

    .line 566
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$3;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0, v2}, Lcom/fimi/player/widget/FimiVideoView;->access$1202(Lcom/fimi/player/widget/FimiVideoView;I)I

    .line 567
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$3;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$800(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IMediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$3;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$800(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IMediaController;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/player/widget/IMediaController;->hide()V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$3;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$1400(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 571
    const-string v0, "moweiru"

    const-string v1, "mCurrentState  onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$3;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$1400(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView$3;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v1}, Lcom/fimi/player/widget/FimiVideoView;->access$700(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/fimi/player/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/fimi/player/IMediaPlayer;I)V

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$3;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$1500(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView$3;->this$0:Lcom/fimi/player/widget/FimiVideoView;

    invoke-static {v0}, Lcom/fimi/player/widget/FimiVideoView;->access$1500(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;->onCompletion(I)V

    .line 577
    :cond_2
    return-void
.end method
