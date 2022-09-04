.class Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$2;
.super Ljava/lang/Object;
.source "X8CustomVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->seekAndResume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$2;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 541
    const-string v0, "CustomVideoView"

    const-string v1, "do seek and resume"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$2;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->access$600(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 543
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$2;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->access$700(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 544
    return-void
.end method
