.class public Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TweetTimelineRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$Builder;,
        Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$ReplaceTweetCallback;,
        Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;",
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

.field protected final context:Landroid/content/Context;

.field final gson:Lcom/google/gson/Gson;

.field private previousCount:I

.field protected final styleResId:I

.field protected final timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/tweetui/TimelineDelegate",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field

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
    .line 63
    .local p2, "timeline":Lcom/twitter/sdk/android/tweetui/Timeline;, "Lcom/twitter/sdk/android/tweetui/Timeline<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    sget v0, Lcom/twitter/sdk/android/tweetui/R$style;->tw__TweetLightStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/Timeline;ILcom/twitter/sdk/android/core/Callback;)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/Timeline;ILcom/twitter/sdk/android/core/Callback;)V
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
    .line 68
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

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/TimelineDelegate;ILcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    .line 69
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/TimelineDelegate;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "styleResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/tweetui/TimelineDelegate",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "timelineDelegate":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 53
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->gson:Lcom/google/gson/Gson;

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    .line 87
    iput p3, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->styleResId:I

    .line 89
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    new-instance v2, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$1;

    invoke-direct {v2, p0}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$1;-><init>(Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;)V

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->refresh(Lcom/twitter/sdk/android/core/Callback;)V

    .line 102
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$2;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$2;-><init>(Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;)V

    .line 123
    .local v0, "dataSetObserver":Landroid/database/DataSetObserver;
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 124
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
    .line 73
    .local p2, "timelineDelegate":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    .local p4, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/TimelineDelegate;I)V

    .line 74
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$ReplaceTweetCallback;

    invoke-direct {v0, p2, p4}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$ReplaceTweetCallback;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->actionCallback:Lcom/twitter/sdk/android/core/Callback;

    .line 75
    iput-object p5, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    .line 76
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->scribeTimelineImpression()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;

    .prologue
    .line 41
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->previousCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->previousCount:I

    return p1
.end method

.method private getJsonMessage(I)Ljava/lang/String;
    .locals 3
    .param p1, "totalFilters"    # I

    .prologue
    .line 178
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 179
    .local v0, "message":Lcom/google/gson/JsonObject;
    const-string v1, "total_filters"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 180
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getTimelineType(Lcom/twitter/sdk/android/tweetui/Timeline;)Ljava/lang/String;
    .locals 1
    .param p0, "timeline"    # Lcom/twitter/sdk/android/tweetui/Timeline;

    .prologue
    .line 184
    instance-of v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTimeline;

    if-eqz v0, :cond_0

    .line 185
    check-cast p0, Lcom/twitter/sdk/android/tweetui/BaseTimeline;

    .end local p0    # "timeline":Lcom/twitter/sdk/android/tweetui/Timeline;
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTimeline;->getTimelineType()Ljava/lang/String;

    move-result-object v0

    .line 187
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
    .line 159
    iget-object v6, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    instance-of v6, v6, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;

    if-eqz v6, :cond_0

    .line 160
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    check-cast v0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;

    .line 162
    .local v0, "filterTimelineDelegate":Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;
    iget-object v4, v0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timelineFilter:Lcom/twitter/sdk/android/tweetui/TimelineFilter;

    .line 163
    .local v4, "timelineFilter":Lcom/twitter/sdk/android/tweetui/TimelineFilter;
    invoke-interface {v4}, Lcom/twitter/sdk/android/tweetui/TimelineFilter;->totalFilters()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->getJsonMessage(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    .end local v0    # "filterTimelineDelegate":Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;
    .end local v4    # "timelineFilter":Lcom/twitter/sdk/android/tweetui/TimelineFilter;
    .local v2, "jsonMessage":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->fromMessage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object v3

    .line 169
    .local v3, "scribeItem":Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v6, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v6}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->getTimeline()Lcom/twitter/sdk/android/tweetui/Timeline;

    move-result-object v6

    invoke-static {v6}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->getTimelineType(Lcom/twitter/sdk/android/tweetui/Timeline;)Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "timelineType":Ljava/lang/String;
    iget-object v6, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    const/4 v8, 0x0

    invoke-static {v5}, Lcom/twitter/sdk/android/tweetui/ScribeConstants;->getSyndicatedSdkTimelineNamespace(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe([Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;)V

    .line 174
    iget-object v6, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {v5}, Lcom/twitter/sdk/android/tweetui/ScribeConstants;->getTfwClientTimelineNamespace(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    .line 175
    return-void

    .line 165
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
.method public getItemCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->onBindViewHolder(Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 141
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v2, p2}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->getItem(I)Lcom/twitter/sdk/android/core/models/Identifiable;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/models/Tweet;

    .line 142
    .local v1, "tweet":Lcom/twitter/sdk/android/core/models/Tweet;
    iget-object v0, p1, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/twitter/sdk/android/tweetui/CompactTweetView;

    .line 143
    .local v0, "compactTweetView":Lcom/twitter/sdk/android/tweetui/CompactTweetView;
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/CompactTweetView;->setTweet(Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 144
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 133
    new-instance v2, Lcom/twitter/sdk/android/core/models/TweetBuilder;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/models/TweetBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/models/TweetBuilder;->build()Lcom/twitter/sdk/android/core/models/Tweet;

    move-result-object v1

    .line 134
    .local v1, "tweet":Lcom/twitter/sdk/android/core/models/Tweet;
    new-instance v0, Lcom/twitter/sdk/android/tweetui/CompactTweetView;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->context:Landroid/content/Context;

    iget v3, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->styleResId:I

    invoke-direct {v0, v2, v1, v3}, Lcom/twitter/sdk/android/tweetui/CompactTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;I)V

    .line 135
    .local v0, "compactTweetView":Lcom/twitter/sdk/android/tweetui/CompactTweetView;
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->actionCallback:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v0, v2}, Lcom/twitter/sdk/android/tweetui/CompactTweetView;->setOnActionCallback(Lcom/twitter/sdk/android/core/Callback;)V

    .line 136
    new-instance v2, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;

    invoke-direct {v2, v0}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;-><init>(Lcom/twitter/sdk/android/tweetui/CompactTweetView;)V

    return-object v2
.end method

.method public refresh(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 1
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
    .line 127
    .local p1, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<Lcom/twitter/sdk/android/core/models/Tweet;>;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->refresh(Lcom/twitter/sdk/android/core/Callback;)V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->previousCount:I

    .line 129
    return-void
.end method
