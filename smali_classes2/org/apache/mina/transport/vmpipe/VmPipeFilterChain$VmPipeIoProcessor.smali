.class Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;
.super Ljava/lang/Object;
.source "VmPipeFilterChain.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VmPipeIoProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/service/IoProcessor",
        "<",
        "Lorg/apache/mina/transport/vmpipe/VmPipeSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;


# direct methods
.method private constructor <init>(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;
    .param p2, "x1"    # Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$1;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;-><init>(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V

    return-void
.end method

.method private getMessageCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 238
    move-object v0, p1

    .line 239
    .local v0, "messageCopy":Ljava/lang/Object;
    instance-of v3, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 240
    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 241
    .local v1, "rb":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->mark()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 242
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 243
    .local v2, "wb":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 244
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 245
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 246
    move-object v0, v2

    .line 248
    .end local v0    # "messageCopy":Ljava/lang/Object;
    .end local v1    # "rb":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v2    # "wb":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .prologue
    .line 180
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->add(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public add(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    .prologue
    .line 265
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public bridge synthetic flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .prologue
    .line 180
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->flush(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public flush(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 11
    .param p1, "session"    # Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    .prologue
    .line 182
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getWriteRequestQueue0()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v5

    .line 183
    .local v5, "queue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->isClosing()Z

    move-result v8

    if-nez v8, :cond_7

    .line 184
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 186
    :try_start_0
    invoke-interface {v5, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    .line 200
    iget-object v8, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v8}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$200(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 201
    iget-object v8, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v8}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$300(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V

    .line 203
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 222
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 191
    .local v2, "currentTime":J
    :cond_3
    :goto_1
    invoke-interface {v5, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v7

    .local v7, "req":Lorg/apache/mina/core/write/WriteRequest;
    if-eqz v7, :cond_5

    .line 192
    invoke-interface {v7}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v4

    .line 193
    .local v4, "m":Ljava/lang/Object;
    iget-object v8, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    new-instance v9, Lorg/apache/mina/core/session/IoEvent;

    sget-object v10, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v9, v10, p1, v7}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$100(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;Lorg/apache/mina/core/session/IoEvent;Z)V

    .line 194
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getRemoteSession()Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v8

    invoke-direct {p0, v4}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->getMessageCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    .line 195
    instance-of v8, v4, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v8, :cond_3

    .line 196
    check-cast v4, Lorg/apache/mina/core/buffer/IoBuffer;

    .end local v4    # "m":Ljava/lang/Object;
    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v8

    invoke-virtual {p1, v8, v2, v3}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->increaseWrittenBytes0(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 200
    .end local v2    # "currentTime":J
    .end local v7    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v9}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$200(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 201
    iget-object v9, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v9}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$300(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V

    .line 203
    :cond_4
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v8

    .line 200
    .restart local v2    # "currentTime":J
    .restart local v7    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :cond_5
    iget-object v8, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v8}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$200(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 201
    iget-object v8, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-static {v8}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$300(Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;)V

    .line 203
    :cond_6
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 206
    invoke-static {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->access$400(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    goto :goto_0

    .line 208
    .end local v2    # "currentTime":J
    .end local v7    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v1, "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    :goto_2
    invoke-interface {v5, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v7

    .restart local v7    # "req":Lorg/apache/mina/core/write/WriteRequest;
    if-eqz v7, :cond_8

    .line 211
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 214
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 215
    new-instance v0, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    invoke-direct {v0, v1}, Lorg/apache/mina/core/write/WriteToClosedSessionException;-><init>(Ljava/util/Collection;)V

    .line 216
    .local v0, "cause":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/mina/core/write/WriteRequest;

    .line 217
    .local v6, "r":Lorg/apache/mina/core/write/WriteRequest;
    invoke-interface {v6}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v9

    invoke-interface {v9, v0}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 219
    .end local v6    # "r":Lorg/apache/mina/core/write/WriteRequest;
    :cond_9
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v8

    invoke-interface {v8, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public isDisposing()Z
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .prologue
    .line 180
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->remove(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public remove(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    .prologue
    .line 253
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 254
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/CloseFuture;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getServiceListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V

    .line 256
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getRemoteSession()Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 261
    return-void

    .line 259
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public bridge synthetic updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .prologue
    .line 180
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->updateTrafficControl(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    return-void
.end method

.method public updateTrafficControl(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    .prologue
    .line 268
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->isReadSuspended()Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->receivedMessageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 271
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 272
    .local v0, "aData":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->this$0:Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-virtual {v3, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 276
    .end local v0    # "aData":Ljava/lang/Object;
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->isWriteSuspended()Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->flush(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    .line 279
    :cond_1
    return-void
.end method

.method public bridge synthetic write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .prologue
    .line 180
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->write(Lorg/apache/mina/transport/vmpipe/VmPipeSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public write(Lorg/apache/mina/transport/vmpipe/VmPipeSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/vmpipe/VmPipeSession;
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 228
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 230
    .local v0, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 232
    invoke-virtual {p1}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->isWriteSuspended()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain$VmPipeIoProcessor;->flush(Lorg/apache/mina/transport/vmpipe/VmPipeSession;)V

    .line 235
    :cond_0
    return-void
.end method
