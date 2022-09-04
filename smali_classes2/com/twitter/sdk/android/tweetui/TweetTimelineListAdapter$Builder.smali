.class public Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;
.super Ljava/lang/Object;
.source "TweetTimelineListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private actionCallback:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private styleResId:I

.field private timeline:Lcom/twitter/sdk/android/tweetui/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/tweetui/Timeline",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private timelineFilter:Lcom/twitter/sdk/android/tweetui/TimelineFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    sget v0, Lcom/twitter/sdk/android/tweetui/R$style;->tw__TweetLightStyle:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->styleResId:I

    .line 169
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->context:Landroid/content/Context;

    .line 170
    return-void
.end method


# virtual methods
.method public build()Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;
    .locals 6

    .prologue
    .line 213
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->timelineFilter:Lcom/twitter/sdk/android/tweetui/TimelineFilter;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->timeline:Lcom/twitter/sdk/android/tweetui/Timeline;

    iget v4, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->styleResId:I

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->actionCallback:Lcom/twitter/sdk/android/core/Callback;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/Timeline;ILcom/twitter/sdk/android/core/Callback;)V

    .line 218
    :goto_0
    return-object v0

    .line 216
    :cond_0
    new-instance v2, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->timeline:Lcom/twitter/sdk/android/tweetui/Timeline;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->timelineFilter:Lcom/twitter/sdk/android/tweetui/TimelineFilter;

    invoke-direct {v2, v0, v1}, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;-><init>(Lcom/twitter/sdk/android/tweetui/Timeline;Lcom/twitter/sdk/android/tweetui/TimelineFilter;)V

    .line 218
    .local v2, "delegate":Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->context:Landroid/content/Context;

    iget v3, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->styleResId:I

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->actionCallback:Lcom/twitter/sdk/android/core/Callback;

    .line 219
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/TimelineDelegate;ILcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    goto :goto_0
.end method

.method public setOnActionCallback(Lcom/twitter/sdk/android/core/Callback;)Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)",
            "Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "actionCallback":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->actionCallback:Lcom/twitter/sdk/android/core/Callback;

    .line 196
    return-object p0
.end method

.method public setTimeline(Lcom/twitter/sdk/android/tweetui/Timeline;)Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/tweetui/Timeline",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)",
            "Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "timeline":Lcom/twitter/sdk/android/tweetui/Timeline;, "Lcom/twitter/sdk/android/tweetui/Timeline<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->timeline:Lcom/twitter/sdk/android/tweetui/Timeline;

    .line 178
    return-object p0
.end method

.method public setTimelineFilter(Lcom/twitter/sdk/android/tweetui/TimelineFilter;)Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;
    .locals 0
    .param p1, "timelineFilter"    # Lcom/twitter/sdk/android/tweetui/TimelineFilter;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->timelineFilter:Lcom/twitter/sdk/android/tweetui/TimelineFilter;

    .line 205
    return-object p0
.end method

.method public setViewStyle(I)Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;
    .locals 0
    .param p1, "styleResId"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$Builder;->styleResId:I

    .line 187
    return-object p0
.end method
