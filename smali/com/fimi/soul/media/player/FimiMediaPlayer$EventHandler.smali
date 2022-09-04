.class Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "FimiMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/soul/media/player/FimiMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# instance fields
.field private mWeakPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fimi/soul/media/player/FimiMediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fimi/soul/media/player/FimiMediaPlayer;Landroid/os/Looper;)V
    .locals 1
    .param p1, "mp"    # Lcom/fimi/soul/media/player/FimiMediaPlayer;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 741
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 742
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    .line 743
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 747
    iget-object v7, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/soul/media/player/FimiMediaPlayer;

    .line 748
    .local v6, "player":Lcom/fimi/soul/media/player/FimiMediaPlayer;
    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$000(Lcom/fimi/soul/media/player/FimiMediaPlayer;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    .line 749
    :cond_0
    invoke-static {}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FimiMediaPlayer went away with unhandled events"

    invoke-static {v7, v8}, Lcom/fimi/soul/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :goto_0
    :sswitch_0
    return-void

    .line 754
    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 826
    invoke-static {}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown message type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fimi/soul/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    :sswitch_1
    invoke-virtual {v6}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->notifyOnPrepared()V

    goto :goto_0

    .line 760
    :sswitch_2
    invoke-virtual {v6}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->notifyOnCompletion()V

    .line 761
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$200(Lcom/fimi/soul/media/player/FimiMediaPlayer;Z)V

    goto :goto_0

    .line 765
    :sswitch_3
    iget v7, p1, Landroid/os/Message;->arg1:I

    int-to-long v0, v7

    .line 766
    .local v0, "bufferPosition":J
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-gez v7, :cond_2

    .line 767
    const-wide/16 v0, 0x0

    .line 770
    :cond_2
    const-wide/16 v4, 0x0

    .line 771
    .local v4, "percent":J
    invoke-virtual {v6}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->getDuration()J

    move-result-wide v2

    .line 772
    .local v2, "duration":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_3

    .line 773
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v0

    div-long v4, v8, v2

    .line 775
    :cond_3
    const-wide/16 v8, 0x64

    cmp-long v7, v4, v8

    if-ltz v7, :cond_4

    .line 776
    const-wide/16 v4, 0x64

    .line 780
    :cond_4
    long-to-int v7, v4

    invoke-virtual {v6, v7}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->notifyOnBufferingUpdate(I)V

    goto :goto_0

    .line 784
    .end local v0    # "bufferPosition":J
    .end local v2    # "duration":J
    .end local v4    # "percent":J
    :sswitch_4
    invoke-virtual {v6}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->notifyOnSeekComplete()V

    goto :goto_0

    .line 788
    :sswitch_5
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v7}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$302(Lcom/fimi/soul/media/player/FimiMediaPlayer;I)I

    .line 789
    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-static {v6, v7}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$402(Lcom/fimi/soul/media/player/FimiMediaPlayer;I)I

    .line 790
    invoke-static {v6}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$300(Lcom/fimi/soul/media/player/FimiMediaPlayer;)I

    move-result v7

    invoke-static {v6}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$400(Lcom/fimi/soul/media/player/FimiMediaPlayer;)I

    move-result v8

    .line 791
    invoke-static {v6}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$500(Lcom/fimi/soul/media/player/FimiMediaPlayer;)I

    move-result v9

    invoke-static {v6}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$600(Lcom/fimi/soul/media/player/FimiMediaPlayer;)I

    move-result v10

    .line 790
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    goto :goto_0

    .line 795
    :sswitch_6
    invoke-static {}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fimi/soul/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7, v8}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->notifyOnError(II)Z

    move-result v7

    if-nez v7, :cond_5

    .line 797
    invoke-virtual {v6}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->notifyOnCompletion()V

    .line 799
    :cond_5
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$200(Lcom/fimi/soul/media/player/FimiMediaPlayer;Z)V

    goto/16 :goto_0

    .line 803
    :sswitch_7
    iget v7, p1, Landroid/os/Message;->arg1:I

    packed-switch v7, :pswitch_data_0

    .line 808
    :goto_1
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7, v8}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->notifyOnInfo(II)Z

    goto/16 :goto_0

    .line 805
    :pswitch_0
    invoke-static {}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Info: MEDIA_INFO_VIDEO_RENDERING_START\n"

    invoke-static {v7, v8}, Lcom/fimi/soul/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 819
    :sswitch_8
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v7}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$502(Lcom/fimi/soul/media/player/FimiMediaPlayer;I)I

    .line 820
    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-static {v6, v7}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$602(Lcom/fimi/soul/media/player/FimiMediaPlayer;I)I

    .line 821
    invoke-static {v6}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$300(Lcom/fimi/soul/media/player/FimiMediaPlayer;)I

    move-result v7

    invoke-static {v6}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$400(Lcom/fimi/soul/media/player/FimiMediaPlayer;)I

    move-result v8

    .line 822
    invoke-static {v6}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$500(Lcom/fimi/soul/media/player/FimiMediaPlayer;)I

    move-result v9

    invoke-static {v6}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$600(Lcom/fimi/soul/media/player/FimiMediaPlayer;)I

    move-result v10

    .line 821
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    goto/16 :goto_0

    .line 754
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x63 -> :sswitch_0
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_7
        0x2711 -> :sswitch_8
    .end sparse-switch

    .line 803
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
