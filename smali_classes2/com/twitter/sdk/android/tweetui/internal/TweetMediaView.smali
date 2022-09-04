.class public Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;
.super Landroid/view/ViewGroup;
.source "TweetMediaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;,
        Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;,
        Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$PicassoCallback;
    }
.end annotation


# static fields
.field static final MAX_IMAGE_VIEW_COUNT:I = 0x4

.field static final SIZED_IMAGE_SMALL:Ljava/lang/String; = ":small"


# instance fields
.field final dependencyProvider:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;

.field private imageCount:I

.field private final imageViews:[Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

.field internalRoundedCornersEnabled:Z

.field mediaBgColor:I

.field private final mediaDividerSize:I

.field private mediaEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field photoErrorResId:I

.field final radii:[F

.field private final rect:Landroid/graphics/RectF;

.field tweet:Lcom/twitter/sdk/android/core/models/Tweet;

.field tweetMediaClickListener:Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;)V

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "dependencyProvider"    # Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageViews:[Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    .line 59
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->path:Landroid/graphics/Path;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->rect:Landroid/graphics/RectF;

    .line 63
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->radii:[F

    .line 64
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaBgColor:I

    .line 82
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->dependencyProvider:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;

    .line 83
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/twitter/sdk/android/tweetui/R$dimen;->tw__media_view_divider_size:I

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    .line 85
    sget v0, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__ic_tweet_photo_error_dark:I

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->photoErrorResId:I

    .line 86
    return-void
.end method


# virtual methods
.method clearImageViews()V
    .locals 3

    .prologue
    .line 330
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    if-ge v1, v2, :cond_1

    .line 331
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageViews:[Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    aget-object v0, v2, v1

    .line 332
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 333
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    .line 337
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 143
    iget-boolean v1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->internalRoundedCornersEnabled:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 146
    .local v0, "saveState":I
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 147
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 152
    .end local v0    # "saveState":I
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method getOrCreateImageView(I)Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageViews:[Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    aget-object v6, v0, p1

    .line 365
    .local v6, "imageView":Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;
    if-nez v6, :cond_0

    .line 366
    new-instance v6, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    .end local v6    # "imageView":Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;-><init>(Landroid/content/Context;)V

    .line 367
    .restart local v6    # "imageView":Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    invoke-virtual {v6, p0}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageViews:[Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    aput-object v6, v0, p1

    .line 370
    invoke-virtual {p0, v6, p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->addView(Landroid/view/View;I)V

    .line 376
    :goto_0
    invoke-virtual {v6, v2}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->setVisibility(I)V

    .line 377
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaBgColor:I

    invoke-virtual {v6, v0}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->setBackgroundColor(I)V

    .line 378
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->tw__entity_index:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->setTag(ILjava/lang/Object;)V

    .line 380
    return-object v6

    .line 372
    :cond_0
    invoke-virtual {p0, p1, v2, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 373
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    goto :goto_0
.end method

.method getSizedImagePath(Lcom/twitter/sdk/android/core/models/MediaEntity;)Ljava/lang/String;
    .locals 2
    .param p1, "mediaEntity"    # Lcom/twitter/sdk/android/core/models/MediaEntity;

    .prologue
    .line 385
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->mediaUrlHttps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->mediaUrlHttps:Ljava/lang/String;

    goto :goto_0
.end method

.method initializeImageViews(Lcom/twitter/sdk/android/core/models/Card;)V
    .locals 4
    .param p1, "card"    # Lcom/twitter/sdk/android/core/models/Card;

    .prologue
    const/4 v3, 0x1

    .line 353
    iput v3, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    .line 355
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getOrCreateImageView(I)Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    move-result-object v1

    .line 357
    .local v1, "imageView":Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;
    invoke-static {p1}, Lcom/twitter/sdk/android/core/internal/VineCardUtils;->getImageValue(Lcom/twitter/sdk/android/core/models/Card;)Lcom/twitter/sdk/android/core/models/ImageValue;

    move-result-object v0

    .line 358
    .local v0, "imageValue":Lcom/twitter/sdk/android/core/models/ImageValue;
    iget-object v2, v0, Lcom/twitter/sdk/android/core/models/ImageValue;->alt:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setAltText(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 359
    iget-object v2, v0, Lcom/twitter/sdk/android/core/models/ImageValue;->url:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setMediaImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, v1, v3}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setOverlayImage(Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;Z)V

    .line 361
    return-void
.end method

.method initializeImageViews(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/MediaEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "mediaEntities":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/MediaEntity;>;"
    const/4 v3, 0x4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    .line 342
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget v3, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    if-ge v1, v3, :cond_0

    .line 343
    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getOrCreateImageView(I)Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    move-result-object v0

    .line 345
    .local v0, "imageView":Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 346
    .local v2, "mediaEntity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    iget-object v3, v2, Lcom/twitter/sdk/android/core/models/MediaEntity;->altText:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setAltText(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getSizedImagePath(Lcom/twitter/sdk/android/core/models/MediaEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setMediaImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 348
    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->isVideoType(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setOverlayImage(Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;Z)V

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v0    # "imageView":Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;
    .end local v2    # "mediaEntity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    :cond_0
    return-void
.end method

.method public launchPhotoGallery(I)V
    .locals 5
    .param p1, "mediaEntityIndex"    # I

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/twitter/sdk/android/tweetui/GalleryActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-wide v2, v2, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;-><init>(JILjava/util/List;)V

    .line 212
    .local v1, "item":Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;
    const-string v2, "GALLERY_ITEM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/twitter/sdk/android/core/IntentUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 214
    return-void
.end method

.method public launchVideoPlayer(Lcom/twitter/sdk/android/core/models/MediaEntity;)V
    .locals 9
    .param p1, "entity"    # Lcom/twitter/sdk/android/core/models/MediaEntity;

    .prologue
    const/4 v4, 0x0

    .line 179
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->getSupportedVariant(Lcom/twitter/sdk/android/core/models/MediaEntity;)Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;

    move-result-object v7

    .line 180
    .local v7, "variant":Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;
    if-eqz v7, :cond_0

    .line 181
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v8, Lcom/twitter/sdk/android/tweetui/PlayerActivity;

    invoke-direct {v6, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v6, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->isLooping(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v2

    .line 183
    .local v2, "looping":Z
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->showVideoControls(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v3

    .line 184
    .local v3, "showControls":Z
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->getSupportedVariant(Lcom/twitter/sdk/android/core/models/MediaEntity;)Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;

    move-result-object v5

    iget-object v1, v5, Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;->url:Ljava/lang/String;

    .line 185
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;-><init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 187
    .local v0, "item":Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;
    const-string v4, "PLAYER_ITEM"

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/twitter/sdk/android/core/IntentUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 191
    .end local v0    # "item":Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "looping":Z
    .end local v3    # "showControls":Z
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public launchVideoPlayer(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 9
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    const/4 v4, 0x0

    .line 194
    iget-object v6, p1, Lcom/twitter/sdk/android/core/models/Tweet;->card:Lcom/twitter/sdk/android/core/models/Card;

    .line 195
    .local v6, "card":Lcom/twitter/sdk/android/core/models/Card;
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/twitter/sdk/android/tweetui/PlayerActivity;

    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {v6}, Lcom/twitter/sdk/android/core/internal/VineCardUtils;->getStreamUrl(Lcom/twitter/sdk/android/core/models/Card;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "playerStreamUrl":Ljava/lang/String;
    new-instance v0, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;-><init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v0, "playerItem":Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;
    const-string v2, "PLAYER_ITEM"

    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 202
    iget-wide v2, p1, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    invoke-static {v2, v3, v6}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->fromTweetCard(JLcom/twitter/sdk/android/core/models/Card;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object v8

    .line 203
    .local v8, "scribeItem":Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
    const-string v2, "SCRIBE_ITEM"

    invoke-virtual {v7, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/twitter/sdk/android/core/IntentUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 206
    return-void
.end method

.method layoutImage(IIIII)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 320
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageViews:[Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    aget-object v0, v1, p1

    .line 321
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    if-ne v1, p3, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    if-ne v1, p4, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    if-ne v1, p5, :cond_0

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method layoutImages()V
    .locals 18

    .prologue
    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getMeasuredWidth()I

    move-result v5

    .line 291
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getMeasuredHeight()I

    move-result v6

    .line 292
    .local v6, "height":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    sub-int v1, v5, v1

    div-int/lit8 v11, v1, 0x2

    .line 293
    .local v11, "halfWidth":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    sub-int v1, v6, v1

    div-int/lit8 v17, v1, 0x2

    .line 294
    .local v17, "halfHeight":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    add-int v14, v11, v1

    .line 295
    .local v14, "middle":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    packed-switch v1, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 297
    :pswitch_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    goto :goto_0

    .line 300
    :pswitch_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    .line 301
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    add-int v3, v11, v1

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    goto :goto_0

    .line 304
    :pswitch_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    .line 305
    const/4 v13, 0x1

    const/4 v15, 0x0

    move-object/from16 v12, p0

    move/from16 v16, v5

    invoke-virtual/range {v12 .. v17}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    .line 306
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    add-int v4, v17, v1

    move-object/from16 v1, p0

    move v3, v14

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    goto :goto_0

    .line 309
    :pswitch_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move/from16 v12, v17

    invoke-virtual/range {v7 .. v12}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    .line 310
    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    add-int v10, v17, v1

    move-object/from16 v7, p0

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    .line 311
    const/4 v13, 0x1

    const/4 v15, 0x0

    move-object/from16 v12, p0

    move/from16 v16, v5

    invoke-virtual/range {v12 .. v17}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    .line 312
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    add-int v4, v17, v1

    move-object/from16 v1, p0

    move v3, v14

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImage(IIIII)V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method measureImageView(III)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 284
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageViews:[Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;

    aget-object v0, v0, p1

    .line 285
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 286
    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 284
    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->measure(II)V

    .line 287
    return-void
.end method

.method measureImages(II)Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 254
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 255
    .local v3, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 256
    .local v2, "height":I
    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    sub-int v4, v3, v4

    div-int/lit8 v1, v4, 0x2

    .line 257
    .local v1, "halfWidth":I
    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaDividerSize:I

    sub-int v4, v2, v4

    div-int/lit8 v0, v4, 0x2

    .line 258
    .local v0, "halfHeight":I
    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    packed-switch v4, :pswitch_data_0

    .line 280
    :goto_0
    invoke-static {v3, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;->fromSize(II)Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;

    move-result-object v4

    return-object v4

    .line 260
    :pswitch_0
    invoke-virtual {p0, v5, v3, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    goto :goto_0

    .line 263
    :pswitch_1
    invoke-virtual {p0, v5, v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    .line 264
    invoke-virtual {p0, v6, v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    goto :goto_0

    .line 267
    :pswitch_2
    invoke-virtual {p0, v5, v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    .line 268
    invoke-virtual {p0, v6, v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    .line 269
    invoke-virtual {p0, v7, v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    goto :goto_0

    .line 272
    :pswitch_3
    invoke-virtual {p0, v5, v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    .line 273
    invoke-virtual {p0, v6, v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    .line 274
    invoke-virtual {p0, v7, v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    .line 275
    const/4 v4, 0x3

    invoke-virtual {p0, v4, v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImageView(III)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 156
    sget v2, Lcom/twitter/sdk/android/tweetui/R$id;->tw__entity_index:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 157
    .local v1, "mediaEntityIndex":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweetMediaClickListener:Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;

    if-eqz v2, :cond_2

    .line 159
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 165
    .local v0, "mediaEntity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    :goto_0
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweetMediaClickListener:Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-interface {v2, v3, v0}, Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;->onMediaEntityClick(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/core/models/MediaEntity;)V

    .line 176
    .end local v0    # "mediaEntity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    :cond_0
    :goto_1
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "mediaEntity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    goto :goto_0

    .line 166
    .end local v0    # "mediaEntity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    :cond_2
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 167
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 168
    .restart local v0    # "mediaEntity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->isVideoType(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->launchVideoPlayer(Lcom/twitter/sdk/android/core/models/MediaEntity;)V

    goto :goto_1

    .line 170
    :cond_3
    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->isPhotoType(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->launchPhotoGallery(I)V

    goto :goto_1

    .line 174
    .end local v0    # "mediaEntity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    :cond_4
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-virtual {p0, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->launchVideoPlayer(Lcom/twitter/sdk/android/core/models/Tweet;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 115
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    if-lez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->layoutImages()V

    .line 118
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 123
    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->imageCount:I

    if-lez v1, :cond_0

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->measureImages(II)Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;

    move-result-object v0

    .line 128
    .local v0, "size":Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;
    :goto_0
    iget v1, v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;->width:I

    iget v2, v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;->height:I

    invoke-virtual {p0, v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->setMeasuredDimension(II)V

    .line 129
    return-void

    .line 126
    .end local v0    # "size":Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;
    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;->EMPTY:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;

    .restart local v0    # "size":Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 135
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 136
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->rect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->radii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 138
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 139
    return-void
.end method

.method setAltText(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 392
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/twitter/sdk/android/tweetui/R$string;->tw__tweet_media:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setMediaBgColor(I)V
    .locals 0
    .param p1, "mediaBgColor"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaBgColor:I

    .line 103
    return-void
.end method

.method setMediaImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 409
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->dependencyProvider:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$DependencyProvider;->getImageLoader()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 410
    .local v0, "imageLoader":Lcom/squareup/picasso/Picasso;
    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-virtual {v0, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 413
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->photoErrorResId:I

    .line 415
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$PicassoCallback;

    invoke-direct {v2, p1}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$PicassoCallback;-><init>(Landroid/widget/ImageView;)V

    .line 416
    invoke-virtual {v1, p1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    goto :goto_0
.end method

.method setOverlayImage(Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;Z)V
    .locals 2
    .param p1, "imageView"    # Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;
    .param p2, "isVideo"    # Z

    .prologue
    .line 400
    if-eqz p2, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/twitter/sdk/android/tweetui/R$drawable;->tw__player_overlay:I

    .line 402
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 401
    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->setOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;->setOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPhotoErrorResId(I)V
    .locals 0
    .param p1, "photoErrorResId"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->photoErrorResId:I

    .line 111
    return-void
.end method

.method public setRoundedCornersRadii(IIII)V
    .locals 3
    .param p1, "topLeft"    # I
    .param p2, "topRight"    # I
    .param p3, "bottomRight"    # I
    .param p4, "bottomLeft"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->radii:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    aput v2, v0, v1

    .line 90
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->radii:[F

    const/4 v1, 0x1

    int-to-float v2, p1

    aput v2, v0, v1

    .line 91
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->radii:[F

    const/4 v1, 0x2

    int-to-float v2, p2

    aput v2, v0, v1

    .line 92
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->radii:[F

    const/4 v1, 0x3

    int-to-float v2, p2

    aput v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->radii:[F

    const/4 v1, 0x4

    int-to-float v2, p3

    aput v2, v0, v1

    .line 94
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->radii:[F

    const/4 v1, 0x5

    int-to-float v2, p3

    aput v2, v0, v1

    .line 95
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->radii:[F

    const/4 v1, 0x6

    int-to-float v2, p4

    aput v2, v0, v1

    .line 96
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->radii:[F

    const/4 v1, 0x7

    int-to-float v2, p4

    aput v2, v0, v1

    .line 98
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->requestLayout()V

    .line 99
    return-void
.end method

.method public setTweetMediaClickListener(Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;)V
    .locals 0
    .param p1, "tweetMediaClickListener"    # Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweetMediaClickListener:Lcom/twitter/sdk/android/tweetui/TweetMediaClickListener;

    .line 107
    return-void
.end method

.method public setTweetMediaEntities(Lcom/twitter/sdk/android/core/models/Tweet;Ljava/util/List;)V
    .locals 2
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/models/MediaEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "mediaEntities":Ljava/util/List;, "Ljava/util/List<Lcom/twitter/sdk/android/core/models/MediaEntity;>;"
    const/4 v1, 0x0

    .line 217
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    .line 218
    invoke-interface {p2, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 223
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    .line 225
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->clearImageViews()V

    .line 226
    invoke-virtual {p0, p2}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->initializeImageViews(Ljava/util/List;)V

    .line 228
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/MediaEntity;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaUtils;->isPhotoType(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->internalRoundedCornersEnabled:Z

    .line 234
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->requestLayout()V

    goto :goto_0

    .line 231
    :cond_2
    iput-boolean v1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->internalRoundedCornersEnabled:Z

    goto :goto_1
.end method

.method public setVineCard(Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 1
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 238
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->card:Lcom/twitter/sdk/android/core/models/Card;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->card:Lcom/twitter/sdk/android/core/models/Card;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/VineCardUtils;->isVine(Lcom/twitter/sdk/android/core/models/Card;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->mediaEntities:Ljava/util/List;

    .line 245
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->clearImageViews()V

    .line 246
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->card:Lcom/twitter/sdk/android/core/models/Card;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->initializeImageViews(Lcom/twitter/sdk/android/core/models/Card;)V

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->internalRoundedCornersEnabled:Z

    .line 250
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;->requestLayout()V

    goto :goto_0
.end method
