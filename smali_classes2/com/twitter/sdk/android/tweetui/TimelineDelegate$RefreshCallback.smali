.class Lcom/twitter/sdk/android/tweetui/TimelineDelegate$RefreshCallback;
.super Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;
.source "TimelineDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/TimelineDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/tweetui/TimelineDelegate",
        "<TT;>.NextCallback;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;


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
    .line 259
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate$RefreshCallback;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>.RefreshCallback;"
    .local p2, "developerCb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<TT;>;>;"
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$RefreshCallback;->this$0:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    .line 260
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;)V

    .line 261
    return-void
.end method


# virtual methods
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
    .line 265
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate$RefreshCallback;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>.RefreshCallback;"
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/tweetui/TimelineResult<TT;>;>;"
    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$RefreshCallback;->this$0:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;->success(Lcom/twitter/sdk/android/core/Result;)V

    .line 269
    return-void
.end method
