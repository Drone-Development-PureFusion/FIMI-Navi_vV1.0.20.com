.class public Lorg/apache/mina/filter/stream/FileRegionWriteFilter;
.super Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;
.source "FileRegionWriteFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter",
        "<",
        "Lorg/apache/mina/core/file/FileRegion;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMessageClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lorg/apache/mina/core/file/FileRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    const-class v0, Lorg/apache/mina/core/file/FileRegion;

    return-object v0
.end method

.method protected bridge synthetic getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    check-cast p1, Lorg/apache/mina/core/file/FileRegion;

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/stream/FileRegionWriteFilter;->getNextBuffer(Lorg/apache/mina/core/file/FileRegion;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected getNextBuffer(Lorg/apache/mina/core/file/FileRegion;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 8
    .param p1, "fileRegion"    # Lorg/apache/mina/core/file/FileRegion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-interface {p1}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/FileRegionWriteFilter;->getWriteBufferSize()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {p1}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 71
    .local v1, "bufferSize":I
    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 74
    .local v0, "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-interface {p1}, Lorg/apache/mina/core/file/FileRegion;->getFileChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/mina/core/file/FileRegion;->getPosition()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v2

    .line 75
    .local v2, "bytesRead":I
    int-to-long v4, v2

    invoke-interface {p1, v4, v5}, Lorg/apache/mina/core/file/FileRegion;->update(J)V

    .line 78
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0
.end method
