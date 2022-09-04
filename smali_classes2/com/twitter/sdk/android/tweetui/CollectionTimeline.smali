.class public Lcom/twitter/sdk/android/tweetui/CollectionTimeline;
.super Lcom/twitter/sdk/android/tweetui/BaseTimeline;
.source "CollectionTimeline.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetui/Timeline;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;,
        Lcom/twitter/sdk/android/tweetui/CollectionTimeline$CollectionCallback;
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
.field static final COLLECTION_PREFIX:Ljava/lang/String; = "custom-"

.field private static final SCRIBE_SECTION:Ljava/lang/String; = "collection"


# instance fields
.field final collectionIdentifier:Ljava/lang/String;

.field final maxItemsPerRequest:Ljava/lang/Integer;

.field final twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterCore;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "twitterCore"    # Lcom/twitter/sdk/android/core/TwitterCore;
    .param p2, "collectionId"    # Ljava/lang/Long;
    .param p3, "maxItemsPerRequest"    # Ljava/lang/Integer;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/BaseTimeline;-><init>()V

    .line 49
    if-nez p2, :cond_0

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;->collectionIdentifier:Ljava/lang/String;

    .line 54
    :goto_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    .line 55
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 56
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;->collectionIdentifier:Ljava/lang/String;

    goto :goto_0
.end method

.method static getOrderedTweets(Lcom/twitter/sdk/android/core/models/TwitterCollection;)Ljava/util/List;
    .locals 7
    .param p0, "collection"    # Lcom/twitter/sdk/android/core/models/TwitterCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/TwitterCollection;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    if-eqz p0, :cond_0

    iget-object v4, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection;->contents:Lcom/twitter/sdk/android/core/models/TwitterCollection$Content;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection;->contents:Lcom/twitter/sdk/android/core/models/TwitterCollection$Content;

    iget-object v4, v4, Lcom/twitter/sdk/android/core/models/TwitterCollection$Content;->tweetMap:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection;->contents:Lcom/twitter/sdk/android/core/models/TwitterCollection$Content;

    iget-object v4, v4, Lcom/twitter/sdk/android/core/models/TwitterCollection$Content;->userMap:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection;->contents:Lcom/twitter/sdk/android/core/models/TwitterCollection$Content;

    iget-object v4, v4, Lcom/twitter/sdk/android/core/models/TwitterCollection$Content;->tweetMap:Ljava/util/Map;

    .line 132
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection;->contents:Lcom/twitter/sdk/android/core/models/TwitterCollection$Content;

    iget-object v4, v4, Lcom/twitter/sdk/android/core/models/TwitterCollection$Content;->userMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection;->metadata:Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection;->metadata:Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata;

    iget-object v4, v4, Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata;->timelineItems:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection;->metadata:Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata;

    iget-object v4, v4, Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata;->position:Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata$Position;

    if-nez v4, :cond_2

    .line 135
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 143
    :cond_1
    return-object v3

    .line 137
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v3, "tweets":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    iget-object v4, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection;->metadata:Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata;

    iget-object v4, v4, Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata;->timelineItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/TwitterCollection$TimelineItem;

    .line 139
    .local v0, "item":Lcom/twitter/sdk/android/core/models/TwitterCollection$TimelineItem;
    iget-object v5, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection;->contents:Lcom/twitter/sdk/android/core/models/TwitterCollection$Content;

    iget-object v5, v5, Lcom/twitter/sdk/android/core/models/TwitterCollection$Content;->tweetMap:Ljava/util/Map;

    iget-object v6, v0, Lcom/twitter/sdk/android/core/models/TwitterCollection$TimelineItem;->tweetItem:Lcom/twitter/sdk/android/core/models/TwitterCollection$TimelineItem$TweetItem;

    iget-object v6, v6, Lcom/twitter/sdk/android/core/models/TwitterCollection$TimelineItem$TweetItem;->id:Ljava/lang/Long;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/models/Tweet;

    .line 140
    .local v1, "trimmedTweet":Lcom/twitter/sdk/android/core/models/Tweet;
    iget-object v5, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection;->contents:Lcom/twitter/sdk/android/core/models/TwitterCollection$Content;

    iget-object v5, v5, Lcom/twitter/sdk/android/core/models/TwitterCollection$Content;->userMap:Ljava/util/Map;

    invoke-static {v1, v5}, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;->mapTweetToUsers(Lcom/twitter/sdk/android/core/models/Tweet;Ljava/util/Map;)Lcom/twitter/sdk/android/core/models/Tweet;

    move-result-object v2

    .line 141
    .local v2, "tweet":Lcom/twitter/sdk/android/core/models/Tweet;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static getTimelineCursor(Lcom/twitter/sdk/android/core/models/TwitterCollection;)Lcom/twitter/sdk/android/tweetui/TimelineCursor;
    .locals 3
    .param p0, "twitterCollection"    # Lcom/twitter/sdk/android/core/models/TwitterCollection;

    .prologue
    .line 163
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection;->metadata:Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection;->metadata:Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata;->position:Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata$Position;

    if-nez v2, :cond_1

    .line 165
    :cond_0
    const/4 v2, 0x0

    .line 169
    :goto_0
    return-object v2

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection;->metadata:Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata;->position:Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata$Position;

    iget-object v1, v2, Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata$Position;->minPosition:Ljava/lang/Long;

    .line 168
    .local v1, "minPosition":Ljava/lang/Long;
    iget-object v2, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection;->metadata:Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata;->position:Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata$Position;

    iget-object v0, v2, Lcom/twitter/sdk/android/core/models/TwitterCollection$Metadata$Position;->maxPosition:Ljava/lang/Long;

    .line 169
    .local v0, "maxPosition":Ljava/lang/Long;
    new-instance v2, Lcom/twitter/sdk/android/tweetui/TimelineCursor;

    invoke-direct {v2, v1, v0}, Lcom/twitter/sdk/android/tweetui/TimelineCursor;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method static mapTweetToUsers(Lcom/twitter/sdk/android/core/models/Tweet;Ljava/util/Map;)Lcom/twitter/sdk/android/core/models/Tweet;
    .locals 6
    .param p0, "trimmedTweet"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;)",
            "Lcom/twitter/sdk/android/core/models/Tweet;"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "userMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/twitter/sdk/android/core/models/User;>;"
    iget-object v4, p0, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    iget-wide v4, v4, Lcom/twitter/sdk/android/core/models/User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 150
    .local v3, "userId":Ljava/lang/Long;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/models/User;

    .line 152
    .local v2, "user":Lcom/twitter/sdk/android/core/models/User;
    new-instance v4, Lcom/twitter/sdk/android/core/models/TweetBuilder;

    invoke-direct {v4}, Lcom/twitter/sdk/android/core/models/TweetBuilder;-><init>()V

    invoke-virtual {v4, p0}, Lcom/twitter/sdk/android/core/models/TweetBuilder;->copy(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/models/TweetBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/twitter/sdk/android/core/models/TweetBuilder;->setUser(Lcom/twitter/sdk/android/core/models/User;)Lcom/twitter/sdk/android/core/models/TweetBuilder;

    move-result-object v0

    .line 154
    .local v0, "builder":Lcom/twitter/sdk/android/core/models/TweetBuilder;
    iget-object v4, p0, Lcom/twitter/sdk/android/core/models/Tweet;->quotedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    if-eqz v4, :cond_0

    .line 155
    iget-object v4, p0, Lcom/twitter/sdk/android/core/models/Tweet;->quotedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-static {v4, p1}, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;->mapTweetToUsers(Lcom/twitter/sdk/android/core/models/Tweet;Ljava/util/Map;)Lcom/twitter/sdk/android/core/models/Tweet;

    move-result-object v1

    .line 156
    .local v1, "quoteStatus":Lcom/twitter/sdk/android/core/models/Tweet;
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/models/TweetBuilder;->setQuotedStatus(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/models/TweetBuilder;

    .line 159
    .end local v1    # "quoteStatus":Lcom/twitter/sdk/android/core/models/Tweet;
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/models/TweetBuilder;->build()Lcom/twitter/sdk/android/core/models/Tweet;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method createCollectionRequest(Ljava/lang/Long;Ljava/lang/Long;)Lretrofit2/Call;
    .locals 3
    .param p1, "minPosition"    # Ljava/lang/Long;
    .param p2, "maxPosition"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/twitter/sdk/android/core/models/TwitterCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getApiClient()Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getCollectionService()Lcom/twitter/sdk/android/core/services/CollectionService;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;->collectionIdentifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 87
    invoke-interface {v0, v1, v2, p2, p1}, Lcom/twitter/sdk/android/core/services/CollectionService;->collection(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)Lretrofit2/Call;

    move-result-object v0

    .line 86
    return-object v0
.end method

.method getTimelineType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "collection"

    return-object v0
.end method

.method public next(Ljava/lang/Long;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 2
    .param p1, "minPosition"    # Ljava/lang/Long;
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
    .line 66
    .local p2, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;->createCollectionRequest(Ljava/lang/Long;Ljava/lang/Long;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$CollectionCallback;

    invoke-direct {v1, p0, p2}, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$CollectionCallback;-><init>(Lcom/twitter/sdk/android/tweetui/CollectionTimeline;Lcom/twitter/sdk/android/core/Callback;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 67
    return-void
.end method

.method public previous(Ljava/lang/Long;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 2
    .param p1, "maxPosition"    # Ljava/lang/Long;
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
    .line 76
    .local p2, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;->createCollectionRequest(Ljava/lang/Long;Ljava/lang/Long;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$CollectionCallback;

    invoke-direct {v1, p0, p2}, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$CollectionCallback;-><init>(Lcom/twitter/sdk/android/tweetui/CollectionTimeline;Lcom/twitter/sdk/android/core/Callback;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 77
    return-void
.end method
