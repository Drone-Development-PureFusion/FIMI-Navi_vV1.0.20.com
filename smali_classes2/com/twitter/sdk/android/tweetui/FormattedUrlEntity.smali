.class Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
.super Ljava/lang/Object;
.source "FormattedUrlEntity.java"


# instance fields
.field final displayUrl:Ljava/lang/String;

.field end:I

.field final expandedUrl:Ljava/lang/String;

.field start:I

.field final url:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "displayUrl"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "expandedUrl"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->start:I

    .line 34
    iput p2, p0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->end:I

    .line 35
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->displayUrl:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->url:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->expandedUrl:Ljava/lang/String;

    .line 38
    return-void
.end method

.method static createFormattedUrlEntity(Lcom/twitter/sdk/android/core/models/HashtagEntity;)Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    .locals 6
    .param p0, "hashtagEntity"    # Lcom/twitter/sdk/android/core/models/HashtagEntity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/HashtagEntity;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/TweetUtils;->getHashtagPermalink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "url":Ljava/lang/String;
    new-instance v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/HashtagEntity;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/HashtagEntity;->getEnd()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/twitter/sdk/android/core/models/HashtagEntity;->text:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static createFormattedUrlEntity(Lcom/twitter/sdk/android/core/models/MentionEntity;)Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    .locals 6
    .param p0, "mentionEntity"    # Lcom/twitter/sdk/android/core/models/MentionEntity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/MentionEntity;->screenName:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/TweetUtils;->getProfilePermalink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "url":Ljava/lang/String;
    new-instance v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/MentionEntity;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/MentionEntity;->getEnd()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/twitter/sdk/android/core/models/MentionEntity;->screenName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static createFormattedUrlEntity(Lcom/twitter/sdk/android/core/models/SymbolEntity;)Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    .locals 6
    .param p0, "symbolEntity"    # Lcom/twitter/sdk/android/core/models/SymbolEntity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/SymbolEntity;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/TweetUtils;->getSymbolPermalink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "url":Ljava/lang/String;
    new-instance v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/SymbolEntity;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/SymbolEntity;->getEnd()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/twitter/sdk/android/core/models/SymbolEntity;->text:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static createFormattedUrlEntity(Lcom/twitter/sdk/android/core/models/UrlEntity;)Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;
    .locals 6
    .param p0, "entity"    # Lcom/twitter/sdk/android/core/models/UrlEntity;

    .prologue
    .line 41
    new-instance v0, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/UrlEntity;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/UrlEntity;->getEnd()I

    move-result v2

    iget-object v3, p0, Lcom/twitter/sdk/android/core/models/UrlEntity;->displayUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/sdk/android/core/models/UrlEntity;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/sdk/android/core/models/UrlEntity;->expandedUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
