.class Lcom/twitter/sdk/android/tweetui/CollectionTimeline$CollectionCallback;
.super Lcom/twitter/sdk/android/core/Callback;
.source "CollectionTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/CollectionTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CollectionCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback",
        "<",
        "Lcom/twitter/sdk/android/core/models/TwitterCollection;",
        ">;"
    }
.end annotation


# instance fields
.field final cb:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/CollectionTimeline;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/CollectionTimeline;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetui/CollectionTimeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$CollectionCallback;->this$0:Lcom/twitter/sdk/android/tweetui/CollectionTimeline;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$CollectionCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    .line 103
    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1
    .param p1, "exception"    # Lcom/twitter/sdk/android/core/TwitterException;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$CollectionCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$CollectionCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/Callback;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    .line 125
    :cond_0
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result",
            "<",
            "Lcom/twitter/sdk/android/core/models/TwitterCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/core/models/TwitterCollection;>;"
    iget-object v3, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v3, Lcom/twitter/sdk/android/core/models/TwitterCollection;

    invoke-static {v3}, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;->getTimelineCursor(Lcom/twitter/sdk/android/core/models/TwitterCollection;)Lcom/twitter/sdk/android/tweetui/TimelineCursor;

    move-result-object v0

    .line 108
    .local v0, "timelineCursor":Lcom/twitter/sdk/android/tweetui/TimelineCursor;
    iget-object v3, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v3, Lcom/twitter/sdk/android/core/models/TwitterCollection;

    invoke-static {v3}, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;->getOrderedTweets(Lcom/twitter/sdk/android/core/models/TwitterCollection;)Ljava/util/List;

    move-result-object v2

    .line 110
    .local v2, "tweets":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    if-eqz v0, :cond_1

    .line 111
    new-instance v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    invoke-direct {v1, v0, v2}, Lcom/twitter/sdk/android/tweetui/TimelineResult;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineCursor;Ljava/util/List;)V

    .line 115
    .local v1, "timelineResult":Lcom/twitter/sdk/android/tweetui/TimelineResult;, "Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    :goto_0
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$CollectionCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$CollectionCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    new-instance v4, Lcom/twitter/sdk/android/core/Result;

    iget-object v5, p1, Lcom/twitter/sdk/android/core/Result;->response:Lretrofit2/Response;

    invoke-direct {v4, v1, v5}, Lcom/twitter/sdk/android/core/Result;-><init>(Ljava/lang/Object;Lretrofit2/Response;)V

    invoke-virtual {v3, v4}, Lcom/twitter/sdk/android/core/Callback;->success(Lcom/twitter/sdk/android/core/Result;)V

    .line 118
    :cond_0
    return-void

    .line 113
    .end local v1    # "timelineResult":Lcom/twitter/sdk/android/tweetui/TimelineResult;, "Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    :cond_1
    new-instance v1, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/twitter/sdk/android/tweetui/TimelineResult;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineCursor;Ljava/util/List;)V

    .restart local v1    # "timelineResult":Lcom/twitter/sdk/android/tweetui/TimelineResult;, "Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    goto :goto_0
.end method
