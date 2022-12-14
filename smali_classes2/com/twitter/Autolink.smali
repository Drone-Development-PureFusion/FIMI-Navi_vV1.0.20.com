.class public Lcom/twitter/Autolink;
.super Ljava/lang/Object;
.source "Autolink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/Autolink$LinkTextModifier;,
        Lcom/twitter/Autolink$LinkAttributeModifier;
    }
.end annotation


# static fields
.field public static final DEFAULT_CASHTAG_CLASS:Ljava/lang/String; = "tweet-url cashtag"

.field public static final DEFAULT_CASHTAG_URL_BASE:Ljava/lang/String; = "https://twitter.com/#!/search?q=%24"

.field public static final DEFAULT_HASHTAG_CLASS:Ljava/lang/String; = "tweet-url hashtag"

.field public static final DEFAULT_HASHTAG_URL_BASE:Ljava/lang/String; = "https://twitter.com/#!/search?q=%23"

.field public static final DEFAULT_INVISIBLE_TAG_ATTRS:Ljava/lang/String; = "style=\'position:absolute;left:-9999px;\'"

.field public static final DEFAULT_LIST_CLASS:Ljava/lang/String; = "tweet-url list-slug"

.field public static final DEFAULT_LIST_URL_BASE:Ljava/lang/String; = "https://twitter.com/"

.field public static final DEFAULT_USERNAME_CLASS:Ljava/lang/String; = "tweet-url username"

.field public static final DEFAULT_USERNAME_URL_BASE:Ljava/lang/String; = "https://twitter.com/"


# instance fields
.field protected cashtagClass:Ljava/lang/String;

.field protected cashtagUrlBase:Ljava/lang/String;

.field private extractor:Lcom/twitter/Extractor;

.field protected hashtagClass:Ljava/lang/String;

.field protected hashtagUrlBase:Ljava/lang/String;

.field protected invisibleTagAttrs:Ljava/lang/String;

.field protected linkAttributeModifier:Lcom/twitter/Autolink$LinkAttributeModifier;

.field protected linkTextModifier:Lcom/twitter/Autolink$LinkTextModifier;

.field protected listClass:Ljava/lang/String;

.field protected listUrlBase:Ljava/lang/String;

.field protected noFollow:Z

.field protected symbolTag:Ljava/lang/String;

.field protected textWithSymbolTag:Ljava/lang/String;

.field protected urlClass:Ljava/lang/String;

.field protected urlTarget:Ljava/lang/String;

.field protected usernameClass:Ljava/lang/String;

.field protected usernameIncludeSymbol:Z

.field protected usernameUrlBase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/twitter/Autolink;->urlClass:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/Autolink;->noFollow:Z

    .line 51
    iput-boolean v2, p0, Lcom/twitter/Autolink;->usernameIncludeSymbol:Z

    .line 52
    iput-object v1, p0, Lcom/twitter/Autolink;->symbolTag:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/twitter/Autolink;->textWithSymbolTag:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/twitter/Autolink;->urlTarget:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/twitter/Autolink;->linkAttributeModifier:Lcom/twitter/Autolink$LinkAttributeModifier;

    .line 56
    iput-object v1, p0, Lcom/twitter/Autolink;->linkTextModifier:Lcom/twitter/Autolink$LinkTextModifier;

    .line 58
    new-instance v0, Lcom/twitter/Extractor;

    invoke-direct {v0}, Lcom/twitter/Extractor;-><init>()V

    iput-object v0, p0, Lcom/twitter/Autolink;->extractor:Lcom/twitter/Extractor;

    .line 77
    iput-object v1, p0, Lcom/twitter/Autolink;->urlClass:Ljava/lang/String;

    .line 78
    const-string v0, "tweet-url list-slug"

    iput-object v0, p0, Lcom/twitter/Autolink;->listClass:Ljava/lang/String;

    .line 79
    const-string v0, "tweet-url username"

    iput-object v0, p0, Lcom/twitter/Autolink;->usernameClass:Ljava/lang/String;

    .line 80
    const-string v0, "tweet-url hashtag"

    iput-object v0, p0, Lcom/twitter/Autolink;->hashtagClass:Ljava/lang/String;

    .line 81
    const-string v0, "tweet-url cashtag"

    iput-object v0, p0, Lcom/twitter/Autolink;->cashtagClass:Ljava/lang/String;

    .line 82
    const-string v0, "https://twitter.com/"

    iput-object v0, p0, Lcom/twitter/Autolink;->usernameUrlBase:Ljava/lang/String;

    .line 83
    const-string v0, "https://twitter.com/"

    iput-object v0, p0, Lcom/twitter/Autolink;->listUrlBase:Ljava/lang/String;

    .line 84
    const-string v0, "https://twitter.com/#!/search?q=%23"

    iput-object v0, p0, Lcom/twitter/Autolink;->hashtagUrlBase:Ljava/lang/String;

    .line 85
    const-string v0, "https://twitter.com/#!/search?q=%24"

    iput-object v0, p0, Lcom/twitter/Autolink;->cashtagUrlBase:Ljava/lang/String;

    .line 86
    const-string v0, "style=\'position:absolute;left:-9999px;\'"

    iput-object v0, p0, Lcom/twitter/Autolink;->invisibleTagAttrs:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/twitter/Autolink;->extractor:Lcom/twitter/Extractor;

    invoke-virtual {v0, v2}, Lcom/twitter/Extractor;->setExtractURLWithoutProtocol(Z)V

    .line 89
    return-void
.end method

.method private static escapeHTML(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 63
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 64
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :sswitch_0
    const-string v3, "&amp;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 66
    :sswitch_1
    const-string v3, "&gt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 67
    :sswitch_2
    const-string v3, "&lt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 68
    :sswitch_3
    const-string v3, "&quot;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 69
    :sswitch_4
    const-string v3, "&#39;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 73
    .end local v1    # "c":C
    :cond_0
    return-object v0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x27 -> :sswitch_4
        0x3c -> :sswitch_2
        0x3e -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public autoLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/twitter/Autolink;->escapeBrackets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 307
    iget-object v1, p0, Lcom/twitter/Autolink;->extractor:Lcom/twitter/Extractor;

    invoke-virtual {v1, p1}, Lcom/twitter/Extractor;->extractEntitiesWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 308
    .local v0, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/Extractor$Entity;>;"
    invoke-virtual {p0, p1, v0}, Lcom/twitter/Autolink;->autoLinkEntities(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public autoLinkCashtags(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/twitter/Autolink;->extractor:Lcom/twitter/Extractor;

    invoke-virtual {v0, p1}, Lcom/twitter/Extractor;->extractCashtagsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/Autolink;->autoLinkEntities(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public autoLinkEntities(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/Extractor$Entity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 270
    .local p2, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/Extractor$Entity;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 271
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 273
    .local v0, "beginIndex":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/Extractor$Entity;

    .line 274
    .local v2, "entity":Lcom/twitter/Extractor$Entity;
    iget v4, v2, Lcom/twitter/Extractor$Entity;->start:I

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 276
    sget-object v4, Lcom/twitter/Autolink$1;->$SwitchMap$com$twitter$Extractor$Entity$Type:[I

    iget-object v5, v2, Lcom/twitter/Extractor$Entity;->type:Lcom/twitter/Extractor$Entity$Type;

    invoke-virtual {v5}, Lcom/twitter/Extractor$Entity$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 290
    :goto_1
    iget v0, v2, Lcom/twitter/Extractor$Entity;->end:I

    .line 291
    goto :goto_0

    .line 278
    :pswitch_0
    invoke-virtual {p0, v2, p1, v1}, Lcom/twitter/Autolink;->linkToURL(Lcom/twitter/Extractor$Entity;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 281
    :pswitch_1
    invoke-virtual {p0, v2, p1, v1}, Lcom/twitter/Autolink;->linkToHashtag(Lcom/twitter/Extractor$Entity;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 284
    :pswitch_2
    invoke-virtual {p0, v2, p1, v1}, Lcom/twitter/Autolink;->linkToMentionAndList(Lcom/twitter/Extractor$Entity;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 287
    :pswitch_3
    invoke-virtual {p0, v2, p1, v1}, Lcom/twitter/Autolink;->linkToCashtag(Lcom/twitter/Extractor$Entity;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 292
    .end local v2    # "entity":Lcom/twitter/Extractor$Entity;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public autoLinkHashtags(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/twitter/Autolink;->extractor:Lcom/twitter/Extractor;

    invoke-virtual {v0, p1}, Lcom/twitter/Extractor;->extractHashtagsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/Autolink;->autoLinkEntities(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public autoLinkURLs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/twitter/Autolink;->extractor:Lcom/twitter/Extractor;

    invoke-virtual {v0, p1}, Lcom/twitter/Extractor;->extractURLsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/Autolink;->autoLinkEntities(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public autoLinkUsernamesAndLists(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/twitter/Autolink;->extractor:Lcom/twitter/Extractor;

    invoke-virtual {v0, p1}, Lcom/twitter/Extractor;->extractMentionsOrListsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/Autolink;->autoLinkEntities(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public escapeBrackets(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 93
    .local v2, "len":I
    if-nez v2, :cond_0

    .line 106
    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 96
    .restart local p1    # "text":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x10

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 99
    .local v0, "c":C
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_1

    .line 100
    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    :cond_1
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_2

    .line 102
    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 106
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getCashtagClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/twitter/Autolink;->cashtagClass:Ljava/lang/String;

    return-object v0
.end method

.method public getCashtagUrlBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/twitter/Autolink;->cashtagUrlBase:Ljava/lang/String;

    return-object v0
.end method

.method public getHashtagClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/twitter/Autolink;->hashtagClass:Ljava/lang/String;

    return-object v0
.end method

.method public getHashtagUrlBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/twitter/Autolink;->hashtagUrlBase:Ljava/lang/String;

    return-object v0
.end method

.method public getListClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/twitter/Autolink;->listClass:Ljava/lang/String;

    return-object v0
.end method

.method public getListUrlBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/twitter/Autolink;->listUrlBase:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/twitter/Autolink;->urlClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUsernameClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/twitter/Autolink;->usernameClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUsernameUrlBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/twitter/Autolink;->usernameUrlBase:Ljava/lang/String;

    return-object v0
.end method

.method public isNoFollow()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/twitter/Autolink;->noFollow:Z

    return v0
.end method

.method public linkToCashtag(Lcom/twitter/Extractor$Entity;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "entity"    # Lcom/twitter/Extractor$Entity;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/twitter/Extractor$Entity;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "cashtag":Ljava/lang/CharSequence;
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 164
    .local v4, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "href"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twitter/Autolink;->cashtagUrlBase:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "title"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "class"

    iget-object v1, p0, Lcom/twitter/Autolink;->cashtagClass:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v2, "$"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/Autolink;->linkToTextWithSymbol(Lcom/twitter/Extractor$Entity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 169
    return-void
.end method

.method public linkToHashtag(Lcom/twitter/Extractor$Entity;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "entity"    # Lcom/twitter/Extractor$Entity;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/twitter/Extractor$Entity;->getStart()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/twitter/Extractor$Entity;->getStart()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 145
    .local v2, "hashChar":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/twitter/Extractor$Entity;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "hashtag":Ljava/lang/CharSequence;
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 148
    .local v4, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "href"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/twitter/Autolink;->hashtagUrlBase:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "title"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/twitter/Regex;->RTL_CHARACTERS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "class"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/twitter/Autolink;->hashtagClass:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " rtl"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 157
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/Autolink;->linkToTextWithSymbol(Lcom/twitter/Extractor$Entity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 158
    return-void

    .line 154
    :cond_0
    const-string v0, "class"

    iget-object v1, p0, Lcom/twitter/Autolink;->hashtagClass:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public linkToMentionAndList(Lcom/twitter/Extractor$Entity;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "entity"    # Lcom/twitter/Extractor$Entity;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/twitter/Extractor$Entity;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "mention":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/twitter/Extractor$Entity;->getStart()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/twitter/Extractor$Entity;->getStart()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 176
    .local v2, "atChar":Ljava/lang/CharSequence;
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 177
    .local v4, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/twitter/Extractor$Entity;->listSlug:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/Extractor$Entity;->listSlug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    const-string v0, "class"

    iget-object v1, p0, Lcom/twitter/Autolink;->listClass:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "href"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/twitter/Autolink;->listUrlBase:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 186
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/Autolink;->linkToTextWithSymbol(Lcom/twitter/Extractor$Entity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 187
    return-void

    .line 182
    :cond_0
    const-string v0, "class"

    iget-object v1, p0, Lcom/twitter/Autolink;->usernameClass:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "href"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/twitter/Autolink;->usernameUrlBase:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public linkToText(Lcom/twitter/Extractor$Entity;Ljava/lang/CharSequence;Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "entity"    # Lcom/twitter/Extractor$Entity;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p4, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/Extractor$Entity;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/twitter/Autolink;->noFollow:Z

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "rel"

    const-string v2, "nofollow"

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/twitter/Autolink;->linkAttributeModifier:Lcom/twitter/Autolink$LinkAttributeModifier;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/twitter/Autolink;->linkAttributeModifier:Lcom/twitter/Autolink$LinkAttributeModifier;

    invoke-interface {v1, p1, p3}, Lcom/twitter/Autolink$LinkAttributeModifier;->modify(Lcom/twitter/Extractor$Entity;Ljava/util/Map;)V

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/twitter/Autolink;->linkTextModifier:Lcom/twitter/Autolink$LinkTextModifier;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/twitter/Autolink;->linkTextModifier:Lcom/twitter/Autolink$LinkTextModifier;

    invoke-interface {v1, p1, p2}, Lcom/twitter/Autolink$LinkTextModifier;->modify(Lcom/twitter/Extractor$Entity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 120
    :cond_2
    const-string v1, "<a"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, " "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/twitter/Autolink;->escapeHTML(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/twitter/Autolink;->escapeHTML(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 124
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v1, ">"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    return-void
.end method

.method public linkToTextWithSymbol(Lcom/twitter/Extractor$Entity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "entity"    # Lcom/twitter/Extractor$Entity;
    .param p2, "symbol"    # Ljava/lang/CharSequence;
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p5, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/Extractor$Entity;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 128
    iget-object v4, p0, Lcom/twitter/Autolink;->symbolTag:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/twitter/Autolink;->symbolTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    :cond_0
    move-object v1, p2

    .line 129
    .local v1, "taggedSymbol":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {p3}, Lcom/twitter/Autolink;->escapeHTML(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 130
    iget-object v4, p0, Lcom/twitter/Autolink;->textWithSymbolTag:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/twitter/Autolink;->textWithSymbolTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    :cond_1
    move-object v2, p3

    .line 132
    .local v2, "taggedText":Ljava/lang/CharSequence;
    :goto_1
    iget-boolean v4, p0, Lcom/twitter/Autolink;->usernameIncludeSymbol:Z

    if-nez v4, :cond_2

    sget-object v4, Lcom/twitter/Regex;->AT_SIGNS:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v0, v3

    .line 134
    .local v0, "includeSymbol":Z
    :cond_3
    if-eqz v0, :cond_6

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3, p4, p5}, Lcom/twitter/Autolink;->linkToText(Lcom/twitter/Extractor$Entity;Ljava/lang/CharSequence;Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 140
    :goto_2
    return-void

    .line 128
    .end local v0    # "includeSymbol":Z
    .end local v1    # "taggedSymbol":Ljava/lang/CharSequence;
    .end local v2    # "taggedText":Ljava/lang/CharSequence;
    :cond_4
    const-string v4, "<%s>%s</%s>"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/twitter/Autolink;->symbolTag:Ljava/lang/String;

    aput-object v6, v5, v0

    aput-object p2, v5, v3

    iget-object v6, p0, Lcom/twitter/Autolink;->symbolTag:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 130
    .restart local v1    # "taggedSymbol":Ljava/lang/CharSequence;
    :cond_5
    const-string v4, "<%s>%s</%s>"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/twitter/Autolink;->textWithSymbolTag:Ljava/lang/String;

    aput-object v6, v5, v0

    aput-object p3, v5, v3

    iget-object v6, p0, Lcom/twitter/Autolink;->textWithSymbolTag:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 137
    .restart local v0    # "includeSymbol":Z
    .restart local v2    # "taggedText":Ljava/lang/CharSequence;
    :cond_6
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0, p1, v2, p4, p5}, Lcom/twitter/Autolink;->linkToText(Lcom/twitter/Extractor$Entity;Ljava/lang/CharSequence;Ljava/util/Map;Ljava/lang/StringBuilder;)V

    goto :goto_2
.end method

.method public linkToURL(Lcom/twitter/Extractor$Entity;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 17
    .param p1, "entity"    # Lcom/twitter/Extractor$Entity;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/Extractor$Entity;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 191
    .local v13, "url":Ljava/lang/CharSequence;
    invoke-static {v13}, Lcom/twitter/Autolink;->escapeHTML(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 193
    .local v10, "linkText":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/twitter/Extractor$Entity;->displayURL:Ljava/lang/String;

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/twitter/Extractor$Entity;->expandedURL:Ljava/lang/String;

    if-eqz v14, :cond_0

    .line 232
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/twitter/Extractor$Entity;->displayURL:Ljava/lang/String;

    const-string v15, "\u2026"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 233
    .local v7, "displayURLSansEllipses":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/twitter/Extractor$Entity;->expandedURL:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 234
    .local v6, "diplayURLIndexInExpandedURL":I
    const/4 v14, -0x1

    if-eq v6, v14, :cond_6

    .line 235
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/twitter/Extractor$Entity;->expandedURL:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "beforeDisplayURL":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/twitter/Extractor$Entity;->expandedURL:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "afterDisplayURL":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/twitter/Extractor$Entity;->displayURL:Ljava/lang/String;

    const-string v15, "\u2026"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v11, "\u2026"

    .line 238
    .local v11, "precedingEllipsis":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/twitter/Extractor$Entity;->displayURL:Ljava/lang/String;

    const-string v15, "\u2026"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v8, "\u2026"

    .line 239
    .local v8, "followingEllipsis":Ljava/lang/String;
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<span "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/twitter/Autolink;->invisibleTagAttrs:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 241
    .local v9, "invisibleSpan":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "<span class=\'tco-ellipsis\'>"

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .local v12, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&nbsp;</span></span>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v5}, Lcom/twitter/Autolink;->escapeHTML(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</span>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v14, "<span class=\'js-display-url\'>"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Lcom/twitter/Autolink;->escapeHTML(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</span>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Lcom/twitter/Autolink;->escapeHTML(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</span>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v14, "<span class=\'tco-ellipsis\'>"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&nbsp;</span>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</span>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    move-object v10, v12

    .line 255
    .end local v3    # "afterDisplayURL":Ljava/lang/String;
    .end local v5    # "beforeDisplayURL":Ljava/lang/String;
    .end local v6    # "diplayURLIndexInExpandedURL":I
    .end local v7    # "displayURLSansEllipses":Ljava/lang/String;
    .end local v8    # "followingEllipsis":Ljava/lang/String;
    .end local v9    # "invisibleSpan":Ljava/lang/String;
    .end local v11    # "precedingEllipsis":Ljava/lang/String;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_2
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 256
    .local v4, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "href"

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/Autolink;->urlClass:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 258
    const-string v14, "class"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/twitter/Autolink;->urlClass:Ljava/lang/String;

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/Autolink;->urlClass:Ljava/lang/String;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/Autolink;->urlClass:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_2

    .line 261
    const-string v14, "class"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/twitter/Autolink;->urlClass:Ljava/lang/String;

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/Autolink;->urlTarget:Ljava/lang/String;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/Autolink;->urlTarget:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_3

    .line 264
    const-string v14, "target"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/twitter/Autolink;->urlTarget:Ljava/lang/String;

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v10, v4, v2}, Lcom/twitter/Autolink;->linkToText(Lcom/twitter/Extractor$Entity;Ljava/lang/CharSequence;Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 267
    return-void

    .line 237
    .end local v4    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "afterDisplayURL":Ljava/lang/String;
    .restart local v5    # "beforeDisplayURL":Ljava/lang/String;
    .restart local v6    # "diplayURLIndexInExpandedURL":I
    .restart local v7    # "displayURLSansEllipses":Ljava/lang/String;
    :cond_4
    const-string v11, ""

    goto/16 :goto_0

    .line 238
    .restart local v11    # "precedingEllipsis":Ljava/lang/String;
    :cond_5
    const-string v8, ""

    goto/16 :goto_1

    .line 251
    .end local v3    # "afterDisplayURL":Ljava/lang/String;
    .end local v5    # "beforeDisplayURL":Ljava/lang/String;
    .end local v11    # "precedingEllipsis":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/twitter/Extractor$Entity;->displayURL:Ljava/lang/String;

    goto :goto_2
.end method

.method public setCashtagClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "cashtagClass"    # Ljava/lang/String;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/twitter/Autolink;->cashtagClass:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setCashtagUrlBase(Ljava/lang/String;)V
    .locals 0
    .param p1, "cashtagUrlBase"    # Ljava/lang/String;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/twitter/Autolink;->cashtagUrlBase:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setHashtagClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "hashtagClass"    # Ljava/lang/String;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/twitter/Autolink;->hashtagClass:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setHashtagUrlBase(Ljava/lang/String;)V
    .locals 0
    .param p1, "hashtagUrlBase"    # Ljava/lang/String;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/twitter/Autolink;->hashtagUrlBase:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public setLinkAttributeModifier(Lcom/twitter/Autolink$LinkAttributeModifier;)V
    .locals 0
    .param p1, "modifier"    # Lcom/twitter/Autolink$LinkAttributeModifier;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/twitter/Autolink;->linkAttributeModifier:Lcom/twitter/Autolink$LinkAttributeModifier;

    .line 559
    return-void
.end method

.method public setLinkTextModifier(Lcom/twitter/Autolink$LinkTextModifier;)V
    .locals 0
    .param p1, "modifier"    # Lcom/twitter/Autolink$LinkTextModifier;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/twitter/Autolink;->linkTextModifier:Lcom/twitter/Autolink$LinkTextModifier;

    .line 568
    return-void
.end method

.method public setListClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "listClass"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/twitter/Autolink;->listClass:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setListUrlBase(Ljava/lang/String;)V
    .locals 0
    .param p1, "listUrlBase"    # Ljava/lang/String;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/twitter/Autolink;->listUrlBase:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public setNoFollow(Z)V
    .locals 0
    .param p1, "noFollow"    # Z

    .prologue
    .line 513
    iput-boolean p1, p0, Lcom/twitter/Autolink;->noFollow:Z

    .line 514
    return-void
.end method

.method public setSymbolTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/twitter/Autolink;->symbolTag:Ljava/lang/String;

    .line 532
    return-void
.end method

.method public setTextWithSymbolTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/twitter/Autolink;->textWithSymbolTag:Ljava/lang/String;

    .line 541
    return-void
.end method

.method public setUrlClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "urlClass"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/twitter/Autolink;->urlClass:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setUrlTarget(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/twitter/Autolink;->urlTarget:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public setUsernameClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "usernameClass"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/twitter/Autolink;->usernameClass:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setUsernameIncludeSymbol(Z)V
    .locals 0
    .param p1, "usernameIncludeSymbol"    # Z

    .prologue
    .line 522
    iput-boolean p1, p0, Lcom/twitter/Autolink;->usernameIncludeSymbol:Z

    .line 523
    return-void
.end method

.method public setUsernameUrlBase(Ljava/lang/String;)V
    .locals 0
    .param p1, "usernameUrlBase"    # Ljava/lang/String;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/twitter/Autolink;->usernameUrlBase:Ljava/lang/String;

    .line 450
    return-void
.end method
