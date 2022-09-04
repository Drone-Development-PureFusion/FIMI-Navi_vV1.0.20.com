.class Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
.super Ljava/lang/Object;
.source "NioDatagramAcceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Acceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;


# direct methods
.method private constructor <init>(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .param p2, "x1"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$1;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;-><init>(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 154
    const/4 v4, 0x0

    .line 155
    .local v4, "nHandles":I
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$002(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;J)J

    .line 158
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    .line 160
    :goto_0
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$200(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 162
    :try_start_0
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v8, v9}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->select(J)I

    move-result v5

    .line 164
    .local v5, "selected":I
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$300(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)I
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    add-int/2addr v4, v6

    .line 166
    if-nez v4, :cond_3

    .line 168
    :try_start_1
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 170
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$400(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$500(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 171
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$602(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;)Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :try_start_2
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 202
    .end local v5    # "selected":I
    :cond_0
    :goto_1
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$200(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-virtual {v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->isDisposing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 203
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$202(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Z)Z

    .line 205
    :try_start_3
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-virtual {v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 209
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$1100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setValue(Ljava/lang/Object;)Z

    .line 212
    :cond_1
    :goto_2
    return-void

    .line 175
    .restart local v5    # "selected":I
    :cond_2
    :try_start_4
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    .line 179
    :cond_3
    if-lez v5, :cond_4

    .line 180
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    iget-object v7, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-virtual {v7}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectedHandles()Ljava/util/Set;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$700(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Ljava/util/Set;)V

    .line 183
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 184
    .local v2, "currentTime":J
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6, v2, v3}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$800(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;J)V

    .line 185
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$900(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)I

    move-result v6

    sub-int/2addr v4, v6

    .line 187
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6, v2, v3}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$1000(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;J)V
    :try_end_4
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 188
    .end local v2    # "currentTime":J
    .end local v5    # "selected":I
    :catch_0
    move-exception v0

    .line 190
    .local v0, "cse":Ljava/nio/channels/ClosedSelectorException;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 175
    .end local v0    # "cse":Ljava/nio/channels/ClosedSelectorException;
    .restart local v5    # "selected":I
    :catchall_0
    move-exception v6

    :try_start_5
    iget-object v7, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v7}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    throw v6
    :try_end_5
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 192
    .end local v5    # "selected":I
    :catch_1
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 196
    const-wide/16 v6, 0x3e8

    :try_start_6
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 197
    :catch_2
    move-exception v6

    goto/16 :goto_0

    .line 206
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 207
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 209
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$1100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setValue(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;->this$0:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    invoke-static {v7}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->access$1100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;->setValue(Ljava/lang/Object;)Z

    throw v6
.end method
