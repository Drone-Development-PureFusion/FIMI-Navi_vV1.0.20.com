.class public Lcom/twitter/sdk/android/tweetui/UserTimeline;
.super Lcom/twitter/sdk/android/tweetui/BaseTimeline;
.source "UserTimeline.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetui/Timeline;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/tweetui/BaseTimeline;",
        "Lcom/twitter/sdk/android/tweetui/Timeline",
        "<",
        "Lcom/twitter/sdk/android/core/models/Tweet;",
        ">;"
    }
.end annotation


# static fields
.field private static final SCRIBE_SECTION:Ljava/lang/String; = "user"


# instance fields
.field final includeReplies:Ljava/lang/Boolean;

.field final includeRetweets:Ljava/lang/Boolean;

.field final maxItemsPerRequest:Ljava/lang/Integer;

.field final screenName:Ljava/lang/String;

.field final twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

.field final userId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterCore;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "twitterCore"    # Lcom/twitter/sdk/android/core/TwitterCore;
    .param p2, "userId"    # Ljava/lang/Long;
    .param p3, "screenName"    # Ljava/lang/String;
    .param p4, "maxItemsPerRequest"    # Ljava/lang/Integer;
    .param p5, "includeReplies"    # Ljava/lang/Boolean;
    .param p6, "includeRetweets"    # Ljava/lang/Boolean;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/BaseTimeline;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    .line 44
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline;->userId:Ljava/lang/Long;

    .line 45
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline;->screenName:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 48
    if-nez p5, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline;->includeReplies:Ljava/lang/Boolean;

    .line 49
    iput-object p6, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline;->includeRetweets:Ljava/lang/Boolean;

    .line 50
    return-void

    .line 48
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method createUserTimelineRequest(Ljava/lang/Long;Ljava/lang/Long;)Lretrofit2/Call;
    .locals 10
    .param p1, "sinceId"    # Ljava/lang/Long;
    .param p2, "maxId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 81
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getApiClient()Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getStatusesService()Lcom/twitter/sdk/android/core/services/StatusesService;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline;->userId:Ljava/lang/Long;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline;->screenName:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 82
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline;->includeReplies:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline;->includeRetweets:Ljava/lang/Boolean;

    move-object v4, p1

    move-object v5, p2

    .line 81
    invoke-interface/range {v0 .. v9}, Lcom/twitter/sdk/android/core/services/StatusesService;->userTimeline(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method getTimelineType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "user"

    return-object v0
.end method

.method public next(Ljava/lang/Long;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 2
    .param p1, "sinceId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/UserTimeline;->createUserTimelineRequest(Ljava/lang/Long;Ljava/lang/Long;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;

    invoke-direct {v1, p2}, Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;-><init>(Lcom/twitter/sdk/android/core/Callback;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 61
    return-void
.end method

.method public previous(Ljava/lang/Long;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 2
    .param p1, "maxId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/UserTimeline;->decrementMaxId(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/UserTimeline;->createUserTimelineRequest(Ljava/lang/Long;Ljava/lang/Long;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;

    invoke-direct {v1, p2}, Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;-><init>(Lcom/twitter/sdk/android/core/Callback;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 73
    return-void
.end method
