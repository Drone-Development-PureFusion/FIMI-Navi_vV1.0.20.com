.class Lcom/twitter/sdk/android/tweetui/TimelineDelegate$PreviousCallback;
.super Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;
.source "TimelineDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/TimelineDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviousCallback"
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
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetui/TimelineDelegate;
    .param p2, "timelineStateHolder"    # Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    .prologue
    .line 277
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate$PreviousCallback;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>.PreviousCallback;"
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$PreviousCallback;->this$0:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;)V

    .line 279
    return-void
.end method


# virtual methods
.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 2
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
    .line 283
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate$PreviousCallback;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>.PreviousCallback;"
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/tweetui/TimelineResult<TT;>;>;"
    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$PreviousCallback;->this$0:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    iget-object v1, v0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->itemList:Ljava/util/List;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 285
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$PreviousCallback;->this$0:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->notifyDataSetChanged()V

    .line 286
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$PreviousCallback;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;->timelineCursor:Lcom/twitter/sdk/android/tweetui/TimelineCursor;

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;->setPreviousCursor(Lcom/twitter/sdk/android/tweetui/TimelineCursor;)V

    .line 289
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;->success(Lcom/twitter/sdk/android/core/Result;)V

    .line 290
    return-void
.end method
