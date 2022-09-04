.class public Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;
.super Ljava/lang/Thread;
.source "RetransmissionUsbThread.java"


# instance fields
.field private isLoop:Z

.field private mDataTransfer:Lcom/fimi/kernel/connect/interfaces/IDataTransfer;

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
.method public constructor <init>(Lcom/fimi/kernel/connect/interfaces/IDataTransfer;)V
    .locals 1
    .param p1, "mDataTransfer"    # Lcom/fimi/kernel/connect/interfaces/IDataTransfer;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->isLoop:Z

    .line 18
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 73
    iput-object p1, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->mDataTransfer:Lcom/fimi/kernel/connect/interfaces/IDataTransfer;

    .line 74
    return-void
.end method


# virtual methods
.method public addToSendList(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "mBaseCommand"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->isLoop:Z

    .line 120
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->interrupt()V

    .line 121
    return-void
.end method

.method public removeFromListByOffset(I)Z
    .locals 6
    .param p1, "fileOffset"    # I

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 55
    .local v2, "ret":Z
    iget-object v4, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v4

    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "remove":Lcom/fimi/kernel/connect/BaseCommand;
    :try_start_0
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/BaseCommand;

    .line 58
    .local v0, "msg":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getFileOffset()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 59
    move-object v1, v0

    .line 63
    .end local v0    # "msg":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_1
    if-eqz v1, :cond_2

    .line 64
    const/4 v2, 0x1

    .line 65
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 68
    :cond_2
    monitor-exit v4

    .line 69
    return v2

    .line 68
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public removeFromListByUsbCmdKey(I)Z
    .locals 6
    .param p1, "cmdKey"    # I

    .prologue
    .line 33
    const/4 v2, 0x0

    .line 34
    .local v2, "ret":Z
    iget-object v4, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v4

    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, "remove":Lcom/fimi/kernel/connect/BaseCommand;
    :try_start_0
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/BaseCommand;

    .line 37
    .local v0, "msg":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getUsbCmdKey()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 38
    move-object v1, v0

    .line 42
    .end local v0    # "msg":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_1
    if-eqz v1, :cond_2

    .line 43
    const/4 v2, 0x1

    .line 44
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 47
    :cond_2
    monitor-exit v4

    .line 48
    return v2

    .line 47
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public run()V
    .locals 10

    .prologue
    .line 79
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->isLoop:Z

    if-eqz v4, :cond_5

    .line 80
    iget-object v4, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 81
    const/4 v2, 0x0

    .line 82
    .local v2, "removeData":Lcom/fimi/kernel/connect/BaseCommand;
    iget-object v4, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/BaseCommand;

    .line 83
    .local v0, "bcd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getLastSendTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getOutTime()I

    move-result v5

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getCurrentSendNum()I

    move-result v3

    .line 87
    .local v3, "seq":I
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getReSendNum()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 88
    move-object v2, v0

    .line 101
    .end local v0    # "bcd":Lcom/fimi/kernel/connect/BaseCommand;
    .end local v3    # "seq":I
    :cond_2
    if-eqz v2, :cond_0

    .line 102
    iget-object v4, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->mDataTransfer:Lcom/fimi/kernel/connect/interfaces/IDataTransfer;

    invoke-virtual {v2}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgGroudId()I

    move-result v5

    invoke-virtual {v2}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgId()I

    move-result v6

    invoke-interface {v4, v5, v6, v2}, Lcom/fimi/kernel/connect/interfaces/IDataTransfer;->onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V

    .line 103
    iget-object v4, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 104
    const/4 v2, 0x0

    .line 105
    goto :goto_0

    .line 92
    .restart local v0    # "bcd":Lcom/fimi/kernel/connect/BaseCommand;
    .restart local v3    # "seq":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 93
    invoke-virtual {v0, v3}, Lcom/fimi/kernel/connect/BaseCommand;->setCurrentSendNum(I)V

    .line 95
    iget-object v5, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->mDataTransfer:Lcom/fimi/kernel/connect/interfaces/IDataTransfer;

    invoke-interface {v5, v0}, Lcom/fimi/kernel/connect/interfaces/IDataTransfer;->sendRestransmissionData(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/fimi/kernel/connect/BaseCommand;->setLastSendTime(J)V

    goto :goto_1

    .line 109
    .end local v0    # "bcd":Lcom/fimi/kernel/connect/BaseCommand;
    .end local v2    # "removeData":Lcom/fimi/kernel/connect/BaseCommand;
    .end local v3    # "seq":I
    :cond_4
    const-wide/16 v4, 0x190

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_5
    return-void
.end method
