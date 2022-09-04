.class Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;
.super Lcom/twitter/sdk/android/tweetui/TimelineDelegate;
.source "FilterTimelineDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate$TimelineFilterCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/tweetui/TimelineDelegate",
        "<",
        "Lcom/twitter/sdk/android/core/models/Tweet;",
        ">;"
    }
.end annotation


# static fields
.field static final TOTAL_APPLIED_FILTERS_JSON_PROP:Ljava/lang/String; = "total_filters"

.field static final TWEETS_COUNT_JSON_PROP:Ljava/lang/String; = "tweet_count"

.field static final TWEETS_FILTERED_JSON_PROP:Ljava/lang/String; = "tweets_filtered"


# instance fields
.field final gson:Lcom/google/gson/Gson;

.field final timelineFilter:Lcom/twitter/sdk/android/tweetui/TimelineFilter;

.field final tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/tweetui/Timeline;Lcom/twitter/sdk/android/tweetui/TimelineFilter;)V
    .locals 1
    .param p2, "timelineFilter"    # Lcom/twitter/sdk/android/tweetui/TimelineFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/tweetui/Timeline",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;",
            "Lcom/twitter/sdk/android/tweetui/TimelineFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "timeline":Lcom/twitter/sdk/android/tweetui/Timeline;, "Lcom/twitter/sdk/android/tweetui/Timeline<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;-><init>(Lcom/twitter/sdk/android/tweetui/Timeline;)V

    .line 46
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->gson:Lcom/google/gson/Gson;

    .line 57
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timelineFilter:Lcom/twitter/sdk/android/tweetui/TimelineFilter;

    .line 58
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    .line 59
    return-void
.end method

.method private getJsonMessage(III)Ljava/lang/String;
    .locals 3
    .param p1, "totalTweetsSize"    # I
    .param p2, "filteredTweetsSize"    # I
    .param p3, "totalFilters"    # I

    .prologue
    .line 153
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 154
    .local v0, "message":Lcom/google/gson/JsonObject;
    const-string v1, "tweet_count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 155
    const-string v1, "tweets_filtered"

    sub-int v2, p1, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 156
    const-string v1, "total_filters"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 157
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public next(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .local p1, "developerCb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;->positionForNext()Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate$TimelineFilterCallback;

    new-instance v2, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-direct {v2, p0, p1, v3}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;)V

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timelineFilter:Lcom/twitter/sdk/android/tweetui/TimelineFilter;

    invoke-direct {v1, p0, v2, v3}, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate$TimelineFilterCallback;-><init>(Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;Lcom/twitter/sdk/android/tweetui/TimelineFilter;)V

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->loadNext(Ljava/lang/Long;Lcom/twitter/sdk/android/core/Callback;)V

    .line 76
    return-void
.end method

.method public previous()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;->positionForPrevious()Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate$TimelineFilterCallback;

    new-instance v2, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$PreviousCallback;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-direct {v2, p0, v3}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$PreviousCallback;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;)V

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timelineFilter:Lcom/twitter/sdk/android/tweetui/TimelineFilter;

    invoke-direct {v1, p0, v2, v3}, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate$TimelineFilterCallback;-><init>(Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;Lcom/twitter/sdk/android/tweetui/TimelineFilter;)V

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->loadPrevious(Ljava/lang/Long;Lcom/twitter/sdk/android/core/Callback;)V

    .line 83
    return-void
.end method

.method public refresh(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "developerCb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;->resetCursors()V

    .line 66
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;->positionForNext()Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate$TimelineFilterCallback;

    new-instance v2, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$RefreshCallback;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-direct {v2, p0, p1, v3}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$RefreshCallback;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;)V

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timelineFilter:Lcom/twitter/sdk/android/tweetui/TimelineFilter;

    invoke-direct {v1, p0, v2, v3}, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate$TimelineFilterCallback;-><init>(Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;Lcom/twitter/sdk/android/tweetui/TimelineFilter;)V

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->loadNext(Ljava/lang/Long;Lcom/twitter/sdk/android/core/Callback;)V

    .line 69
    return-void
.end method

.method scribeFilteredTimeline(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "tweets":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    .local p2, "filteredTweets":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 139
    .local v6, "tweetCount":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    sub-int v5, v6, v7

    .line 140
    .local v5, "totalTweetsFiltered":I
    iget-object v7, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timelineFilter:Lcom/twitter/sdk/android/tweetui/TimelineFilter;

    invoke-interface {v7}, Lcom/twitter/sdk/android/tweetui/TimelineFilter;->totalFilters()I

    move-result v4

    .line 142
    .local v4, "totalFilters":I
    invoke-direct {p0, v6, v5, v4}, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->getJsonMessage(III)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "jsonMessage":Ljava/lang/String;
    invoke-static {v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->fromMessage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object v2

    .line 145
    .local v2, "scribeItem":Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v7, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timeline:Lcom/twitter/sdk/android/tweetui/Timeline;

    invoke-static {v7}, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->getTimelineType(Lcom/twitter/sdk/android/tweetui/Timeline;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "timelineType":Ljava/lang/String;
    iget-object v7, p0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {v3}, Lcom/twitter/sdk/android/tweetui/ScribeConstants;->getTfwClientFilterTimelineNamespace(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    .line 150
    return-void
.end method
