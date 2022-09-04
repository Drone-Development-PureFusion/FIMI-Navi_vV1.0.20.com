.class public abstract Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;
.super Ljava/lang/Object;
.source "AbstractProtocolEncoderOutput.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;


# instance fields
.field private buffersOnly:Z

.field private final messageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->buffersOnly:Z

    .line 39
    return-void
.end method


# virtual methods
.method public getMessageQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    return-object v0
.end method

.method public mergeAll()V
    .locals 7

    .prologue
    .line 60
    iget-boolean v5, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->buffersOnly:Z

    if-nez v5, :cond_0

    .line 61
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "the encoded message list contains a non-buffer."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 64
    :cond_0
    iget-object v5, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v3

    .line 66
    .local v3, "size":I
    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    .line 93
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v4, 0x0

    .line 73
    .local v4, "sum":I
    iget-object v5, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "b":Ljava/lang/Object;
    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .end local v0    # "b":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v6

    add-int/2addr v4, v6

    .line 75
    goto :goto_1

    .line 78
    :cond_2
    invoke-static {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 82
    .local v2, "newBuf":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_2
    iget-object v5, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 83
    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez v1, :cond_3

    .line 91
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 92
    iget-object v5, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v5, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2
.end method

.method public write(Ljava/lang/Object;)V
    .locals 3
    .param p1, "encodedMessage"    # Ljava/lang/Object;

    .prologue
    .line 46
    instance-of v1, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 47
    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 48
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 57
    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_0
    return-void

    .line 51
    .restart local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "buf is empty. Forgot to call flip()?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->messageQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->buffersOnly:Z

    goto :goto_0
.end method
