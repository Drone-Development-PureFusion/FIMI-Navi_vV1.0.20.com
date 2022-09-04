.class public Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;
.super Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;
.source "TweetTimelineListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;,
        Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$ReplaceTweetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/tweetui/TimelineListAdapter",
        "<",
        "Lcom/twitter/sdk/android/core/models/Tweet;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_FILTERS_JSON_MSG:Ljava/lang/String; = "{\"total_filters\":0}"

.field static final TOTAL_FILTERS_JSON_PROP:Ljava/lang/String; = "total_filters"


# instance fields
.field protected actionCallback:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field final gson:Lcom/google/gson/Gson;

.field protected final styleResId:I

.field protected tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/Timeline;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/tweetui/Timeline",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "timeline":Lcom/twitter/sdk/android/tweetui/Timeline;, "Lcom/twitter/sdk/android/tweetui/Timeline<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    sget v0, Lcom/twitter/sdk/android/tweetui/R$style;->tw__TweetLightStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/Timeline;ILcom/twitter/sdk/android/core/Callback;)V

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/Timeline;ILcom/twitter/sdk/android/core/Callback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "styleResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/tweetui/Timeline",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;I",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "timeline":Lcom/twitter/sdk/android/tweetui/Timeline;, "Lcom/twitter/sdk/android/tweetui/Timeline<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    .local p4, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    new-instance v2, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-direct {v2, p2}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;-><init>(Lcom/twitter/sdk/android/tweetui/Timeline;)V

    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/TimelineDelegate;ILcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/TimelineDelegate;ILcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TweetUi;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "styleResId"    # I
    .param p5, "tweetUi"    # Lcom/twitter/sdk/android/tweetui/TweetUi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/tweetui/TimelineDelegate",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;I",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;",
            "Lcom/twitter/sdk/android/tweetui/TweetUi;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "delegate":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    .local p4, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/TimelineDelegate;)V

    .line 45
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->gson:Lcom/google/gson/Gson;

    .line 65
    iput p3, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->styleResId:I

    .line 66
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$ReplaceTweetCallback;

    invoke-direct {v0, p2, p4}, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$ReplaceTweetCallback;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->actionCallback:Lcom/twitter/sdk/android/core/Callback;

    .line 67
    iput-object p5, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    .line 69
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->scribeTimelineImpression()V

    .line 70
    return-void
.end method

.method private getJsonMessage(I)Ljava/lang/String;
    .locals 3
    .param p1, "totalFilters"    # I

    .prologue
    .line 113
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 114
    .local v0, "message":Lcom/google/gson/JsonObject;
    const-string v1, "total_filters"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 115
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getTimelineType(Lcom/twitter/sdk/android/tweetui/Timeline;)Ljava/lang/String;
    .locals 1
    .param p0, "timeline"    # Lcom/twitter/sdk/android/tweetui/Timeline;

    .prologue
    .line 119
    instance-of v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTimeline;

    if-eqz v0, :cond_0

    .line 120
    check-cast p0, Lcom/twitter/sdk/android/tweetui/BaseTimeline;

    .end local p0    # "timeline":Lcom/twitter/sdk/android/tweetui/Timeline;
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTimeline;->getTimelineType()Ljava/lang/String;

    move-result-object v0

    .line 122
    .restart local p0    # "timeline":Lcom/twitter/sdk/android/tweetui/Timeline;
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "other"

    goto :goto_0
.end method

.method private scribeTimelineImpression()V
    .locals 10

    .prologue
    .line 94
    iget-object v6, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    instance-of v6, v6, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;

    if-eqz v6, :cond_0

    .line 95
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    check-cast v0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;

    .line 97
    .local v0, "filterTimelineDelegate":Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;
    iget-object v4, v0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timelineFilter:Lcom/twitter/sdk/android/tweetui/TimelineFilter;

    .line 98
    .local v4, "timelineFilter":Lcom/twitter/sdk/android/tweetui/TimelineFilter;
    invoke-interface {v4}, Lcom/twitter/sdk/android/tweetui/TimelineFilter;->totalFilters()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->getJsonMessage(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    .end local v0    # "filterTimelineDelegate":Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;
    .end local v4    # "timelineFilter":Lcom/twitter/sdk/android/tweetui/TimelineFilter;
    .local v2, "jsonMessage":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->fromMessage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object v3

    .line 104
    .local v3, "scribeItem":Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v6, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v6}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->getTimeline()Lcom/twitter/sdk/android/tweetui/Timeline;

    move-result-object v6

    invoke-static {v6}, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->getTimelineType(Lcom/twitter/sdk/android/tweetui/Timeline;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "timelineType":Ljava/lang/String;
    iget-object v6, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    const/4 v8, 0x0

    invoke-static {v5}, Lcom/twitter/sdk/android/tweetui/ScribeConstants;->getSyndicatedSdkTimelineNamespace(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe([Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;)V

    .line 109
    iget-object v6, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {v5}, Lcom/twitter/sdk/android/tweetui/ScribeConstants;->getTfwClientTimelineNamespace(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    .line 110
    return-void

    .line 100
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;>;"
    .end local v2    # "jsonMessage":Ljava/lang/String;
    .end local v3    # "scribeItem":Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
    .end local v5    # "timelineType":Ljava/lang/String;
    :cond_0
    const-string v2, "{\"total_filters\":0}"

    .restart local v2    # "jsonMessage":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getCount()I
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItemId(I)J
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 80
    move-object v0, p2

    .line 81
    .local v0, "rowView":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->getItem(I)Lcom/twitter/sdk/android/core/models/Identifiable;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/models/Tweet;

    .line 82
    .local v2, "tweet":Lcom/twitter/sdk/android/core/models/Tweet;
    if-nez v0, :cond_0

    .line 83
    new-instance v1, Lcom/twitter/sdk/android/tweetui/CompactTweetView;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->context:Landroid/content/Context;

    iget v4, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->styleResId:I

    invoke-direct {v1, v3, v2, v4}, Lcom/twitter/sdk/android/tweetui/CompactTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;I)V

    .line 84
    .local v1, "tv":Lcom/twitter/sdk/android/tweetui/BaseTweetView;
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;->actionCallback:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v1, v3}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setOnActionCallback(Lcom/twitter/sdk/android/core/Callback;)V

    .line 85
    move-object v0, v1

    .line 89
    .end local v1    # "tv":Lcom/twitter/sdk/android/tweetui/BaseTweetView;
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    .line 87
    check-cast v3, Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-virtual {v3, v2}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->setTweet(Lcom/twitter/sdk/android/core/models/Tweet;)V

    goto :goto_0
.end method

.method public bridge synthetic notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic notifyDataSetInvalidated()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public bridge synthetic refresh(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->refresh(Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method

.method public bridge synthetic registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public bridge synthetic unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
