.class Lcom/github/moduth/blockcanary/LooperMonitor;
.super Ljava/lang/Object;
.source "LooperMonitor.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/moduth/blockcanary/LooperMonitor$BlockListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLOCK_THRESHOLD_MILLIS:I = 0xbb8


# instance fields
.field private mBlockListener:Lcom/github/moduth/blockcanary/LooperMonitor$BlockListener;

.field private mBlockThresholdMillis:J

.field private mPrintingStarted:Z

.field private mStartThreadTimestamp:J

.field private mStartTimestamp:J

.field private final mStopWhenDebugging:Z


# direct methods
.method public constructor <init>(Lcom/github/moduth/blockcanary/LooperMonitor$BlockListener;JZ)V
    .locals 4
    .param p1, "blockListener"    # Lcom/github/moduth/blockcanary/LooperMonitor$BlockListener;
    .param p2, "blockThresholdMillis"    # J
    .param p4, "stopWhenDebugging"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mBlockThresholdMillis:J

    .line 27
    iput-wide v2, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mStartTimestamp:J

    .line 28
    iput-wide v2, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mStartThreadTimestamp:J

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mBlockListener:Lcom/github/moduth/blockcanary/LooperMonitor$BlockListener;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mPrintingStarted:Z

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "blockListener should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mBlockListener:Lcom/github/moduth/blockcanary/LooperMonitor$BlockListener;

    .line 45
    iput-wide p2, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mBlockThresholdMillis:J

    .line 46
    iput-boolean p4, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mStopWhenDebugging:Z

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/github/moduth/blockcanary/LooperMonitor;)Lcom/github/moduth/blockcanary/LooperMonitor$BlockListener;
    .locals 1
    .param p0, "x0"    # Lcom/github/moduth/blockcanary/LooperMonitor;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mBlockListener:Lcom/github/moduth/blockcanary/LooperMonitor$BlockListener;

    return-object v0
.end method

.method private isBlock(J)Z
    .locals 5
    .param p1, "endTime"    # J

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mStartTimestamp:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mBlockThresholdMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyBlockEvent(J)V
    .locals 11
    .param p1, "endTime"    # J

    .prologue
    .line 74
    iget-wide v2, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mStartTimestamp:J

    .line 75
    .local v2, "startTime":J
    iget-wide v6, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mStartThreadTimestamp:J

    .line 76
    .local v6, "startThreadTime":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    .line 77
    .local v8, "endThreadTime":J
    invoke-static {}, Lcom/github/moduth/blockcanary/HandlerThreadFactory;->getWriteLogThreadHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Lcom/github/moduth/blockcanary/LooperMonitor$1;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/github/moduth/blockcanary/LooperMonitor$1;-><init>(Lcom/github/moduth/blockcanary/LooperMonitor;JJJJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method

.method private startDump()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getInstance()Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->stackSampler:Lcom/github/moduth/blockcanary/StackSampler;

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getInstance()Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->stackSampler:Lcom/github/moduth/blockcanary/StackSampler;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/StackSampler;->start()V

    .line 90
    :cond_0
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getInstance()Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->cpuSampler:Lcom/github/moduth/blockcanary/CpuSampler;

    if-eqz v0, :cond_1

    .line 91
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getInstance()Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->cpuSampler:Lcom/github/moduth/blockcanary/CpuSampler;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/CpuSampler;->start()V

    .line 93
    :cond_1
    return-void
.end method

.method private stopDump()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getInstance()Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->stackSampler:Lcom/github/moduth/blockcanary/StackSampler;

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getInstance()Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->stackSampler:Lcom/github/moduth/blockcanary/StackSampler;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/StackSampler;->stop()V

    .line 100
    :cond_0
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getInstance()Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->cpuSampler:Lcom/github/moduth/blockcanary/CpuSampler;

    if-eqz v0, :cond_1

    .line 101
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getInstance()Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    move-result-object v0

    iget-object v0, v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->cpuSampler:Lcom/github/moduth/blockcanary/CpuSampler;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/CpuSampler;->stop()V

    .line 103
    :cond_1
    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 4
    .param p1, "x"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-boolean v2, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mStopWhenDebugging:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-boolean v2, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mPrintingStarted:Z

    if-nez v2, :cond_1

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mStartTimestamp:J

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mStartThreadTimestamp:J

    .line 57
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mPrintingStarted:Z

    .line 58
    invoke-direct {p0}, Lcom/github/moduth/blockcanary/LooperMonitor;->startDump()V

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    .local v0, "endTime":J
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/github/moduth/blockcanary/LooperMonitor;->mPrintingStarted:Z

    .line 62
    invoke-direct {p0, v0, v1}, Lcom/github/moduth/blockcanary/LooperMonitor;->isBlock(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-direct {p0, v0, v1}, Lcom/github/moduth/blockcanary/LooperMonitor;->notifyBlockEvent(J)V

    .line 65
    :cond_2
    invoke-direct {p0}, Lcom/github/moduth/blockcanary/LooperMonitor;->stopDump()V

    goto :goto_0
.end method
