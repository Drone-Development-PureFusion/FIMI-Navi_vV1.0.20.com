.class public Lcom/twitter/sdk/android/core/Twitter;
.super Ljava/lang/Object;
.source "Twitter.java"


# static fields
.field private static final CONSUMER_KEY:Ljava/lang/String; = "com.twitter.sdk.android.CONSUMER_KEY"

.field private static final CONSUMER_SECRET:Ljava/lang/String; = "com.twitter.sdk.android.CONSUMER_SECRET"

.field static final DEFAULT_LOGGER:Lcom/twitter/sdk/android/core/Logger;

.field private static final NOT_INITIALIZED_MESSAGE:Ljava/lang/String; = "Must initialize Twitter before using getInstance()"

.field public static final TAG:Ljava/lang/String; = "Twitter"

.field static volatile instance:Lcom/twitter/sdk/android/core/Twitter;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final debug:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final idManager:Lcom/twitter/sdk/android/core/internal/IdManager;

.field private final lifecycleManager:Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;

.field private final logger:Lcom/twitter/sdk/android/core/Logger;

.field private final twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/twitter/sdk/android/core/DefaultLogger;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/DefaultLogger;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/Twitter;->DEFAULT_LOGGER:Lcom/twitter/sdk/android/core/Logger;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/sdk/android/core/TwitterConfig;)V
    .locals 5
    .param p1, "config"    # Lcom/twitter/sdk/android/core/TwitterConfig;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v2, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->context:Landroid/content/Context;

    iput-object v2, p0, Lcom/twitter/sdk/android/core/Twitter;->context:Landroid/content/Context;

    .line 54
    new-instance v2, Lcom/twitter/sdk/android/core/internal/IdManager;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/Twitter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/twitter/sdk/android/core/internal/IdManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/twitter/sdk/android/core/Twitter;->idManager:Lcom/twitter/sdk/android/core/internal/IdManager;

    .line 55
    new-instance v2, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/Twitter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/twitter/sdk/android/core/Twitter;->lifecycleManager:Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;

    .line 57
    iget-object v2, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    if-nez v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/twitter/sdk/android/core/Twitter;->context:Landroid/content/Context;

    const-string v3, "com.twitter.sdk.android.CONSUMER_KEY"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->getStringResourceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/twitter/sdk/android/core/Twitter;->context:Landroid/content/Context;

    const-string v3, "com.twitter.sdk.android.CONSUMER_SECRET"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->getStringResourceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "secret":Ljava/lang/String;
    new-instance v2, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-direct {v2, v0, v1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/twitter/sdk/android/core/Twitter;->twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 65
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "secret":Ljava/lang/String;
    :goto_0
    iget-object v2, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_1

    .line 66
    const-string v2, "twitter-worker"

    invoke-static {v2}, Lcom/twitter/sdk/android/core/internal/ExecutorUtils;->buildThreadPoolExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/sdk/android/core/Twitter;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 71
    :goto_1
    iget-object v2, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->logger:Lcom/twitter/sdk/android/core/Logger;

    if-nez v2, :cond_2

    .line 72
    sget-object v2, Lcom/twitter/sdk/android/core/Twitter;->DEFAULT_LOGGER:Lcom/twitter/sdk/android/core/Logger;

    iput-object v2, p0, Lcom/twitter/sdk/android/core/Twitter;->logger:Lcom/twitter/sdk/android/core/Logger;

    .line 77
    :goto_2
    iget-object v2, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->debug:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 78
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/twitter/sdk/android/core/Twitter;->debug:Z

    .line 82
    :goto_3
    return-void

    .line 62
    :cond_0
    iget-object v2, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iput-object v2, p0, Lcom/twitter/sdk/android/core/Twitter;->twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    goto :goto_0

    .line 68
    :cond_1
    iget-object v2, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->executorService:Ljava/util/concurrent/ExecutorService;

    iput-object v2, p0, Lcom/twitter/sdk/android/core/Twitter;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 74
    :cond_2
    iget-object v2, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->logger:Lcom/twitter/sdk/android/core/Logger;

    iput-object v2, p0, Lcom/twitter/sdk/android/core/Twitter;->logger:Lcom/twitter/sdk/android/core/Logger;

    goto :goto_2

    .line 80
    :cond_3
    iget-object v2, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->debug:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/twitter/sdk/android/core/Twitter;->debug:Z

    goto :goto_3
.end method

.method static checkInitialized()V
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must initialize Twitter before using getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    return-void
.end method

.method static declared-synchronized createTwitter(Lcom/twitter/sdk/android/core/TwitterConfig;)Lcom/twitter/sdk/android/core/Twitter;
    .locals 2
    .param p0, "config"    # Lcom/twitter/sdk/android/core/TwitterConfig;

    .prologue
    .line 133
    const-class v1, Lcom/twitter/sdk/android/core/Twitter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/twitter/sdk/android/core/Twitter;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/Twitter;-><init>(Lcom/twitter/sdk/android/core/TwitterConfig;)V

    sput-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    .line 135
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/twitter/sdk/android/core/Twitter;
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->checkInitialized()V

    .line 152
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    return-object v0
.end method

.method public static getLogger()Lcom/twitter/sdk/android/core/Logger;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    if-nez v0, :cond_0

    .line 207
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->DEFAULT_LOGGER:Lcom/twitter/sdk/android/core/Logger;

    .line 210
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/Twitter;->logger:Lcom/twitter/sdk/android/core/Logger;

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    new-instance v1, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->build()Lcom/twitter/sdk/android/core/TwitterConfig;

    move-result-object v0

    .line 106
    .local v0, "config":Lcom/twitter/sdk/android/core/TwitterConfig;
    invoke-static {v0}, Lcom/twitter/sdk/android/core/Twitter;->createTwitter(Lcom/twitter/sdk/android/core/TwitterConfig;)Lcom/twitter/sdk/android/core/Twitter;

    .line 107
    return-void
.end method

.method public static initialize(Lcom/twitter/sdk/android/core/TwitterConfig;)V
    .locals 0
    .param p0, "config"    # Lcom/twitter/sdk/android/core/TwitterConfig;

    .prologue
    .line 129
    invoke-static {p0}, Lcom/twitter/sdk/android/core/Twitter;->createTwitter(Lcom/twitter/sdk/android/core/TwitterConfig;)Lcom/twitter/sdk/android/core/Twitter;

    .line 130
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/Twitter;->debug:Z

    goto :goto_0
.end method


# virtual methods
.method public getActivityLifecycleManager()Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->lifecycleManager:Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;

    return-object v0
.end method

.method public getContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 4
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterContext;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/Twitter;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".TwitterKit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/twitter/sdk/android/core/TwitterContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getIdManager()Lcom/twitter/sdk/android/core/internal/IdManager;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->idManager:Lcom/twitter/sdk/android/core/internal/IdManager;

    return-object v0
.end method

.method public getTwitterAuthConfig()Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-object v0
.end method
