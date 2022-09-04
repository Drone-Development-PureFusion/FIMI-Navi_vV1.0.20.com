.class public Lcom/twitter/sdk/android/core/models/TweetEntities;
.super Ljava/lang/Object;
.source "TweetEntities.java"


# static fields
.field static final EMPTY:Lcom/twitter/sdk/android/core/models/TweetEntities;


# instance fields
.field public final hashtags:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hashtags"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/HashtagEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final media:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final symbols:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "symbols"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/SymbolEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final urls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/UrlEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final userMentions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_mentions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/MentionEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v0, Lcom/twitter/sdk/android/core/models/TweetEntities;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/models/TweetEntities;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/twitter/sdk/android/core/models/TweetEntities;->EMPTY:Lcom/twitter/sdk/android/core/models/TweetEntities;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 62
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/models/TweetEntities;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/UrlEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/MentionEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/MediaEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/HashtagEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/SymbolEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/UrlEntity;>;"
    .local p2, "userMentions":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/MentionEntity;>;"
    .local p3, "media":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/MediaEntity;>;"
    .local p4, "hashtags":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/HashtagEntity;>;"
    .local p5, "symbols":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/SymbolEntity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetEntities;->urls:Ljava/util/List;

    .line 68
    invoke-static {p2}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetEntities;->userMentions:Ljava/util/List;

    .line 69
    invoke-static {p3}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetEntities;->media:Ljava/util/List;

    .line 70
    invoke-static {p4}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetEntities;->hashtags:Ljava/util/List;

    .line 71
    invoke-static {p5}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetEntities;->symbols:Ljava/util/List;

    .line 72
    return-void
.end method
