.class Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$4;
.super Ljava/lang/Object;
.source "EventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;->disable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;

    .prologue
    .line 92
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$4;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$4;"
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$4;->this$0:Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$4;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$4;"
    :try_start_0
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$4;->this$0:Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;

    iget-object v1, v2, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;->strategy:Lcom/twitter/sdk/android/core/internal/scribe/EventsStrategy;

    .line 97
    .local v1, "prevStrategy":Lcom/twitter/sdk/android/core/internal/scribe/EventsStrategy;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsStrategy<TT;>;"
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$4;->this$0:Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$4;->this$0:Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;

    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;->getDisabledEventsStrategy()Lcom/twitter/sdk/android/core/internal/scribe/EventsStrategy;

    move-result-object v3

    iput-object v3, v2, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;->strategy:Lcom/twitter/sdk/android/core/internal/scribe/EventsStrategy;

    .line 98
    invoke-interface {v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventsStrategy;->deleteAllEvents()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "prevStrategy":Lcom/twitter/sdk/android/core/internal/scribe/EventsStrategy;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsStrategy<TT;>;"
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$4;->this$0:Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;->context:Landroid/content/Context;

    const-string v3, "Failed to disable events."

    invoke-static {v2, v3, v0}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
