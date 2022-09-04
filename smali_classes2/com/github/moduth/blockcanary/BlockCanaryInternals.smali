.class public final Lcom/github/moduth/blockcanary/BlockCanaryInternals;
.super Ljava/lang/Object;
.source "BlockCanaryInternals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/moduth/blockcanary/BlockCanaryInternals$BlockLogFileFilter;
    }
.end annotation


# static fields
.field private static sContext:Lcom/github/moduth/blockcanary/BlockCanaryContext;

.field private static sInstance:Lcom/github/moduth/blockcanary/BlockCanaryInternals;


# instance fields
.field cpuSampler:Lcom/github/moduth/blockcanary/CpuSampler;

.field private mInterceptorChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/moduth/blockcanary/BlockInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field monitor:Lcom/github/moduth/blockcanary/LooperMonitor;

.field stackSampler:Lcom/github/moduth/blockcanary/StackSampler;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->mInterceptorChain:Ljava/util/List;

    .line 42
    new-instance v0, Lcom/github/moduth/blockcanary/StackSampler;

    .line 43
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->sContext:Lcom/github/moduth/blockcanary/BlockCanaryContext;

    .line 44
    invoke-virtual {v2}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideDumpInterval()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Lcom/github/moduth/blockcanary/StackSampler;-><init>(Ljava/lang/Thread;J)V

    iput-object v0, p0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->stackSampler:Lcom/github/moduth/blockcanary/StackSampler;

    .line 46
    new-instance v0, Lcom/github/moduth/blockcanary/CpuSampler;

    sget-object v1, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->sContext:Lcom/github/moduth/blockcanary/BlockCanaryContext;

    invoke-virtual {v1}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideDumpInterval()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Lcom/github/moduth/blockcanary/CpuSampler;-><init>(J)V

    iput-object v0, p0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->cpuSampler:Lcom/github/moduth/blockcanary/CpuSampler;

    .line 48
    new-instance v0, Lcom/github/moduth/blockcanary/LooperMonitor;

    new-instance v1, Lcom/github/moduth/blockcanary/BlockCanaryInternals$1;

    invoke-direct {v1, p0}, Lcom/github/moduth/blockcanary/BlockCanaryInternals$1;-><init>(Lcom/github/moduth/blockcanary/BlockCanaryInternals;)V

    .line 72
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideBlockThreshold()I

    move-result v2

    int-to-long v2, v2

    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->stopWhenDebugging()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/github/moduth/blockcanary/LooperMonitor;-><init>(Lcom/github/moduth/blockcanary/LooperMonitor$BlockListener;JZ)V

    .line 48
    invoke-direct {p0, v0}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->setMonitor(Lcom/github/moduth/blockcanary/LooperMonitor;)V

    .line 74
    invoke-static {}, Lcom/github/moduth/blockcanary/LogWriter;->cleanObsolete()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/github/moduth/blockcanary/BlockCanaryInternals;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->mInterceptorChain:Ljava/util/List;

    return-object v0
.end method

.method static detectedBlockDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 135
    :cond_0
    return-object v0
.end method

.method public static getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->sContext:Lcom/github/moduth/blockcanary/BlockCanaryContext;

    return-object v0
.end method

.method static getInstance()Lcom/github/moduth/blockcanary/BlockCanaryInternals;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->sInstance:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    if-nez v0, :cond_1

    .line 84
    const-class v1, Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->sInstance:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    invoke-direct {v0}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;-><init>()V

    sput-object v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->sInstance:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    .line 88
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    sget-object v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->sInstance:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getLogFiles()[Ljava/io/File;
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->detectedBlockDirectory()Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Lcom/github/moduth/blockcanary/BlockCanaryInternals$BlockLogFileFilter;

    invoke-direct {v1}, Lcom/github/moduth/blockcanary/BlockCanaryInternals$BlockLogFileFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 143
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "state":Ljava/lang/String;
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, ""

    .line 123
    .local v0, "logPath":Ljava/lang/String;
    :goto_0
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    :goto_1
    return-object v2

    .line 121
    .end local v0    # "logPath":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->providePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    .restart local v0    # "logPath":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->providePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static setContext(Lcom/github/moduth/blockcanary/BlockCanaryContext;)V
    .locals 0
    .param p0, "context"    # Lcom/github/moduth/blockcanary/BlockCanaryContext;

    .prologue
    .line 99
    sput-object p0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->sContext:Lcom/github/moduth/blockcanary/BlockCanaryContext;

    .line 100
    return-void
.end method

.method private setMonitor(Lcom/github/moduth/blockcanary/LooperMonitor;)V
    .locals 0
    .param p1, "looperPrinter"    # Lcom/github/moduth/blockcanary/LooperMonitor;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->monitor:Lcom/github/moduth/blockcanary/LooperMonitor;

    .line 112
    return-void
.end method


# virtual methods
.method addBlockInterceptor(Lcom/github/moduth/blockcanary/BlockInterceptor;)V
    .locals 1
    .param p1, "blockInterceptor"    # Lcom/github/moduth/blockcanary/BlockInterceptor;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->mInterceptorChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method getSampleDelay()J
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getContext()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideBlockThreshold()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method
