.class Lcom/twitter/sdk/android/core/identity/AuthState;
.super Ljava/lang/Object;
.source "AuthState.java"


# instance fields
.field final authHandlerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/twitter/sdk/android/core/identity/AuthHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/identity/AuthState;->authHandlerRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public beginAuthorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/AuthHandler;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "authHandler"    # Lcom/twitter/sdk/android/core/identity/AuthHandler;

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/AuthState;->isAuthorizeInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v1

    const-string v2, "Twitter"

    const-string v3, "Authorize already in progress"

    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    invoke-virtual {p2, p1}, Lcom/twitter/sdk/android/core/identity/AuthHandler;->authorize(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/AuthState;->authHandlerRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v1

    const-string v2, "Twitter"

    const-string v3, "Failed to update authHandler, authorize already in progress."

    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endAuthorize()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/AuthState;->authHandlerRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public getAuthHandler()Lcom/twitter/sdk/android/core/identity/AuthHandler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/AuthState;->authHandlerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/identity/AuthHandler;

    return-object v0
.end method

.method public isAuthorizeInProgress()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/AuthState;->authHandlerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
