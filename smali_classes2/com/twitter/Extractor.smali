.class public Lcom/twitter/Extractor;
.super Ljava/lang/Object;
.source "Extractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/Extractor$IndexConverter;,
        Lcom/twitter/Extractor$Entity;
    }
.end annotation


# instance fields
.field protected extractURLWithoutProtocol:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/Extractor;->extractURLWithoutProtocol:Z

    .line 121
    return-void
.end method

.method private extractHashtagsWithIndices(Ljava/lang/String;Z)Ljava/util/List;
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "checkUrlOverlap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 363
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 408
    :cond_1
    :goto_0
    return-object v3

    .line 369
    :cond_2
    const/4 v4, 0x0

    .line 370
    .local v4, "found":Z
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v10, :cond_4

    aget-char v1, v9, v8

    .line 371
    .local v1, "c":C
    const/16 v11, 0x23

    if-eq v1, v11, :cond_3

    const v11, 0xff03

    if-ne v1, v11, :cond_5

    .line 372
    :cond_3
    const/4 v4, 0x1

    .line 376
    .end local v1    # "c":C
    :cond_4
    if-nez v4, :cond_6

    .line 377
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 370
    .restart local v1    # "c":C
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 380
    .end local v1    # "c":C
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v3, "extracted":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/Extractor$Entity;>;"
    sget-object v8, Lcom/twitter/Regex;->VALID_HASHTAG:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 383
    .local v6, "matcher":Ljava/util/regex/Matcher;
    :cond_7
    :goto_2
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 384
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "after":Ljava/lang/String;
    sget-object v8, Lcom/twitter/Regex;->INVALID_HASHTAG_MATCH_END:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_7

    .line 386
    new-instance v8, Lcom/twitter/Extractor$Entity;

    sget-object v9, Lcom/twitter/Extractor$Entity$Type;->HASHTAG:Lcom/twitter/Extractor$Entity$Type;

    const/4 v10, 0x3

    invoke-direct {v8, v6, v9, v10}, Lcom/twitter/Extractor$Entity;-><init>(Ljava/util/regex/Matcher;Lcom/twitter/Extractor$Entity$Type;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 390
    .end local v0    # "after":Ljava/lang/String;
    :cond_8
    if-eqz p2, :cond_1

    .line 392
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractURLsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 393
    .local v7, "urls":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/Extractor$Entity;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 394
    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    invoke-direct {p0, v3}, Lcom/twitter/Extractor;->removeOverlappingEntities(Ljava/util/List;)V

    .line 398
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 399
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/twitter/Extractor$Entity;>;"
    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 400
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/Extractor$Entity;

    .line 401
    .local v2, "entity":Lcom/twitter/Extractor$Entity;
    invoke-virtual {v2}, Lcom/twitter/Extractor$Entity;->getType()Lcom/twitter/Extractor$Entity$Type;

    move-result-object v8

    sget-object v9, Lcom/twitter/Extractor$Entity$Type;->HASHTAG:Lcom/twitter/Extractor$Entity$Type;

    if-eq v8, v9, :cond_9

    .line 402
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_3
.end method

.method private removeOverlappingEntities(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/Extractor$Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/Extractor$Entity;>;"
    new-instance v3, Lcom/twitter/Extractor$1;

    invoke-direct {v3, p0}, Lcom/twitter/Extractor$1;-><init>(Lcom/twitter/Extractor;)V

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 137
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/twitter/Extractor$Entity;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/Extractor$Entity;

    .line 138
    .local v2, "prev":Lcom/twitter/Extractor$Entity;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/Extractor$Entity;

    .line 140
    .local v0, "cur":Lcom/twitter/Extractor$Entity;
    invoke-virtual {v2}, Lcom/twitter/Extractor$Entity;->getEnd()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lcom/twitter/Extractor$Entity;->getStart()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 143
    :cond_0
    move-object v2, v0

    goto :goto_0

    .line 147
    .end local v0    # "cur":Lcom/twitter/Extractor$Entity;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/twitter/Extractor$Entity;>;"
    .end local v2    # "prev":Lcom/twitter/Extractor$Entity;
    :cond_1
    return-void
.end method


# virtual methods
.method public extractCashtags(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 419
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 427
    :cond_1
    return-object v1

    .line 422
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v1, "extracted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractCashtagsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/Extractor$Entity;

    .line 424
    .local v0, "entity":Lcom/twitter/Extractor$Entity;
    iget-object v3, v0, Lcom/twitter/Extractor$Entity;->value:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public extractCashtagsWithIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 438
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 456
    :cond_1
    :goto_0
    return-object v0

    .line 444
    :cond_2
    const/16 v2, 0x24

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 445
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 449
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v0, "extracted":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/Extractor$Entity;>;"
    sget-object v2, Lcom/twitter/Regex;->VALID_CASHTAG:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 452
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    new-instance v2, Lcom/twitter/Extractor$Entity;

    sget-object v3, Lcom/twitter/Extractor$Entity$Type;->CASHTAG:Lcom/twitter/Extractor$Entity$Type;

    const/4 v4, 0x3

    invoke-direct {v2, v1, v3, v4}, Lcom/twitter/Extractor$Entity;-><init>(Ljava/util/regex/Matcher;Lcom/twitter/Extractor$Entity$Type;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public extractEntitiesWithIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/Extractor$Entity;>;"
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractURLsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/twitter/Extractor;->extractHashtagsWithIndices(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractMentionsOrListsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractCashtagsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    invoke-direct {p0, v0}, Lcom/twitter/Extractor;->removeOverlappingEntities(Ljava/util/List;)V

    .line 162
    return-object v0
.end method

.method public extractHashtags(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 333
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 341
    :cond_1
    return-object v1

    .line 336
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v1, "extracted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractHashtagsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/Extractor$Entity;

    .line 338
    .local v0, "entity":Lcom/twitter/Extractor$Entity;
    iget-object v3, v0, Lcom/twitter/Extractor$Entity;->value:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public extractHashtagsWithIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/twitter/Extractor;->extractHashtagsWithIndices(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public extractMentionedScreennames(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 173
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 180
    :cond_1
    return-object v1

    .line 176
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, "extracted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractMentionedScreennamesWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/Extractor$Entity;

    .line 178
    .local v0, "entity":Lcom/twitter/Extractor$Entity;
    iget-object v3, v0, Lcom/twitter/Extractor$Entity;->value:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public extractMentionedScreennamesWithIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v1, "extracted":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/Extractor$Entity;>;"
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractMentionsOrListsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/Extractor$Entity;

    .line 192
    .local v0, "entity":Lcom/twitter/Extractor$Entity;
    iget-object v3, v0, Lcom/twitter/Extractor$Entity;->listSlug:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 193
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    .end local v0    # "entity":Lcom/twitter/Extractor$Entity;
    :cond_1
    return-object v1
.end method

.method public extractMentionsOrListsWithIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    .line 200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 201
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 234
    :cond_1
    :goto_0
    return-object v8

    .line 207
    :cond_2
    const/4 v9, 0x0

    .line 208
    .local v9, "found":Z
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    aget-char v7, v1, v0

    .line 209
    .local v7, "c":C
    const/16 v3, 0x40

    if-eq v7, v3, :cond_3

    const v3, 0xff20

    if-ne v7, v3, :cond_5

    .line 210
    :cond_3
    const/4 v9, 0x1

    .line 214
    .end local v7    # "c":C
    :cond_4
    if-nez v9, :cond_6

    .line 215
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    goto :goto_0

    .line 208
    .restart local v7    # "c":C
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    .end local v7    # "c":C
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v8, "extracted":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/Extractor$Entity;>;"
    sget-object v0, Lcom/twitter/Regex;->VALID_MENTION_OR_LIST:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 220
    .local v10, "matcher":Ljava/util/regex/Matcher;
    :cond_7
    :goto_2
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "after":Ljava/lang/String;
    sget-object v0, Lcom/twitter/Regex;->INVALID_MENTION_MATCH_END:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_7

    .line 223
    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 224
    new-instance v0, Lcom/twitter/Extractor$Entity;

    sget-object v1, Lcom/twitter/Extractor$Entity$Type;->MENTION:Lcom/twitter/Extractor$Entity$Type;

    invoke-direct {v0, v10, v1, v11}, Lcom/twitter/Extractor$Entity;-><init>(Ljava/util/regex/Matcher;Lcom/twitter/Extractor$Entity$Type;I)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 226
    :cond_8
    new-instance v0, Lcom/twitter/Extractor$Entity;

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 227
    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v2

    .line 228
    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/twitter/Extractor$Entity$Type;->MENTION:Lcom/twitter/Extractor$Entity$Type;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/Extractor$Entity;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/twitter/Extractor$Entity$Type;)V

    .line 226
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public extractReplyScreenname(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 245
    if-nez p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-object v2

    .line 249
    :cond_1
    sget-object v3, Lcom/twitter/Regex;->VALID_REPLY:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 250
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "after":Ljava/lang/String;
    sget-object v3, Lcom/twitter/Regex;->INVALID_MENTION_MATCH_END:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 255
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public extractURLs(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 270
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 277
    :cond_1
    return-object v1

    .line 273
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/twitter/Extractor;->extractURLsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/Extractor$Entity;

    .line 275
    .local v0, "entity":Lcom/twitter/Extractor$Entity;
    iget-object v3, v0, Lcom/twitter/Extractor$Entity;->value:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public extractURLsWithIndices(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/Extractor$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 287
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/twitter/Extractor;->extractURLWithoutProtocol:Z

    if-eqz v6, :cond_2

    const/16 v6, 0x2e

    .line 288
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    :goto_0
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 292
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 321
    :cond_1
    return-object v5

    .line 288
    :cond_2
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    goto :goto_0

    .line 295
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v5, "urls":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/Extractor$Entity;>;"
    sget-object v6, Lcom/twitter/Regex;->VALID_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 298
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :cond_4
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 299
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    .line 302
    iget-boolean v6, p0, Lcom/twitter/Extractor;->extractURLWithoutProtocol:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/twitter/Regex;->INVALID_URL_WITHOUT_PROTOCOL_MATCH_BEGIN:Ljava/util/regex/Pattern;

    const/4 v7, 0x2

    .line 304
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_4

    .line 308
    :cond_5
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    .line 310
    .local v2, "start":I
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    .line 311
    .local v0, "end":I
    sget-object v6, Lcom/twitter/Regex;->VALID_TCO_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 312
    .local v3, "tco_matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 314
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int v0, v2, v6

    .line 318
    :cond_6
    new-instance v6, Lcom/twitter/Extractor$Entity;

    sget-object v7, Lcom/twitter/Extractor$Entity$Type;->URL:Lcom/twitter/Extractor$Entity$Type;

    invoke-direct {v6, v2, v0, v4, v7}, Lcom/twitter/Extractor$Entity;-><init>(IILjava/lang/String;Lcom/twitter/Extractor$Entity$Type;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public isExtractURLWithoutProtocol()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/twitter/Extractor;->extractURLWithoutProtocol:Z

    return v0
.end method

.method public modifyIndicesFromUTF16ToToUnicode(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/Extractor$Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p2, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/Extractor$Entity;>;"
    new-instance v0, Lcom/twitter/Extractor$IndexConverter;

    invoke-direct {v0, p1}, Lcom/twitter/Extractor$IndexConverter;-><init>(Ljava/lang/String;)V

    .line 499
    .local v0, "convert":Lcom/twitter/Extractor$IndexConverter;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/Extractor$Entity;

    .line 500
    .local v1, "entity":Lcom/twitter/Extractor$Entity;
    iget v3, v1, Lcom/twitter/Extractor$Entity;->start:I

    invoke-virtual {v0, v3}, Lcom/twitter/Extractor$IndexConverter;->codeUnitsToCodePoints(I)I

    move-result v3

    iput v3, v1, Lcom/twitter/Extractor$Entity;->start:I

    .line 501
    iget v3, v1, Lcom/twitter/Extractor$Entity;->end:I

    invoke-virtual {v0, v3}, Lcom/twitter/Extractor$IndexConverter;->codeUnitsToCodePoints(I)I

    move-result v3

    iput v3, v1, Lcom/twitter/Extractor$Entity;->end:I

    goto :goto_0

    .line 503
    .end local v1    # "entity":Lcom/twitter/Extractor$Entity;
    :cond_0
    return-void
.end method

.method public modifyIndicesFromUnicodeToUTF16(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/Extractor$Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p2, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/Extractor$Entity;>;"
    new-instance v0, Lcom/twitter/Extractor$IndexConverter;

    invoke-direct {v0, p1}, Lcom/twitter/Extractor$IndexConverter;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, "convert":Lcom/twitter/Extractor$IndexConverter;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/Extractor$Entity;

    .line 481
    .local v1, "entity":Lcom/twitter/Extractor$Entity;
    iget v3, v1, Lcom/twitter/Extractor$Entity;->start:I

    invoke-virtual {v0, v3}, Lcom/twitter/Extractor$IndexConverter;->codePointsToCodeUnits(I)I

    move-result v3

    iput v3, v1, Lcom/twitter/Extractor$Entity;->start:I

    .line 482
    iget v3, v1, Lcom/twitter/Extractor$Entity;->end:I

    invoke-virtual {v0, v3}, Lcom/twitter/Extractor$IndexConverter;->codePointsToCodeUnits(I)I

    move-result v3

    iput v3, v1, Lcom/twitter/Extractor$Entity;->end:I

    goto :goto_0

    .line 484
    .end local v1    # "entity":Lcom/twitter/Extractor$Entity;
    :cond_0
    return-void
.end method

.method public setExtractURLWithoutProtocol(Z)V
    .locals 0
    .param p1, "extractURLWithoutProtocol"    # Z

    .prologue
    .line 460
    iput-boolean p1, p0, Lcom/twitter/Extractor;->extractURLWithoutProtocol:Z

    .line 461
    return-void
.end method
