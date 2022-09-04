.class Lcom/fimi/album/widget/CustomVideoView$1;
.super Landroid/os/Handler;
.source "CustomVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/album/widget/CustomVideoView;
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
    .line 86
    iput-object p1, p0, Lcom/fimi/album/widget/CustomVideoView$1;->this$0:Lcom/fimi/album/widget/CustomVideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x3e8

    .line 89
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 90
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView$1;->this$0:Lcom/fimi/album/widget/CustomVideoView;

    invoke-virtual {v2}, Lcom/fimi/album/widget/CustomVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView$1;->this$0:Lcom/fimi/album/widget/CustomVideoView;

    invoke-static {v2}, Lcom/fimi/album/widget/CustomVideoView;->access$000(Lcom/fimi/album/widget/CustomVideoView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView$1;->this$0:Lcom/fimi/album/widget/CustomVideoView;

    invoke-virtual {v2}, Lcom/fimi/album/widget/CustomVideoView;->getCurrentPosition()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    mul-long/2addr v2, v6

    long-to-int v0, v2

    .line 96
    .local v0, "currentPosition":I
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView$1;->this$0:Lcom/fimi/album/widget/CustomVideoView;

    invoke-static {v2}, Lcom/fimi/album/widget/CustomVideoView;->access$100(Lcom/fimi/album/widget/CustomVideoView;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 97
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView$1;->this$0:Lcom/fimi/album/widget/CustomVideoView;

    invoke-static {v2, v0}, Lcom/fimi/album/widget/CustomVideoView;->access$200(Lcom/fimi/album/widget/CustomVideoView;I)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "formateTime":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView$1;->this$0:Lcom/fimi/album/widget/CustomVideoView;

    invoke-static {v2}, Lcom/fimi/album/widget/CustomVideoView;->access$300(Lcom/fimi/album/widget/CustomVideoView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .end local v0    # "currentPosition":I
    .end local v1    # "formateTime":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView$1;->this$0:Lcom/fimi/album/widget/CustomVideoView;

    invoke-static {v2}, Lcom/fimi/album/widget/CustomVideoView;->access$400(Lcom/fimi/album/widget/CustomVideoView;)Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView$1;->this$0:Lcom/fimi/album/widget/CustomVideoView;

    invoke-static {v2}, Lcom/fimi/album/widget/CustomVideoView;->access$400(Lcom/fimi/album/widget/CustomVideoView;)Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/album/widget/CustomVideoView$1;->this$0:Lcom/fimi/album/widget/CustomVideoView;

    invoke-virtual {v3}, Lcom/fimi/album/widget/CustomVideoView;->getCurrentPosition()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;->onBufferUpdate(I)V

    .line 104
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v6, v7}, Lcom/fimi/album/widget/CustomVideoView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
