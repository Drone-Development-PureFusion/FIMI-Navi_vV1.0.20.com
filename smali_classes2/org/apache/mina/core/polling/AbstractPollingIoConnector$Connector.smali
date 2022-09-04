.class Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;
.super Ljava/lang/Object;
.source "AbstractPollingIoConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connector"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 522
    const-class v0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)V
    .locals 0

    .prologue
    .line 522
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.Connector;"
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
    .param p2, "x1"    # Lorg/apache/mina/core/polling/AbstractPollingIoConnector$1;

    .prologue
    .line 522
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.Connector;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 525
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<TT;TH;>.Connector;"
    sget-boolean v6, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 527
    :cond_0
    const/4 v3, 0x0

    .line 529
    .local v3, "nHandles":I
    :goto_0
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 533
    :try_start_0
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->getConnectTimeoutMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    .line 534
    .local v5, "timeout":I
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v6, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->select(I)I

    move-result v4

    .line 536
    .local v4, "selected":I
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)I

    move-result v6

    add-int/2addr v3, v6

    .line 540
    if-nez v3, :cond_7

    .line 541
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 543
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$600(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 544
    sget-boolean v6, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p0, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 563
    .end local v4    # "selected":I
    .end local v5    # "timeout":I
    :catch_0
    move-exception v0

    .line 565
    .local v0, "cse":Ljava/nio/channels/ClosedSelectorException;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 578
    .end local v0    # "cse":Ljava/nio/channels/ClosedSelectorException;
    :cond_1
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->isDisposing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 579
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$402(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Z)Z

    .line 581
    :try_start_1
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 582
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/mina/core/service/IoProcessor;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 586
    :cond_2
    :try_start_2
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 587
    :try_start_3
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->isDisposing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 588
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->destroy()V

    .line 590
    :cond_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 594
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    .line 598
    :cond_4
    :goto_1
    return-void

    .line 548
    .restart local v4    # "selected":I
    .restart local v5    # "timeout":I
    :cond_5
    :try_start_4
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 549
    sget-boolean v6, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p0, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_4
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 567
    .end local v4    # "selected":I
    .end local v5    # "timeout":I
    :catch_1
    move-exception v1

    .line 568
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 571
    const-wide/16 v6, 0x3e8

    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 572
    :catch_2
    move-exception v2

    .line 573
    .local v2, "e1":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 553
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e1":Ljava/lang/InterruptedException;
    .restart local v4    # "selected":I
    .restart local v5    # "timeout":I
    :cond_6
    :try_start_6
    sget-boolean v6, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->$assertionsDisabled:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_7

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 556
    :cond_7
    if-lez v4, :cond_8

    .line 557
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->selectedHandles()Ljava/util/Iterator;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Ljava/util/Iterator;)I

    move-result v6

    sub-int/2addr v3, v6

    .line 560
    :cond_8
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->allHandles()Ljava/util/Iterator;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Ljava/util/Iterator;)V

    .line 562
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)I
    :try_end_6
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result v6

    sub-int/2addr v3, v6

    goto/16 :goto_0

    .line 590
    .end local v4    # "selected":I
    .end local v5    # "timeout":I
    :catchall_0
    move-exception v6

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 591
    :catch_3
    move-exception v1

    .line 592
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_9
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 594
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v6}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    goto/16 :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    throw v6

    .line 585
    :catchall_2
    move-exception v6

    .line 586
    :try_start_a
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 587
    :try_start_b
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->isDisposing()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 588
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->destroy()V

    .line 590
    :cond_9
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 594
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    :goto_2
    throw v6

    .line 590
    :catchall_3
    move-exception v7

    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 591
    :catch_4
    move-exception v1

    .line 592
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_e
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 594
    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v6

    iget-object v7, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$Connector;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v7}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setDone()V

    throw v6
.end method
