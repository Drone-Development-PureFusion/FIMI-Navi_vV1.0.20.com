.class public Lcom/twitter/sdk/android/core/GuestSessionProvider;
.super Ljava/lang/Object;
.source "GuestSessionProvider.java"


# instance fields
.field private final oAuth2Service:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

.field private final sessionManager:Lcom/twitter/sdk/android/core/SessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<",
            "Lcom/twitter/sdk/android/core/GuestSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;Lcom/twitter/sdk/android/core/SessionManager;)V
    .locals 0
    .param p1, "oAuth2Service"    # Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;",
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<",
            "Lcom/twitter/sdk/android/core/GuestSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "sessionManager":Lcom/twitter/sdk/android/core/SessionManager;, "Lcom/twitter/sdk/android/core/SessionManager<Lcom/twitter/sdk/android/core/GuestSession;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/twitter/sdk/android/core/GuestSessionProvider;->oAuth2Service:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    .line 32
    iput-object p2, p0, Lcom/twitter/sdk/android/core/GuestSessionProvider;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/twitter/sdk/android/core/GuestSessionProvider;)Lcom/twitter/sdk/android/core/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/twitter/sdk/android/core/GuestSessionProvider;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/sdk/android/core/GuestSessionProvider;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCurrentSession()Lcom/twitter/sdk/android/core/GuestSession;
    .locals 2

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/GuestSessionProvider;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/GuestSession;

    .line 37
    .local v0, "session":Lcom/twitter/sdk/android/core/GuestSession;
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/GuestSessionProvider;->isSessionValid(Lcom/twitter/sdk/android/core/GuestSession;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    .end local v0    # "session":Lcom/twitter/sdk/android/core/GuestSession;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 41
    .restart local v0    # "session":Lcom/twitter/sdk/android/core/GuestSession;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/GuestSessionProvider;->refreshToken()V

    .line 43
    iget-object v1, p0, Lcom/twitter/sdk/android/core/GuestSessionProvider;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/GuestSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 36
    .end local v0    # "session":Lcom/twitter/sdk/android/core/GuestSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method isSessionValid(Lcom/twitter/sdk/android/core/GuestSession;)Z
    .locals 1
    .param p1, "session"    # Lcom/twitter/sdk/android/core/GuestSession;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/GuestSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/GuestSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized refreshCurrentSession(Lcom/twitter/sdk/android/core/GuestSession;)Lcom/twitter/sdk/android/core/GuestSession;
    .locals 2
    .param p1, "expiredSession"    # Lcom/twitter/sdk/android/core/GuestSession;

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/GuestSessionProvider;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/GuestSession;

    .line 48
    .local v0, "session":Lcom/twitter/sdk/android/core/GuestSession;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/GuestSession;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/GuestSessionProvider;->refreshToken()V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/GuestSessionProvider;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/GuestSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 47
    .end local v0    # "session":Lcom/twitter/sdk/android/core/GuestSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method refreshToken()V
    .locals 6

    .prologue
    .line 56
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v2

    const-string v3, "GuestSessionProvider"

    const-string v4, "Refreshing expired guest session."

    invoke-interface {v2, v3, v4}, Lcom/twitter/sdk/android/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 58
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lcom/twitter/sdk/android/core/GuestSessionProvider;->oAuth2Service:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    new-instance v3, Lcom/twitter/sdk/android/core/GuestSessionProvider$1;

    invoke-direct {v3, p0, v1}, Lcom/twitter/sdk/android/core/GuestSessionProvider$1;-><init>(Lcom/twitter/sdk/android/core/GuestSessionProvider;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->requestGuestAuthToken(Lcom/twitter/sdk/android/core/Callback;)V

    .line 73
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/twitter/sdk/android/core/GuestSessionProvider;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v4, v5}, Lcom/twitter/sdk/android/core/SessionManager;->clearSession(J)V

    goto :goto_0
.end method
