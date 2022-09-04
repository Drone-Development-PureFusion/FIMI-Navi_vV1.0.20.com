.class Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;
.super Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;
.source "TimelineDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/TimelineDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NextCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/tweetui/TimelineDelegate",
        "<TT;>.DefaultCallback;"
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
    .line 233
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>.NextCallback;"
    .local p2, "developerCb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<TT;>;>;"
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;->this$0:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    .line 234
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;)V

    .line 235
    return-void
.end method


# virtual methods
.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 3
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
    .line 239
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>.NextCallback;"
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/tweetui/TimelineResult<TT;>;>;"
    iget-object v1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;->items:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 241
    .local v0, "receivedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;->this$0:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->itemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 242
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;->this$0:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    iput-object v0, v1, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->itemList:Ljava/util/List;

    .line 243
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;->this$0:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->notifyDataSetChanged()V

    .line 244
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;->timelineCursor:Lcom/twitter/sdk/android/tweetui/TimelineCursor;

    invoke-virtual {v2, v1}, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;->setNextCursor(Lcom/twitter/sdk/android/tweetui/TimelineCursor;)V

    .line 247
    .end local v0    # "receivedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;->success(Lcom/twitter/sdk/android/core/Result;)V

    .line 248
    return-void
.end method
