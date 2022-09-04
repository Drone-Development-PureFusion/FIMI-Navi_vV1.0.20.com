.class Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;
.super Lcom/twitter/sdk/android/core/Callback;
.source "BaseTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/BaseTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TweetsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/twitter/sdk/android/core/models/Tweet;",
        ">;>;"
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


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 0
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
    .line 53
    .local p1, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    .line 55
    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1
    .param p1, "exception"    # Lcom/twitter/sdk/android/core/TwitterException;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/Callback;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    .line 72
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
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    iget-object v1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 60
    .local v1, "tweets":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TimelineResult;

    new-instance v2, Lcom/twitter/sdk/android/tweetui/TimelineCursor;

    invoke-direct {v2, v1}, Lcom/twitter/sdk/android/tweetui/TimelineCursor;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v2, v1}, Lcom/twitter/sdk/android/tweetui/TimelineResult;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineCursor;Ljava/util/List;)V

    .line 62
    .local v0, "timelineResult":Lcom/twitter/sdk/android/tweetui/TimelineResult;, "Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    new-instance v3, Lcom/twitter/sdk/android/core/Result;

    iget-object v4, p1, Lcom/twitter/sdk/android/core/Result;->response:Lretrofit2/Response;

    invoke-direct {v3, v0, v4}, Lcom/twitter/sdk/android/core/Result;-><init>(Ljava/lang/Object;Lretrofit2/Response;)V

    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/core/Callback;->success(Lcom/twitter/sdk/android/core/Result;)V

    .line 65
    :cond_0
    return-void
.end method
