.class final Lcom/twitter/sdk/android/tweetui/TweetUtils$1;
.super Lcom/twitter/sdk/android/tweetui/LoggingCallback;
.source "TweetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/TweetUtils;->loadTweet(JLcom/twitter/sdk/android/core/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/tweetui/LoggingCallback",
        "<",
        "Lcom/twitter/sdk/android/core/models/Tweet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/twitter/sdk/android/core/Callback;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/core/Logger;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/twitter/sdk/android/core/Callback;
    .param p2, "logger"    # Lcom/twitter/sdk/android/core/Logger;

    .prologue
    .line 54
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/TweetUtils$1;->val$cb:Lcom/twitter/sdk/android/core/Callback;

    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/LoggingCallback;-><init>(Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/core/Logger;)V

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
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUtils$1;->val$cb:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUtils$1;->val$cb:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/Callback;->success(Lcom/twitter/sdk/android/core/Result;)V

    .line 60
    :cond_0
    return-void
.end method
