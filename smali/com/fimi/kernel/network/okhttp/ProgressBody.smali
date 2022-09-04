.class public Lcom/fimi/kernel/network/okhttp/ProgressBody;
.super Lokhttp3/RequestBody;
.source "ProgressBody.java"


# instance fields
.field private final SEGMENT_SIZE:I

.field private bufferedSink:Lokio/BufferedSink;

.field protected listener:Lcom/fimi/kernel/fds/IFdsUploadListener;

.field protected model:Lcom/fimi/kernel/fds/IFdsFileModel;

.field protected multipartBody:Lokhttp3/MultipartBody;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 26
    const/16 v0, 0x1000

    iput v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody;->SEGMENT_SIZE:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/fimi/kernel/fds/IFdsFileModel;Lokhttp3/MultipartBody;Lcom/fimi/kernel/fds/IFdsUploadListener;)V
    .locals 1
    .param p1, "model"    # Lcom/fimi/kernel/fds/IFdsFileModel;
    .param p2, "multipartBody"    # Lokhttp3/MultipartBody;
    .param p3, "listener"    # Lcom/fimi/kernel/fds/IFdsUploadListener;

    .prologue
    .line 32
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 26
    const/16 v0, 0x1000

    iput v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody;->SEGMENT_SIZE:I

    .line 33
    iput-object p1, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody;->model:Lcom/fimi/kernel/fds/IFdsFileModel;

    .line 34
    iput-object p2, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody;->multipartBody:Lokhttp3/MultipartBody;

    .line 35
    iput-object p3, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody;->listener:Lcom/fimi/kernel/fds/IFdsUploadListener;

    .line 36
    return-void
.end method

.method private sink(Lokio/BufferedSink;)Lokio/Sink;
    .locals 1
    .param p1, "sink"    # Lokio/BufferedSink;

    .prologue
    .line 63
    new-instance v0, Lcom/fimi/kernel/network/okhttp/ProgressBody$1;

    invoke-direct {v0, p0, p1}, Lcom/fimi/kernel/network/okhttp/ProgressBody$1;-><init>(Lcom/fimi/kernel/network/okhttp/ProgressBody;Lokio/Sink;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody;->multipartBody:Lokhttp3/MultipartBody;

    invoke-virtual {v0}, Lokhttp3/MultipartBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody;->multipartBody:Lokhttp3/MultipartBody;

    invoke-virtual {v0}, Lokhttp3/MultipartBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody;->bufferedSink:Lokio/BufferedSink;

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0, p1}, Lcom/fimi/kernel/network/okhttp/ProgressBody;->sink(Lokio/BufferedSink;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody;->bufferedSink:Lokio/BufferedSink;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody;->multipartBody:Lokhttp3/MultipartBody;

    iget-object v1, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody;->bufferedSink:Lokio/BufferedSink;

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody;->writeTo(Lokio/BufferedSink;)V

    .line 58
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody;->bufferedSink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 59
    return-void
.end method
