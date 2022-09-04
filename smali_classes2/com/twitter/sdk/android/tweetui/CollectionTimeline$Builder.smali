.class public Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;
.super Ljava/lang/Object;
.source "CollectionTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/CollectionTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private collectionId:Ljava/lang/Long;

.field private maxItemsPerRequest:Ljava/lang/Integer;

.field private final twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 184
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    .line 185
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterCore;)V
    .locals 1
    .param p1, "twitterCore"    # Lcom/twitter/sdk/android/core/TwitterCore;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 189
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    .line 190
    return-void
.end method


# virtual methods
.method public build()Lcom/twitter/sdk/android/tweetui/CollectionTimeline;
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->collectionId:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "collection id must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->collectionId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/sdk/android/tweetui/CollectionTimeline;-><init>(Lcom/twitter/sdk/android/core/TwitterCore;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public id(Ljava/lang/Long;)Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;
    .locals 0
    .param p1, "collectionId"    # Ljava/lang/Long;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->collectionId:Ljava/lang/Long;

    .line 198
    return-object p0
.end method

.method public maxItemsPerRequest(Ljava/lang/Integer;)Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;
    .locals 0
    .param p1, "maxItemsPerRequest"    # Ljava/lang/Integer;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/CollectionTimeline$Builder;->maxItemsPerRequest:Ljava/lang/Integer;

    .line 208
    return-object p0
.end method
