.class final Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;
.super Ljava/io/InputStream;
.source "QueueFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ElementInputStream"
.end annotation


# instance fields
.field private position:I

.field private remaining:I

.field final synthetic this$0:Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;


# direct methods
.method private constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$Element;)V
    .locals 1
    .param p2, "element"    # Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$Element;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->this$0:Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 466
    iget v0, p2, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$Element;->position:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;->access$100(Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->position:I

    .line 467
    iget v0, p2, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$Element;->length:I

    iput v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->remaining:I

    .line 468
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$Element;Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;
    .param p2, "x1"    # Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$Element;
    .param p3, "x2"    # Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$1;

    .prologue
    .line 461
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$Element;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    iget v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->remaining:I

    if-nez v1, :cond_0

    .line 492
    const/4 v0, -0x1

    .line 498
    :goto_0
    return v0

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->this$0:Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;

    invoke-static {v1}, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;->access$400(Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    iget v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->position:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 495
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->this$0:Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;

    invoke-static {v1}, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;->access$400(Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 496
    .local v0, "b":I
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->this$0:Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;

    iget v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->position:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;->access$100(Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->position:I

    .line 497
    iget v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->remaining:I

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    const-string v1, "buffer"

    invoke-static {p1, v1}, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 473
    or-int v1, p2, p3

    if-ltz v1, :cond_0

    array-length v1, p1

    sub-int/2addr v1, p2

    if-le p3, v1, :cond_1

    .line 474
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 476
    :cond_1
    iget v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->remaining:I

    if-lez v1, :cond_3

    .line 477
    iget v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->remaining:I

    if-le p3, v1, :cond_2

    .line 478
    iget p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->remaining:I

    .line 480
    :cond_2
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->this$0:Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;

    iget v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->position:I

    invoke-static {v1, v2, p1, p2, p3}, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;->access$300(Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;I[BII)V

    .line 481
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->this$0:Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;

    iget v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->position:I

    add-int/2addr v2, p3

    invoke-static {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;->access$100(Lcom/twitter/sdk/android/core/internal/scribe/QueueFile;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->position:I

    .line 482
    iget v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->remaining:I

    sub-int/2addr v1, p3

    iput v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/QueueFile$ElementInputStream;->remaining:I

    move v0, p3

    .end local p3    # "length":I
    .local v0, "length":I
    move v1, p3

    .line 485
    :goto_0
    return v1

    .end local v0    # "length":I
    .restart local p3    # "length":I
    :cond_3
    const/4 v1, -0x1

    move v0, p3

    .end local p3    # "length":I
    .restart local v0    # "length":I
    goto :goto_0
.end method
