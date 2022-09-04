.class Lcom/fimi/album/widget/CustomVideoView$3;
.super Ljava/lang/Object;
.source "CustomVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/widget/CustomVideoView;->seekAndPause(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/widget/CustomVideoView;


# direct methods
.method constructor <init>(Lcom/fimi/album/widget/CustomVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/widget/CustomVideoView;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/fimi/album/widget/CustomVideoView$3;->this$0:Lcom/fimi/album/widget/CustomVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 535
    const-string v0, "CustomVideoView"

    const-string v1, "do seek and pause"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView$3;->this$0:Lcom/fimi/album/widget/CustomVideoView;

    invoke-static {v0}, Lcom/fimi/album/widget/CustomVideoView;->access$600(Lcom/fimi/album/widget/CustomVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 537
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView$3;->this$0:Lcom/fimi/album/widget/CustomVideoView;

    invoke-static {v0}, Lcom/fimi/album/widget/CustomVideoView;->access$700(Lcom/fimi/album/widget/CustomVideoView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 538
    return-void
.end method
