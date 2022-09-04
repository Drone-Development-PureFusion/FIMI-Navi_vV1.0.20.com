.class public Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;
.super Ljava/lang/Thread;
.source "RetransmissionJsonThread.java"


# instance fields
.field private isLoop:Z

.field public mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/fimi/kernel/connect/BaseCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->isLoop:Z

    .line 16
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    return-void
.end method


# virtual methods
.method public addToSendList(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "mBaseCommand"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->isLoop:Z

    .line 72
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->interrupt()V

    .line 73
    return-void
.end method

.method public removeFromListByCmdID(ILjava/lang/String;)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 5
    .param p1, "cmdId"    # I
    .param p2, "camKey"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v1, 0x0

    .line 27
    .local v1, "removeCmd":Lcom/fimi/kernel/connect/BaseCommand;
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v3

    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/BaseCommand;

    .line 29
    .local v0, "msg":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgId()I

    move-result v4

    if-ne v4, p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgId()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getCamKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    :cond_2
    move-object v1, v0

    .line 34
    .end local v0    # "msg":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_3
    if-eqz v1, :cond_4

    .line 35
    iget-object v2, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 38
    :cond_4
    monitor-exit v3

    .line 39
    return-object v1

    .line 38
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 8

    .prologue
    .line 45
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->isLoop:Z

    if-eqz v3, :cond_4

    .line 46
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, "removeData":Lcom/fimi/kernel/connect/BaseCommand;
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/BaseCommand;

    .line 49
    .local v0, "bcd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getLastSendTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getOutTime()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 50
    move-object v2, v0

    .line 54
    .end local v0    # "bcd":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_2
    if-eqz v2, :cond_0

    .line 55
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgGroudId()I

    move-result v4

    invoke-virtual {v2}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgId()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/fimi/kernel/connect/session/NoticeManager;->onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V

    .line 56
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    .end local v2    # "removeData":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_3
    const-wide/16 v4, 0x190

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_4
    return-void
.end method
