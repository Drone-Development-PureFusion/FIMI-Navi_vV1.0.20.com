.class public final Lorg/tensorflow/Server;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private nativeHandle:J

.field private numJoining:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 131
    invoke-static {}, Lorg/tensorflow/TensorFlow;->init()V

    .line 132
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "serverDef"    # [B

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lorg/tensorflow/Server;->allocate([B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/tensorflow/Server;->nativeHandle:J

    .line 72
    return-void
.end method

.method private static native allocate([B)J
.end method

.method private static native delete(J)V
.end method

.method private static native join(J)V
.end method

.method private static native start(J)V
.end method

.method private static native stop(J)V
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/tensorflow/Server;->stop()V

    .line 109
    :goto_0
    iget v0, p0, Lorg/tensorflow/Server;->numJoining:I

    if-lez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lorg/tensorflow/Server;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/Server;->delete(J)V

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tensorflow/Server;->nativeHandle:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    monitor-exit p0

    return-void
.end method

.method public join()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 86
    const-wide/16 v0, 0x0

    .line 87
    .local v0, "handle":J
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lorg/tensorflow/Server;->nativeHandle:J

    .line 89
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 90
    iget v2, p0, Lorg/tensorflow/Server;->numJoining:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/tensorflow/Server;->numJoining:I

    .line 92
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-static {v0, v1}, Lorg/tensorflow/Server;->join(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 96
    monitor-enter p0

    .line 97
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 98
    :try_start_2
    iget v2, p0, Lorg/tensorflow/Server;->numJoining:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/tensorflow/Server;->numJoining:I

    .line 100
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 101
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    return-void

    .line 92
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 101
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 96
    :catchall_2
    move-exception v2

    monitor-enter p0

    .line 97
    cmp-long v3, v0, v4

    if-eqz v3, :cond_2

    .line 98
    :try_start_5
    iget v3, p0, Lorg/tensorflow/Server;->numJoining:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/tensorflow/Server;->numJoining:I

    .line 100
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 101
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2

    :catchall_3
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/tensorflow/Server;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/Server;->start(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/tensorflow/Server;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/Server;->stop(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
