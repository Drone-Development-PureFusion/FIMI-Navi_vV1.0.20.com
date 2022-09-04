.class public Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;
.super Ljava/lang/Object;
.source "SearchTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/SearchTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private geocode:Lcom/twitter/sdk/android/core/services/params/Geocode;

.field private lang:Ljava/lang/String;

.field private maxItemsPerRequest:Ljava/lang/Integer;

.field private query:Ljava/lang/String;

.field private resultType:Ljava/lang/String;

.field private final twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

.field private untilDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    sget-object v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->FILTERED:Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->resultType:Ljava/lang/String;

    .line 152
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 160
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    .line 161
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterCore;)V
    .locals 1
    .param p1, "twitterCore"    # Lcom/twitter/sdk/android/core/TwitterCore;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    sget-object v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->FILTERED:Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->resultType:Ljava/lang/String;

    .line 152
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 165
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    .line 166
    return-void
.end method


# virtual methods
.method public build()Lcom/twitter/sdk/android/tweetui/SearchTimeline;
    .locals 8

    .prologue
    .line 236
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->query:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "query must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->query:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->geocode:Lcom/twitter/sdk/android/core/services/params/Geocode;

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->resultType:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->lang:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->untilDate:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/twitter/sdk/android/tweetui/SearchTimeline;-><init>(Lcom/twitter/sdk/android/core/TwitterCore;Ljava/lang/String;Lcom/twitter/sdk/android/core/services/params/Geocode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method public geocode(Lcom/twitter/sdk/android/core/services/params/Geocode;)Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;
    .locals 0
    .param p1, "geocode"    # Lcom/twitter/sdk/android/core/services/params/Geocode;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->geocode:Lcom/twitter/sdk/android/core/services/params/Geocode;

    .line 184
    return-object p0
.end method

.method public languageCode(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;
    .locals 0
    .param p1, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->lang:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public maxItemsPerRequest(Ljava/lang/Integer;)Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;
    .locals 0
    .param p1, "maxItemsPerRequest"    # Ljava/lang/Integer;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 216
    return-object p0
.end method

.method public query(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->query:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public resultType(Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;)Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;
    .locals 1
    .param p1, "resultType"    # Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    .prologue
    .line 194
    iget-object v0, p1, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->resultType:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public untilDate(Ljava/util/Date;)Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 226
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/SearchTimeline;->access$000()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$Builder;->untilDate:Ljava/lang/String;

    .line 227
    return-object p0
.end method
