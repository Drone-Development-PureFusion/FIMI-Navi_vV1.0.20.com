.class Lcom/twitter/sdk/android/core/GuestSessionProvider$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "GuestSessionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/GuestSessionProvider;->refreshToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback",
        "<",
        "Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/core/GuestSessionProvider;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/GuestSessionProvider;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/core/GuestSessionProvider;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/twitter/sdk/android/core/GuestSessionProvider$1;->this$0:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/GuestSessionProvider$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 4
    .param p1, "exception"    # Lcom/twitter/sdk/android/core/TwitterException;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/sdk/android/core/GuestSessionProvider$1;->this$0:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/GuestSessionProvider;->access$000(Lcom/twitter/sdk/android/core/GuestSessionProvider;)Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/twitter/sdk/android/core/SessionManager;->clearSession(J)V

    .line 68
    iget-object v0, p0, Lcom/twitter/sdk/android/core/GuestSessionProvider$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 69
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/core/GuestSessionProvider$1;->this$0:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/GuestSessionProvider;->access$000(Lcom/twitter/sdk/android/core/GuestSessionProvider;)Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/core/GuestSession;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    invoke-direct {v2, v0}, Lcom/twitter/sdk/android/core/GuestSession;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    invoke-interface {v1, v2}, Lcom/twitter/sdk/android/core/SessionManager;->setActiveSession(Lcom/twitter/sdk/android/core/Session;)V

    .line 62
    iget-object v0, p0, Lcom/twitter/sdk/android/core/GuestSessionProvider$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 63
    return-void
.end method
