.class public Lcom/twitter/sdk/android/tweetui/CompactTweetView;
.super Lcom/twitter/sdk/android/tweetui/BaseTweetView;
.source "CompactTweetView.java"


# static fields
.field private static final DEFAULT_ASPECT_RATIO_MEDIA_CONTAINER:D = 1.6

.field private static final MAX_LANDSCAPE_ASPECT_RATIO:D = 3.0

.field private static final MIN_LANDSCAPE_ASPECT_RATIO:D = 1.3333333333333333

.field private static final SQUARE_ASPECT_RATIO:D = 1.0

.field private static final VIEW_TYPE_NAME:Ljava/lang/String; = "compact"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .param p3, "styleResId"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;I)V

    .line 39
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;ILcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .param p3, "styleResId"    # I
    .param p4, "dependencyProvider"    # Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;ILcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected applyStyles()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->applyStyles()V

    .line 71
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/CompactTweetView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/twitter/sdk/android/tweetui/R$dimen;->tw__compact_tweet_container_padding_top:I

    .line 72
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 73
    .local v1, "paddingTop":I
    invoke-virtual {p0, v4, v1, v4, v4}, Lcom/twitter/sdk/android/tweetui/CompactTweetView;->setPadding(IIII)V

    .line 76
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/CompactTweetView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/twitter/sdk/android/tweetui/R$dimen;->tw__media_view_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 77
    .local v0, "mediaViewRadius":I
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/CompactTweetView;->tweetMediaView:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;

    invoke-virtual {v2, v0, v0, v0, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setRoundedCornersRadii(IIII)V

    .line 79
    return-void
.end method

.method protected getAspectRatio(Lcom/twitter/sdk/android/core/models/MediaEntity;)D
    .locals 9
    .param p1, "photoEntity"    # Lcom/twitter/sdk/android/core/models/MediaEntity;

    .prologue
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 89
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getAspectRatio(Lcom/twitter/sdk/android/core/models/MediaEntity;)D

    move-result-wide v0

    .line 90
    .local v0, "ratio":D
    cmpg-double v8, v0, v2

    if-gtz v8, :cond_1

    move-wide v0, v2

    .line 101
    .end local v0    # "ratio":D
    :cond_0
    :goto_0
    return-wide v0

    .line 93
    .restart local v0    # "ratio":D
    :cond_1
    cmpl-double v2, v0, v4

    if-lez v2, :cond_2

    move-wide v0, v4

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    cmpg-double v2, v0, v6

    if-gez v2, :cond_0

    move-wide v0, v6

    .line 98
    goto :goto_0
.end method

.method protected getAspectRatioForPhotoEntity(I)D
    .locals 2
    .param p1, "photoCount"    # I

    .prologue
    .line 113
    const-wide v0, 0x3ff999999999999aL    # 1.6

    return-wide v0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/twitter/sdk/android/tweetui/R$layout;->tw__tweet_compact:I

    return v0
.end method

.method getViewTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "compact"

    return-object v0
.end method

.method render()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->render()V

    .line 64
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/CompactTweetView;->screenNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 65
    return-void
.end method
