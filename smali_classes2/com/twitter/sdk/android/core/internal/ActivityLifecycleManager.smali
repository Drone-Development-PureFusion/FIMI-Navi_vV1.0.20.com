.class public Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;,
        Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$Callbacks;
    }
.end annotation


# instance fields
.field private final callbacksWrapper:Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 54
    .local v0, "application":Landroid/app/Application;
    new-instance v1, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

    invoke-direct {v1, v0}, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;-><init>(Landroid/app/Application;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;->callbacksWrapper:Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

    .line 55
    return-void
.end method


# virtual methods
.method public registerCallbacks(Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$Callbacks;)Z
    .locals 1
    .param p1, "callbacks"    # Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$Callbacks;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;->callbacksWrapper:Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;->callbacksWrapper:Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

    .line 64
    invoke-static {v0, p1}, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->access$000(Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetCallbacks()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;->callbacksWrapper:Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;->callbacksWrapper:Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->access$100(Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;)V

    .line 74
    :cond_0
    return-void
.end method
