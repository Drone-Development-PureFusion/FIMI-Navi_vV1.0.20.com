.class Lcom/twitter/sdk/android/tweetui/TweetRepository$4;
.super Lcom/twitter/sdk/android/tweetui/LoggingCallback;
.source "TweetRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/TweetRepository;->retweet(JLcom/twitter/sdk/android/core/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/tweetui/LoggingCallback",
        "<",
        "Lcom/twitter/sdk/android/core/TwitterSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/TweetRepository;

.field final synthetic val$cb:Lcom/twitter/sdk/android/core/Callback;

.field final synthetic val$tweetId:J


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/TweetRepository;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/core/Logger;JLcom/twitter/sdk/android/core/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetui/TweetRepository;
    .param p2, "cb"    # Lcom/twitter/sdk/android/core/Callback;
    .param p3, "logger"    # Lcom/twitter/sdk/android/core/Logger;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository$4;->this$0:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    iput-wide p4, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository$4;->val$tweetId:J

    iput-object p6, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository$4;->val$cb:Lcom/twitter/sdk/android/core/Callback;

    invoke-direct {p0, p2, p3}, Lcom/twitter/sdk/android/tweetui/LoggingCallback;-><init>(Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/core/Logger;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/core/TwitterSession;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository$4;->this$0:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/TweetRepository;->access$000(Lcom/twitter/sdk/android/tweetui/TweetRepository;)Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v1

    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getStatusesService()Lcom/twitter/sdk/android/core/services/StatusesService;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository$4;->val$tweetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/services/StatusesService;->retweet(Ljava/lang/Long;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository$4;->val$cb:Lcom/twitter/sdk/android/core/Callback;

    .line 131
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 132
    return-void
.end method
