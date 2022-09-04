.class public Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;
.super Lcom/twitter/sdk/android/tweetui/BaseTimeline;
.source "TwitterListTimeline.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetui/Timeline;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;
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
.field private static final SCRIBE_SECTION:Ljava/lang/String; = "list"


# instance fields
.field final includeRetweets:Ljava/lang/Boolean;

.field final listId:Ljava/lang/Long;

.field final maxItemsPerRequest:Ljava/lang/Integer;

.field final ownerId:Ljava/lang/Long;

.field final ownerScreenName:Ljava/lang/String;

.field final slug:Ljava/lang/String;

.field final twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterCore;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "twitterCore"    # Lcom/twitter/sdk/android/core/TwitterCore;
    .param p2, "listId"    # Ljava/lang/Long;
    .param p3, "slug"    # Ljava/lang/String;
    .param p4, "ownerId"    # Ljava/lang/Long;
    .param p5, "ownerScreenName"    # Ljava/lang/String;
    .param p6, "maxItemsPerRequest"    # Ljava/lang/Integer;
    .param p7, "includeRetweets"    # Ljava/lang/Boolean;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/BaseTimeline;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    .line 45
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->listId:Ljava/lang/Long;

    .line 46
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->slug:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->ownerId:Ljava/lang/Long;

    .line 48
    iput-object p5, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->ownerScreenName:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 50
    iput-object p7, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->includeRetweets:Ljava/lang/Boolean;

    .line 51
    return-void
.end method


# virtual methods
.method createListTimelineRequest(Ljava/lang/Long;Ljava/lang/Long;)Lretrofit2/Call;
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
    .line 77
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getApiClient()Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getListService()Lcom/twitter/sdk/android/core/services/ListService;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->listId:Ljava/lang/Long;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->slug:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->ownerScreenName:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->ownerId:Ljava/lang/Long;

    iget-object v7, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->maxItemsPerRequest:Ljava/lang/Integer;

    const/4 v5, 0x1

    .line 78
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->includeRetweets:Ljava/lang/Boolean;

    move-object v5, p1

    move-object v6, p2

    .line 77
    invoke-interface/range {v0 .. v9}, Lcom/twitter/sdk/android/core/services/ListService;->statuses(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method getTimelineType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "list"

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
    .line 61
    .local p2, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->createListTimelineRequest(Ljava/lang/Long;Ljava/lang/Long;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;

    invoke-direct {v1, p2}, Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;-><init>(Lcom/twitter/sdk/android/core/Callback;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 62
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
    .line 73
    .local p2, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->decrementMaxId(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;->createListTimelineRequest(Ljava/lang/Long;Ljava/lang/Long;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;

    invoke-direct {v1, p2}, Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;-><init>(Lcom/twitter/sdk/android/core/Callback;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 74
    return-void
.end method
