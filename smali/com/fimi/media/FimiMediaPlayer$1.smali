.class final Lcom/fimi/media/FimiMediaPlayer$1;
.super Landroid/os/Handler;
.source "FimiMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/media/FimiMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 116
    :pswitch_0
    invoke-static {}, Lcom/fimi/media/FimiMediaPlayer;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 117
    :try_start_0
    invoke-static {}, Lcom/fimi/media/FimiMediaPlayer;->access$100()Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/fimi/media/FimiMediaPlayer;->access$100()Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v2, v0}, Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;->onFrameBuffer([B)V

    .line 120
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 123
    :pswitch_1
    invoke-static {}, Lcom/fimi/media/FimiMediaPlayer;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 124
    :try_start_1
    invoke-static {}, Lcom/fimi/media/FimiMediaPlayer;->access$100()Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    invoke-static {}, Lcom/fimi/media/FimiMediaPlayer;->access$100()Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {v2, v0}, Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;->onH264Frame(Ljava/nio/ByteBuffer;)V

    .line 127
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
