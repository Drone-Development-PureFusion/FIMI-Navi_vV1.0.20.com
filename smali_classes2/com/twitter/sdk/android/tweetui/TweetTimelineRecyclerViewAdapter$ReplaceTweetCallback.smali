.class Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$ReplaceTweetCallback;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TweetTimelineRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReplaceTweetCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback",
        "<",
        "Lcom/twitter/sdk/android/core/models/Tweet;",
        ">;"
    }
.end annotation


# instance fields
.field cb:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/tweetui/TimelineDelegate",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/tweetui/TimelineDelegate",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "delegate":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    .local p2, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$ReplaceTweetCallback;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    .line 200
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$ReplaceTweetCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    .line 201
    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1
    .param p1, "exception"    # Lcom/twitter/sdk/android/core/TwitterException;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$ReplaceTweetCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$ReplaceTweetCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/Callback;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    .line 216
    :cond_0
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$ReplaceTweetCallback;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/models/Identifiable;

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->setItemById(Lcom/twitter/sdk/android/core/models/Identifiable;)V

    .line 206
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$ReplaceTweetCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$ReplaceTweetCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/Callback;->success(Lcom/twitter/sdk/android/core/Result;)V

    .line 209
    :cond_0
    return-void
.end method
