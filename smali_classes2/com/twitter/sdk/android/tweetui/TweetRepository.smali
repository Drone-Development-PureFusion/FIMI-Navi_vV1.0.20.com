.class Lcom/twitter/sdk/android/tweetui/TweetRepository;
.super Ljava/lang/Object;
.source "TweetRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/TweetRepository$MultiTweetsCallback;,
        Lcom/twitter/sdk/android/tweetui/TweetRepository$SingleTweetCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x14


# instance fields
.field final formatCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/tweetui/FormattedTweetText;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field final tweetCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private final twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

.field private final userSessionManagers:Lcom/twitter/sdk/android/core/SessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/twitter/sdk/android/core/SessionManager;)V
    .locals 1
    .param p1, "mainHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "userSessionManagers":Lcom/twitter/sdk/android/core/SessionManager;, "Lcom/twitter/sdk/android/core/SessionManager<Lcom/twitter/sdk/android/core/TwitterSession;>;"
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/TweetRepository;-><init>(Landroid/os/Handler;Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/TwitterCore;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/TwitterCore;)V
    .locals 2
    .param p1, "mainHandler"    # Landroid/os/Handler;
    .param p3, "twitterCore"    # Lcom/twitter/sdk/android/core/TwitterCore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;",
            "Lcom/twitter/sdk/android/core/TwitterCore;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "userSessionManagers":Lcom/twitter/sdk/android/core/SessionManager;, "Lcom/twitter/sdk/android/core/SessionManager<Lcom/twitter/sdk/android/core/TwitterSession;>;"
    const/16 v1, 0x14

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    .line 60
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository;->mainHandler:Landroid/os/Handler;

    .line 61
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository;->userSessionManagers:Lcom/twitter/sdk/android/core/SessionManager;

    .line 62
    new-instance v0, Landroid/support/v4/util/LruCache;

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository;->tweetCache:Landroid/support/v4/util/LruCache;

    .line 63
    new-instance v0, Landroid/support/v4/util/LruCache;

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository;->formatCache:Landroid/support/v4/util/LruCache;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/twitter/sdk/android/tweetui/TweetRepository;)Lcom/twitter/sdk/android/core/TwitterCore;
    .locals 1
    .param p0, "x0"    # Lcom/twitter/sdk/android/tweetui/TweetRepository;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    return-object v0
.end method

.method private deliverTweet(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 2
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    if-nez p2, :cond_0

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/TweetRepository$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/twitter/sdk/android/tweetui/TweetRepository$1;-><init>(Lcom/twitter/sdk/android/tweetui/TweetRepository;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/core/models/Tweet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method favorite(JLcom/twitter/sdk/android/core/Callback;)V
    .locals 7
    .param p1, "tweetId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p3, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetRepository$2;

    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v3

    move-object v1, p0

    move-object v2, p3

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/tweetui/TweetRepository$2;-><init>(Lcom/twitter/sdk/android/tweetui/TweetRepository;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/core/Logger;JLcom/twitter/sdk/android/core/Callback;)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/TweetRepository;->getUserSession(Lcom/twitter/sdk/android/core/Callback;)V

    .line 114
    return-void
.end method

.method formatTweetText(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/tweetui/FormattedTweetText;
    .locals 6
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 73
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository;->formatCache:Landroid/support/v4/util/LruCache;

    iget-wide v4, p1, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;

    .line 77
    .local v0, "cached":Lcom/twitter/sdk/android/tweetui/FormattedTweetText;
    if-nez v0, :cond_0

    .line 79
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->formatTweetText(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/tweetui/FormattedTweetText;

    move-result-object v1

    .line 80
    .local v1, "formattedTweetText":Lcom/twitter/sdk/android/tweetui/FormattedTweetText;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository;->formatCache:Landroid/support/v4/util/LruCache;

    iget-wide v4, p1, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v1

    .line 84
    goto :goto_0
.end method

.method getUserSession(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/TwitterSession;>;"
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository;->userSessionManagers:Lcom/twitter/sdk/android/core/SessionManager;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterSession;

    .line 148
    .local v0, "session":Lcom/twitter/sdk/android/core/TwitterSession;
    if-nez v0, :cond_0

    .line 149
    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string v2, "User authorization required"

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/twitter/sdk/android/core/Callback;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v1, Lcom/twitter/sdk/android/core/Result;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/twitter/sdk/android/core/Result;-><init>(Ljava/lang/Object;Lretrofit2/Response;)V

    invoke-virtual {p1, v1}, Lcom/twitter/sdk/android/core/Callback;->success(Lcom/twitter/sdk/android/core/Result;)V

    goto :goto_0
.end method

.method loadTweet(JLcom/twitter/sdk/android/core/Callback;)V
    .locals 5
    .param p1, "tweetId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    const/4 v3, 0x0

    .line 163
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository;->tweetCache:Landroid/support/v4/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/Tweet;

    .line 165
    .local v0, "cachedTweet":Lcom/twitter/sdk/android/core/models/Tweet;
    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0, v0, p3}, Lcom/twitter/sdk/android/tweetui/TweetRepository;->deliverTweet(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/core/Callback;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterCore;->getApiClient()Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getStatusesService()Lcom/twitter/sdk/android/core/services/StatusesService;

    move-result-object v1

    .line 171
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v3, v3, v3}, Lcom/twitter/sdk/android/core/services/StatusesService;->show(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/tweetui/TweetRepository$SingleTweetCallback;

    invoke-direct {v2, p0, p3}, Lcom/twitter/sdk/android/tweetui/TweetRepository$SingleTweetCallback;-><init>(Lcom/twitter/sdk/android/tweetui/TweetRepository;Lcom/twitter/sdk/android/core/Callback;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method loadTweets(Ljava/util/List;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "tweetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    const/4 v2, 0x0

    .line 182
    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "commaSepIds":Ljava/lang/String;
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterCore;->getApiClient()Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getStatusesService()Lcom/twitter/sdk/android/core/services/StatusesService;

    move-result-object v1

    invoke-interface {v1, v0, v2, v2, v2}, Lcom/twitter/sdk/android/core/services/StatusesService;->lookup(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/tweetui/TweetRepository$MultiTweetsCallback;

    invoke-direct {v2, p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/TweetRepository$MultiTweetsCallback;-><init>(Lcom/twitter/sdk/android/tweetui/TweetRepository;Ljava/util/List;Lcom/twitter/sdk/android/core/Callback;)V

    .line 184
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 185
    return-void
.end method

.method retweet(JLcom/twitter/sdk/android/core/Callback;)V
    .locals 7
    .param p1, "tweetId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p3, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetRepository$4;

    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v3

    move-object v1, p0

    move-object v2, p3

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/tweetui/TweetRepository$4;-><init>(Lcom/twitter/sdk/android/tweetui/TweetRepository;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/core/Logger;JLcom/twitter/sdk/android/core/Callback;)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/TweetRepository;->getUserSession(Lcom/twitter/sdk/android/core/Callback;)V

    .line 134
    return-void
.end method

.method unfavorite(JLcom/twitter/sdk/android/core/Callback;)V
    .locals 7
    .param p1, "tweetId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p3, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetRepository$3;

    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v3

    move-object v1, p0

    move-object v2, p3

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/tweetui/TweetRepository$3;-><init>(Lcom/twitter/sdk/android/tweetui/TweetRepository;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/core/Logger;JLcom/twitter/sdk/android/core/Callback;)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/TweetRepository;->getUserSession(Lcom/twitter/sdk/android/core/Callback;)V

    .line 124
    return-void
.end method

.method unretweet(JLcom/twitter/sdk/android/core/Callback;)V
    .locals 7
    .param p1, "tweetId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p3, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetRepository$5;

    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v3

    move-object v1, p0

    move-object v2, p3

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/tweetui/TweetRepository$5;-><init>(Lcom/twitter/sdk/android/tweetui/TweetRepository;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/core/Logger;JLcom/twitter/sdk/android/core/Callback;)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/TweetRepository;->getUserSession(Lcom/twitter/sdk/android/core/Callback;)V

    .line 144
    return-void
.end method

.method updateCache(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 4
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetRepository;->tweetCache:Landroid/support/v4/util/LruCache;

    iget-wide v2, p1, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method
