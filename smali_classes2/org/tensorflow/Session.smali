.class public final Lorg/tensorflow/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/Session$Run;,
        Lorg/tensorflow/Session$Runner;
    }
.end annotation


# instance fields
.field private final graph:Lorg/tensorflow/Graph;

.field private final graphRef:Lorg/tensorflow/Graph$Reference;

.field private nativeHandle:J

.field private final nativeHandleLock:Ljava/lang/Object;

.field private numActiveRuns:I


# direct methods
.method public constructor <init>(Lorg/tensorflow/Graph;)V
    .locals 1
    .param p1, "g"    # Lorg/tensorflow/Graph;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/tensorflow/Session;-><init>(Lorg/tensorflow/Graph;[B)V

    .line 53
    return-void
.end method

.method constructor <init>(Lorg/tensorflow/Graph;J)V
    .locals 2
    .param p1, "g"    # Lorg/tensorflow/Graph;
    .param p2, "nativeHandle"    # J

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/Session;->nativeHandleLock:Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lorg/tensorflow/Session;->graph:Lorg/tensorflow/Graph;

    .line 80
    iput-wide p2, p0, Lorg/tensorflow/Session;->nativeHandle:J

    .line 81
    invoke-virtual {p1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/Session;->graphRef:Lorg/tensorflow/Graph$Reference;

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/tensorflow/Graph;[B)V
    .locals 4
    .param p1, "g"    # Lorg/tensorflow/Graph;
    .param p2, "config"    # [B

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/tensorflow/Session;->nativeHandleLock:Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lorg/tensorflow/Session;->graph:Lorg/tensorflow/Graph;

    .line 67
    invoke-virtual {p1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 70
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->nativeHandle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/tensorflow/Session;->allocate(J)J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lorg/tensorflow/Session;->nativeHandle:J

    .line 71
    invoke-virtual {p1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v1

    iput-object v1, p0, Lorg/tensorflow/Session;->graphRef:Lorg/tensorflow/Graph$Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 75
    return-void

    .line 70
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->nativeHandle()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p2}, Lorg/tensorflow/Session;->allocate2(JLjava/lang/String;[B)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method static synthetic access$000(Lorg/tensorflow/Session;)J
    .locals 2
    .param p0, "x0"    # Lorg/tensorflow/Session;

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/tensorflow/Session;->nativeHandle:J

    return-wide v0
.end method

.method static synthetic access$100(J[B[J[J[I[J[I[JZ[J)[B
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # [B
    .param p3, "x2"    # [J
    .param p4, "x3"    # [J
    .param p5, "x4"    # [I
    .param p6, "x5"    # [J
    .param p7, "x6"    # [I
    .param p8, "x7"    # [J
    .param p9, "x8"    # Z
    .param p10, "x9"    # [J

    .prologue
    .line 48
    invoke-static/range {p0 .. p10}, Lorg/tensorflow/Session;->run(J[B[J[J[I[J[I[JZ[J)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/tensorflow/Session;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/tensorflow/Session;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/tensorflow/Session;->nativeHandleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$304(Lorg/tensorflow/Session;)I
    .locals 1
    .param p0, "x0"    # Lorg/tensorflow/Session;

    .prologue
    .line 48
    iget v0, p0, Lorg/tensorflow/Session;->numActiveRuns:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tensorflow/Session;->numActiveRuns:I

    return v0
.end method

.method static synthetic access$306(Lorg/tensorflow/Session;)I
    .locals 1
    .param p0, "x0"    # Lorg/tensorflow/Session;

    .prologue
    .line 48
    iget v0, p0, Lorg/tensorflow/Session;->numActiveRuns:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/tensorflow/Session;->numActiveRuns:I

    return v0
.end method

.method static synthetic access$400(Lorg/tensorflow/Session;)Lorg/tensorflow/Graph;
    .locals 1
    .param p0, "x0"    # Lorg/tensorflow/Session;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/tensorflow/Session;->graph:Lorg/tensorflow/Graph;

    return-object v0
.end method

.method private static native allocate(J)J
.end method

.method private static native allocate2(JLjava/lang/String;[B)J
.end method

.method private static native delete(J)V
.end method

.method private static native run(J[B[J[J[I[J[I[JZ[J)[B
.end method


# virtual methods
.method public close()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 92
    iget-object v1, p0, Lorg/tensorflow/Session;->graphRef:Lorg/tensorflow/Graph$Reference;

    invoke-virtual {v1}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 93
    iget-object v2, p0, Lorg/tensorflow/Session;->nativeHandleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 94
    :try_start_0
    iget-wide v4, p0, Lorg/tensorflow/Session;->nativeHandle:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 95
    monitor-exit v2

    .line 109
    :goto_0
    return-void

    .line 97
    :cond_0
    :goto_1
    iget v1, p0, Lorg/tensorflow/Session;->numActiveRuns:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_1

    .line 99
    :try_start_1
    iget-object v1, p0, Lorg/tensorflow/Session;->nativeHandleLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 103
    monitor-exit v2

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 106
    :cond_1
    :try_start_3
    iget-wide v4, p0, Lorg/tensorflow/Session;->nativeHandle:J

    invoke-static {v4, v5}, Lorg/tensorflow/Session;->delete(J)V

    .line 107
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/tensorflow/Session;->nativeHandle:J

    .line 108
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public runner()Lorg/tensorflow/Session$Runner;
    .locals 1

    .prologue
    .line 401
    new-instance v0, Lorg/tensorflow/Session$Runner;

    invoke-direct {v0, p0}, Lorg/tensorflow/Session$Runner;-><init>(Lorg/tensorflow/Session;)V

    return-object v0
.end method
