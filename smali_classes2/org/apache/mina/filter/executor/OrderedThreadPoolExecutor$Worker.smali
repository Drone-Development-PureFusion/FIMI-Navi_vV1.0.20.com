.class Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;
.super Ljava/lang/Object;
.source "OrderedThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)V
    .locals 4

    .prologue
    .line 673
    iput-object p1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
    .param p2, "x1"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$1;

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;-><init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;

    .prologue
    .line 673
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private fetchSession()Lorg/apache/mina/core/session/IoSession;
    .locals 12

    .prologue
    .line 720
    const/4 v7, 0x0

    .line 721
    .local v7, "session":Lorg/apache/mina/core/session/IoSession;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 722
    .local v2, "currentTime":J
    iget-object v10, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v11}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    add-long v4, v2, v10

    .line 725
    .local v4, "deadline":J
    :goto_0
    sub-long v8, v4, v2

    .line 726
    .local v8, "waitTime":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_1

    .line 743
    :cond_0
    :goto_1
    return-object v7

    .line 731
    :cond_1
    :try_start_0
    iget-object v10, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v10}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$1000(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v10

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v10, v8, v9, v11}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lorg/apache/mina/core/session/IoSession;

    move-object v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    if-nez v7, :cond_0

    .line 735
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_1

    .line 734
    :catchall_0
    move-exception v10

    if-nez v7, :cond_2

    .line 735
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_2
    throw v10
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 738
    :catch_0
    move-exception v6

    .line 740
    .local v6, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private runTask(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 767
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-static {v2, v3, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$1200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 768
    const/4 v1, 0x0

    .line 770
    .local v1, "ran":Z
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 771
    const/4 v1, 0x1

    .line 772
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$1300(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 773
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    return-void

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_0

    .line 776
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v2, p1, v0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$1400(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 778
    :cond_0
    throw v0
.end method

.method private runTasks(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)V
    .locals 5
    .param p1, "sessionTasksQueue"    # Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    .prologue
    .line 749
    :goto_0
    invoke-static {p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v1

    .line 751
    .local v1, "tasksQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    monitor-enter v1

    .line 752
    :try_start_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 754
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 755
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$302(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;Z)Z

    .line 756
    monitor-exit v1

    .line 764
    return-void

    .line 758
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$1100(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    move-object v2, v0

    check-cast v2, Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v3, v4, v2}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 762
    invoke-direct {p0, v0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->runTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 758
    .end local v0    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 680
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 684
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->fetchSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    .line 686
    .local v0, "session":Lorg/apache/mina/core/session/IoSession;
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$500(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 688
    if-nez v0, :cond_2

    .line 689
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-virtual {v3}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getCorePoolSize()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 692
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 693
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 711
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 712
    :try_start_2
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 713
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$900(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)J

    move-result-wide v4

    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v1, v4, v5}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$902(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;J)J

    .line 714
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 715
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 717
    return-void

    .line 695
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 698
    :cond_2
    :try_start_4
    invoke-static {}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$700()Lorg/apache/mina/core/session/IoSession;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 703
    if-eqz v0, :cond_3

    .line 704
    :try_start_5
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v1, v0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$800(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->runTasks(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 707
    :cond_3
    :try_start_6
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$500(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 711
    .end local v0    # "session":Lorg/apache/mina/core/session/IoSession;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 712
    :try_start_7
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v3}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 713
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v3}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$900(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)J

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->completedTaskCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$902(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;J)J

    .line 714
    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v3}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 715
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    .line 695
    .restart local v0    # "session":Lorg/apache/mina/core/session/IoSession;
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1

    .line 707
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->this$0:Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->access$500(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 715
    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v1

    .end local v0    # "session":Lorg/apache/mina/core/session/IoSession;
    :catchall_4
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v1
.end method
