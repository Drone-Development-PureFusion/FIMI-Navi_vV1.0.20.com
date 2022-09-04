.class Lcom/fimi/kernel/network/okhttp/ProgressBody$1;
.super Lokio/ForwardingSink;
.source "ProgressBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/network/okhttp/ProgressBody;->sink(Lokio/BufferedSink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bytesWritten:J

.field contentLength:J

.field final synthetic this$0:Lcom/fimi/kernel/network/okhttp/ProgressBody;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/network/okhttp/ProgressBody;Lokio/Sink;)V
    .locals 2
    .param p1, "this$0"    # Lcom/fimi/kernel/network/okhttp/ProgressBody;
    .param p2, "x0"    # Lokio/Sink;

    .prologue
    const-wide/16 v0, 0x0

    .line 63
    iput-object p1, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody$1;->this$0:Lcom/fimi/kernel/network/okhttp/ProgressBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 64
    iput-wide v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody$1;->bytesWritten:J

    .line 65
    iput-wide v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody$1;->contentLength:J

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 6
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 69
    iget-wide v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody$1;->contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody$1;->this$0:Lcom/fimi/kernel/network/okhttp/ProgressBody;

    invoke-virtual {v0}, Lcom/fimi/kernel/network/okhttp/ProgressBody;->contentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody$1;->contentLength:J

    .line 72
    :cond_0
    iget-wide v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody$1;->bytesWritten:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody$1;->bytesWritten:J

    .line 74
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody$1;->this$0:Lcom/fimi/kernel/network/okhttp/ProgressBody;

    iget-object v0, v0, Lcom/fimi/kernel/network/okhttp/ProgressBody;->listener:Lcom/fimi/kernel/fds/IFdsUploadListener;

    iget-object v1, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody$1;->this$0:Lcom/fimi/kernel/network/okhttp/ProgressBody;

    iget-object v1, v1, Lcom/fimi/kernel/network/okhttp/ProgressBody;->model:Lcom/fimi/kernel/fds/IFdsFileModel;

    iget-wide v2, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody$1;->bytesWritten:J

    iget-wide v4, p0, Lcom/fimi/kernel/network/okhttp/ProgressBody$1;->contentLength:J

    invoke-interface/range {v0 .. v5}, Lcom/fimi/kernel/fds/IFdsUploadListener;->onProgress(Ljava/lang/Object;JJ)V

    .line 75
    return-void
.end method
