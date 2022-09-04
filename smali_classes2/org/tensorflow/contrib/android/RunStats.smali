.class public Lorg/tensorflow/contrib/android/RunStats;
.super Ljava/lang/Object;
.source "RunStats.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static fullTraceRunOptions:[B


# instance fields
.field private nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/tensorflow/contrib/android/RunStats;->fullTraceRunOptions:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x8t
        0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lorg/tensorflow/contrib/android/RunStats;->allocate()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/tensorflow/contrib/android/RunStats;->nativeHandle:J

    .line 30
    return-void
.end method

.method private static native add(J[B)V
.end method

.method private static native allocate()J
.end method

.method private static native delete(J)V
.end method

.method public static runOptions()[B
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/tensorflow/contrib/android/RunStats;->fullTraceRunOptions:[B

    return-object v0
.end method

.method private static native summary(J)Ljava/lang/String;
.end method


# virtual methods
.method public declared-synchronized add([B)V
    .locals 2
    .param p1, "runMetadata"    # [B

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/tensorflow/contrib/android/RunStats;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/contrib/android/RunStats;->add(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 34
    iget-wide v0, p0, Lorg/tensorflow/contrib/android/RunStats;->nativeHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 35
    iget-wide v0, p0, Lorg/tensorflow/contrib/android/RunStats;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/contrib/android/RunStats;->delete(J)V

    .line 37
    :cond_0
    iput-wide v2, p0, Lorg/tensorflow/contrib/android/RunStats;->nativeHandle:J

    .line 38
    return-void
.end method

.method public declared-synchronized summary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/tensorflow/contrib/android/RunStats;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/contrib/android/RunStats;->summary(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
