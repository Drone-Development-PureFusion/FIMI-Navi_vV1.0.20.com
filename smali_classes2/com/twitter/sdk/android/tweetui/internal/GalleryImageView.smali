.class public Lcom/twitter/sdk/android/tweetui/internal/GalleryImageView;
.super Landroid/widget/FrameLayout;
.source "GalleryImageView.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# instance fields
.field final imageView:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

.field final progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/GalleryImageView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;Landroid/widget/ProgressBar;)V

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;Landroid/widget/ProgressBar;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageView"    # Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;
    .param p3, "progressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/16 v3, 0x11

    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/GalleryImageView;->imageView:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    .line 43
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/internal/GalleryImageView;->progressBar:Landroid/widget/ProgressBar;

    .line 45
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 47
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {p0, p3}, Lcom/twitter/sdk/android/tweetui/internal/GalleryImageView;->addView(Landroid/view/View;)V

    .line 50
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 52
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p2, v0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/twitter/sdk/android/tweetui/internal/GalleryImageView;->addView(Landroid/view/View;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 71
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "from"    # Lcom/squareup/picasso/Picasso$LoadedFrom;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/GalleryImageView;->imageView:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/GalleryImageView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 66
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "placeHolderDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/GalleryImageView;->imageView:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/GalleryImageView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    return-void
.end method

.method public setSwipeToDismissCallback(Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/GalleryImageView;->imageView:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    .line 58
    invoke-static {v1, p1}, Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener;->createFromView(Landroid/view/View;Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;)Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener;

    move-result-object v0

    .line 59
    .local v0, "listener":Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/GalleryImageView;->imageView:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    return-void
.end method
