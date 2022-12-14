.class public Lcom/twitter/sdk/android/core/internal/VineCardUtils;
.super Ljava/lang/Object;
.source "VineCardUtils.java"


# static fields
.field public static final PLAYER_CARD:Ljava/lang/String; = "player"

.field public static final VINE_CARD:Ljava/lang/String; = "vine"

.field public static final VINE_USER_ID:J = 0x22f7e725L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageValue(Lcom/twitter/sdk/android/core/models/Card;)Lcom/twitter/sdk/android/core/models/ImageValue;
    .locals 2
    .param p0, "card"    # Lcom/twitter/sdk/android/core/models/Card;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/Card;->bindingValues:Lcom/twitter/sdk/android/core/models/BindingValues;

    const-string v1, "player_image"

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/models/BindingValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/ImageValue;

    return-object v0
.end method

.method public static getPublisherId(Lcom/twitter/sdk/android/core/models/Card;)Ljava/lang/String;
    .locals 3
    .param p0, "card"    # Lcom/twitter/sdk/android/core/models/Card;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/Card;->bindingValues:Lcom/twitter/sdk/android/core/models/BindingValues;

    const-string v2, "site"

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/models/BindingValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/UserValue;

    .line 50
    .local v0, "user_value":Lcom/twitter/sdk/android/core/models/UserValue;
    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/UserValue;->idStr:Ljava/lang/String;

    return-object v1
.end method

.method public static getStreamUrl(Lcom/twitter/sdk/android/core/models/Card;)Ljava/lang/String;
    .locals 2
    .param p0, "card"    # Lcom/twitter/sdk/android/core/models/Card;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/Card;->bindingValues:Lcom/twitter/sdk/android/core/models/BindingValues;

    const-string v1, "player_stream_url"

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/models/BindingValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isVine(Lcom/twitter/sdk/android/core/models/Card;)Z
    .locals 2
    .param p0, "card"    # Lcom/twitter/sdk/android/core/models/Card;

    .prologue
    .line 32
    const-string v0, "player"

    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/Card;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vine"

    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/Card;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/twitter/sdk/android/core/internal/VineCardUtils;->isVineUser(Lcom/twitter/sdk/android/core/models/Card;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVineUser(Lcom/twitter/sdk/android/core/models/Card;)Z
    .locals 8
    .param p0, "card"    # Lcom/twitter/sdk/android/core/models/Card;

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-object v3, p0, Lcom/twitter/sdk/android/core/models/Card;->bindingValues:Lcom/twitter/sdk/android/core/models/BindingValues;

    const-string v4, "site"

    invoke-virtual {v3, v4}, Lcom/twitter/sdk/android/core/models/BindingValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/models/UserValue;

    .line 38
    .local v1, "user":Lcom/twitter/sdk/android/core/models/UserValue;
    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, v1, Lcom/twitter/sdk/android/core/models/UserValue;->idStr:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/32 v6, 0x22f7e725

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 39
    const/4 v2, 0x1

    .line 45
    :cond_0
    :goto_0
    return v2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
