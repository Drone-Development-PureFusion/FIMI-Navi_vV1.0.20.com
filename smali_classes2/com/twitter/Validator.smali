.class public Lcom/twitter/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# static fields
.field public static final MAX_TWEET_LENGTH:I = 0x8c


# instance fields
.field private extractor:Lcom/twitter/Extractor;

.field protected shortUrlLength:I

.field protected shortUrlLengthHttps:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x17

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/twitter/Validator;->shortUrlLength:I

    .line 12
    iput v0, p0, Lcom/twitter/Validator;->shortUrlLengthHttps:I

    .line 14
    new-instance v0, Lcom/twitter/Extractor;

    invoke-direct {v0}, Lcom/twitter/Extractor;-><init>()V

    iput-object v0, p0, Lcom/twitter/Validator;->extractor:Lcom/twitter/Extractor;

    return-void
.end method


# virtual methods
.method public getShortUrlLength()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/twitter/Validator;->shortUrlLength:I

    return v0
.end method

.method public getShortUrlLengthHttps()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/twitter/Validator;->shortUrlLengthHttps:I

    return v0
.end method

.method public getTweetLength(Ljava/lang/String;)I
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-object v2, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p1, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    .line 18
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    .line 20
    .local v0, "length":I
    iget-object v2, p0, Lcom/twitter/Validator;->extractor:Lcom/twitter/Extractor;

    invoke-virtual {v2, p1}, Lcom/twitter/Extractor;->extractURLsWithIndices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/Extractor$Entity;

    .line 21
    .local v1, "urlEntity":Lcom/twitter/Extractor$Entity;
    iget v2, v1, Lcom/twitter/Extractor$Entity;->start:I

    iget v4, v1, Lcom/twitter/Extractor$Entity;->end:I

    sub-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 22
    iget-object v2, v1, Lcom/twitter/Extractor$Entity;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "https://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/twitter/Validator;->shortUrlLengthHttps:I

    :goto_1
    add-int/2addr v0, v2

    .line 23
    goto :goto_0

    .line 22
    :cond_0
    iget v2, p0, Lcom/twitter/Validator;->shortUrlLength:I

    goto :goto_1

    .line 25
    .end local v1    # "urlEntity":Lcom/twitter/Extractor$Entity;
    :cond_1
    return v0
.end method

.method public isValidTweet(Ljava/lang/String;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v1

    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-char v0, v3, v2

    .line 34
    .local v0, "c":C
    const v5, 0xfffe

    if-eq v0, v5, :cond_0

    const v5, 0xfeff

    if-eq v0, v5, :cond_0

    const v5, 0xffff

    if-eq v0, v5, :cond_0

    const/16 v5, 0x202a

    if-lt v0, v5, :cond_2

    const/16 v5, 0x202e

    if-le v0, v5, :cond_0

    .line 33
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 41
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {p0, p1}, Lcom/twitter/Validator;->getTweetLength(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8c

    if-gt v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setShortUrlLength(I)V
    .locals 0
    .param p1, "shortUrlLength"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/twitter/Validator;->shortUrlLength:I

    .line 50
    return-void
.end method

.method public setShortUrlLengthHttps(I)V
    .locals 0
    .param p1, "shortUrlLengthHttps"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/twitter/Validator;->shortUrlLengthHttps:I

    .line 58
    return-void
.end method
