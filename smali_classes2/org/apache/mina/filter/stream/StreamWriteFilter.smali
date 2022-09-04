.class public Lorg/apache/mina/filter/stream/StreamWriteFilter;
.super Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;
.source "StreamWriteFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
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
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method protected getNextBuffer(Ljava/io/InputStream;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 55
    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/StreamWriteFilter;->getWriteBufferSize()I

    move-result v4

    new-array v1, v4, [B

    .line 57
    .local v1, "bytes":[B
    const/4 v3, 0x0

    .line 58
    .local v3, "off":I
    const/4 v2, 0x0

    .line 59
    .local v2, "n":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 60
    add-int/2addr v3, v2

    goto :goto_0

    .line 63
    :cond_0
    if-ne v2, v5, :cond_1

    if-nez v3, :cond_1

    .line 64
    const/4 v0, 0x0

    .line 69
    :goto_1
    return-object v0

    .line 67
    :cond_1
    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 69
    .local v0, "buffer":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_1
.end method

.method protected bridge synthetic getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/stream/StreamWriteFilter;->getNextBuffer(Ljava/io/InputStream;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method
