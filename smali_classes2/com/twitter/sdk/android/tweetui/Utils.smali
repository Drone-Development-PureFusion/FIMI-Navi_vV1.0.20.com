.class final Lcom/twitter/sdk/android/tweetui/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static charSeqOrDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "candidate"    # Ljava/lang/CharSequence;
    .param p1, "defaultSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 50
    if-eqz p0, :cond_0

    .end local p0    # "candidate":Ljava/lang/CharSequence;
    :goto_0
    return-object p0

    .restart local p0    # "candidate":Ljava/lang/CharSequence;
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method static charSeqOrEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    .line 46
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/twitter/sdk/android/tweetui/Utils;->charSeqOrDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static numberOrDefault(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 5
    .param p0, "candidate"    # Ljava/lang/String;
    .param p1, "defaultLong"    # J

    .prologue
    .line 31
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 33
    :goto_0
    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method static orderTweets(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "tweetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p1, "tweets":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v1, "idToTweet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/twitter/sdk/android/core/models/Tweet;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v2, "ordered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/sdk/android/core/models/Tweet;

    .line 63
    .local v3, "tweet":Lcom/twitter/sdk/android/core/models/Tweet;
    iget-wide v6, v3, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    .end local v3    # "tweet":Lcom/twitter/sdk/android/core/models/Tweet;
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 66
    .local v0, "id":Ljava/lang/Long;
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    .end local v0    # "id":Ljava/lang/Long;
    :cond_2
    return-object v2
.end method

.method static stringOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "candidate"    # Ljava/lang/String;
    .param p1, "defaultString"    # Ljava/lang/String;

    .prologue
    .line 42
    if-eqz p0, :cond_0

    .end local p0    # "candidate":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "candidate":Ljava/lang/String;
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method static stringOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "candidate"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/twitter/sdk/android/tweetui/Utils;->stringOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
