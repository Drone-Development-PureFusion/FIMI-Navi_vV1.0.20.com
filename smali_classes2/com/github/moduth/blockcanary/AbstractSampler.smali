.class abstract Lcom/github/moduth/blockcanary/AbstractSampler;
.super Ljava/lang/Object;
.source "AbstractSampler.java"


# static fields
.field private static final DEFAULT_SAMPLE_INTERVAL:I = 0x12c


# instance fields
.field private mRunnable:Ljava/lang/Runnable;

.field protected mSampleInterval:J

.field protected mShouldSample:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "sampleInterval"    # J

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/github/moduth/blockcanary/AbstractSampler;->mShouldSample:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance v0, Lcom/github/moduth/blockcanary/AbstractSampler$1;

    invoke-direct {v0, p0}, Lcom/github/moduth/blockcanary/AbstractSampler$1;-><init>(Lcom/github/moduth/blockcanary/AbstractSampler;)V

    iput-object v0, p0, Lcom/github/moduth/blockcanary/AbstractSampler;->mRunnable:Ljava/lang/Runnable;

    .line 43
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 44
    const-wide/16 p1, 0x12c

    .line 46
    :cond_0
    iput-wide p1, p0, Lcom/github/moduth/blockcanary/AbstractSampler;->mSampleInterval:J

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/github/moduth/blockcanary/AbstractSampler;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/github/moduth/blockcanary/AbstractSampler;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/github/moduth/blockcanary/AbstractSampler;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method abstract doSample()V
.end method

.method public start()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/github/moduth/blockcanary/AbstractSampler;->mShouldSample:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/github/moduth/blockcanary/AbstractSampler;->mShouldSample:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    invoke-static {}, Lcom/github/moduth/blockcanary/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/github/moduth/blockcanary/AbstractSampler;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    invoke-static {}, Lcom/github/moduth/blockcanary/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/github/moduth/blockcanary/AbstractSampler;->mRunnable:Ljava/lang/Runnable;

    .line 57
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getInstance()Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getSampleDelay()J

    move-result-wide v2

    .line 56
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/github/moduth/blockcanary/AbstractSampler;->mShouldSample:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/github/moduth/blockcanary/AbstractSampler;->mShouldSample:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    invoke-static {}, Lcom/github/moduth/blockcanary/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/github/moduth/blockcanary/AbstractSampler;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
