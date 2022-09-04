.class public Lcom/twitter/sdk/android/tweetui/TweetUi;
.super Ljava/lang/Object;
.source "TweetUi.java"


# static fields
.field private static final KIT_SCRIBE_NAME:Ljava/lang/String; = "TweetUi"

.field static final LOGTAG:Ljava/lang/String; = "TweetUi"

.field static volatile instance:Lcom/twitter/sdk/android/tweetui/TweetUi;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field context:Landroid/content/Context;

.field guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

.field private imageLoader:Lcom/squareup/picasso/Picasso;

.field scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

.field sessionManager:Lcom/twitter/sdk/android/core/SessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/SessionManager",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;"
        }
    .end annotation
.end field

.field private tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    .line 70
    .local v0, "twitterCore":Lcom/twitter/sdk/android/core/TwitterCore;
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getInstance()Lcom/twitter/sdk/android/core/Twitter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/Twitter;->getContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->context:Landroid/content/Context;

    .line 71
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    .line 72
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getGuestSessionProvider()Lcom/twitter/sdk/android/core/GuestSessionProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    .line 73
    new-instance v1, Lcom/twitter/sdk/android/tweetui/TweetRepository;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/twitter/sdk/android/tweetui/TweetRepository;-><init>(Landroid/os/Handler;Lcom/twitter/sdk/android/core/SessionManager;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    .line 75
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getInstance()Lcom/twitter/sdk/android/core/Twitter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/Twitter;->getContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->imageLoader:Lcom/squareup/picasso/Picasso;

    .line 76
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->setUpScribeClient()V

    .line 77
    return-void
.end method

.method public static getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/twitter/sdk/android/tweetui/TweetUi;->instance:Lcom/twitter/sdk/android/tweetui/TweetUi;

    if-nez v0, :cond_1

    .line 58
    const-class v1, Lcom/twitter/sdk/android/tweetui/TweetUi;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/twitter/sdk/android/tweetui/TweetUi;->instance:Lcom/twitter/sdk/android/tweetui/TweetUi;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/TweetUi;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/tweetui/TweetUi;->instance:Lcom/twitter/sdk/android/tweetui/TweetUi;

    .line 62
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    sget-object v0, Lcom/twitter/sdk/android/tweetui/TweetUi;->instance:Lcom/twitter/sdk/android/tweetui/TweetUi;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setUpScribeClient()V
    .locals 6

    .prologue
    .line 88
    const-string v0, "TweetUi"

    .line 89
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->getScribeConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;

    move-result-object v5

    .line 90
    .local v5, "config":Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    .line 91
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getInstance()Lcom/twitter/sdk/android/core/Twitter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/sdk/android/core/Twitter;->getIdManager()Lcom/twitter/sdk/android/core/internal/IdManager;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/GuestSessionProvider;Lcom/twitter/sdk/android/core/internal/IdManager;Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    .line 92
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "com.twitter.sdk.android:tweet-ui"

    return-object v0
.end method

.method public getImageLoader()Lcom/squareup/picasso/Picasso;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->imageLoader:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method getTweetRepository()Lcom/twitter/sdk/android/tweetui/TweetRepository;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "3.1.1.9"

    return-object v0
.end method

.method scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V
    .locals 1
    .param p1, "ns"    # Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    goto :goto_0
.end method

.method varargs scribe([Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;)V
    .locals 6
    .param p1, "namespaces"    # [Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    if-nez v1, :cond_1

    .line 100
    :cond_0
    return-void

    .line 97
    :cond_1
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, p1, v1

    .line 98
    .local v0, "ns":Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribeClient:Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    aput-object v0, v5, v2

    invoke-virtual {v4, v5}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->scribe([Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;)V

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method setImageLoader(Lcom/squareup/picasso/Picasso;)V
    .locals 0
    .param p1, "imageLoader"    # Lcom/squareup/picasso/Picasso;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->imageLoader:Lcom/squareup/picasso/Picasso;

    .line 124
    return-void
.end method

.method setTweetRepository(Lcom/twitter/sdk/android/tweetui/TweetRepository;)V
    .locals 0
    .param p1, "tweetRepository"    # Lcom/twitter/sdk/android/tweetui/TweetRepository;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetUi;->tweetRepository:Lcom/twitter/sdk/android/tweetui/TweetRepository;

    .line 115
    return-void
.end method
