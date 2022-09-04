.class public Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;
.super Ljava/lang/Object;
.source "UserTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/UserTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private includeReplies:Ljava/lang/Boolean;

.field private includeRetweets:Ljava/lang/Boolean;

.field private maxItemsPerRequest:Ljava/lang/Integer;

.field private screenName:Ljava/lang/String;

.field private final twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

.field private userId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 101
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    .line 102
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterCore;)V
    .locals 1
    .param p1, "twitterCore"    # Lcom/twitter/sdk/android/core/TwitterCore;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 106
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    .line 107
    return-void
.end method


# virtual methods
.method public build()Lcom/twitter/sdk/android/tweetui/UserTimeline;
    .locals 7

    .prologue
    .line 163
    new-instance v0, Lcom/twitter/sdk/android/tweetui/UserTimeline;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->userId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->screenName:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->includeReplies:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->includeRetweets:Ljava/lang/Boolean;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/tweetui/UserTimeline;-><init>(Lcom/twitter/sdk/android/core/TwitterCore;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public includeReplies(Ljava/lang/Boolean;)Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;
    .locals 0
    .param p1, "includeReplies"    # Ljava/lang/Boolean;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->includeReplies:Ljava/lang/Boolean;

    .line 144
    return-object p0
.end method

.method public includeRetweets(Ljava/lang/Boolean;)Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;
    .locals 0
    .param p1, "includeRetweets"    # Ljava/lang/Boolean;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->includeRetweets:Ljava/lang/Boolean;

    .line 155
    return-object p0
.end method

.method public maxItemsPerRequest(Ljava/lang/Integer;)Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;
    .locals 0
    .param p1, "maxItemsPerRequest"    # Ljava/lang/Integer;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 134
    return-object p0
.end method

.method public screenName(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;
    .locals 0
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->screenName:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public userId(Ljava/lang/Long;)Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;
    .locals 0
    .param p1, "userId"    # Ljava/lang/Long;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/UserTimeline$Builder;->userId:Ljava/lang/Long;

    .line 115
    return-object p0
.end method
