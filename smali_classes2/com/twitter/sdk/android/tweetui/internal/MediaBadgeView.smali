.class public Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;
.super Landroid/widget/FrameLayout;
.source "MediaBadgeView.java"


# instance fields
.field badge:Landroid/widget/ImageView;

.field videoDuration:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->initSubViews(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method initSubViews(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string v2, "layout_inflater"

    .line 54
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 55
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/twitter/sdk/android/tweetui/R$layout;->tw__media_badge:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/twitter/sdk/android/tweetui/R$id;->tw__video_duration:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->videoDuration:Landroid/widget/TextView;

    .line 58
    sget v2, Lcom/twitter/sdk/android/tweetui/R$id;->tw__gif_badge:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->badge:Landroid/widget/ImageView;

    .line 59
    return-void
.end method

.method setBadge(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->badge:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->videoDuration:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->badge:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    return-void
.end method

.method public setCard(Lcom/twitter/sdk/android/core/models/Card;)V
    .locals 2
    .param p1, "card"    # Lcom/twitter/sdk/android/core/models/Card;

    .prologue
    .line 73
    invoke-static {p1}, Lcom/twitter/sdk/android/core/internal/VineCardUtils;->isVine(Lcom/twitter/sdk/android/core/models/Card;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__vine_badge:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->setBadge(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->setEmpty()V

    goto :goto_0
.end method

.method setEmpty()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 95
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->videoDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->badge:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public setMediaEntity(Lcom/twitter/sdk/android/core/models/MediaEntity;)V
    .locals 4
    .param p1, "entity"    # Lcom/twitter/sdk/android/core/models/MediaEntity;

    .prologue
    .line 62
    const-string v2, "animated_gif"

    iget-object v3, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__gif_badge:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->setBadge(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v2, "video"

    iget-object v3, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    iget-object v2, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->videoInfo:Lcom/twitter/sdk/android/core/models/VideoInfo;

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    .line 66
    .local v0, "duration":J
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->setText(J)V

    goto :goto_0

    .line 65
    .end local v0    # "duration":J
    :cond_1
    iget-object v2, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->videoInfo:Lcom/twitter/sdk/android/core/models/VideoInfo;

    iget-wide v0, v2, Lcom/twitter/sdk/android/core/models/VideoInfo;->durationMillis:J

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->setEmpty()V

    goto :goto_0
.end method

.method setText(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->videoDuration:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->badge:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MediaBadgeView;->videoDuration:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/twitter/sdk/android/tweetui/internal/MediaTimeUtils;->getPlaybackTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method
