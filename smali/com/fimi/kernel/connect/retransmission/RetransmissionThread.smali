.class public Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;
.super Ljava/lang/Thread;
.source "RetransmissionThread.java"


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

.field private final sleepTime:I


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/connect/interfaces/IDataTransfer;)V
    .locals 1
    .param p1, "mDataTransfer"    # Lcom/fimi/kernel/connect/interfaces/IDataTransfer;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->isLoop:Z

    .line 22
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 25
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->sleepTime:I

    .line 75
    iput-object p1, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->mDataTransfer:Lcom/fimi/kernel/connect/interfaces/IDataTransfer;

    .line 76
    return-void
.end method


# virtual methods
.method public addToSendList(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "mBaseCommand"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->isLoop:Z

    .line 122
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->interrupt()V

    .line 123
    return-void
.end method

.method public removeFromListByCmdID(IIILcom/fimi/kernel/dataparser/milink/LinkPacket;)Z
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "seq"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .prologue
    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, "ret":Z
    iget-object v4, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v4

    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "remove":Lcom/fimi/kernel/connect/BaseCommand;
    :try_start_0
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/BaseCommand;

    .line 38
    .local v0, "msg":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgGroudId()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgId()I

    move-result v5

    if-ne v5, p2, :cond_0

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgSeq()I

    move-result v5

    if-ne v5, p3, :cond_0

    .line 39
    move-object v1, v0

    .line 43
    .end local v0    # "msg":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_1
    if-eqz v1, :cond_2

    .line 44
    const/4 v2, 0x1

    .line 46
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 49
    :cond_2
    monitor-exit v4

    .line 50
    return v2

    .line 49
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public removeFromListByCmdIDLinkPacket4(IIILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)Z
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "seq"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, "ret":Z
    iget-object v4, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v4

    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "remove":Lcom/fimi/kernel/connect/BaseCommand;
    :try_start_0
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

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
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgGroudId()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgId()I

    move-result v5

    if-ne v5, p2, :cond_0

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgSeq()I

    move-result v5

    if-ne v5, p3, :cond_0

    .line 59
    move-object v1, v0

    .line 63
    .end local v0    # "msg":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_1
    if-eqz v1, :cond_2

    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-virtual {v1}, Lcom/fimi/kernel/connect/BaseCommand;->getPersonalDataCallBack()Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->setPersonalDataCallBack(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V

    .line 66
    invoke-virtual {v1}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->setUiCallBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 67
    iget-object v3, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 70
    :cond_2
    monitor-exit v4

    .line 71
    return v2

    .line 70
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
    iget-boolean v4, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->isLoop:Z

    if-eqz v4, :cond_5

    .line 80
    iget-object v4, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 81
    const/4 v2, 0x0

    .line 82
    .local v2, "removeData":Lcom/fimi/kernel/connect/BaseCommand;
    iget-object v4, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

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

    .line 84
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

    .line 86
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getCurrentSendNum()I

    move-result v3

    .line 88
    .local v3, "seq":I
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getReSendNum()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 89
    move-object v2, v0

    .line 104
    .end local v0    # "bcd":Lcom/fimi/kernel/connect/BaseCommand;
    .end local v3    # "seq":I
    :cond_2
    if-eqz v2, :cond_0

    .line 105
    iget-object v4, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->mDataTransfer:Lcom/fimi/kernel/connect/interfaces/IDataTransfer;

    invoke-virtual {v2}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgGroudId()I

    move-result v5

    invoke-virtual {v2}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgId()I

    move-result v6

    invoke-interface {v4, v5, v6, v2}, Lcom/fimi/kernel/connect/interfaces/IDataTransfer;->onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V

    .line 106
    iget-object v4, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->mListReSend:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 107
    const/4 v2, 0x0

    .line 108
    goto :goto_0

    .line 93
    .restart local v0    # "bcd":Lcom/fimi/kernel/connect/BaseCommand;
    .restart local v3    # "seq":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 94
    invoke-virtual {v0, v3}, Lcom/fimi/kernel/connect/BaseCommand;->setCurrentSendNum(I)V

    .line 96
    iget-object v5, p0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->mDataTransfer:Lcom/fimi/kernel/connect/interfaces/IDataTransfer;

    invoke-interface {v5, v0}, Lcom/fimi/kernel/connect/interfaces/IDataTransfer;->sendRestransmissionData(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/fimi/kernel/connect/BaseCommand;->setLastSendTime(J)V

    goto :goto_1

    .line 112
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

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_5
    return-void
.end method
