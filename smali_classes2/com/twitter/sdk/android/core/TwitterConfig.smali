.class public Lcom/twitter/sdk/android/core/TwitterConfig;
.super Ljava/lang/Object;
.source "TwitterConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/TwitterConfig$Builder;
    }
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field final debug:Ljava/lang/Boolean;

.field final executorService:Ljava/util/concurrent/ExecutorService;

.field final logger:Lcom/twitter/sdk/android/core/Logger;

.field final twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/Logger;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lcom/twitter/sdk/android/core/Logger;
    .param p3, "twitterAuthConfig"    # Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .param p4, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p5, "debug"    # Ljava/lang/Boolean;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/twitter/sdk/android/core/TwitterConfig;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/twitter/sdk/android/core/TwitterConfig;->logger:Lcom/twitter/sdk/android/core/Logger;

    .line 38
    iput-object p3, p0, Lcom/twitter/sdk/android/core/TwitterConfig;->twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 39
    iput-object p4, p0, Lcom/twitter/sdk/android/core/TwitterConfig;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 40
    iput-object p5, p0, Lcom/twitter/sdk/android/core/TwitterConfig;->debug:Ljava/lang/Boolean;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/Logger;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;Lcom/twitter/sdk/android/core/TwitterConfig$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/twitter/sdk/android/core/Logger;
    .param p3, "x2"    # Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .param p4, "x3"    # Ljava/util/concurrent/ExecutorService;
    .param p5, "x4"    # Ljava/lang/Boolean;
    .param p6, "x5"    # Lcom/twitter/sdk/android/core/TwitterConfig$1;

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/twitter/sdk/android/core/TwitterConfig;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/Logger;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;)V

    return-void
.end method
