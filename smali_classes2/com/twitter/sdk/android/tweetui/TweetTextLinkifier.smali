.class final Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;
.super Ljava/lang/Object;
.source "TweetTextLinkifier.java"


# static fields
.field static final QUOTED_STATUS_URL:Ljava/util/regex/Pattern;

.field static final VINE_URL:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "^https?://twitter\\.com(/#!)?/\\w+/status/\\d+$"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->QUOTED_STATUS_URL:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "^https?://vine\\.co(/#!)?/v/\\w+$"

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->VINE_URL:Ljava/util/regex/Pattern;

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addUrlEntities(Landroid/text/SpannableStringBuilder;Ljava/util/List;Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;Lcom/twitter/sdk/android/tweetui/LinkClickListener;II)V
    .locals 11
    .param p0, "spannable"    # Landroid/text/SpannableStringBuilder;
    .param p2, "strippedEntity"    # Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    .param p3, "linkListener"    # Lcom/twitter/sdk/android/tweetui/LinkClickListener;
    .param p4, "linkColor"    # I
    .param p5, "linkHighlightColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            "Lcom/twitter/sdk/android/tweetui/LinkClickListener;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    return-void

    .line 150
    :cond_1
    const/4 v8, 0x0

    .line 154
    .local v8, "offset":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    .line 155
    .local v5, "url":Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    iget v1, v5, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    sub-int v9, v1, v8

    .line 156
    .local v9, "start":I
    iget v1, v5, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->end:I

    sub-int v6, v1, v8

    .line 157
    .local v6, "end":I
    if-ltz v9, :cond_2

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-gt v6, v1, :cond_2

    .line 161
    if-eqz p2, :cond_3

    iget v1, p2, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    iget v2, v5, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    if-ne v1, v2, :cond_3

    .line 162
    const-string v1, ""

    invoke-virtual {p0, v9, v6, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 163
    sub-int v7, v6, v9

    .line 164
    .local v7, "len":I
    add-int/2addr v8, v7

    goto :goto_0

    .line 165
    .end local v7    # "len":I
    :cond_3
    iget-object v1, v5, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->displayUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    iget-object v1, v5, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->displayUrl:Ljava/lang/String;

    invoke-virtual {p0, v9, v6, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 167
    iget-object v1, v5, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->displayUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v9

    sub-int v7, v6, v1

    .line 168
    .restart local v7    # "len":I
    sub-int/2addr v6, v7

    .line 169
    add-int/2addr v8, v7

    .line 171
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$2;

    const/4 v3, 0x0

    move/from16 v1, p5

    move v2, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$2;-><init>(IIZLcom/twitter/sdk/android/tweetui/LinkClickListener;Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)V

    .line 179
    .local v0, "span":Landroid/text/style/CharacterStyle;
    const/16 v1, 0x21

    invoke-virtual {p0, v0, v9, v6, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method static getEntityToStrip(Ljava/lang/String;Ljava/util/List;ZZ)Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    .locals 4
    .param p0, "tweetText"    # Ljava/lang/String;
    .param p2, "stripQuoteTweet"    # Z
    .param p3, "stripVineCard"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;ZZ)",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;"
        }
    .end annotation

    .prologue
    .local p1, "combined":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;>;"
    const/4 v1, 0x0

    .line 187
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 196
    :cond_0
    :goto_0
    return-object v0

    .line 189
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    .line 190
    .local v0, "urlEntity":Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    invoke-static {p0}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->stripLtrMarker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->isPhotoEntity(Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_2

    .line 191
    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->isQuotedStatus(Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    if-eqz p3, :cond_3

    .line 192
    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->isVineCard(Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move-object v0, v1

    .line 196
    goto :goto_0
.end method

.method static isPhotoEntity(Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)Z
    .locals 2
    .param p0, "urlEntity"    # Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    .prologue
    .line 208
    instance-of v0, p0, Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;

    if-eqz v0, :cond_0

    const-string v0, "photo"

    check-cast p0, Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;

    .end local p0    # "urlEntity":Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;->type:Ljava/lang/String;

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isQuotedStatus(Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)Z
    .locals 2
    .param p0, "urlEntity"    # Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    .prologue
    .line 213
    sget-object v0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->QUOTED_STATUS_URL:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->expandedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method static isVineCard(Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)Z
    .locals 2
    .param p0, "urlEntity"    # Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    .prologue
    .line 217
    sget-object v0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->VINE_URL:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->expandedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method static linkifyUrls(Lcom/twitter/sdk/android/tweetui/FormattedTweetText;Lcom/twitter/sdk/android/tweetui/LinkClickListener;IIZZ)Ljava/lang/CharSequence;
    .locals 13
    .param p0, "tweetText"    # Lcom/twitter/sdk/android/tweetui/FormattedTweetText;
    .param p1, "linkListener"    # Lcom/twitter/sdk/android/tweetui/LinkClickListener;
    .param p2, "linkColor"    # I
    .param p3, "linkHighlightColor"    # I
    .param p4, "stripQuoteTweet"    # Z
    .param p5, "stripVineCard"    # Z

    .prologue
    .line 61
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 85
    :goto_0
    return-object v5

    .line 63
    :cond_0
    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->text:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->text:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->text:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    .local v2, "spannable":Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->urlEntities:Ljava/util/List;

    invoke-static {v5}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 69
    .local v12, "urls":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;>;"
    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->mediaEntities:Ljava/util/List;

    invoke-static {v5}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 70
    .local v9, "media":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;>;"
    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->hashtagEntities:Ljava/util/List;

    invoke-static {v5}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 71
    .local v8, "hashtags":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;>;"
    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->mentionEntities:Ljava/util/List;

    invoke-static {v5}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 72
    .local v10, "mentions":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;>;"
    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->symbolEntities:Ljava/util/List;

    invoke-static {v5}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 77
    .local v11, "symbols":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;>;"
    invoke-static {v12, v9, v8, v10, v11}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->mergeAndSortEntities(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 79
    .local v3, "combined":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;>;"
    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/FormattedTweetText;->text:Ljava/lang/String;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v5, v3, v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->getEntityToStrip(Ljava/lang/String;Ljava/util/List;ZZ)Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    move-result-object v4

    .local v4, "strippedEntity":Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    move-object v5, p1

    move v6, p2

    move/from16 v7, p3

    .line 82
    invoke-static/range {v2 .. v7}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->addUrlEntities(Landroid/text/SpannableStringBuilder;Ljava/util/List;Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;Lcom/twitter/sdk/android/tweetui/LinkClickListener;II)V

    .line 85
    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0
.end method

.method static mergeAndSortEntities(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "urls":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;>;"
    .local p1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/tweetui/FormattedMediaEntity;>;"
    .local p2, "hashtags":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;>;"
    .local p3, "mentions":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;>;"
    .local p4, "symbols":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .local v0, "combined":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 116
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 118
    new-instance v1, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$1;

    invoke-direct {v1}, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 130
    return-object v0
.end method

.method static stripLtrMarker(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tweetText"    # Ljava/lang/String;

    .prologue
    .line 200
    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 204
    .end local p0    # "tweetText":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method static trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 92
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 94
    .local v0, "length":I
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    .line 95
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0    # "charSequence":Ljava/lang/CharSequence;
    :cond_1
    return-object p0
.end method
