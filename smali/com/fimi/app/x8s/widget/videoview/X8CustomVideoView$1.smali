.class Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;
.super Landroid/os/Handler;
.source "X8CustomVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;
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
    .line 88
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x3e8

    .line 91
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 92
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->access$000(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->getCurrentPosition()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    mul-long/2addr v2, v6

    long-to-int v0, v2

    .line 98
    .local v0, "currentPosition":I
    const-string v2, "CustomVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: currentPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",max:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-static {v4}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->access$100(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->access$100(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 100
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-static {v2, v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->access$200(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "formateTime":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->access$300(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .end local v0    # "currentPosition":I
    .end local v1    # "formateTime":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->timeFunction()V

    .line 104
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->access$400(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->access$400(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;->this$0:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->getCurrentPosition()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->onBufferUpdate(I)V

    .line 107
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v6, v7}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
