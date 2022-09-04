.class public Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;
.super Ljava/lang/Object;
.source "BasicTimelineFilter.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetui/TimelineFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter$IgnoreCaseComparator;
    }
.end annotation


# instance fields
.field private final handleConstraints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hashTagConstraints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keywordConstraints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final urlConstraints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wordIterator:Ljava/text/BreakIterator;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/tweetui/FilterValues;)V
    .locals 1
    .param p1, "filterValues"    # Lcom/twitter/sdk/android/tweetui/FilterValues;

    .prologue
    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;-><init>(Lcom/twitter/sdk/android/tweetui/FilterValues;Ljava/util/Locale;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/tweetui/FilterValues;Ljava/util/Locale;)V
    .locals 9
    .param p1, "filterValues"    # Lcom/twitter/sdk/android/tweetui/FilterValues;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter$IgnoreCaseComparator;

    invoke-direct {v0, p2}, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter$IgnoreCaseComparator;-><init>(Ljava/util/Locale;)V

    .line 56
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v7

    iput-object v7, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->wordIterator:Ljava/text/BreakIterator;

    .line 57
    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v7, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->keywordConstraints:Ljava/util/Set;

    .line 58
    iget-object v7, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->keywordConstraints:Ljava/util/Set;

    iget-object v8, p1, Lcom/twitter/sdk/android/tweetui/FilterValues;->keywords:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 60
    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v7, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->hashTagConstraints:Ljava/util/Set;

    .line 61
    iget-object v7, p1, Lcom/twitter/sdk/android/tweetui/FilterValues;->hashtags:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, "hashtag":Ljava/lang/String;
    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->normalizeHashtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "sanitizedHashtag":Ljava/lang/String;
    iget-object v8, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->hashTagConstraints:Ljava/util/Set;

    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v2    # "hashtag":Ljava/lang/String;
    .end local v4    # "sanitizedHashtag":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    iget-object v8, p1, Lcom/twitter/sdk/android/tweetui/FilterValues;->handles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    iput-object v7, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->handleConstraints:Ljava/util/Set;

    .line 67
    iget-object v7, p1, Lcom/twitter/sdk/android/tweetui/FilterValues;->handles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "handle":Ljava/lang/String;
    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->normalizeHandle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "sanitizedHandle":Ljava/lang/String;
    iget-object v8, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->handleConstraints:Ljava/util/Set;

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    .end local v1    # "handle":Ljava/lang/String;
    .end local v3    # "sanitizedHandle":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    iget-object v8, p1, Lcom/twitter/sdk/android/tweetui/FilterValues;->urls:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    iput-object v7, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->urlConstraints:Ljava/util/Set;

    .line 73
    iget-object v7, p1, Lcom/twitter/sdk/android/tweetui/FilterValues;->urls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 74
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "sanitizedUrl":Ljava/lang/String;
    iget-object v8, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->urlConstraints:Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 77
    .end local v5    # "sanitizedUrl":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static normalizeHandle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "handle"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    .end local p0    # "handle":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 209
    .restart local p0    # "handle":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 210
    .local v0, "firstChar":C
    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    const v1, 0xff20

    if-ne v0, v1, :cond_2

    .line 211
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 214
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static normalizeHashtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "hashtag"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-object p0

    .line 196
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 197
    .local v0, "firstChar":C
    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    const v1, 0xff03

    if-eq v0, v1, :cond_2

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    .line 198
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static normalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 180
    :try_start_0
    invoke-static {p0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 181
    .local v1, "parsedUrl":Lokhttp3/HttpUrl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 182
    :cond_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 187
    .end local v1    # "parsedUrl":Lokhttp3/HttpUrl;
    .end local p0    # "url":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 185
    .restart local v1    # "parsedUrl":Lokhttp3/HttpUrl;
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 186
    .end local v1    # "parsedUrl":Lokhttp3/HttpUrl;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method


# virtual methods
.method containsMatchingHashtag(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/HashtagEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "hashtags":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/HashtagEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/HashtagEntity;

    .line 133
    .local v0, "entity":Lcom/twitter/sdk/android/core/models/HashtagEntity;
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->hashTagConstraints:Ljava/util/Set;

    iget-object v3, v0, Lcom/twitter/sdk/android/core/models/HashtagEntity;->text:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const/4 v1, 0x1

    .line 138
    .end local v0    # "entity":Lcom/twitter/sdk/android/core/models/HashtagEntity;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method containsMatchingMention(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/MentionEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "mentions":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/MentionEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/MentionEntity;

    .line 164
    .local v0, "entity":Lcom/twitter/sdk/android/core/models/MentionEntity;
    iget-object v3, v0, Lcom/twitter/sdk/android/core/models/MentionEntity;->screenName:Ljava/lang/String;

    invoke-static {v3}, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->normalizeHandle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->handleConstraints:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    const/4 v2, 0x1

    .line 170
    .end local v0    # "entity":Lcom/twitter/sdk/android/core/models/MentionEntity;
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method containsMatchingScreenName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->normalizeHandle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->handleConstraints:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method containsMatchingSymbol(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/SymbolEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "symbols":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/SymbolEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/SymbolEntity;

    .line 143
    .local v0, "entity":Lcom/twitter/sdk/android/core/models/SymbolEntity;
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->hashTagConstraints:Ljava/util/Set;

    iget-object v3, v0, Lcom/twitter/sdk/android/core/models/SymbolEntity;->text:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const/4 v1, 0x1

    .line 148
    .end local v0    # "entity":Lcom/twitter/sdk/android/core/models/SymbolEntity;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method containsMatchingText(Lcom/twitter/sdk/android/core/models/Tweet;)Z
    .locals 5
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 116
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->wordIterator:Ljava/text/BreakIterator;

    iget-object v4, p1, Lcom/twitter/sdk/android/core/models/Tweet;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->wordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v3}, Ljava/text/BreakIterator;->first()I

    move-result v1

    .line 118
    .local v1, "start":I
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->wordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v3}, Ljava/text/BreakIterator;->next()I

    move-result v0

    .line 119
    .local v0, "end":I
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 121
    iget-object v3, p1, Lcom/twitter/sdk/android/core/models/Tweet;->text:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "word":Ljava/lang/String;
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->keywordConstraints:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    const/4 v3, 0x1

    .line 128
    .end local v2    # "word":Ljava/lang/String;
    :goto_1
    return v3

    .line 120
    .restart local v2    # "word":Ljava/lang/String;
    :cond_0
    move v1, v0

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->wordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v3}, Ljava/text/BreakIterator;->next()I

    move-result v0

    goto :goto_0

    .line 128
    .end local v2    # "word":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method containsMatchingUrl(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/UrlEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/UrlEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/UrlEntity;

    .line 153
    .local v0, "entity":Lcom/twitter/sdk/android/core/models/UrlEntity;
    iget-object v3, v0, Lcom/twitter/sdk/android/core/models/UrlEntity;->expandedUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->urlConstraints:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    const/4 v2, 0x1

    .line 159
    .end local v0    # "entity":Lcom/twitter/sdk/android/core/models/UrlEntity;
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public filter(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 81
    .local p1, "tweets":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "filteredTweets":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/Tweet;>;"
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 83
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/models/Tweet;

    .line 84
    .local v2, "tweet":Lcom/twitter/sdk/android/core/models/Tweet;
    invoke-virtual {p0, v2}, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->shouldFilterTweet(Lcom/twitter/sdk/android/core/models/Tweet;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "tweet":Lcom/twitter/sdk/android/core/models/Tweet;
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method shouldFilterTweet(Lcom/twitter/sdk/android/core/models/Tweet;)Z
    .locals 2
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    const/4 v0, 0x1

    .line 99
    iget-object v1, p1, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    .line 100
    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->containsMatchingScreenName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    iget-object v1, p1, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/models/TweetEntities;->hashtags:Ljava/util/List;

    .line 105
    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->containsMatchingHashtag(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/models/TweetEntities;->symbols:Ljava/util/List;

    .line 106
    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->containsMatchingSymbol(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/models/TweetEntities;->urls:Ljava/util/List;

    .line 107
    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->containsMatchingUrl(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/models/TweetEntities;->userMentions:Ljava/util/List;

    .line 108
    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->containsMatchingMention(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    :cond_2
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->containsMatchingText(Lcom/twitter/sdk/android/core/models/Tweet;)Z

    move-result v0

    goto :goto_0
.end method

.method public totalFilters()I
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->keywordConstraints:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->hashTagConstraints:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->urlConstraints:Ljava/util/Set;

    .line 95
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BasicTimelineFilter;->handleConstraints:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    return v0
.end method
