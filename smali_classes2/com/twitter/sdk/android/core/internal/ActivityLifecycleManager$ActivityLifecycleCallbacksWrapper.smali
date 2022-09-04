.class Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityLifecycleCallbacksWrapper"
.end annotation


# instance fields
.field private final application:Landroid/app/Application;

.field private final registeredCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->registeredCallbacks:Ljava/util/Set;

    .line 82
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->application:Landroid/app/Application;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$Callbacks;)Z
    .locals 1
    .param p0, "x0"    # Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;
    .param p1, "x1"    # Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$Callbacks;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->registerLifecycleCallbacks(Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$Callbacks;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->clearCallbacks()V

    return-void
.end method

.method private clearCallbacks()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->registeredCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 87
    .local v0, "callback":Landroid/app/Application$ActivityLifecycleCallbacks;
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->application:Landroid/app/Application;

    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 89
    .end local v0    # "callback":Landroid/app/Application$ActivityLifecycleCallbacks;
    :cond_0
    return-void
.end method

.method private registerLifecycleCallbacks(Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$Callbacks;)Z
    .locals 2
    .param p1, "callbacks"    # Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$Callbacks;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->application:Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 94
    new-instance v0, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;-><init>(Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$Callbacks;)V

    .line 133
    .local v0, "callbackWrapper":Landroid/app/Application$ActivityLifecycleCallbacks;
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->application:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 134
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->registeredCallbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    const/4 v1, 0x1

    .line 137
    .end local v0    # "callbackWrapper":Landroid/app/Application$ActivityLifecycleCallbacks;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
