.class public Lcom/twitter/sdk/android/core/internal/SessionMonitor;
.super Ljava/lang/Object;
.source "SessionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/SessionMonitor$MonitorState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/core/Session;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field protected final monitorState:Lcom/twitter/sdk/android/core/internal/SessionMonitor$MonitorState;

.field private final sessionManager:Lcom/twitter/sdk/android/core/SessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final sessionVerifier:Lcom/twitter/sdk/android/core/internal/SessionVerifier;

.field private final time:Lcom/twitter/sdk/android/core/internal/SystemCurrentTimeProvider;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/internal/SystemCurrentTimeProvider;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/SessionMonitor$MonitorState;Lcom/twitter/sdk/android/core/internal/SessionVerifier;)V
    .locals 0
    .param p2, "time"    # Lcom/twitter/sdk/android/core/internal/SystemCurrentTimeProvider;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "monitorState"    # Lcom/twitter/sdk/android/core/internal/SessionMonitor$MonitorState;
    .param p5, "sessionVerifier"    # Lcom/twitter/sdk/android/core/internal/SessionVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<TT;>;",
            "Lcom/twitter/sdk/android/core/internal/SystemCurrentTimeProvider;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/twitter/sdk/android/core/internal/SessionMonitor$MonitorState;",
            "Lcom/twitter/sdk/android/core/internal/SessionVerifier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/SessionMonitor;, "Lcom/twitter/sdk/android/core/internal/SessionMonitor<TT;>;"
    .local p1, "sessionManager":Lcom/twitter/sdk/android/core/SessionManager;, "Lcom/twitter/sdk/android/core/SessionManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/SessionMonitor;->time:Lcom/twitter/sdk/android/core/internal/SystemCurrentTimeProvider;

    .line 56
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/SessionMonitor;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    .line 57
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/SessionMonitor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 58
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/SessionMonitor;->monitorState:Lcom/twitter/sdk/android/core/internal/SessionMonitor$MonitorState;

    .line 59
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/SessionMonitor;->sessionVerifier:Lcom/twitter/sdk/android/core/internal/SessionVerifier;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/SessionManager;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/SessionVerifier;)V
    .locals 6
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<TT;>;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/twitter/sdk/android/core/internal/SessionVerifier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/SessionMonitor;, "Lcom/twitter/sdk/android/core/internal/SessionMonitor<TT;>;"
    .local p1, "sessionManager":Lcom/twitter/sdk/android/core/SessionManager;, "Lcom/twitter/sdk/android/core/SessionManager<TT;>;"
    .local p3, "sessionVerifier":Lcom/twitter/sdk/android/core/internal/SessionVerifier;, "Lcom/twitter/sdk/android/core/internal/SessionVerifier<TT;>;"
    new-instance v2, Lcom/twitter/sdk/android/core/internal/SystemCurrentTimeProvider;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/internal/SystemCurrentTimeProvider;-><init>()V

    new-instance v4, Lcom/twitter/sdk/android/core/internal/SessionMonitor$MonitorState;

    invoke-direct {v4}, Lcom/twitter/sdk/android/core/internal/SessionMonitor$MonitorState;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/SessionMonitor;-><init>(Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/internal/SystemCurrentTimeProvider;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/SessionMonitor$MonitorState;Lcom/twitter/sdk/android/core/internal/SessionVerifier;)V

    .line 50
    return-void
.end method


# virtual methods
.method public monitorActivityLifecycle(Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;)V
    .locals 1
    .param p1, "activityLifecycleManager"    # Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;

    .prologue
    .line 67
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/SessionMonitor;, "Lcom/twitter/sdk/android/core/internal/SessionMonitor<TT;>;"
    new-instance v0, Lcom/twitter/sdk/android/core/internal/SessionMonitor$1;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/internal/SessionMonitor$1;-><init>(Lcom/twitter/sdk/android/core/internal/SessionMonitor;)V

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;->registerCallbacks(Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$Callbacks;)Z

    .line 73
    return-void
.end method

.method public triggerVerificationIfNecessary()V
    .locals 6

    .prologue
    .line 81
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/SessionMonitor;, "Lcom/twitter/sdk/android/core/internal/SessionMonitor<TT;>;"
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/SessionMonitor;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-interface {v4}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v2

    .line 82
    .local v2, "session":Lcom/twitter/sdk/android/core/Session;
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/SessionMonitor;->time:Lcom/twitter/sdk/android/core/internal/SystemCurrentTimeProvider;

    invoke-virtual {v4}, Lcom/twitter/sdk/android/core/internal/SystemCurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 83
    .local v0, "currentTime":J
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/SessionMonitor;->monitorState:Lcom/twitter/sdk/android/core/internal/SessionMonitor$MonitorState;

    .line 84
    invoke-virtual {v4, v0, v1}, Lcom/twitter/sdk/android/core/internal/SessionMonitor$MonitorState;->beginVerification(J)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 85
    .local v3, "startVerification":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 86
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/SessionMonitor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/twitter/sdk/android/core/internal/SessionMonitor$2;

    invoke-direct {v5, p0}, Lcom/twitter/sdk/android/core/internal/SessionMonitor$2;-><init>(Lcom/twitter/sdk/android/core/internal/SessionMonitor;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 93
    :cond_0
    return-void

    .line 84
    .end local v3    # "startVerification":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected verifyAll()V
    .locals 4

    .prologue
    .line 96
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/SessionMonitor;, "Lcom/twitter/sdk/android/core/internal/SessionMonitor<TT;>;"
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/SessionMonitor;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/SessionManager;->getSessionMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/Session;

    .line 97
    .local v0, "session":Lcom/twitter/sdk/android/core/Session;, "TT;"
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/SessionMonitor;->sessionVerifier:Lcom/twitter/sdk/android/core/internal/SessionVerifier;

    invoke-interface {v2, v0}, Lcom/twitter/sdk/android/core/internal/SessionVerifier;->verifySession(Lcom/twitter/sdk/android/core/Session;)V

    goto :goto_0

    .line 99
    .end local v0    # "session":Lcom/twitter/sdk/android/core/Session;, "TT;"
    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/SessionMonitor;->monitorState:Lcom/twitter/sdk/android/core/internal/SessionMonitor$MonitorState;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/SessionMonitor;->time:Lcom/twitter/sdk/android/core/internal/SystemCurrentTimeProvider;

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/internal/SystemCurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/SessionMonitor$MonitorState;->endVerification(J)V

    .line 100
    return-void
.end method
