.class Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;
.super Ljava/io/InputStream;
.source "AbstractIoBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    .prologue
    .line 1503
    iput-object p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 1511
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark()Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1512
    monitor-exit p0

    return-void

    .line 1511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 1516
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1525
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 1530
    iget-object v2, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v1

    .line 1531
    .local v1, "remaining":I
    if-lez v1, :cond_0

    .line 1532
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1533
    .local v0, "readBytes":I
    iget-object v2, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v2, p1, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1537
    .end local v0    # "readBytes":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 1542
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1543
    monitor-exit p0

    return-void

    .line 1542
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 1548
    const-wide/32 v2, 0x7fffffff

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 1549
    iget-object v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    .line 1553
    .local v0, "bytes":I
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->skip(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1554
    int-to-long v2, v0

    return-wide v2

    .line 1551
    .end local v0    # "bytes":I
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;->this$0:Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v1

    long-to-int v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "bytes":I
    goto :goto_0
.end method
