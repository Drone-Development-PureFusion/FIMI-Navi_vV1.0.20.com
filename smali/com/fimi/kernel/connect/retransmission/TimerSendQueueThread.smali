.class public Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;
.super Ljava/lang/Thread;
.source "TimerSendQueueThread.java"


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

.field private final sleepTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->isLoop:Z

    .line 17
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 20
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->sleepTime:I

    return-void
.end method


# virtual methods
.method public addToSendList(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "mBaseCommand"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->isLoop:Z

    .line 83
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->interrupt()V

    .line 84
    return-void
.end method

.method public removeFromListByCmdID(IIILcom/fimi/kernel/dataparser/milink/LinkPacket;)Z
    .locals 5
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "seq"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .prologue
    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, "ret":Z
    const/4 v1, 0x0

    .line 32
    .local v1, "remove":Lcom/fimi/kernel/connect/BaseCommand;
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/BaseCommand;

    .line 33
    .local v0, "msg":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgGroudId()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgId()I

    move-result v4

    if-ne v4, p2, :cond_0

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgSeq()I

    move-result v4

    if-ne v4, p3, :cond_0

    .line 34
    move-object v1, v0

    .line 38
    .end local v0    # "msg":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_1
    if-eqz v1, :cond_2

    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-virtual {v1}, Lcom/fimi/kernel/connect/BaseCommand;->getPersonalDataCallBack()Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->setPersonalDataCallBack(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V

    .line 42
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 46
    :cond_2
    return v2
.end method

.method public run()V
    .locals 8

    .prologue
    .line 51
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->isLoop:Z

    if-eqz v3, :cond_4

    .line 52
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, "removeData":Lcom/fimi/kernel/connect/BaseCommand;
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/BaseCommand;

    .line 56
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

    .line 58
    move-object v2, v0

    goto :goto_1

    .line 62
    .end local v0    # "bcd":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_2
    if-eqz v2, :cond_0

    .line 64
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 65
    const/4 v2, 0x0

    .line 66
    goto :goto_0

    .line 71
    .end local v2    # "removeData":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_3
    const-wide/16 v4, 0xbb8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_4
    return-void
.end method
