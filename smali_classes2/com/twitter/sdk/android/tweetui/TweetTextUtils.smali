.class final Lcom/twitter/sdk/android/tweetui/TweetTextUtils;
.super Ljava/lang/Object;
.source "TweetTextUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustEntitiesWithOffsets(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "entities":Ljava/util/List;, "Ljava/util/List<+Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;>;"
    .local p1, "indices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 230
    :cond_0
    return-void

    .line 216
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    .line 218
    .local v0, "entity":Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    iget v3, v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    .line 219
    .local v3, "start":I
    const/4 v2, 0x0

    .line 220
    .local v2, "offset":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 221
    .local v1, "index":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v2

    if-gt v6, v3, :cond_2

    .line 222
    add-int/lit8 v2, v2, 0x1

    .line 226
    goto :goto_1

    .line 227
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_2
    iget v5, v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    add-int/2addr v5, v2

    iput v5, v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    .line 228
    iget v5, v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->end:I

    add-int/2addr v5, v2

    iput v5, v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->end:I

    goto :goto_0
.end method

.method static adjustIndicesForEscapedChars(Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;",
            "Ljava/util/List",
            "<[I>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "entities":Ljava/util/List;, "Ljava/util/List<+Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;>;"
    .local p1, "indices":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 178
    :cond_0
    return-void

    .line 145
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 146
    .local v8, "size":I
    const/4 v7, 0x0

    .line 147
    .local v7, "m":I
    const/4 v0, 0x0

    .line 157
    .local v0, "diff":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    .line 158
    .local v2, "entity":Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    const/4 v4, 0x0

    .line 160
    .local v4, "inDiff":I
    move v3, v7

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_4

    .line 161
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 162
    .local v5, "index":[I
    const/4 v11, 0x0

    aget v9, v5, v11

    .line 163
    .local v9, "start":I
    const/4 v11, 0x1

    aget v1, v5, v11

    .line 165
    .local v1, "end":I
    sub-int v6, v1, v9

    .line 166
    .local v6, "len":I
    iget v11, v2, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    if-ge v1, v11, :cond_3

    .line 168
    add-int/2addr v0, v6

    .line 169
    add-int/lit8 v7, v7, 0x1

    .line 160
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 170
    :cond_3
    iget v11, v2, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->end:I

    if-ge v1, v11, :cond_2

    .line 171
    add-int/2addr v4, v6

    goto :goto_2

    .line 175
    .end local v1    # "end":I
    .end local v5    # "index":[I
    .end local v6    # "len":I
    .end local v9    # "start":I
    :cond_4
    iget v11, v2, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    add-int v12, v0, v4

    sub-int/2addr v11, v12

    iput v11, v2, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    .line 176
    iget v11, v2, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->end:I

    add-int v12, v0, v4

    sub-int/2addr v11, v12

    iput v11, v2, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->end:I

    goto :goto_0
.end method

.method static adjustIndicesForSupplementaryChars(Ljava/lang/StringBuilder;Lcom/twitter/sdk/android/tweetui/FormattedTweetText;)V
    .locals 4
    .param p0, "content"    # Ljava/lang/StringBuilder;
    .param p1, "formattedTweetText"    # Lcom/twitter/sdk/android/tweetui/FormattedTweetText;

    .prologue
    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "highSurrogateIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 192
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 193
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 194
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_1
    iget-object v3, p1, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->urlEntities:Ljava/util/List;

    invoke-static {v3, v0}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustEntitiesWithOffsets(Ljava/util/List;Ljava/util/List;)V

    .line 200
    iget-object v3, p1, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->mediaEntities:Ljava/util/List;

    invoke-static {v3, v0}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustEntitiesWithOffsets(Ljava/util/List;Ljava/util/List;)V

    .line 201
    iget-object v3, p1, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->hashtagEntities:Ljava/util/List;

    invoke-static {v3, v0}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustEntitiesWithOffsets(Ljava/util/List;Ljava/util/List;)V

    .line 202
    iget-object v3, p1, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->mentionEntities:Ljava/util/List;

    invoke-static {v3, v0}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustEntitiesWithOffsets(Ljava/util/List;Ljava/util/List;)V

    .line 203
    iget-object v3, p1, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->symbolEntities:Ljava/util/List;

    invoke-static {v3, v0}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustEntitiesWithOffsets(Ljava/util/List;Ljava/util/List;)V

    .line 204
    return-void
.end method

.method static convertEntities(Lcom/twitter/sdk/android/tweetui/FormattedTweetText;Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 13
    .param p0, "formattedTweetText"    # Lcom/twitter/sdk/android/tweetui/FormattedTweetText;
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 62
    iget-object v11, p1, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    if-nez v11, :cond_1

    .line 107
    :cond_0
    return-void

    .line 64
    :cond_1
    iget-object v11, p1, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iget-object v4, v11, Lcom/twitter/sdk/android/core/models/TweetEntities;->urls:Ljava/util/List;

    .line 65
    .local v4, "coreUrls":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/UrlEntity;>;"
    if-eqz v4, :cond_2

    .line 66
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/sdk/android/core/models/UrlEntity;

    .line 68
    .local v5, "entity":Lcom/twitter/sdk/android/core/models/UrlEntity;
    invoke-static {v5}, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->createFormattedUrlEntity(Lcom/twitter/sdk/android/core/models/UrlEntity;)Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    move-result-object v10

    .line 69
    .local v10, "formattedUrlEntity":Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    iget-object v12, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->urlEntities:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v5    # "entity":Lcom/twitter/sdk/android/core/models/UrlEntity;
    .end local v10    # "formattedUrlEntity":Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    :cond_2
    iget-object v11, p1, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iget-object v1, v11, Lcom/twitter/sdk/android/core/models/TweetEntities;->media:Ljava/util/List;

    .line 74
    .local v1, "coreMedia":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/MediaEntity;>;"
    if-eqz v1, :cond_3

    .line 75
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 76
    .local v5, "entity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    new-instance v7, Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;

    invoke-direct {v7, v5}, Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;-><init>(Lcom/twitter/sdk/android/core/models/MediaEntity;)V

    .line 77
    .local v7, "formattedMediaEntity":Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;
    iget-object v12, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->mediaEntities:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    .end local v5    # "entity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    .end local v7    # "formattedMediaEntity":Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;
    :cond_3
    iget-object v11, p1, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iget-object v0, v11, Lcom/twitter/sdk/android/core/models/TweetEntities;->hashtags:Ljava/util/List;

    .line 82
    .local v0, "coreHashtags":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/HashtagEntity;>;"
    if-eqz v0, :cond_4

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/sdk/android/core/models/HashtagEntity;

    .line 85
    .local v5, "entity":Lcom/twitter/sdk/android/core/models/HashtagEntity;
    invoke-static {v5}, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->createFormattedUrlEntity(Lcom/twitter/sdk/android/core/models/HashtagEntity;)Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    move-result-object v6

    .line 86
    .local v6, "formattedHashtagEntity":Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    iget-object v12, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->hashtagEntities:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 90
    .end local v5    # "entity":Lcom/twitter/sdk/android/core/models/HashtagEntity;
    .end local v6    # "formattedHashtagEntity":Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    :cond_4
    iget-object v11, p1, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iget-object v2, v11, Lcom/twitter/sdk/android/core/models/TweetEntities;->userMentions:Ljava/util/List;

    .line 91
    .local v2, "coreMentions":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/MentionEntity;>;"
    if-eqz v2, :cond_5

    .line 92
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/sdk/android/core/models/MentionEntity;

    .line 94
    .local v5, "entity":Lcom/twitter/sdk/android/core/models/MentionEntity;
    invoke-static {v5}, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->createFormattedUrlEntity(Lcom/twitter/sdk/android/core/models/MentionEntity;)Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    move-result-object v8

    .line 95
    .local v8, "formattedMentionEntity":Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    iget-object v12, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->mentionEntities:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 99
    .end local v5    # "entity":Lcom/twitter/sdk/android/core/models/MentionEntity;
    .end local v8    # "formattedMentionEntity":Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    :cond_5
    iget-object v11, p1, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iget-object v3, v11, Lcom/twitter/sdk/android/core/models/TweetEntities;->symbols:Ljava/util/List;

    .line 100
    .local v3, "coreSymbols":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/SymbolEntity;>;"
    if-eqz v3, :cond_0

    .line 101
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/sdk/android/core/models/SymbolEntity;

    .line 103
    .local v5, "entity":Lcom/twitter/sdk/android/core/models/SymbolEntity;
    invoke-static {v5}, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->createFormattedUrlEntity(Lcom/twitter/sdk/android/core/models/SymbolEntity;)Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    move-result-object v9

    .line 104
    .local v9, "formattedSymbolEntity":Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    iget-object v12, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->symbolEntities:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method static format(Lcom/twitter/sdk/android/tweetui/FormattedTweetText;Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 4
    .param p0, "formattedTweetText"    # Lcom/twitter/sdk/android/tweetui/FormattedTweetText;
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 117
    iget-object v2, p1, Lcom/twitter/sdk/android/core/models/Tweet;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    :goto_0
    return-void

    .line 119
    :cond_0
    sget-object v2, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->HTML40:Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;

    iget-object v3, p1, Lcom/twitter/sdk/android/core/models/Tweet;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities;->unescape(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;

    move-result-object v1

    .line 120
    .local v1, "u":Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;->unescaped:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->urlEntities:Ljava/util/List;

    iget-object v3, v1, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;->indices:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustIndicesForEscapedChars(Ljava/util/List;Ljava/util/List;)V

    .line 123
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->mediaEntities:Ljava/util/List;

    iget-object v3, v1, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;->indices:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustIndicesForEscapedChars(Ljava/util/List;Ljava/util/List;)V

    .line 124
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->hashtagEntities:Ljava/util/List;

    iget-object v3, v1, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;->indices:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustIndicesForEscapedChars(Ljava/util/List;Ljava/util/List;)V

    .line 125
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->mentionEntities:Ljava/util/List;

    iget-object v3, v1, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;->indices:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustIndicesForEscapedChars(Ljava/util/List;Ljava/util/List;)V

    .line 126
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->symbolEntities:Ljava/util/List;

    iget-object v3, v1, Lcom/twitter/sdk/android/tweetui/internal/util/HtmlEntities$Unescaped;->indices:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustIndicesForEscapedChars(Ljava/util/List;Ljava/util/List;)V

    .line 127
    invoke-static {v0, p0}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->adjustIndicesForSupplementaryChars(Ljava/lang/StringBuilder;Lcom/twitter/sdk/android/tweetui/FormattedTweetText;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method static formatTweetText(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/tweetui/FormattedTweetText;
    .locals 1
    .param p0, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 45
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;-><init>()V

    .line 49
    .local v0, "adjustedTweet":Lcom/twitter/sdk/android/tweetui/FormattedTweetText;
    invoke-static {v0, p0}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->convertEntities(Lcom/twitter/sdk/android/tweetui/FormattedTweetText;Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 50
    invoke-static {v0, p0}, Lcom/twitter/sdk/android/tweetui/TweetTextUtils;->format(Lcom/twitter/sdk/android/tweetui/FormattedTweetText;Lcom/twitter/sdk/android/core/models/Tweet;)V

    goto :goto_0
.end method
