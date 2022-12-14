.class Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;
.super Lcom/twitter/sdk/android/core/Callback;
.source "LikeTweetAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/LikeTweetAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LikeCallback"
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
.field final button:Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

.field final cb:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field final tweet:Lcom/twitter/sdk/android/core/models/Tweet;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/ToggleImageButton;Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 0
    .param p1, "button"    # Lcom/twitter/sdk/android/tweetui/ToggleImageButton;
    .param p2, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/tweetui/ToggleImageButton;",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p3, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;->button:Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    .line 96
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 97
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    .line 98
    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 7
    .param p1, "exception"    # Lcom/twitter/sdk/android/core/TwitterException;

    .prologue
    const/4 v6, 0x0

    .line 107
    instance-of v4, p1, Lcom/twitter/sdk/android/core/TwitterApiException;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 108
    check-cast v0, Lcom/twitter/sdk/android/core/TwitterApiException;

    .line 109
    .local v0, "apiException":Lcom/twitter/sdk/android/core/TwitterApiException;
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterApiException;->getErrorCode()I

    move-result v1

    .line 111
    .local v1, "errorCode":I
    sparse-switch v1, :sswitch_data_0

    .line 124
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;->button:Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-boolean v5, v5, Lcom/twitter/sdk/android/core/models/Tweet;->favorited:Z

    invoke-virtual {v4, v5}, Lcom/twitter/sdk/android/tweetui/ToggleImageButton;->setToggledOn(Z)V

    .line 125
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v4, p1}, Lcom/twitter/sdk/android/core/Callback;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    .line 132
    .end local v0    # "apiException":Lcom/twitter/sdk/android/core/TwitterApiException;
    .end local v1    # "errorCode":I
    :goto_0
    return-void

    .line 113
    .restart local v0    # "apiException":Lcom/twitter/sdk/android/core/TwitterApiException;
    .restart local v1    # "errorCode":I
    :sswitch_0
    new-instance v4, Lcom/twitter/sdk/android/core/models/TweetBuilder;

    invoke-direct {v4}, Lcom/twitter/sdk/android/core/models/TweetBuilder;-><init>()V

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-virtual {v4, v5}, Lcom/twitter/sdk/android/core/models/TweetBuilder;->copy(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/models/TweetBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/twitter/sdk/android/core/models/TweetBuilder;->setFavorited(Z)Lcom/twitter/sdk/android/core/models/TweetBuilder;

    move-result-object v4

    .line 114
    invoke-virtual {v4}, Lcom/twitter/sdk/android/core/models/TweetBuilder;->build()Lcom/twitter/sdk/android/core/models/Tweet;

    move-result-object v2

    .line 115
    .local v2, "favorited":Lcom/twitter/sdk/android/core/models/Tweet;
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    new-instance v5, Lcom/twitter/sdk/android/core/Result;

    invoke-direct {v5, v2, v6}, Lcom/twitter/sdk/android/core/Result;-><init>(Ljava/lang/Object;Lretrofit2/Response;)V

    invoke-virtual {v4, v5}, Lcom/twitter/sdk/android/core/Callback;->success(Lcom/twitter/sdk/android/core/Result;)V

    goto :goto_0

    .line 118
    .end local v2    # "favorited":Lcom/twitter/sdk/android/core/models/Tweet;
    :sswitch_1
    new-instance v4, Lcom/twitter/sdk/android/core/models/TweetBuilder;

    invoke-direct {v4}, Lcom/twitter/sdk/android/core/models/TweetBuilder;-><init>()V

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-virtual {v4, v5}, Lcom/twitter/sdk/android/core/models/TweetBuilder;->copy(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/models/TweetBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/twitter/sdk/android/core/models/TweetBuilder;->setFavorited(Z)Lcom/twitter/sdk/android/core/models/TweetBuilder;

    move-result-object v4

    .line 119
    invoke-virtual {v4}, Lcom/twitter/sdk/android/core/models/TweetBuilder;->build()Lcom/twitter/sdk/android/core/models/Tweet;

    move-result-object v3

    .line 120
    .local v3, "unfavorited":Lcom/twitter/sdk/android/core/models/Tweet;
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    new-instance v5, Lcom/twitter/sdk/android/core/Result;

    invoke-direct {v5, v3, v6}, Lcom/twitter/sdk/android/core/Result;-><init>(Ljava/lang/Object;Lretrofit2/Response;)V

    invoke-virtual {v4, v5}, Lcom/twitter/sdk/android/core/Callback;->success(Lcom/twitter/sdk/android/core/Result;)V

    goto :goto_0

    .line 130
    .end local v0    # "apiException":Lcom/twitter/sdk/android/core/TwitterApiException;
    .end local v1    # "errorCode":I
    .end local v3    # "unfavorited":Lcom/twitter/sdk/android/core/models/Tweet;
    :cond_0
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;->button:Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-boolean v5, v5, Lcom/twitter/sdk/android/core/models/Tweet;->favorited:Z

    invoke-virtual {v4, v5}, Lcom/twitter/sdk/android/tweetui/ToggleImageButton;->setToggledOn(Z)V

    .line 131
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v4, p1}, Lcom/twitter/sdk/android/core/Callback;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    goto :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x8b -> :sswitch_0
        0x90 -> :sswitch_1
    .end sparse-switch
.end method

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
    .line 102
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/Callback;->success(Lcom/twitter/sdk/android/core/Result;)V

    .line 103
    return-void
.end method
