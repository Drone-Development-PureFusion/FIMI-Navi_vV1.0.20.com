.class public Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;
.super Ljava/lang/Object;
.source "TwitterListTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private includeRetweets:Ljava/lang/Boolean;

.field private listId:Ljava/lang/Long;

.field private maxItemsPerRequest:Ljava/lang/Integer;

.field private ownerId:Ljava/lang/Long;

.field private ownerScreenName:Ljava/lang/String;

.field private slug:Ljava/lang/String;

.field private final twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 103
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    .line 104
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterCore;)V
    .locals 1
    .param p1, "twitterCore"    # Lcom/twitter/sdk/android/core/TwitterCore;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 108
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    .line 109
    return-void
.end method


# virtual methods
.method public build()Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->listId:Ljava/lang/Long;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->slug:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must specify either a list id or slug/owner pair"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 169
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->slug:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->ownerId:Ljava/lang/Long;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->ownerScreenName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "slug/owner pair must set owner via ownerId or ownerScreenName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_3
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->listId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->slug:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->ownerId:Ljava/lang/Long;

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->ownerScreenName:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->includeRetweets:Ljava/lang/Boolean;

    invoke-direct/range {v0 .. v7}, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline;-><init>(Lcom/twitter/sdk/android/core/TwitterCore;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public id(Ljava/lang/Long;)Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->listId:Ljava/lang/Long;

    .line 117
    return-object p0
.end method

.method public includeRetweets(Ljava/lang/Boolean;)Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;
    .locals 0
    .param p1, "includeRetweets"    # Ljava/lang/Boolean;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->includeRetweets:Ljava/lang/Boolean;

    .line 159
    return-object p0
.end method

.method public maxItemsPerRequest(Ljava/lang/Integer;)Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;
    .locals 0
    .param p1, "maxItemsPerRequest"    # Ljava/lang/Integer;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 148
    return-object p0
.end method

.method public slugWithOwnerId(Ljava/lang/String;Ljava/lang/Long;)Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;
    .locals 0
    .param p1, "slug"    # Ljava/lang/String;
    .param p2, "ownerId"    # Ljava/lang/Long;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->slug:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->ownerId:Ljava/lang/Long;

    .line 128
    return-object p0
.end method

.method public slugWithOwnerScreenName(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;
    .locals 0
    .param p1, "slug"    # Ljava/lang/String;
    .param p2, "ownerScreenName"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->slug:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TwitterListTimeline$Builder;->ownerScreenName:Ljava/lang/String;

    .line 139
    return-object p0
.end method
