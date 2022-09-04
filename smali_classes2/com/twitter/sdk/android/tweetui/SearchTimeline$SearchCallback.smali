.class Lcom/twitter/sdk/android/tweetui/SearchTimeline$SearchCallback;
.super Lcom/twitter/sdk/android/core/Callback;
.source "SearchTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/SearchTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback",
        "<",
        "Lcom/twitter/sdk/android/core/models/Search;",
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

.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/SearchTimeline;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/SearchTimeline;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetui/SearchTimeline;
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
    .line 109
    .local p2, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$SearchCallback;->this$0:Lcom/twitter/sdk/android/tweetui/SearchTimeline;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$SearchCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    .line 111
    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1
    .param p1, "exception"    # Lcom/twitter/sdk/android/core/TwitterException;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$SearchCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$SearchCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/Callback;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    .line 128
    :cond_0
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result",
            "<",
            "Lcom/twitter/sdk/android/core/models/Search;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/core/models/Search;>;"
    iget-object v2, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v2, Lcom/twitter/sdk/android/core/models/Search;

    iget-object v1, v2, Lcom/twitter/sdk/android/core/models/Search;->tweets:Ljava/util/List;

    .line 116
    .local v1, "tweets":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    new-instance v2, Lcom/twitter/sdk/android/tweetui/TimelineCursor;

    invoke-direct {v2, v1}, Lcom/twitter/sdk/android/tweetui/TimelineCursor;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v2, v1}, Lcom/twitter/sdk/android/tweetui/TimelineResult;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineCursor;Ljava/util/List;)V

    .line 118
    .local v0, "timelineResult":Lcom/twitter/sdk/android/tweetui/TimelineResult;, "Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$SearchCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$SearchCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    new-instance v3, Lcom/twitter/sdk/android/core/Result;

    iget-object v4, p1, Lcom/twitter/sdk/android/core/Result;->response:Lretrofit2/Response;

    invoke-direct {v3, v0, v4}, Lcom/twitter/sdk/android/core/Result;-><init>(Ljava/lang/Object;Lretrofit2/Response;)V

    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/Callback;->success(Lcom/twitter/sdk/android/core/Result;)V

    .line 121
    :cond_0
    return-void
.end method
