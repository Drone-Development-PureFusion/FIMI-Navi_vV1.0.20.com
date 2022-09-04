.class public Lcom/twitter/sdk/android/core/models/Search;
.super Ljava/lang/Object;
.source "Search.java"


# instance fields
.field public final searchMetadata:Lcom/twitter/sdk/android/core/models/SearchMetadata;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "search_metadata"
    .end annotation
.end field

.field public final tweets:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statuses"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0, v0}, Lcom/twitter/sdk/android/core/models/Search;-><init>(Ljava/util/List;Lcom/twitter/sdk/android/core/models/SearchMetadata;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/twitter/sdk/android/core/models/SearchMetadata;)V
    .locals 1
    .param p2, "searchMetadata"    # Lcom/twitter/sdk/android/core/models/SearchMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;",
            "Lcom/twitter/sdk/android/core/models/SearchMetadata;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "tweets":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Search;->tweets:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lcom/twitter/sdk/android/core/models/Search;->searchMetadata:Lcom/twitter/sdk/android/core/models/SearchMetadata;

    .line 41
    return-void
.end method
