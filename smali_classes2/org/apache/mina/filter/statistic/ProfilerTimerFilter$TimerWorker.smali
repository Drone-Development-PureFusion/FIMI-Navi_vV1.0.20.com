.class Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;
.super Ljava/lang/Object;
.source "ProfilerTimerFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerWorker"
.end annotation


# instance fields
.field private final callsNumber:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lock:Ljava/lang/Object;

.field private final maximum:Ljava/util/concurrent/atomic/AtomicLong;

.field private final minimum:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;

.field private final total:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V
    .locals 1

    .prologue
    .line 813
    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->this$0:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->lock:Ljava/lang/Object;

    .line 814
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->total:Ljava/util/concurrent/atomic/AtomicLong;

    .line 815
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->callsNumber:Ljava/util/concurrent/atomic/AtomicLong;

    .line 816
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->minimum:Ljava/util/concurrent/atomic/AtomicLong;

    .line 817
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    .line 818
    return-void
.end method


# virtual methods
.method public addNewDuration(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 828
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->callsNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 829
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 831
    iget-object v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 833
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->minimum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 834
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->minimum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 838
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 839
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 841
    :cond_1
    monitor-exit v1

    .line 842
    return-void

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAverage()D
    .locals 6

    .prologue
    .line 850
    iget-object v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 852
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->callsNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v4

    div-long/2addr v2, v4

    long-to-double v2, v2

    monitor-exit v1

    return-wide v2

    .line 853
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCallsNumber()J
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->callsNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximum()J
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimum()J
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->minimum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
