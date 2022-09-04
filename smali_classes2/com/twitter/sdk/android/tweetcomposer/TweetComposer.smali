.class public Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;
.super Ljava/lang/Object;
.source "TweetComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;
    }
.end annotation


# static fields
.field private static final KIT_SCRIBE_NAME:Ljava/lang/String; = "TweetComposer"

.field private static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final MIME_TYPE_PLAIN_TEXT:Ljava/lang/String; = "text/plain"

.field private static final TWITTER_PACKAGE_NAME:Ljava/lang/String; = "com.twitter.android"

.field private static final WEB_INTENT:Ljava/lang/String; = "https://twitter.com/intent/tweet?text=%s&url=%s"

.field static volatile instance:Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field context:Landroid/content/Context;

.field guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

.field scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

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


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/ScribeClientImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ScribeClientImpl;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    .line 71
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    .line 72
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getGuestSessionProvider()Lcom/twitter/sdk/android/core/GuestSessionProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    .line 73
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getInstance()Lcom/twitter/sdk/android/core/Twitter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/Twitter;->getContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->context:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->setUpScribeClient()V

    .line 76
    return-void
.end method

.method public static getInstance()Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->instance:Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;

    if-nez v0, :cond_1

    .line 59
    const-class v1, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->instance:Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->instance:Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->instance:Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setUpScribeClient()V
    .locals 7

    .prologue
    .line 83
    const-string v0, "TweetComposer"

    .line 84
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;->getScribeConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;

    move-result-object v5

    .line 85
    .local v5, "config":Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;
    new-instance v6, Lcom/twitter/sdk/android/tweetcomposer/ScribeClientImpl;

    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->sessionManager:Lcom/twitter/sdk/android/core/SessionManager;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->guestSessionProvider:Lcom/twitter/sdk/android/core/GuestSessionProvider;

    .line 86
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getInstance()Lcom/twitter/sdk/android/core/Twitter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/sdk/android/core/Twitter;->getIdManager()Lcom/twitter/sdk/android/core/internal/IdManager;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/SessionManager;Lcom/twitter/sdk/android/core/GuestSessionProvider;Lcom/twitter/sdk/android/core/internal/IdManager;Lcom/twitter/sdk/android/core/internal/scribe/ScribeConfig;)V

    invoke-direct {v6, v0}, Lcom/twitter/sdk/android/tweetcomposer/ScribeClientImpl;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/DefaultScribeClient;)V

    iput-object v6, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    .line 88
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "com.twitter.sdk.android:tweet-composer"

    return-object v0
.end method

.method getScribeClient()Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer;->scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "3.1.1.9"

    return-object v0
.end method
