.class public Lcom/twitter/sdk/android/core/internal/scribe/TimeBasedFileRollOverRunnable;
.super Ljava/lang/Object;
.source "TimeBasedFileRollOverRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final context:Landroid/content/Context;

.field private final fileRollOverManager:Lcom/twitter/sdk/android/core/internal/scribe/FileRollOverManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/FileRollOverManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileRollOverManager"    # Lcom/twitter/sdk/android/core/internal/scribe/FileRollOverManager;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/TimeBasedFileRollOverRunnable;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/TimeBasedFileRollOverRunnable;->fileRollOverManager:Lcom/twitter/sdk/android/core/internal/scribe/FileRollOverManager;

    .line 35
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/TimeBasedFileRollOverRunnable;->context:Landroid/content/Context;

    const-string v3, "Performing time based file roll over."

    invoke-static {v2, v3}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logControlled(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/TimeBasedFileRollOverRunnable;->fileRollOverManager:Lcom/twitter/sdk/android/core/internal/scribe/FileRollOverManager;

    invoke-interface {v2}, Lcom/twitter/sdk/android/core/internal/scribe/FileRollOverManager;->rollFileOver()Z

    move-result v1

    .line 43
    .local v1, "fileRolledOver":Z
    if-nez v1, :cond_0

    .line 46
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/TimeBasedFileRollOverRunnable;->fileRollOverManager:Lcom/twitter/sdk/android/core/internal/scribe/FileRollOverManager;

    invoke-interface {v2}, Lcom/twitter/sdk/android/core/internal/scribe/FileRollOverManager;->cancelTimeBasedFileRollOver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "fileRolledOver":Z
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/TimeBasedFileRollOverRunnable;->context:Landroid/content/Context;

    const-string v3, "Failed to roll over file"

    invoke-static {v2, v3, v0}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
