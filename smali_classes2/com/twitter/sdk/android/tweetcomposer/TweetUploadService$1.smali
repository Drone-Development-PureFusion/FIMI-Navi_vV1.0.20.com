.class Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TweetUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweet(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback",
        "<",
        "Lcom/twitter/sdk/android/core/models/Media;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

.field final synthetic val$session:Lcom/twitter/sdk/android/core/TwitterSession;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;->this$0:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;->val$session:Lcom/twitter/sdk/android/core/TwitterSession;

    iput-object p3, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1
    .param p1, "exception"    # Lcom/twitter/sdk/android/core/TwitterException;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;->this$0:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Lcom/twitter/sdk/android/core/TwitterException;)V

    .line 93
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result",
            "<",
            "Lcom/twitter/sdk/android/core/models/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/core/models/Media;>;"
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;->this$0:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;->val$session:Lcom/twitter/sdk/android/core/TwitterSession;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;->val$text:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/models/Media;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/Media;->mediaIdString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweetWithMedia(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method
