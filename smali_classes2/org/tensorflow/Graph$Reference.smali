.class Lorg/tensorflow/Graph$Reference;
.super Ljava/lang/Object;
.source "Graph.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reference"
.end annotation


# instance fields
.field private active:Z

.field final synthetic this$0:Lorg/tensorflow/Graph;


# direct methods
.method private constructor <init>(Lorg/tensorflow/Graph;)V
    .locals 6
    .param p1, "this$0"    # Lorg/tensorflow/Graph;

    .prologue
    const/4 v0, 0x1

    .line 250
    iput-object p1, p0, Lorg/tensorflow/Graph$Reference;->this$0:Lorg/tensorflow/Graph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    invoke-static {p1}, Lorg/tensorflow/Graph;->access$000(Lorg/tensorflow/Graph;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 252
    :try_start_0
    invoke-static {p1}, Lorg/tensorflow/Graph;->access$100(Lorg/tensorflow/Graph;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/tensorflow/Graph$Reference;->active:Z

    .line 253
    iget-boolean v0, p0, Lorg/tensorflow/Graph$Reference;->active:Z

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "close() has been called on the Graph"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/tensorflow/Graph$Reference;->active:Z

    .line 257
    invoke-static {p1}, Lorg/tensorflow/Graph;->access$208(Lorg/tensorflow/Graph;)I

    .line 258
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    return-void
.end method

.method synthetic constructor <init>(Lorg/tensorflow/Graph;Lorg/tensorflow/Graph$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/tensorflow/Graph;
    .param p2, "x1"    # Lorg/tensorflow/Graph$1;

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lorg/tensorflow/Graph$Reference;-><init>(Lorg/tensorflow/Graph;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lorg/tensorflow/Graph$Reference;->this$0:Lorg/tensorflow/Graph;

    invoke-static {v0}, Lorg/tensorflow/Graph;->access$000(Lorg/tensorflow/Graph;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 264
    :try_start_0
    iget-boolean v0, p0, Lorg/tensorflow/Graph$Reference;->active:Z

    if-nez v0, :cond_0

    .line 265
    monitor-exit v1

    .line 272
    :goto_0
    return-void

    .line 267
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tensorflow/Graph$Reference;->active:Z

    .line 268
    iget-object v0, p0, Lorg/tensorflow/Graph$Reference;->this$0:Lorg/tensorflow/Graph;

    invoke-static {v0}, Lorg/tensorflow/Graph;->access$206(Lorg/tensorflow/Graph;)I

    move-result v0

    if-nez v0, :cond_1

    .line 269
    iget-object v0, p0, Lorg/tensorflow/Graph$Reference;->this$0:Lorg/tensorflow/Graph;

    invoke-static {v0}, Lorg/tensorflow/Graph;->access$000(Lorg/tensorflow/Graph;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 271
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nativeHandle()J
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lorg/tensorflow/Graph$Reference;->this$0:Lorg/tensorflow/Graph;

    invoke-static {v0}, Lorg/tensorflow/Graph;->access$000(Lorg/tensorflow/Graph;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 276
    :try_start_0
    iget-boolean v0, p0, Lorg/tensorflow/Graph$Reference;->active:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/tensorflow/Graph$Reference;->this$0:Lorg/tensorflow/Graph;

    invoke-static {v0}, Lorg/tensorflow/Graph;->access$100(Lorg/tensorflow/Graph;)J

    move-result-wide v0

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
