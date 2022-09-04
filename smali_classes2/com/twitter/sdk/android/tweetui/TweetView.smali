.class public Lcom/twitter/sdk/android/tweetui/TweetView;
.super Lcom/twitter/sdk/android/tweetui/BaseTweetView;
.source "TweetView.java"


# static fields
.field private static final DEFAULT_ASPECT_RATIO_MEDIA_CONTAINER:D = 1.5

.field private static final SQUARE_ASPECT_RATIO:D = 1.0

.field private static final VIEW_TYPE_NAME:Ljava/lang/String; = "default"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .param p3, "styleResId"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;I)V

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;ILcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .param p3, "styleResId"    # I
    .param p4, "dependencyProvider"    # Lcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;ILcom/twitter/sdk/android/tweetui/AbstractTweetView$DependencyProvider;)V

    .line 40
    return-void
.end method

.method private setVerifiedCheck(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 3
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    const/4 v2, 0x0

    .line 87
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/models/User;->verified:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetView;->fullNameView:Landroid/widget/TextView;

    sget v1, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_tweet_verified:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetView;->fullNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method protected getAspectRatioForPhotoEntity(I)D
    .locals 2
    .param p1, "photoCount"    # I

    .prologue
    .line 75
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 76
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 78
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    goto :goto_0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/twitter/sdk/android/tweetui/R$layout;->tw__tweet:I

    return v0
.end method

.method getViewTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "default"

    return-object v0
.end method

.method render()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->render()V

    .line 64
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetui/TweetView;->setVerifiedCheck(Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 65
    return-void
.end method
