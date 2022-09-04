.class Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TimelineDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/TimelineDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback",
        "<",
        "Lcom/twitter/sdk/android/tweetui/TimelineResult",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final developerCallback:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

.field final timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetui/TimelineDelegate;
    .param p3, "timelineStateHolder"    # Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult",
            "<TT;>;>;",
            "Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>.DefaultCallback;"
    .local p2, "developerCb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<TT;>;>;"
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;->this$0:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;->developerCallback:Lcom/twitter/sdk/android/core/Callback;

    .line 206
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    .line 207
    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1
    .param p1, "exception"    # Lcom/twitter/sdk/android/core/TwitterException;

    .prologue
    .line 219
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>.DefaultCallback;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;->finishTimelineRequest()V

    .line 220
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;->developerCallback:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;->developerCallback:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/Callback;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    .line 223
    :cond_0
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result",
            "<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>.DefaultCallback;"
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/tweetui/TimelineResult<TT;>;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;->finishTimelineRequest()V

    .line 212
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;->developerCallback:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;->developerCallback:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/Callback;->success(Lcom/twitter/sdk/android/core/Result;)V

    .line 215
    :cond_0
    return-void
.end method
