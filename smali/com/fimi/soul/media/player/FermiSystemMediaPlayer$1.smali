.class Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$1;
.super Ljava/util/TimerTask;
.source "FermiSystemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;


# direct methods
.method constructor <init>(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$1;->this$0:Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$1;->this$0:Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    invoke-static {v1}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->access$000(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$1;->this$0:Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    invoke-static {v1}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->access$100(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$1;->this$0:Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    invoke-static {v1}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->access$200(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$1;->this$0:Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    invoke-static {v1}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->access$000(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$1;->this$0:Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    invoke-static {v1}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->access$200(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$1;->this$0:Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    invoke-static {v2}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->access$100(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 93
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 94
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$1;->this$0:Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    invoke-static {v1}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->access$100(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 95
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$1;->this$0:Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    invoke-static {v1}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->access$100(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 96
    iget-object v1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$1;->this$0:Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    invoke-static {v1}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->access$300(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
