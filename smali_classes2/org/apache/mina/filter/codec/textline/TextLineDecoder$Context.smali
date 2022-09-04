.class Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
.super Ljava/lang/Object;
.source "TextLineDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/textline/TextLineDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Context"
.end annotation


# instance fields
.field private final buf:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final decoder:Ljava/nio/charset/CharsetDecoder;

.field private matchCount:I

.field private overflowPosition:I

.field final synthetic this$0:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;I)V
    .locals 2
    .param p2, "bufferLength"    # I

    .prologue
    const/4 v0, 0x0

    .line 411
    iput-object p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->this$0:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->matchCount:I

    .line 408
    iput v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->overflowPosition:I

    .line 412
    invoke-static {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->access$100(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 413
    invoke-static {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 414
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;ILorg/apache/mina/filter/codec/textline/TextLineDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/filter/codec/textline/TextLineDecoder;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/mina/filter/codec/textline/TextLineDecoder$1;

    .prologue
    .line 397
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;-><init>(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;I)V

    return-void
.end method

.method private discard(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    const v2, 0x7fffffff

    .line 455
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    sub-int v0, v2, v0

    iget v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->overflowPosition:I

    if-ge v0, v1, :cond_0

    .line 456
    iput v2, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->overflowPosition:I

    .line 461
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 462
    return-void

    .line 458
    :cond_0
    iget v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->overflowPosition:I

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->overflowPosition:I

    goto :goto_0
.end method


# virtual methods
.method public append(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 443
    iget v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->overflowPosition:I

    if-eqz v0, :cond_0

    .line 444
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->discard(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 452
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->this$0:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    invoke-static {v1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->access$200(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;)I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 446
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->overflowPosition:I

    .line 447
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 448
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->discard(Lorg/apache/mina/core/buffer/IoBuffer;)V

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0
.end method

.method public getBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method

.method public getDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->decoder:Ljava/nio/charset/CharsetDecoder;

    return-object v0
.end method

.method public getMatchCount()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->matchCount:I

    return v0
.end method

.method public getOverflowPosition()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->overflowPosition:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 437
    iput v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->overflowPosition:I

    .line 438
    iput v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->matchCount:I

    .line 439
    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 440
    return-void
.end method

.method public setMatchCount(I)V
    .locals 0
    .param p1, "matchCount"    # I

    .prologue
    .line 433
    iput p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->matchCount:I

    .line 434
    return-void
.end method
