.class public Lcom/twitter/sdk/android/tweetui/TimelineCursor;
.super Ljava/lang/Object;
.source "TimelineCursor.java"


# instance fields
.field public final maxPosition:Ljava/lang/Long;

.field public final minPosition:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p1, "minPosition"    # Ljava/lang/Long;
    .param p2, "maxPosition"    # Ljava/lang/Long;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TimelineCursor;->minPosition:Ljava/lang/Long;

    .line 38
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TimelineCursor;->maxPosition:Ljava/lang/Long;

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/twitter/sdk/android/core/models/Identifiable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+Lcom/twitter/sdk/android/core/models/Identifiable;>;"
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/Identifiable;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/models/Identifiable;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineCursor;->minPosition:Ljava/lang/Long;

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/Identifiable;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/models/Identifiable;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/twitter/sdk/android/tweetui/TimelineCursor;->maxPosition:Ljava/lang/Long;

    .line 49
    return-void

    :cond_1
    move-object v0, v1

    .line 47
    goto :goto_0
.end method
