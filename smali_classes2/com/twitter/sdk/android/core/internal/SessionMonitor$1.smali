.class Lcom/twitter/sdk/android/core/internal/SessionMonitor$1;
.super Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$Callbacks;
.source "SessionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/internal/SessionMonitor;->monitorActivityLifecycle(Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/core/internal/SessionMonitor;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/SessionMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/core/internal/SessionMonitor;

    .prologue
    .line 67
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/SessionMonitor$1;, "Lcom/twitter/sdk/android/core/internal/SessionMonitor$1;"
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/SessionMonitor$1;->this$0:Lcom/twitter/sdk/android/core/internal/SessionMonitor;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager$Callbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/SessionMonitor$1;, "Lcom/twitter/sdk/android/core/internal/SessionMonitor$1;"
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/SessionMonitor$1;->this$0:Lcom/twitter/sdk/android/core/internal/SessionMonitor;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/SessionMonitor;->triggerVerificationIfNecessary()V

    .line 71
    return-void
.end method
