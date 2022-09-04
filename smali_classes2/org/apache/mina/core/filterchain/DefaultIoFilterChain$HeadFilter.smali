.class Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "DefaultIoFilterChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
    .param p2, "x1"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;

    .prologue
    .line 727
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;)V

    return-void
.end method


# virtual methods
.method public filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 768
    move-object v0, p2

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/core/service/IoProcessor;->remove(Lorg/apache/mina/core/session/IoSession;)V

    .line 769
    return-void
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 5
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 732
    move-object v2, p2

    check-cast v2, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 735
    .local v2, "s":Lorg/apache/mina/core/session/AbstractIoSession;
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v4, :cond_1

    .line 736
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 740
    .local v0, "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->mark()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 741
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    .line 743
    .local v1, "remaining":I
    if-lez v1, :cond_0

    .line 744
    invoke-virtual {v2, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseScheduledWriteBytes(I)V

    .line 750
    .end local v0    # "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v1    # "remaining":I
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v3

    .line 752
    .local v3, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-virtual {v2}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result v4

    if-nez v4, :cond_3

    .line 753
    invoke-interface {v3, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 755
    invoke-virtual {v2}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v4

    invoke-interface {v4, v2, p3}, Lorg/apache/mina/core/service/IoProcessor;->write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 763
    :goto_1
    return-void

    .line 747
    .end local v3    # "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    :cond_1
    invoke-virtual {v2}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseScheduledWriteMessages()V

    goto :goto_0

    .line 757
    .restart local v3    # "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    :cond_2
    invoke-virtual {v2}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v4

    invoke-interface {v4, v2, p3}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 758
    invoke-virtual {v2}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/apache/mina/core/service/IoProcessor;->flush(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_1

    .line 761
    :cond_3
    invoke-virtual {v2}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v4

    invoke-interface {v4, v2, p3}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_1
.end method
