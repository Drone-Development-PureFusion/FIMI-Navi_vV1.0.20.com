.class Lcom/twitter/sdk/android/tweetui/LikeTweetAction;
.super Lcom/twitter/sdk/android/tweetui/BaseTweetAction;
.source "LikeTweetAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;
    }
.end annotation


# instance fields
.field final tweet:Lcom/twitter/sdk/android/core/models/Tweet;

.field final tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

.field final tweetScribeClient:Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

.field final tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/tweetui/TweetUi;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 1
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .param p2, "tweetUi"    # Lcom/twitter/sdk/android/tweetui/TweetUi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            "Lcom/twitter/sdk/android/tweetui/TweetUi;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;

    invoke-direct {v0, p2}, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;-><init>(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/tweetui/TweetUi;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TweetScribeClient;)V

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/tweetui/TweetUi;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TweetScribeClient;)V
    .locals 1
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .param p2, "tweetUi"    # Lcom/twitter/sdk/android/tweetui/TweetUi;
    .param p4, "tweetScribeClient"    # Lcom/twitter/sdk/android/tweetui/TweetScribeClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            "Lcom/twitter/sdk/android/tweetui/TweetUi;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;",
            "Lcom/twitter/sdk/android/tweetui/TweetScribeClient;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p3, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    invoke-direct {p0, p3}, Lcom/twitter/sdk/android/tweetui/BaseTweetAction;-><init>(Lcom/twitter/sdk/android/core/Callback;)V

    .line 49
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 50
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    .line 51
    iput-object p4, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweetScribeClient:Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

    .line 52
    invoke-virtual {p2}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getTweetRepository()Lcom/twitter/sdk/android/tweetui/TweetRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    .line 53
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    instance-of v1, p1, Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 58
    check-cast v0, Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    .line 59
    .local v0, "toggleImageButton":Lcom/twitter/sdk/android/tweetui/ToggleImageButton;
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-boolean v1, v1, Lcom/twitter/sdk/android/core/models/Tweet;->favorited:Z

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->scribeUnFavoriteAction()V

    .line 61
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-wide v2, v2, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    new-instance v4, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 62
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->getActionCallback()Lcom/twitter/sdk/android/core/Callback;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;-><init>(Lcom/twitter/sdk/android/tweetui/ToggleImageButton;Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/core/Callback;)V

    .line 61
    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/sdk/android/tweetui/TweetRepository;->unfavorite(JLcom/twitter/sdk/android/core/Callback;)V

    .line 69
    .end local v0    # "toggleImageButton":Lcom/twitter/sdk/android/tweetui/ToggleImageButton;
    :cond_0
    :goto_0
    return-void

    .line 64
    .restart local v0    # "toggleImageButton":Lcom/twitter/sdk/android/tweetui/ToggleImageButton;
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->scribeFavoriteAction()V

    .line 65
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-wide v2, v2, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    new-instance v4, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 66
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->getActionCallback()Lcom/twitter/sdk/android/core/Callback;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lcom/twitter/sdk/android/tweetui/LikeTweetAction$LikeCallback;-><init>(Lcom/twitter/sdk/android/tweetui/ToggleImageButton;Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/core/Callback;)V

    .line 65
    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/sdk/android/tweetui/TweetRepository;->favorite(JLcom/twitter/sdk/android/core/Callback;)V

    goto :goto_0
.end method

.method scribeFavoriteAction()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweetScribeClient:Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetScribeClient;->favorite(Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 73
    return-void
.end method

.method scribeUnFavoriteAction()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweetScribeClient:Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/LikeTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetScribeClient;->unfavorite(Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 77
    return-void
.end method
