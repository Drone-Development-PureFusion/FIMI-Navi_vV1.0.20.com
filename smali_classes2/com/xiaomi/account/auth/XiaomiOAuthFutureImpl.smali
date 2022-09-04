.class public Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;
.super Ljava/util/concurrent/FutureTask;
.source "XiaomiOAuthFutureImpl.java"

# interfaces
.implements Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MINUTE:J = 0xaL


# instance fields
.field private mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;, "Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl<TV;>;"
    new-instance v0, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl$1;

    invoke-direct {v0}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl$1;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 36
    return-void
.end method

.method private ensureNotOnMainThread()V
    .locals 3

    .prologue
    .line 23
    .local p0, "this":Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;, "Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl<TV;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 24
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 25
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_0
    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .param p1, "timeout"    # Ljava/lang/Long;
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;, "Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl<TV;>;"
    const/4 v4, 0x1

    .line 61
    invoke-virtual {p0}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->ensureNotOnMainThread()V

    .line 65
    :cond_0
    if-nez p1, :cond_1

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 92
    invoke-virtual {p0, v4}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->cancel(Z)Z

    .line 68
    :goto_0
    return-object v2

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 92
    invoke-virtual {p0, v4}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->cancel(Z)Z

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    :try_start_2
    new-instance v2, Landroid/accounts/OperationCanceledException;

    invoke-direct {v2}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v4}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->cancel(Z)Z

    throw v2

    .line 72
    :catch_1
    move-exception v2

    .line 92
    invoke-virtual {p0, v4}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->cancel(Z)Z

    .line 94
    :goto_1
    new-instance v2, Landroid/accounts/OperationCanceledException;

    invoke-direct {v2}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v2

    .line 74
    :catch_2
    move-exception v2

    .line 92
    invoke-virtual {p0, v4}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->cancel(Z)Z

    goto :goto_1

    .line 76
    :catch_3
    move-exception v1

    .line 77
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 78
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 79
    check-cast v0, Ljava/io/IOException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 80
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_3

    .line 81
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 82
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_3
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_4

    .line 83
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 84
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_4
    instance-of v2, v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    if-eqz v2, :cond_5

    .line 85
    check-cast v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 86
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_5
    instance-of v2, v0, Landroid/accounts/OperationCanceledException;

    if-eqz v2, :cond_6

    .line 87
    check-cast v0, Landroid/accounts/OperationCanceledException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 89
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_6
    new-instance v2, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v2, v0}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/OperationCanceledException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;, "Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl<TV;>;"
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/OperationCanceledException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;, "Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl<TV;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;, "Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    .local p0, "this":Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;, "Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl<TV;>;"
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method
