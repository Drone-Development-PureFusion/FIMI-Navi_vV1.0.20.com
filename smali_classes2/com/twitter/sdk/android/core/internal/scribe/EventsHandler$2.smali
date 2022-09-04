.class Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$2;
.super Ljava/lang/Object;
.source "EventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;->recordEventSync(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;

.field final synthetic val$event:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;

    .prologue
    .line 64
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$2;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$2;"
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$2;->this$0:Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$2;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    .local p0, "this":Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$2;, "Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$2;"
    :try_start_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$2;->this$0:Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;->strategy:Lcom/twitter/sdk/android/core/internal/scribe/EventsStrategy;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$2;->val$event:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventsStrategy;->recordEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler$2;->this$0:Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/scribe/EventsHandler;->context:Landroid/content/Context;

    const-string v2, "Failed to record event"

    invoke-static {v1, v2, v0}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
