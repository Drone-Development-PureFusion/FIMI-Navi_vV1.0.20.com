.class public Lcom/twitter/sdk/android/core/TwitterConfig$Builder;
.super Ljava/lang/Object;
.source "TwitterConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/TwitterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private debug:Ljava/lang/Boolean;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private logger:Lcom/twitter/sdk/android/core/Logger;

.field private twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->context:Landroid/content/Context;

    .line 62
    return-void
.end method


# virtual methods
.method public build()Lcom/twitter/sdk/android/core/TwitterConfig;
    .locals 7

    .prologue
    .line 116
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterConfig;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->logger:Lcom/twitter/sdk/android/core/Logger;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v4, p0, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->debug:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/TwitterConfig;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/Logger;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;Lcom/twitter/sdk/android/core/TwitterConfig$1;)V

    return-object v0
.end method

.method public debug(Z)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;
    .locals 1
    .param p1, "debug"    # Z

    .prologue
    .line 107
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->debug:Ljava/lang/Boolean;

    .line 109
    return-object p0
.end method

.method public executorService(Ljava/util/concurrent/ExecutorService;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;
    .locals 2
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExecutorService must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 100
    return-object p0
.end method

.method public logger(Lcom/twitter/sdk/android/core/Logger;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;
    .locals 2
    .param p1, "logger"    # Lcom/twitter/sdk/android/core/Logger;

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Logger must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->logger:Lcom/twitter/sdk/android/core/Logger;

    .line 74
    return-object p0
.end method

.method public twitterAuthConfig(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;
    .locals 2
    .param p1, "authConfig"    # Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TwitterAuthConfig must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 87
    return-object p0
.end method
