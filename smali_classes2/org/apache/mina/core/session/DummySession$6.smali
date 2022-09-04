.class Lorg/apache/mina/core/session/DummySession$6;
.super Ljava/lang/Object;
.source "DummySession.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/session/DummySession;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/service/IoProcessor",
        "<",
        "Lorg/apache/mina/core/session/IoSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/session/DummySession;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/session/DummySession;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/mina/core/session/DummySession;

    .prologue
    .line 130
    iput-object p1, p0, Lorg/apache/mina/core/session/DummySession$6;->this$0:Lorg/apache/mina/core/session/DummySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 133
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 10
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 136
    move-object v4, p1

    check-cast v4, Lorg/apache/mina/core/session/DummySession;

    .line 137
    .local v4, "s":Lorg/apache/mina/core/session/DummySession;
    invoke-virtual {v4}, Lorg/apache/mina/core/session/DummySession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v5

    invoke-interface {v5, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v3

    .line 141
    .local v3, "req":Lorg/apache/mina/core/write/WriteRequest;
    if-eqz v3, :cond_1

    .line 142
    invoke-interface {v3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    .line 143
    .local v2, "m":Ljava/lang/Object;
    instance-of v5, v2, Lorg/apache/mina/core/file/FileRegion;

    if-eqz v5, :cond_0

    move-object v1, v2

    .line 144
    check-cast v1, Lorg/apache/mina/core/file/FileRegion;

    .line 146
    .local v1, "file":Lorg/apache/mina/core/file/FileRegion;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/mina/core/file/FileRegion;->getFileChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/mina/core/file/FileRegion;->getPosition()J

    move-result-wide v6

    invoke-interface {v1}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 147
    invoke-interface {v1}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v6

    invoke-interface {v1, v6, v7}, Lorg/apache/mina/core/file/FileRegion;->update(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "file":Lorg/apache/mina/core/file/FileRegion;
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/apache/mina/core/session/DummySession$6;->this$0:Lorg/apache/mina/core/session/DummySession;

    invoke-virtual {v5}, Lorg/apache/mina/core/session/DummySession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 154
    .end local v2    # "m":Ljava/lang/Object;
    :cond_1
    return-void

    .line 148
    .restart local v1    # "file":Lorg/apache/mina/core/file/FileRegion;
    .restart local v2    # "m":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Lorg/apache/mina/core/session/DummySession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public isDisposing()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 170
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/CloseFuture;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionClosed()V

    .line 173
    :cond_0
    return-void
.end method

.method public updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 177
    return-void
.end method

.method public write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 160
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 162
    .local v0, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 164
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->isWriteSuspended()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/DummySession$6;->flush(Lorg/apache/mina/core/session/IoSession;)V

    .line 167
    :cond_0
    return-void
.end method
