.class public final Lcom/github/moduth/blockcanary/BlockCanary;
.super Ljava/lang/Object;
.source "BlockCanary.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BlockCanary"

.field private static final fileIoExecutor:Ljava/util/concurrent/Executor;

.field private static sInstance:Lcom/github/moduth/blockcanary/BlockCanary;


# instance fields
.field private mBlockCanaryCore:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

.field private mMonitorStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const-string v0, "File-IO"

    invoke-static {v0}, Lcom/github/moduth/blockcanary/BlockCanary;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/github/moduth/blockcanary/BlockCanary;->fileIoExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/moduth/blockcanary/BlockCanary;->mMonitorStarted:Z

    .line 42
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->get()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v0

    invoke-static {v0}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->setContext(Lcom/github/moduth/blockcanary/BlockCanaryContext;)V

    .line 43
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->getInstance()Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    move-result-object v0

    iput-object v0, p0, Lcom/github/moduth/blockcanary/BlockCanary;->mBlockCanaryCore:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    .line 44
    iget-object v0, p0, Lcom/github/moduth/blockcanary/BlockCanary;->mBlockCanaryCore:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->get()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->addBlockInterceptor(Lcom/github/moduth/blockcanary/BlockInterceptor;)V

    .line 45
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->get()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->displayNotification()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/github/moduth/blockcanary/BlockCanary;->mBlockCanaryCore:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    new-instance v1, Lcom/github/moduth/blockcanary/DisplayService;

    invoke-direct {v1}, Lcom/github/moduth/blockcanary/DisplayService;-><init>()V

    invoke-virtual {v0, v1}, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->addBlockInterceptor(Lcom/github/moduth/blockcanary/BlockInterceptor;)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/Class;
    .param p2, "x2"    # Z

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/github/moduth/blockcanary/BlockCanary;->setEnabledBlocking(Landroid/content/Context;Ljava/lang/Class;Z)V

    return-void
.end method

.method private static executeOnFileIoThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 149
    sget-object v0, Lcom/github/moduth/blockcanary/BlockCanary;->fileIoExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public static get()Lcom/github/moduth/blockcanary/BlockCanary;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/github/moduth/blockcanary/BlockCanary;->sInstance:Lcom/github/moduth/blockcanary/BlockCanary;

    if-nez v0, :cond_1

    .line 72
    const-class v1, Lcom/github/moduth/blockcanary/BlockCanary;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/github/moduth/blockcanary/BlockCanary;->sInstance:Lcom/github/moduth/blockcanary/BlockCanary;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/github/moduth/blockcanary/BlockCanary;

    invoke-direct {v0}, Lcom/github/moduth/blockcanary/BlockCanary;-><init>()V

    sput-object v0, Lcom/github/moduth/blockcanary/BlockCanary;->sInstance:Lcom/github/moduth/blockcanary/BlockCanary;

    .line 76
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    sget-object v0, Lcom/github/moduth/blockcanary/BlockCanary;->sInstance:Lcom/github/moduth/blockcanary/BlockCanary;

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static install(Landroid/content/Context;Lcom/github/moduth/blockcanary/BlockCanaryContext;)Lcom/github/moduth/blockcanary/BlockCanary;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "blockCanaryContext"    # Lcom/github/moduth/blockcanary/BlockCanaryContext;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->init(Landroid/content/Context;Lcom/github/moduth/blockcanary/BlockCanaryContext;)V

    .line 61
    const-class v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->get()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->displayNotification()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/github/moduth/blockcanary/BlockCanary;->setEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 62
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanary;->get()Lcom/github/moduth/blockcanary/BlockCanary;

    move-result-object v0

    return-object v0
.end method

.method private static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "threadName"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Lcom/github/moduth/blockcanary/SingleThreadFactory;

    invoke-direct {v0, p0}, Lcom/github/moduth/blockcanary/SingleThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static setEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/github/moduth/blockcanary/BlockCanary$1;

    invoke-direct {v1, v0, p1, p2}, Lcom/github/moduth/blockcanary/BlockCanary$1;-><init>(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {v1}, Lcom/github/moduth/blockcanary/BlockCanary;->executeOnFileIoThread(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method private static setEnabledBlocking(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 4
    .param p0, "appContext"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    .line 140
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 142
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz p2, :cond_0

    move v1, v3

    .line 144
    .local v1, "newState":I
    :goto_0
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 145
    return-void

    .line 142
    .end local v1    # "newState":I
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public isMonitorDurationEnd()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 128
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->get()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "BlockCanary_StartTime"

    .line 129
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 130
    .local v0, "startTime":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 131
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->get()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideMonitorDuration()I

    move-result v4

    mul-int/lit16 v4, v4, 0xe10

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public recordStartTime()V
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->get()Lcom/github/moduth/blockcanary/BlockCanaryContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BlockCanary_StartTime"

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/github/moduth/blockcanary/BlockCanary;->mMonitorStarted:Z

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/moduth/blockcanary/BlockCanary;->mMonitorStarted:Z

    .line 87
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/github/moduth/blockcanary/BlockCanary;->mBlockCanaryCore:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    iget-object v1, v1, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->monitor:Lcom/github/moduth/blockcanary/LooperMonitor;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 89
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/github/moduth/blockcanary/BlockCanary;->mMonitorStarted:Z

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/moduth/blockcanary/BlockCanary;->mMonitorStarted:Z

    .line 97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 98
    iget-object v0, p0, Lcom/github/moduth/blockcanary/BlockCanary;->mBlockCanaryCore:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    iget-object v0, v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->stackSampler:Lcom/github/moduth/blockcanary/StackSampler;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/StackSampler;->stop()V

    .line 99
    iget-object v0, p0, Lcom/github/moduth/blockcanary/BlockCanary;->mBlockCanaryCore:Lcom/github/moduth/blockcanary/BlockCanaryInternals;

    iget-object v0, v0, Lcom/github/moduth/blockcanary/BlockCanaryInternals;->cpuSampler:Lcom/github/moduth/blockcanary/CpuSampler;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/CpuSampler;->stop()V

    .line 101
    :cond_0
    return-void
.end method

.method public upload()V
    .locals 0

    .prologue
    .line 107
    invoke-static {}, Lcom/github/moduth/blockcanary/Uploader;->zipAndUpload()V

    .line 108
    return-void
.end method
