.class public Lcom/twitter/sdk/android/tweetui/QuoteTweetView;
.super Lcom/twitter/sdk/android/tweetui/AbstractTweetView;
.source "QuoteTweetView.java"


# static fields
.field private static final DEFAULT_ASPECT_RATIO_MEDIA_CONTAINER:D = 1.6

.field private static final MAX_LANDSCAPE_ASPECT_RATIO:D = 3.0

.field private static final MIN_LANDSCAPE_ASPECT_RATIO:D = 1.3333333333333333

.field private static final SQUARE_ASPECT_RATIO:D = 1.0

.field private static final VIEW_TYPE_NAME:Ljava/lang/String; = "quote"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v0, Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;)V

    .line 33
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dependencyProvider"    # Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;

    .prologue
    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected applyStyles()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/twitter/sdk/android/tweetui/R$dimen;->tw__media_view_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 66
    .local v0, "mediaViewRadius":I
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->tweetMediaView:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    invoke-virtual {v1, v3, v3, v0, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setRoundedCornersRadii(IIII)V

    .line 68
    sget v1, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__quote_tweet_border:I

    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->setBackgroundResource(I)V

    .line 69
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->fullNameView:Landroid/widget/TextView;

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->primaryTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->screenNameView:Landroid/widget/TextView;

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->secondaryTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->contentView:Landroid/widget/TextView;

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->primaryTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->tweetMediaView:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->mediaBgColor:I

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setMediaBgColor(I)V

    .line 73
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->tweetMediaView:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->photoErrorResId:I

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setPhotoErrorResId(I)V

    .line 74
    return-void
.end method

.method protected getAspectRatio(Lcom/twitter/sdk/android/core/models/MediaEntity;)D
    .locals 9
    .param p1, "photoEntity"    # Lcom/twitter/sdk/android/core/models/MediaEntity;

    .prologue
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 84
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->getAspectRatio(Lcom/twitter/sdk/android/core/models/MediaEntity;)D

    move-result-wide v0

    .line 85
    .local v0, "ratio":D
    cmpg-double v8, v0, v2

    if-gtz v8, :cond_1

    move-wide v0, v2

    .line 96
    .end local v0    # "ratio":D
    :cond_0
    :goto_0
    return-wide v0

    .line 88
    .restart local v0    # "ratio":D
    :cond_1
    cmpl-double v2, v0, v4

    if-lez v2, :cond_2

    move-wide v0, v4

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    cmpg-double v2, v0, v6

    if-gez v2, :cond_0

    move-wide v0, v6

    .line 93
    goto :goto_0
.end method

.method protected getAspectRatioForPhotoEntity(I)D
    .locals 2
    .param p1, "photoCount"    # I

    .prologue
    .line 108
    const-wide v0, 0x3ff999999999999aL    # 1.6

    return-wide v0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/twitter/sdk/android/tweetui/R$layout;->tw__tweet_quote:I

    return v0
.end method

.method public bridge synthetic getTweet()Lcom/twitter/sdk/android/core/models/Tweet;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->getTweet()Lcom/twitter/sdk/android/core/models/Tweet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTweetId()J
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->getTweetId()J

    move-result-wide v0

    return-wide v0
.end method

.method getViewTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "quote"

    return-object v0
.end method

.method render()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->render()V

    .line 60
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->screenNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 61
    return-void
.end method

.method public setStyle(IIIIII)V
    .locals 0
    .param p1, "primaryTextColor"    # I
    .param p2, "secondaryTextColor"    # I
    .param p3, "actionColor"    # I
    .param p4, "actionHighlightColor"    # I
    .param p5, "mediaBgColor"    # I
    .param p6, "photoErrorResId"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->primaryTextColor:I

    .line 42
    iput p2, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->secondaryTextColor:I

    .line 43
    iput p3, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->actionColor:I

    .line 44
    iput p4, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->actionHighlightColor:I

    .line 45
    iput p5, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->mediaBgColor:I

    .line 46
    iput p6, p0, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->photoErrorResId:I

    .line 48
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/QuoteTweetView;->applyStyles()V

    .line 49
    return-void
.end method

.method public bridge synthetic setTweet(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->setTweet(Lcom/twitter/sdk/android/core/models/Tweet;)V

    return-void
.end method

.method public bridge synthetic setTweetLinkClickListener(Lcom/twitter/sdk/android/tweetui/TweetLinkClickListener;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->setTweetLinkClickListener(Lcom/twitter/sdk/android/tweetui/TweetLinkClickListener;)V

    return-void
.end method

.method public bridge synthetic setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;)V

    return-void
.end method
